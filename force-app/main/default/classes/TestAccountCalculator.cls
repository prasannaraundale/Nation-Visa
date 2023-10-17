@isTest
public class TestAccountCalculator {
@isTest
    private Static void TestCountContacts(){
        List<Account> accList = new List<Account>();
        
        for(Integer i= 0 ; i<250; i++){
            acclist.add(new Account (Name='Test'+i));
        }
        
        insert accList;
        
        List<Contact> conList = new List<Contact>();
        List<Id> accIds= new List<Id>();
        for(Account acc:accList){
        conList.add(new Contact (FirstName='Test', LastName=acc.Name, AccountId=acc.Id));
        accIds.add(acc.Id);
    }

		insert conList;
        
      	Test.startTest();
        AccountCalculator.countContacts(accIds);
        Test.stopTest();
        
        List<Account> accs =[SELECT Id,Number_Of_Contact__c FROM Account];
	
        system.assertEquals(1, accs[0].Number_Of_Contact__c ,'Contacts Are not Counted SuccessFully');

    }
}