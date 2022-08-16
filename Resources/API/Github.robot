*** Settings ***
Library    RequestsLibrary
Library    AppiumLibrary

*** Variables ***


*** Keywords ***
Check Github Username
    # Create the session
    Create Session    my_github_session    https://api.github.com

    # Make the call (and capture the response in varriable)
    ${response} =    GET    my_github_session    users/robotframeworktutorial

    # Check the Response status
    Should Be Equal As Strings    ${response.status_code}    200

    # Check the Response body
    ${json} =    Set Variable    ${response.json()}
    Should Be Equal As Strings    ${json['login']}    robotframeworktutorail
    Log    ${json}

Display Emoji
    # Create the session
    Create Session    my_github_session    https://api.github.com

    # Make the call (and capture the response in varriable)
    ${response} =    GET    my_github_session    emojis

    # Check the Response status
    Should Be Equal As Strings    ${response.status_code}    200

    # Check the Response body
    ${json} =    Set Variable    ${response.json()}
    ${emoji_url} =    Set Variable    ${json['aerial_tramway']}
    Open Application    ${emoji_url}    Chrome
    