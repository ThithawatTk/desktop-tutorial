*** Keywords ***
Open Lotus Website
    SeleniumLibrary.Open browser      ${browser_settings.url}    ${browser_settings.browser}
    Page_home.Accept cookies

Verify All Categories
    [Arguments]    @{expected_categories}
    Page_home.Click category menu
    ${actual_categories} =    Common.Get text list    ${home_locator.lbl_category}
    Collections.Lists Should Be Equal    ${actual_categories}    ${expected_categories}

Pick Product And Verify
    [Arguments]    ${index}
    Wait Until Element Is Visible       ${plp_locator.img_prodct}
    ${all_names} =    Common.Get text list    ${plp_locator.lbl_product_name}
    VAR    ${expected_name}    ${all_names}[${index}]
    BuiltIn.Log to console    คุณเลือกสินค้าลำดับที่ ${index+1}: ${expected_name}
    
    Page_plp.Select product by index    ${index}
    
    SeleniumLibrary.Wait until element is visible    ${pdp_locator.lbl_detail_name}
    ${actual_name} =    SeleniumLibrary.Get text    ${pdp_locator.lbl_detail_name}
    BuiltIn.Should be equal    ${actual_name.strip()}    ${expected_name}
    BuiltIn.Log to console    Success! ชื่อสินค้าตรงกัน: ${actual_name.strip()}