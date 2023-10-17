@RestResource(urlMapping='/accountrRecord')
global class AccountDetails {
    
      @httpGet
    global Static List<Account> getAccount(){
        return ([Select Id, Name, Type, Rating from Account]);
    }
    
    
    global class responseWrapper{
        global Id Id;
        global String name;
        global string type;
 		global string rating;       
    }
    
  
    
}