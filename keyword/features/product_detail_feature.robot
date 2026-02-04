*** Keywords ***
Check name match 
    [Arguments]    ${product_index}
    ${product_name}=   product_list_feature.Close pop up and pick product    ${product_index}
    ${actaul_name}=    product_detail.Get product name
    BuiltIn.Should Be Equal    ${product_name}    ${actaul_name} 


    
        
        
    
     
    
                  