*** Settings ***
Documentation    Check Register app will multiple value
Resource  ../../Resources/FrontOffice/RegisterApp.robot
Resource    ../../Data/InputData.robot
Resource  ../../Resources/Common/CommonApp.robot
Resource  ../../Resources/Common/DataManager.robot
#Library    DataDriver    ../../../Data/Excel/Login_Register.xlxs    sheet_name=Register
Test Setup    Begin App Test
Test Teardown    End App Test

# robot -d results/FrontOffice Tests/FrontOffice/Register.robot



*** Test Cases ***
Register A New User
    [Documentation]    Register a new user
    RegisterApp.Register with valid account   ${email_register}    ${firstName_register}    ${lastName_register}    ${password_register}    ${confirmPassword_register} 
    RegisterApp.Verify Register Login Successful
    RegisterApp.Log out
