*** Keywords ***
Open browser lotus
    [Arguments]    ${url}    ${Browser}
    SeleniumLibrary.Open browser    ${url}    ${browser}
    SeleniumLibrary.Maximize browser window

Snap and close browser
    SeleniumLibrary.Capture page screenshot
    SeleniumLibrary.Close Browser

Check and click
    [Arguments]    ${locator_loading}    ${locator}    ${timeout}=10s
    ${status} =    BuiltIn.Run keyword and return status    
    ...    SeleniumLibrary.Wait until element is visible    ${locator_loading}    ${timeout}    
    IF    ${status}
        SeleniumLibrary.Click Element    ${locator}
    END 