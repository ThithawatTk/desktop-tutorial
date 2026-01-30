*** Keywords ***
Handle optional popup
    [Arguments]    ${locator}    ${timeout}=10s
    ${status} =    BuiltIn.Run keyword and return status    
    ...    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeout}
    IF    ${status}
        SeleniumLibrary.Click element    ${locator}
        BuiltIn.Log to console    banner closed.
    ELSE 
        BuiltIn.Log to console    No banner.        
    END

Get text list
    [Arguments]    ${locator}    ${filter_visible}=True
    @{all_elements} =    SeleniumLibrary.Get webElements    ${locator}
    VAR    @{clean_list}
    FOR    ${elem}    IN    @{all_elements}
        ${status}    ${text} =    BuiltIn.Run keyword and ignore error    SeleniumLibrary.Get text    ${elem}
        IF  "${status}" == "PASS"
             ${clean_text} =    BuiltIn.Evaluate    "${text}".strip() 
        ELSE
             ${clean_text} =    BuiltIn.Evaluate    "".strip()
        END
        BuiltIn.Log to console   ${clean_text} 
        # กรองตัวที่เห็น
        ${is_visible} =    BuiltIn.Run keyword and return status    SeleniumLibrary.Element should be visible    ${elem}
        IF    ${is_visible} and '${clean_text}' != '${EMPTY}'
            # กรองตัวซ้ำ
            ${not_duplicate} =    BuiltIn.Run keyword and return status    
            ...    Collections.List should not contain value  ${clean_list}  ${clean_text}
            IF    ${not_duplicate}
                Collections.Append to list    ${clean_list}    ${clean_text}
            END
        END
        
        ${count} =    BuiltIn.Get length    ${clean_list}
    END
    BuiltIn.Log to console    จำนวนที่พบ: ${clean_list.__len__()} ตัว
    RETURN    ${clean_list}
  