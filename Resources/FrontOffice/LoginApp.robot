*** Settings ***
Library    DataDriver    ../../Data/Excel/Login_Register.xlxs    sheet_name=Login_Invalid
Resource    ./PO/LandingPage.robot
Resource    ./PO/HomePage.robot

*** Variables ***



*** Keywords ***
Input data login
    [Arguments]    ${email}    ${password}
    LandingPage.Input Email    ${email}
    LandingPage.Input Password    ${password}
    LandingPage.Click Login Button

Verify login is unsuccessful
    LandingPage.Wait Main Page Not Loaded

Verify login is successful
    HomePage.Wait Main Page Loaded

Input multiple data invalid
    LandingPage.Input Multiple Email Invalid

Verify Element Should Contain 
    LandingPage.Page Contains Element Error

Test Multiples Login Scenarios
    [Arguments]    ${email}    ${password}   
    LandingPage.Input Email    ${email}
    LandingPage.Input Password    ${password}
    LandingPage.Click Login Button
    Verify login is unsuccessful