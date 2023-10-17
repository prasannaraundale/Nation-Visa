({
	SaveApplicantHelper : function(component, event, helper) {
		console.log("inside jsHelper in save method");
		var action=component.get('c.createNewApplicant');
		action.setParams({"objApp":component.get('v.objApplicant')});
		action.setCallback(this, function(response){
			if(response.getState() ==='SUCCESS'){
				console.log("success save new Applicant"+JSON.stringify(response.getReturnValue()));

			}
			else{
				console.log("something want wrong...!!")
			}
		})
		$A.enqueueAction(action);
	},

	CheckApplicantHelper: function (component, event, helper){
		console.log("inside jsHelper in check or search Applicant");
		var action=component.get('c.searchApplicantRecApexController');
		action.setParams({'objApp':component.get('v.objApplicant')});
		action.setCallback(this,function(response){
			if(response.getState()==='SUCCESS'){
				console.log("SUCCESS in Applicant search this Data :"+JSON.stringify(response.getReturnValue()));

			}
			else{
				console.log("something want wrong");
			}
		})
		$A.enqueueAction(action);
	},
	deleteApplicantHelper:function(component, event, helper){
		var action =component.get('c.deleteApplicant');
		action.setParams({"objApp":component.get('v.objApplicant')});
		action.setCallback(this, function(response){
			if(response.getState()==='SUCCESS')
			{
				console.log('Successfully delete applicant'+JSON.stringify(response.getReturnValue()));
			}
			else{

			}

		})
		$A.enqueueAction(action);

	},
	updateApplicantHelper: function (component, event, helper) {
		var action =component.get('c.updateApplicants');
		action.setParams({"objApp":component.get('v.objApplicant')});
		action.setCallback(this, function(response){
			if(response.getState()==='SUCCESS')
			{
				console.log('Successfully delete applicant'+JSON.stringify(response.getReturnValue()));
			}
			else{

			}

		})
		$A.enqueueAction(action);

	},
	
})