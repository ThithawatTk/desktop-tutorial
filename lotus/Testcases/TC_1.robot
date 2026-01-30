*** Settings ***
Resource    ../Keywords/Import.resource
Test Setup       Feature.Open lotus website    
Test Teardown    SeleniumLibrary.Close Browser            

*** Test Cases ***
Verify that the product name displayed in the search results matches on the product detail page exactly when select 1st product on search 
    [Tags]    TC1    TH     PLP
    Feature.Verify All Categories    @{categories_expected}
    Page_home.Search For Product       ${search_info.name}
    Page_plp.Close Delivery Popup
    Feature.Pick Product And Verify  ${Product.product_1st}