public class AnimalLocator {
	
	
	public static String getAnimalNameById(Integer intId){
		Http http = new Http();
        HttpRequest request = new HttpRequest();
        HTTPResponse response = new HTTPResponse();
        request.setMethod('GET');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+intId);
        response = http.send(request); 
        
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        //system.debug('results::' +results);
        Map<String, Object> animals = (Map<String, Object>) results.get('animal');
        //system.debug('results::' +animals);
        return (String)animals.get('name');
	}
    
}