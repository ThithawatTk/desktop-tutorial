*** Settings ***
Resource    ../Keywords/Import.resource
Test Setup       Feature.Open lotus website    
Test Teardown    SeleniumLibrary.Close Browser            

*** Test Cases ***
Verify that the product name, category name, and quantity are displayed correctly and consistently across all relevant pages (PLP, PDP, and Cart).
    [Tags]    TC5   TH    END-END
    Feature.Verify All Categories    @{categories_expected}
    Page_home.Search For Product       ${search_info.name2}
    Page_plp.Close Delivery Popup
    Feature.Pick Product And Verify  ${Product.product_1st}