global class LeadProcessor implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        return database.getQueryLocator('select Id, LeadSource from Lead');
    }

    global void execute(Database.BatchableContext bc, List<Lead> records){
        // process each batch of records
        for(Lead itrLead : records){
        	itrLead.LeadSource = 'Dreamforce';
        }
        update records;
    }    

    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    

}