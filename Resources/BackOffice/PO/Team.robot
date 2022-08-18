*** Settings ***
Library    AppiumLibrary


*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    id=mainLoad
${MAIN_LOGO_ELEMENT} =    id=mainLogo

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${LANDING_NAVIGATION_ELEMENT}

 Validate Page Contents
      Element Should Be Enabled    ${MAIN_LOGO_ELEMENT}