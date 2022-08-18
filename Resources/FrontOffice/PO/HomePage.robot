*** Settings ***
Library    AppiumLibrary


*** Variables ***
${main_home_tab}        //android.widget.TextView[@text="HOME"]
${main_profile_tab}     //android.widget.TextView[@text="PROFILE"]
${main_chat_tab}        //android.widget.TextView[@text="CHAT"]

*** Keywords ***
Wait Main Page Loaded
    Wait Until Page Contains Element        ${main_home_tab} 
    