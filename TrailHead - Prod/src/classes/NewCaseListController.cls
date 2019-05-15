public class NewCaseListController {
    
    public list<Case> getNewCases(){
    	return [select id, CaseNumber from Case where Status = 'New']; 
    }
}