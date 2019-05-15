trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	
	list<Opportunity> lstOpp = new list<Opportunity>();
	list<Task> lstTask = new list<Task>();
	lstOpp = [select id, StageName from Opportunity where Id IN :trigger.new and StageName = 'Closed Won'];
	
	for(Opportunity itrOpp : lstOpp){
		Task newTask = new Task();
	    newTask.WhatId = itrOpp.Id;
	    newTask.subject = 'Follow Up Test Task';
	    lstTask.add(newTask);
	}
    
    insert lstTask;
}