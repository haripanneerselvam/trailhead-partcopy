global class DailyLeadProcessor implements Schedulable{
    
    global void execute(SchedulableContext ctx) {
    	list<Lead> lstLead = [select id, LeadSource from Lead where LeadSource = ''];
    	for(Lead itrLead : lstLead){
    		itrLead.LeadSource = 'Dreamforce'; 
    	}
    	update lstLead;
    }
    
}