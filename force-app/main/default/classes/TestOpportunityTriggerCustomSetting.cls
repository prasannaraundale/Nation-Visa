@isTest
public class TestOpportunityTriggerCustomSetting {
    @isTest
    public Static void CustomSettingTest(){
        Date Cldate= Date.Parse('09/15/2023');
        List<Opportunity> oppList= new List<Opportunity>();
        for(Integer i=1; i<=5; i++){
            Opportunity objOpp= new Opportunity(Name='New'+i, CloseDate=Cldate,StageName='Prospecting',Customer_Types__c='Normal',Amount=5000+(i*100));
			            
			oppList.add(objOpp);
            }
        if(!oppList.isEmpty()){
            Database.Insert(oppList);
            
        }
    }
	@isTest
     public Static void CustomSettingTestPrime(){
        Date Cldate= Date.Parse('09/15/2023');
        List<Opportunity> oppList1= new List<Opportunity>();
        for(Integer i=1; i<=5; i++){
            Opportunity objOpp1= new Opportunity(Name='New1'+i, CloseDate=Cldate,StageName='Prospecting',Customer_Types__c='Prime',Amount=5000+(i*100));
			            
			oppList1.add(objOpp1);
            }
        if(!oppList1.isEmpty()){
            Database.Insert(oppList1);
            
        }
    }
    @isTest
    public Static void CustomSettingTestSpecial(){
        Date Cldate= Date.Parse('09/15/2023');
        List<Opportunity> oppList2= new List<Opportunity>();
        for(Integer i=1; i<=5; i++){
            Opportunity objOpp2= new Opportunity(Name='New2'+i, CloseDate=Cldate,StageName='Prospecting',Customer_Types__c='Special',Amount=5000+(i*100));
			            
			oppList2.add(objOpp2);
            }
        if(!oppList2.isEmpty()){
            Database.Insert(oppList2);
            
        }
    }
}