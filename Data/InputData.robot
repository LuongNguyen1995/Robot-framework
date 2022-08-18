*** Variables ***
# Configuration
${APPIUM_SERVER}        http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          chat21.android.demo
${APP_ACTIVITY}         chat21.android.demo.SplashActivity
${AUTOMATION_NAME}      Uiautomator2

#*** Android 10 variables ***
${ANDROID10_CONTINUE_BUTTON}    id=com.android.permissioncontroller:id/continue_button
${ANDROID10_OK_BUTTON}          //android.widget.Button[@text="OK"]

${CHAT21_APPLICATION_ID}                    chat21.android.demo  
${form_login_emailAddress_txt}              id=${CHAT21_APPLICATION_ID}:id/email

