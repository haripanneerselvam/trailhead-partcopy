@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
	//PartCopy Update
	@HttpGet
	global static Account getAccount(){
		RestRequest request = RestContext.request;
		String accountId = (request.requestURI.split('/Accounts/'))[1].split('/contacts')[0];
		system.debug('accountId' +accountId);
		Account accountDetail = [select id, name, (select id, name from Contacts) from Account where id = :accountId];
		return accountDetail;
	}
    
}