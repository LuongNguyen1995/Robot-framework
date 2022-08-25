*** Settings ***
Resource    ./PO/LandingPage.robot
Resource    ./PO/HomePage.robot
Library    DataDriver    ../../../Data/Excel/Login_Register.xlxs    sheet_name=Register


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
    
Verify Register Login Successful
    LandingPage.Verify Register is successful

Log out
    LandingPage.Logout User


    