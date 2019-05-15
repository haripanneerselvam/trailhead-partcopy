public class AccountProcessor {
	
	@future
	public static void countContacts(list<Id> lstAccountId){
		list<Account> lstAccount = [select Id, Number_of_Contacts__c, (select Id from Contacts) from Account where Id IN : lstAccountId];
		
		for(Account itrAcocunt : lstAccount){
			itrAcocunt.Number_of_Contacts__c = itrAcocunt.Contacts.size();
		}
		update lstAccount;
	}
    
}