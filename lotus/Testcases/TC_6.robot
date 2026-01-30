*** Settings ***
Resource    ../Keywords/Import.resource
Test Setup       Feature.Open lotus website    
Test Teardown    SeleniumLibrary.Close Browser            

*** Test Cases ***
Verify that the product name displayed in the search results matches on the product detail page exactly when select 1st product on search in ENG
    [Tags]    TC6   ENG    PDP
    Page_home.Change language to ENG
    Page_home.Search For Product       ${search_info.name2}
    Page_plp.Close Delivery Popup
    Feature.Pick Product And Verify  ${Product.product_1st}
