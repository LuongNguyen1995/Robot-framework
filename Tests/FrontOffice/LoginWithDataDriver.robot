*** Settings ***
Documentation    Check Login app will multiple value
Resource  ../../Resources/FrontOffice/LoginApp.robot
Resource  ../../Resources/Common/CommonApp.robot
Resource  ../../Resources/Common/DataManager.robot
Library            DataDriver    ../../Data/Excel/Login_Register.xlxs    sheet_name=Login_Invalid
Test Setup    Begin App Test
Test Teardown    End App Test
Test Template    Invalid login scenario

# robot -d results/FrontOffice Tests/FrontOffice/Login.robot


*** Keywords ***
Invalid login scenario
    [Arguments]    ${email}    ${password}    ${error_msg}
    LoginApp.Input data login    ${email}    ${password}
    LoginApp.Verify Element Should Contain  ${error_msg}

*** Test Cases ***

Verify Login Fails with invalid creds    ${email}    ${password}    ${error_msg}