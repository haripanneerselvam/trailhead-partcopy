public class AddPrimaryContact implements Queueable{
	
	public Contact con;
	public String stateValue;
	
	public AddPrimaryContact(Contact contactDetail, String stateAbbrevation){
		con = contactDetail;
		stateValue = stateAbbrevation;
	}
	
	public void execute(QueueableContext context){ 
		
		list<Account> lstAccount = [select Id, BillingState from Account where BillingState = :stateValue limit 200];
		list<Contact> lstContactToInsert = new list<Contact>();
		
		for(Account itrAccount : lstAccount){
			Contact newCon = con.clone();
			newCon.AccountId = itrAccount.Id;
			lstContactToInsert.add(newCon);
		}
		insert lstContactToInsert;
	}
    
}