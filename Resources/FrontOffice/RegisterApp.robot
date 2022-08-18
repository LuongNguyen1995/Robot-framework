*** Settings ***
Library    DataDriver    ../../Data/Excel/Login_Register.xlxs    sheet_name=Register
Resource    ./PO/LandingPage.robot
Resource    ./PO/HomePage.robot



*** Variables ***



*** Keywords ***
Register with valid account
    [Arguments]    ${email}    ${firstName}    ${lastName}    ${password}    ${confirmPassword}
    LandingPage.Click on Signup link
    LandingPage.Input Email    ${email}
    LandingPage.Input Firstname     ${firstName}
    LandingPage.Input Lastname    ${lastName}
    LandingPage.Input Password    ${password}
    LandingPage.Input Confirm Password    ${confirmPassword}
    LandingPage.Click Signup Button
    LandingPage.Verify Register is successful
    LandingPage.Logout User


    