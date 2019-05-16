public class RandomContactFactory {
	
	public static list<Contact> generateRandomContacts(Integer intValue, String stringValue){
		list<Contact> lstContact = new list<Contact>();
		for(integer i=0; i<intValue; i++){
			Contact newContact = new Contact();
			newContact.FirstName =  'Test ' +i;
			newContact.LastName = stringValue;
			lstContact.add(newContact);
		}
		return lstContact;
	}
    
}