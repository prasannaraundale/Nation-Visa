({
	ShowMessageController: function(component, event, helper) {
		console.log("i am jsContoller show Method");
        component.set('v.disableShowButton',true);
        component.set('v.disableHideButton',false);
		component.set('v.showMessageFlag',true);
    },
    HideMessageController:function(component, event, helper){
        console.log("i am jsController hide method");
        component.set('v.showMessageFlag',false);
        component.set('v.disableShowButton',false);
        Component.set('v.disableHideButton',true);
    }
})