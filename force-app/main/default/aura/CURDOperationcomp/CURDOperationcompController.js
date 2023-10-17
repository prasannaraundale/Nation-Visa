({
	createNewApplicantController : function(component, event, helper) {
		console.log("inside of jsController in create");
		component.set('v.showCreateFieldFlag',true);
		component.set('v.showsearchFieldFlag',false);
	},


	searchApplicantController: function(component, event, helper) {
		console.log("inside of jsController in search");
		component.set('v.showCreateFieldFlag',false);
		component.set('v.showsearchFieldFlag',true);

		component.set('v.DisableCreateButton',false);
		component.set('v.DisableEditButton',false);
		component.set('v.DisableUpdateButton',false);
		component.set('v.DisableDeleteButton',false);
       	},


	editApplicantController: function(component, event, helper) {
		console.log("inside of jsController");
	component.set('v.showsearchFieldFlag',false);
	component.set('v.showCreateFieldFlag',true)
	},
	
	updateApplicantController: function(component,event,helper){
		console.log("inside of jsController in update");
		helper.updateApplicantHelper(component, event, helper);
	},

	deleteApplicantController: function(component, event, helper) {
		console.log("inside of jsController");
		if(confirm("Are you sure to delete?")==true){
			helper.deleteApplicantHelper(component,event,helper);
		}

	},


	SaveApplicantController: function(component, event, helper) {
		console.log("inside of save jsController");
		helper.saveApplicantHelper(component,event,helper);
	},


	CheckApplicantController: function(component, event, helper) {
		
        console.log("inside of check jsController");
		helper.CheckApplicantHelper(component,event,helper);
	},
})