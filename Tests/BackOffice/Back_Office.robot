*** Settings ***
Documentation    Talk about what this suite of tests does
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonApp.robot
Resource  ../Resources/DataManager.robot
Test Setup    Begin App Test
Test Teardown    End App Test

# robot -d results tests/Front_Office.robot


*** Variables ***
${DEVICE_OS} =    android
${APP_ID} =    


*** Test Cases ***
Should see correct error messages with invalid logins
    ${InvalidLoginScenario} =   DataManager.Get CSV Data  ${INVALID_CREDENTALS_PATH_CSV}


Should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    Test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page



"Team" page should match requirements
    [Documentation]    This is test 2
    [Tags]    Test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Validate "Team" Page