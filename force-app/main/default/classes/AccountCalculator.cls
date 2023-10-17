public class AccountCalculator {
    @future
    public static void countContacts(List<Id> accIds){
        List<Account> accList = [SELECT Id,(SELECT Id FROM Contacts) FROM Account WHERE id IN : accIds];
        
        for(Account objAcc:accList ){
          objAcc.Number_Of_Contact__c = objAcc.Contacts.size();
              
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }

}