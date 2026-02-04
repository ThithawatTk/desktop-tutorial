*** Keywords ***
Close pop up and pick product
    [Arguments]    ${product_index}
    product_list_page.Close pop up delivery
    ${product_name}    ${current_product_locator}=   product_list_page.Pick product in list    ${product_index}
    SeleniumLibrary.Click Element     ${current_product_locator}
    RETURN    ${product_name}