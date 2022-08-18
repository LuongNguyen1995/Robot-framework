*** Settings ***
Library    AppiumLibrary



*** Variables ***



*** Keywords ***
Begin App Test
    Open Application    about:blank    {DEVICE_OS}




End App Test
    Close All Applications
