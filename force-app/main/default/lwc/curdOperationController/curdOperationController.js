import { LightningElement } from 'lwc';

export default class CurdOperationController extends LightningElement {
    accountObject = {'sobjectType' : 'Account'}

    createAccountHandler(){
        this.accountObject.Name = this.template.querySelector('lightning-input[data-formfield="accountName"]').value
        this.accountObject.Type = this.template.querySelector('lightning-input[data-formfield="accountType"]').value
        this.accountObject.Rating = this.template.querySelector('lightning-input[data-formfield="accountRating"]').value
        this.accountObject.SLA = this.template.querySelector('lightning-input[data-formfield="accountSLA"]').value
        console.log(this.accountObject.Name);
       
    
    }
    searchAccountHandler(){
        console.log('i am inside jscontroller search method')
    }
    updateAccountHandler(){
        console.log('i am inside jscontroller update method')
    }
    deleteAccountHandler(){
        console.log('i am inside jscontroller delete method')
    }

}