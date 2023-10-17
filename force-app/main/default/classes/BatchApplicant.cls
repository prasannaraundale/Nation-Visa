public class BatchApplicant implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchAbleContext Bc){
        return Database.getQueryLocator('select id , First_Name__c ,Gender__c ,Police_Verification__c  from Application__c where Gender__c =\'Male\' or Gender__c =\'Female\' ');
    }
    public void execute(Database.BatchAbleContext Bc ,List<Application__c> appList){
        if(!appList.isEmpty()){
            for(Application__c objapp:appList){
                if(objapp.Gender__c=='Male'){
                    objapp.Police_Verification__c=True;
                    
                }
                else{
                    if(objapp.Gender__c=='Female'){
                    objapp.Police_Verification__c=False;
                        
                    }
                }
            }
            Database.SaveResult[] result = Database.update(appList, false);
        
        }
        
    }
    public void finish(Database.BatchAbleContext Bc){
        
    }
}