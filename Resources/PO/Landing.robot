*** Settings ***
Library    AppiumLibrary


*** Variables ***
${LOCAL_HOST} =    	http://localhost:4723/wd/hub
${PLATFORM_NAME} =    Android
${PLATFORM_VERSION} =    11
${DEVICE_NAME} =    192.168.56.101:5555
${APP} =       
${APP_PACKAGE} =    com.netease.qa.orangedemo

*** Keywords ***
Navigate To
    Open Application    ${LOCAL_HOST}    ${PLATFORM_NAME}    ${PLATFORM_VERSION}    ${DEVICE_NAME}    ${APP}    ${APP_PACKAGE}


Verify Page Loaded
    Wait Until Page Contains Element    ${TEAM_HEADER_LABEL}
    