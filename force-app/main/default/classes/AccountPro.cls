public with sharing class AccountPro {
    public AccountPro() {


    }
    @AuraEnabled
    public static string CreateNewAccount(Account accObj){
        try{
        insert accObj;
        return 'Record Created Successfully...!!';
        }
        catch(Exception e){
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static string updateEditedAccount(Account accObj){
        try {
            update accObj;
            return 'Record Updata SuccessFully...!!!';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static string deleteAccount(Account accObj){
        try {
            delete accObj;
            return 'Record Delete SuccessFully ...!!!';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}