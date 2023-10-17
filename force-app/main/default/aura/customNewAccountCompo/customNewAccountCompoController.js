({
	CreatedNewAccountJsController : function(component, event, helper) {
		var accountName=component.get('v.accName');
        alert("I am From controller "+accountName);
        
        helper.createdNewAccountHelper(component, event, helper);
	}
})