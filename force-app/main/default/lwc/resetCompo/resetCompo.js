import { LightningElement } from 'lwc';

export default class ResetCompo extends LightningElement {
    resetSliderHandler(){
        this.template.querySelector('c-slider-compo').sliderResetChildMethod(); 

    }
}