*** Settings ***
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
    [Arguments]    ${error_msg}
    LandingPage.Page Contains Element Error       ${error_msg}

Test Multiples Login Scenarios
    [Arguments]    ${email}    ${password}   
    LandingPage.Input Email    ${email}
    LandingPage.Input Password    ${password}
    LandingPage.Click Login Button
    Verify login is unsuccessful