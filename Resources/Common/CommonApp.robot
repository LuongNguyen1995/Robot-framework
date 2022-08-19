*** Settings ***
Library    AppiumLibrary
Resource    ../../Data/InputData.robot


*** Variables ***



*** Keywords ***
Begin App Test
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}
    ${ALERT}        Run Keyword And Return Status       Page Should Not Contain Element       ${ANDROID10_CONTINUE_BUTTON}
    Run Keyword If      '${ALERT}' == 'False'       ByPass Alerts
    Wait Until Page Contains Element            ${form_login_emailAddress_txt}

ByPass Alerts
    Wait Until Page Contains Element        ${ANDROID10_CONTINUE_BUTTON} 
    Click Element                           ${ANDROID10_CONTINUE_BUTTON}
    Sleep   3s 
    Wait Until Page Contains Element        ${ANDROID10_OK_BUTTON}
    Click Element                           ${ANDROID10_OK_BUTTON}


End App Test
    Close All Applications
