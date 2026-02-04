*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot
Test Teardown    Snap and close browser    
*** Test Cases ***
TC01 Verify element every page
    [Documentation]    Check text in category is correct, product name in product list page and product detail page are match
    home_feature.Open browser and accept cookie
    home_feature.Check category correct    ${TC01.expect_category}
    home_page.Search product    ${TC01.product_search}
    product_detail_feature.Check name match    ${TC01.product_index}
    