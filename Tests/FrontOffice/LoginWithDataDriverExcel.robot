*** Settings ***
Documentation    Check Login app will multiple value
Resource  ../../Resources/FrontOffice/LoginApp.robot
Resource  ../../Resources/Common/CommonApp.robot
Library            DataDriver    Login_Register.xlxs    sheet_name=Login_Invalid
Test Setup    Begin App Test
Test Teardown    End App Test
Test Template    Invalid login scenario

# robot -d results/BackOffice Tests/FrontOffice/LoginWithDataDriverExcel.robot


*** Keywords ***
Invalid login scenario
    [Arguments]    ${email}    ${password}    ${error_msg}
    LoginApp.Input data login    ${email}    ${password} 
    LoginApp.Verify Element Should Contain    ${error_msg}

*** Test Cases ***   
              
LoginTestWithExcel using ${email}     ${password}     ${error_msg}