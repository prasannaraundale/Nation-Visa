import { LightningElement } from 'lwc';
import createAccountRecord from '@salesforce/apex/AccountProvider.createAccountRecord';
export default class Day4Component extends LightningElement {
    objAccount={'sobjectType':'Account'}

    saveButtonHandler(){
        console.log("hi i am inside js handler save button")
        this.objAccount.Name = this.template.querySelector('lightning-input[data-formfield="accountName"]').value;
        this.objAccount.Type=this.template.querySelector('lightning-input[data-formfield="accountType"]').value;
    
        createAccountRecord({ objAcc : this.objAccount})
        .then((result) => {
          this.result = result;
          this.error = undefined;
        })
        .catch((error) => {
          this.error = error;
          this.result = undefined;
        });
  
 
    }
}