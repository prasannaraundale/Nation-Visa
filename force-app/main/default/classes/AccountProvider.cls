public class AccountProvider {
    @AuraEnabled
    public static void CreateNewAccountController(String accName){
        
            Account objAcc=new Account(Name = accName);
			insert objAcc;
        
        
    }
    @AuraEnabled
    public static void createAccountRecord(Account objAcc){
        try {
            insert objAcc;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }


}