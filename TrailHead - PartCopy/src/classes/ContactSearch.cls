public class ContactSearch {
    
    public static list<Contact> searchForContacts(String lName, String pCode){
    	
    	list<Contact> lstContact = new list<Contact>();
    	lstContact = [select id from Contact where LastName = :lName and MailingPostalCode = :pCode];
    	return lstContact;
    }
}