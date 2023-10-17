import { LightningElement,api } from 'lwc';

export default class SliderCompo extends LightningElement {
    val

    @api sliderResetChildMethod(){
this.val=0
    }
}