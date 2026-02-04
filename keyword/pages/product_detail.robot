*** Keywords ***
Get product name
    SeleniumLibrary.Wait until element is visible    ${product_detail_locator.txt_product_name}
    ${actaul_name}=    SeleniumLibrary.get text     ${product_detail_locator.txt_product_name}
    RETURN    ${actaul_name}
    