*** Keywords ***
Check category correct
    [Arguments]    ${expected_list}
    @{actual_category}=    home_page.Get category    ${INDEX_ITEM}    ${expected_list}    
    BuiltIn.Should Be Equal    ${actual_category}    ${expected_list}        
        
Open browser and accept cookie
    Common.Open browser lotus        ${URL}    ${BROWSER}
    home_page.Accept cookie
        