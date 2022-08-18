*** Settings ***
Library    DataDriver    ../../Data/Excel/Login_Register.xlxs    sheet_name=Register
Resource    ./PO/Landing.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot



*** Variables ***



*** Keywords ***
Register with valid account
    [Arguments]    ${email}    ${firstName}    ${lastName}    ${password}    ${confirmPassword}
    Landing.Click on Signup link
    Landing.Input Email    ${email}
    Landing.Input Firstname     ${firstName}
    Landing.Input Lastname    ${lastName}
    Landing.Input Password    ${password}
    Landing.Input Confirm Password    ${confirmPassword}
    Landing.Click Signup Button
    Landing.Verify Register is successful
    Landing.Logout User


    