({
	createdNewAccountHelper : function(component, event, helper) {
        var accountName = component.get('v.accName');
       alert("I am from js Helper "+accountName);
        var action =component.get('c.CreateNewAccountController'); //1
        action .setParams({"accName":accountName});//2
        $A.enqueueAction(action);//3
        action.setcallback(this, function(response){//4
        var state= response.getState();
        if(state === 'SUCCESS'){
            alert(accountName+'Account Record creaded successfully ..');
        }
        else{
            alert("something went wrong");
        }
        
		})
	}
})