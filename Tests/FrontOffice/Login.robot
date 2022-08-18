*** Settings ***
Documentation    Check Login app will multiple value
Resource  ../../Resources/FrontOffice/LoginApp.robot
Resource  ../../Resources/Common/CommonApp.robot
Resource  ../../Resources/Common/DataManager.robot
Test Setup    Begin App Test
Test Teardown    End App Test

# robot -d results/FrontOffice Tests/FrontOffice/Front_Office.robot

*** Test Cases *** 
LoginTestWithExcel using    ${email}     ${password}

*** Keywords ***
Verify login with Invalid
    [Documentation]    This is test 1
    [Tags]    Login invalid
    [Arguments]    ${email}    ${password}
    LoginApp.Input multiple data invalid    ${email}    ${password}
    LoginApp.Verify login is unsuccessful


Verify login with Valid
    [Documentation]    This is test 2
    [Tags]    Login valid
    [Arguments]    ${email}    ${password}
    LoginApp.Input data login    ${email}    ${password}
    LoginApp.Verify login is successful