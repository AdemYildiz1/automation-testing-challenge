const Page = require('./main.page');

class formPage extends Page {   //SHOULD BE MainPage, NOT JUST PAGE

    // contains all selectors for the page 
   
    get inputFirstName () { return $('//input[@id="firstName"]') }
    get inputLastName () { return $('//input[@id="lastName"]') }

    // Contains all methods for naviagting on the page
    //USING STATIC WAITS ARE BAD PRACTICE, DYNAMIC WAITS(IMPLICIT WAITS SHOULD BE USED IN HOOKS/MAIN)
    fillName(firstName, lastName){
        browser.pause(4000)
        this.inputFirstName.setValue(firstName);
        browser.pause(4000)
        this.inputLastName.setValue(lastName);
        browser.pause(4000)
    }
    
    open () {
        return super.open();
    }
}

module.exports = new formPage();
