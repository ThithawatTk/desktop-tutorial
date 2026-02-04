*** Keywords ***
Accept cookie
    Common.Check and click    ${home_locator.img_cookie_baner}    ${home_locator.btn_cookie_accept}    

Get category
    [Documentation]    The keyword that design for get category from home page and verify it with expect list.
    [Arguments]    ${index_item}    ${expected_list}
    SeleniumLibrary.Click Element    ${home_locator.btn_category_loading}
    SeleniumLibrary.Wait until element is visible    ${home_locator.btn_category_loading}    ${GLOBAL_TIMEOUT}
    ${actual_category} =     BuiltIn.Create List
    FOR    ${index}    IN    @{index_item}
        ${current_locator}=    String.Replace string    ${home_locator.btn_category_name}    item-0    ${index}
        ${status}    ${text_found}=    BuiltIn.Run Keyword And Ignore Error    SeleniumLibrary.Get text    ${current_locator}
        IF    '${status}' == 'PASS'
            Collections.Append To List    ${actual_category}    ${text_found}
        ELSE
            BuiltIn.Log To Console    Not find ${expected_list}
            
        END
                
    END
    RETURN    @{actual_category}
    

Search product
    [Arguments]    ${search}
    SeleniumLibrary.Click Element    ${home_locator.txt_search}
    SeleniumLibrary.Input text    ${home_locator.txt_search}    ${search}
    SeleniumLibrary.Press Keys    ${home_locator.txt_search}      ENTER

    



      
    

    
    