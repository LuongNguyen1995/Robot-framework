*** Settings ***
Resource  ../Resources/Common/DataManager.robot
Library    ../CustomLibs/Csv.py
Library    String

*** Variables ***
# Configuration
${APPIUM_SERVER}        http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          chat21.android.demo
${APP_ACTIVITY}         chat21.android.demo.SplashActivity
${AUTOMATION_NAME}      Uiautomator2

${fakeNumber}           Evaluate    random.sample()

#*** Android 10 variables ***
${ANDROID10_CONTINUE_BUTTON}    id=com.android.permissioncontroller:id/continue_button
${ANDROID10_OK_BUTTON}          //android.widget.Button[@text="OK"]

${CHAT21_APPLICATION_ID}                    chat21.android.demo  
${form_login_emailAddress_txt}              id=${CHAT21_APPLICATION_ID}:id/email

#*** Read Data form Excel
${email_unregister}=    Read Excel Data of Cell  Login_Invalid  2  1   
${password_unregister}=    Read Excel Data of Cell  Login_Invalid  2  2
${email_invalid}=    Read Excel Data of Cell  Login_Invalid  3  1
${password_invalid}=    Read Excel Data of Cell  Login_Invalid  3  2
${email_blank}=    Read Excel Data of Cell  Login_Invalid  4  1
${password_blank}=    Read Excel Data of Cell  Login_Invalid  4  2


#*** Register Info ***

&{REGISTER}    email=Luong{}@gmail.com    firstName=Luong    lastName=Nguyen    password=123123    confirmPassword=123123

#*** Login Info ***
&{LOGIN}    email=Luong123@gmail.com    password=123456

#&{UNREGISTERED_USER}    ${email_unregister}     ${password_unregister}   

&{UNREGISTERED_USER}    email=someone@notregistered.com    password=TestPassword!
&{INVALID_PASSWORD_USER}    email=someone@registereduser.com    password=TestPassword!
&{BLANK_CREDENTIALS_USER}    email=#BLANK    password=#BLANK
