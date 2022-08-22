*** Settings ***
Documentation    Check Register app will multiple value
Resource  ../../Resources/FrontOffice/RegisterApp.robot
Resource  ../../Resources/Common/CommonApp.robot

Test Setup    Begin App Test
Test Teardown    End App Test

# robot -d results/FrontOffice Tests/FrontOffice/Register.robot

*** Test Cases ***
Register A New User
    [Documentation]    Register a new user
    RegisterApp.Register with valid account   &{REGISTER}
    RegisterApp.Verify Register Login Successful
    RegisterApp.Log out
