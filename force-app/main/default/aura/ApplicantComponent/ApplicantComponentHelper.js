({
	searchApplicantRecJsHelper : function(component, event, helper) {
		console.log("i am from js Helper");
	var action = component.get('c.searchApplicantRecApexController');
        action.setParams({"objApp":component.get('v.objApp')})
            action.setCallback(this, function(response){
            
            if(response.getState() === 'SUCCESS'){
                console.log("success "+ JSON.stringify( response.getReturnValue()) );
                
                component.set('v.objApp'  , response.getReturnValue());
            }
            else{
                console.log("Something went wrong...!!!");
            }
        });
        
        $A.enqueueAction(action);

    }
})