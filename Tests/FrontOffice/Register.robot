*** Settings ***
Documentation    Check Register app will multiple value
Resource  ../../Resources/FrontOffice/RegisterApp.robot
Resource  ../../Resources/Common/CommonApp.robot
Resource  ../../Resources/Common/DataManager.robot
Library    DataDriver    ../../../Data/Excel/Login_Register.xlxs    sheet_name=Register
Test Setup    Begin App Test
Test Teardown    End App Test

# robot -d results/FrontOffice Tests/FrontOffice/Register.robot


*** Test Cases ***
RegisterTestWithExcel using    ${email}     ${firstName}    ${lastName}     ${password}     ${confirmPassword}

*** Keywords ***
Register A New User
    [Arguments]    ${email}    ${firstName}    ${lastName}    ${password}    ${confirmPassword}
    [Documentation]    Register a new user
    RegisterApp.Register with valid account    ${email}    ${firstName}    ${lastName}    ${password}    ${confirmPassword}
    RegisterApp.Verify Register Login Successful
    RegisterApp.Log out
