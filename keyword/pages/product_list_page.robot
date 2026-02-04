*** Keywords ***
Close pop up delivery
    Common.Check and click    ${product_list_locator.img_popup_delivery}    ${product_list_locator.img_popup_delivery_close}  

Pick product in list
    [Documentation]    The keyword get text from index of product and return
    [Arguments]    ${index}
    SeleniumLibrary.Wait until element is visible    ${product_list_locator.img_page_loading}    ${GLOBAL_TIMEOUT}
    ${current_product_locator}=    String.Replace string    ${product_list_locator.img_product_list}    product_index    ${index}
    ${product_name}=    SeleniumLibrary.Get text    ${current_product_locator}
    RETURN    ${product_name}    ${current_product_locator}       

Click product that picked
    [Arguments]    ${current_product_locator}
    SeleniumLibrary.Click Element    ${current_product_locator}
         