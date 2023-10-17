trigger OpportunityTrigger on Opportunity (before insert, before update) {
    if(trigger.isBefore && (trigger.isInsert ||trigger.isUpdate)){
        for(Opportunity objO : trigger.new){
            if(trigger.isBefore && trigger.isInsert){
                if(objO.Amount>=3000 && objO.Amount<=9000){
                    objO.StageName='Closed Won';
                    objO.Description='Hello Nagpur';
                } 
                else{
                    objO.Description='Hello pune';
                }
            }
            if(trigger.isBefore && Trigger.isUpdate){
               if(objO.Amount>=3000 && objO.Amount<=9000){
                    objO.StageName='Closed Won';
                    objO.Description='Hello Nagpur';
                } 
                else{
                    objO.Description='Hello pune';
                }
    
            }    
            
        } 
    }
}