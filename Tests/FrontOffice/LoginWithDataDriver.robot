*** Settings ***
Documentation    Check Login app will multiple value
Resource  ../../Resources/FrontOffice/LoginApp.robot
Resource  ../../Resources/Common/CommonApp.robot
Resource  ../../Resources/Common/DataManager.robot
Library            DataDriver    Login_Register.xlxs    sheet_name=Login_Invalid
Test Setup    Begin App Test
Test Teardown    End App Test

# robot -d results/FrontOffice Tests/FrontOffice/Login.robot


*** Keywords ***
Read All The Data




*** Test Cases ***

Invalid login scenarios should not display correct error messages

    @{UNREGISTERED_USER}
    @{INVALID_PASSWORD_USER}
    @{BLANK_CREDENTIALS_USER}    


Verify login Successful
    [Documentation]    Login with Valid Data
    [Tags]    Login valid
    LoginApp.Input data login    ${LOGIN}[email]    ${LOGIN}[password]
    LoginApp.Verify login is successful