*** Settings ***
Resource    ../Keywords/Import.resource
Test Setup       Feature.Open lotus website    
Test Teardown    SeleniumLibrary.Close Browser            

*** Test Cases ***
Verify that the cetegory name displayed correct  
    [Tags]    TC3    TH    PLP
    Feature.Verify All Categories    @{categories_expected}  