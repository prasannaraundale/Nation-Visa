trigger applicantPrefixTrigger on Application__c (before insert, before update) {
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        for (Application__c objapp : trigger.new){
            if(string.isNotBlank(objapp.First_Name__c)){
            	if(trigger.isBefore && trigger.isInsert){ 
                	if( objapp.Gender__c == 'Male'){
                    objapp.First_Name__c='Mr. '+objapp.First_Name__c;
                    }
                else{
                    if(objapp.Gender__c == 'Female'){
                        objapp.First_Name__c='Ms. '+objapp.First_Name__c;
                    }
                    else{
                        objapp.First_Name__c=objapp.First_Name__c;
                    }  
               	 }
            	}
                if(trigger.isBefore && trigger.isUpdate){ 
                    if(objapp.First_Name__c!= trigger.oldMap.get(objapp.Id).First_Name__c){
                       
                  	  if( objapp.Gender__c == 'Male'){
                    	objapp.First_Name__c='Mr. '+objapp.First_Name__c;
                    	}
                	else{
                    if(objapp.Gender__c == 'Female'){
                        objapp.First_Name__c='Ms. '+objapp.First_Name__c;
                    }
                    else{
                        objapp.First_Name__c=objapp.First_Name__c;
                    }  
               	 }
                 }       
                }  
             }
         }
    }
}