public class ContactAndLeadSearch {
	
	public static List<List<SObject>> searchContactsAndLeads(String searchKey){
		
		list<list<sObject>> lstSearch = new list<list<sObject>>();
		
		lstSearch = [FIND :searchKey IN NAME FIELDS RETURNING Contact(Id),Lead(Id)];
		
		return lstSearch;
	}
    
}