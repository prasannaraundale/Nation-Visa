trigger ApplicationsTigger1 on Application__c (before insert, before update) {
   Set<string> appSet= new Set<String>();
    for(Application__c a:trigger.new){
        if(string.isNotBlank(a.Email__c)){
            appset.add(a.Email__c);
            }   
        delete ([select Email__c from Application__c where Email__c IN : appSet]);
        
    }
    
    
}