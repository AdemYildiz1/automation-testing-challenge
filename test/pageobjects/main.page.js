/**
* main page object containing all methods, selectors and functionality
* that is shared across all page objects
*/
module.exports = class Page {

 //feature files determines which module should be used GOOD PRACTICES
   get buttonForms (String moduleName) { return $('//*[@class="category-cards"]//h5[.='+moduleName+']') }
 
    open (path) {
        browser.maximizeWindow();
        return browser.url('https://demoqa.com/')
    }

    close (path) {
        browser.closeWindow()
    }
}
