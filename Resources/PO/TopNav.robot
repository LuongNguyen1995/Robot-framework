*** Settings ***
Library    AppiumLibrary


*** Variables ***
${TOP_NAV_TEAM_LINK} =    TeamNavigator


*** Keywords ***
Select "Team" Page
    Click Button    ${TOP_NAV_TEAM_LINK}
   # Click Element    id=team
    
    