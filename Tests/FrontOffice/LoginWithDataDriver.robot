*** Settings ***
Documentation    Check Login app will multiple value
Resource  ../../Resources/FrontOffice/LoginApp.robot
Resource  ../../Resources/Common/CommonApp.robot
#Library            DataDriver    ../../Data/Excel/Login_Register.xlxs    sheet_name=Login_Invalid
Test Setup    Begin App Test
Test Teardown    End App Test
Test Template    Invalid login scenario

# robot -d results/BackOffice Tests/FrontOffice/LoginWithDataDriver.robot


*** Keywords ***
Invalid login scenario
    [Arguments]    ${email}    ${password}    ${error_msg}
    LoginApp.Input data login    ${email}    ${password} 
    LoginApp.Verify Element Should Contain    ${error_msg}

*** Test Cases ***                email                    password            error_msg
Right email empty pass            email@gmail.com          ${EMPTY}            Please input password
Right email wrong pass            email@gmail.com          wrongPassword       Please input correct password
Wrong email right pass            wrong@gmail.com          rightPassword       Please input correct email                
Wrong email empty pass            wrong@gmail.com          ${EMPTY}            Please input correct email
Wrong email wrong pass            wrong@gmail.com          wrongPassword       Please input correct email