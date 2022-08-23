*** Settings ***
Library    AppiumLibrary
#Library    DataDriver    ..\\Data\\Excel\\Login_Register.xlxs    sheet_name=Register
Resource    ../../Common/DataManager.robot
*** Variables ***
${CHAT21_APPLICATION_ID}                        chat21.android.demo  
${landing_signUp_btn}                           id=${CHAT21_APPLICATION_ID}:id/signup
${landing_emailAddress_field}                  id=${CHAT21_APPLICATION_ID}:id/email
${landing_register_firstName_txt}              id=${CHAT21_APPLICATION_ID}:id/first_name
${landing_register_lastName_txt}               id=${CHAT21_APPLICATION_ID}:id/last_name
${landing_password_filed}                       id=${CHAT21_APPLICATION_ID}:id/password
${landing_register_confirmPassword_txt}        id=${CHAT21_APPLICATION_ID}:id/repeat_password  
${landing_main_home_tab}                       //android.widget.TextView[@text="HOME"]
${landing_main_profile_tab}                    //android.widget.TextView[@text="PROFILE"]
${landing_logout_btn}                          id=${CHAT21_APPLICATION_ID}:id/logout
${landing_logIn_btn}                           id=${CHAT21_APPLICATION_ID}:id/login
${main_home_tab}                               //android.widget.TextView[@text="HOME"]
${error_msg_text}                              id=${CHAT21_APPLICATION_ID}:id/error_msg

#*** Sheet Name Excel ***
${sheet_name_invalid}                            Login_Invalid



*** Keywords ***
    
Click on Signup link
    Click Element       ${landing_signUp_btn} 
    Sleep   3s
    Wait Until Page Contains Element            ${landing_emailAddress_field} 

Input Email
    [Arguments]         ${email}
    Input Text        ${landing_emailAddress_field}    ${email}

Input Firstname
    [Arguments]         ${firstName}
    Input Text        ${landing_register_firstName_txt}    ${firstName}

Input Lastname
    [Arguments]         ${lastName}   
    Input Text          ${landing_register_lastName_txt}              ${lastName}

Input Password
    [Arguments]         ${password}   
    Input Text          ${landing_password_filed}              ${password}    

Input Confirm Password
    [Arguments]         ${confirmPassword}   
    Input Text          ${landing_register_confirmPassword_txt}              ${confirmPassword} 
    
Click Signup Button
    Click Element       ${landing_signUp_btn}
    Sleep   5s

Verify Register is successful
    Wait Until Page Contains Element            ${landing_main_home_tab}

 Logout User
    Click Element                               ${landing_main_profile_tab}
    Wait Until Page Contains Element            ${landing_logout_btn}
    Click Element                               ${landing_logout_btn}
    Wait Until Page Contains Element            ${landing_emailAddress_field} 

Click Login Button
    Click Element                                ${landing_logIn_btn}

Wait Page Contains Element
    Wait Until Page Contains Element            ${landing_logIn_btn}


Wait Main Page Not Loaded
    Wait Until Page Does Not Contain Element     ${main_home_tab}  


Input Multiple Email Invalid
    ${row}=    Read Number of Rows    ${sheet_name_invalid}
    FOR  ${i}  IN RANGE  1  ${row}+1
        ${email}=    Read Excel Data of Cell    ${sheet_name_invalid}    ${i}    1
        ${password}=    Read Excel Data of Cell    ${sheet_name_invalid}    ${i}    2
        Input Email    ${email}
        Input Password    ${password}
        Click Login Button
        Sleep    3s
    END

Page Contains Element Error
    [Arguments]         ${error_msg}
    Wait Until Element Is Visible    ${error_msg_text}
    Element Should Contain Text    ${error_msg_text}    ${error_msg}
    