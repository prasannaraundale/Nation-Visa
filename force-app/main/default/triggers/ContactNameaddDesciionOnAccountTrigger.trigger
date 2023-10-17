trigger ContactNameaddDesciionOnAccountTrigger on Contact (after insert, after update , after undelete) {
    Set<Id> accSet= new Set<Id>();
    
    for(Contact objc:trigger.new){
            if(objc.AccountId !=null) {
                    if(trigger.isAfter &&(trigger.isInsert || trigger.isUndelete)){
                    System.debug('#i am insert and undelete set value');       
                accSet.add(objc.AccountId);
                
            }
            if(trigger.isAfter && trigger.isUpdate){
                if((objc.FirstName != trigger.oldMap.get(objc.Id).FirstName)||(objc.LastName != trigger.oldMap.get(objc.Id).LastName)){
                    System.debug('#i am update set value');
                    accSet.add(objc.AccountId);
                }
                
            }    
        }   
    }
    Map<Id,Account> accMap =new  Map<Id,Account>();
            for(Account obja:[Select Id ,Name, Description From Account Where Id IN:accSet]){
                accMap.put(obja.Id,obja);
                System.debug('#i am map value');
        
                }
    List<Account> accList = new List<Account>();
    for(Contact objc :trigger.new){
        if(accMap.containsKey(objc.AccountId)){
            System.debug('#i am compare value');
            accMap.get(objc.AccountId).Description=objc.FirstName+' '+objc.LastName;   
        }
        
    }
    accList.addAll(accMap.values());
    System.debug('#i am done');    
    Database.update(accList, false);
}