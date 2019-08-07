public class INS_GoogleAPIController {
  @AuraEnabled
    public static string getAddressAutoComplete(String input) {
        String url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input='
            + EncodingUtil.urlEncode(input, 'UTF-8')
            + '&location=-33.8777,151.203'
            + '&radius=500'
            + '&key=' + INS_GoogleAPIController.getGoogleMapsAPIKey()
            + '&libraries=places';
        	
        return INS_GoogleAPIController.getHttp(url);
    }
    
    @AuraEnabled
    public static string getPlacePhoto(String formattedAddress) {
        String url = 'https://www.googleapis.com/customsearch/v1?'
            + 'q=' + EncodingUtil.urlEncode(formattedAddress, 'UTF-8')
            + '&cx=' + getSearchEngineId()
            + '&key=' + getGoogleMapsAPIKey()
            + '&searchType=image'
            + '&imgType=photo'
            + '&imgColorType=color';
       
        return INS_GoogleAPIController.getHttp(url);
    }
    
    @AuraEnabled
    public static string getAddressDetails (String placeid) {
        String url = 'https://maps.googleapis.com/maps/api/place/details/json?placeid='
            + placeid          
            + '&key=' + INS_GoogleAPIController.getGoogleMapsAPIKey();
        return INS_GoogleAPIController.getHttp(url);
    }     
    @AuraEnabled
    public static String getHttp(String url) {
        HttpRequest req = new HttpRequest();
        Http http = new Http();
        req.setMethod('GET');
        req.setEndpoint(url);
        HTTPResponse res = http.send(req);
        return res.getBody();
    }  
    
    @AuraEnabled
    public static String getGoogleMapsAPIKey() {
        return 'AIzaSyDgfbVMfpftFnmQAf8c8ABIRHHxULJO1QY';
    }
    
    private static String getSearchEngineId() {
        return '014953754618854972448:pjzaea7lgha';
    }
}