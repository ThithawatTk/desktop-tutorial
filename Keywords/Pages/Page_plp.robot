*** Keywords ***
Close delivery popup
    SeleniumLibrary.Wait until element is visible  ${plp_locator.img_delivery}   timeout=10s
    Common.Handle optional popup   ${plp_locator.img_delivery}

Select Product By Index
    [Arguments]    ${index}
    @{elements} =    SeleniumLibrary.Get WebElements    ${plp_locator.lbl_product_name}
    SeleniumLibrary.Click Element    ${elements}[${index}]
    BuiltIn.Sleep    ${browser_settings.delay_long}