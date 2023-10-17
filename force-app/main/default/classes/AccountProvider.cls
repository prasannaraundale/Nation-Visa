public class AccountProvider {
    @AuraEnabled
    public static void CreateNewAccountController(String accName){
        
            Account objAcc=new Account(Name = accName);
			insert objAcc;
        
        
    }

}