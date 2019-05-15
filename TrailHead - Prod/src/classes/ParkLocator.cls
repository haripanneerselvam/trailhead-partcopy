public class ParkLocator {
    
    public static list<String> country(String country){
    	ParkService.ParksImplPort callout = new ParkService.ParksImplPort();
    	String[] response = callout.byCountry(country);
    	system.debug('response::' +response);
    	return response;
    }
    
}