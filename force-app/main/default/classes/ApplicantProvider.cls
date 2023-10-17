public class ApplicantProvider {

    @AuraEnabled
    public static Application__c searchApplicantRecApexController(Application__c objApp ){
        Application__c objApplicant;
        if(objApp!= null){
         objApplicant = [select id,First_Name__c, Last_Name__c,Gender__c from Application__c where Name=:objApp.Name];
        }
        return objApplicant;
    }
     @AuraEnabled
    public static String createNewApplicant(Application__c objApp){
                
        try{
            insert objApp;
            System.debug('#Success');
            return 'Record has been created successfully...!!!';
        }
        catch(Exception ex){
            System.debug('#Locha.. '+ex.getMessage());
            return '#Locha.. '+ex.getMessage();
        }     
        
    }
    
    @AuraEnabled
    public static String updateApplicants(Application__c objApplicant){
        try{
            update objApplicant;
            return 'Record Updated successfully...!!!';
        }
        catch(Exception ex){
            return 'Something went wrong '+ex.getMessage();
        }
    }
    
    
    @AuraEnabled
    public static String deleteApplicant(Application__c objApplicant){
        try{
            if(objApplicant != null){
               delete objApplicant;                
            }
            return 'Record Deleted Successfully...!!!';
        }
        catch(Exception ex){
            return 'Locha...'+ex.getMessage();
        }
    }

}