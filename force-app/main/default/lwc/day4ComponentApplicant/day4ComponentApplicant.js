import { LightningElement } from 'lwc';
import createNewApplicant from '@salesforce/apex/ApplicantProvider.createNewApplicant';
export default class Day4ComponentApplicant extends LightningElement {
    applicantObject ={"sobjectType":"Application__c"}

    createNewApplicantHandler(){
                this.applicantObject.First_Name__c = this.template.querySelector('lightning-input[data-formfield="applicantFirstName"] ').value;
        this.applicantObject.Last_Name__c = this.template.querySelector('lightning-input[data-formfield="applicantLastName"] ').value;

        createApplicantRecord({ objApplicant : this.applicantObject})
      .then((result) => {
        this.result = result;
        this.error = undefined;
    })
    .catch((error) => {
        this.error = error;
        this.result = undefined;
    });


    }
    get options(){
       return [
        { lable:'Male',value:'Male' },
        { lable:'Female',value:'Female'},
        { label:'Transgender',value:'Transgender' }
        ];
    }
    handleGender(event){
        console.log(event.detail.value);
       this.applicantObject.Gender__c  = event.detail.value;
    }


}