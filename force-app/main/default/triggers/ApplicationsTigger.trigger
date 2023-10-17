trigger ApplicationsTigger on Application__c (before insert) {
    for(Application__c objApp:trigger.new){
        if(string.isNotBlank(objApp.Gender__c)){
            if(objApp.Gender__c=='Male'|| objApp.Gender__c=='Female'){
                objApp.Police_Verification__c=true;
                
            }
        }
      
    }
}