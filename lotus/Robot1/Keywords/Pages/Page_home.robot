*** Settings ***
Resource      ../Import.resource

*** Keywords ***
Accept cookies
    Common.Handle optional popup    ${home_locator.btn_cookie}

Click category menu
    SeleniumLibrary.Click element    ${home_locator.btn_category}

Search for product
    [Arguments]    ${keyword}
    SeleniumLibrary.Press keys    ${home_locator.txt_search}    ${keyword}+ENTER

Change language to ENG
    SeleniumLibrary.Wait Until Element Is Visible     ${home_locator.img_element}
    SeleniumLibrary.Click Element    ${home_locator.btn_eng}
    SeleniumLibrary.Wait Until Element Is Visible     ${home_locator.img_element}