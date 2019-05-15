trigger AccountAddressTrigger on Account (before insert, before update) {
	
	for(Account accountRecord : trigger.new){
		if(accountRecord.Match_Billing_Address__c && accountRecord.BillingPostalCode != null){
			accountRecord.ShippingPostalCode = accountRecord.BillingPostalCode;
		}
	}
    
}