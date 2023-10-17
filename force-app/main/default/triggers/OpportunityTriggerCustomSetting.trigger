trigger OpportunityTriggerCustomSetting on Opportunity (before insert,before update) {
    for(Opportunity objOpp : trigger.new){
        if(objOpp.Amount!=null){
        if(trigger.isBefore &&(trigger.isInsert||trigger.isUpdate)){
            if(objOpp.Customer_Types__c=='Normal'){
                Diwali_Discount__c DiwaliDisc=Diwali_Discount__c.getOrgDefaults();
                objOpp.Discount_Percentage__c=DiwaliDisc.Diwali_Percentage__c;
                objOpp.Discount_Ammount__c=(objOpp.Amount*objOpp.Discount_Percentage__c)/100;
                objOpp.Actual_Amount_after_discount__c=objOpp.Amount-objOpp.Discount_Ammount__c;
            	
            }
            else{
                if(objOpp.Customer_Types__c=='Prime'){
                     Diwali_Discount__c DiwaliDisc=Diwali_Discount__c.getInstance(Userinfo.getProfileId());
                objOpp.Discount_Percentage__c=DiwaliDisc.Diwali_Percentage__c;
                objOpp.Discount_Ammount__c=(objOpp.Amount*objOpp.Discount_Percentage__c)/100;
                objOpp.Actual_Amount_after_discount__c=objOpp.Amount-objOpp.Discount_Ammount__c;
                    
                }
                else{
                    if(objOpp.Customer_Types__c=='Special'){
                         Diwali_Discount__c DiwaliDisc=Diwali_Discount__c.getInstance(Userinfo.getUserId());
                objOpp.Discount_Percentage__c=DiwaliDisc.Diwali_Percentage__c;
                objOpp.Discount_Ammount__c=(objOpp.Amount*objOpp.Discount_Percentage__c)/100;
                objOpp.Actual_Amount_after_discount__c=objOpp.Amount-objOpp.Discount_Ammount__c;
                        
                    }
                }
            }
        }
        
    }
    }
}