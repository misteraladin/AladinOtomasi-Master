*** Settings ***
#Library                         SeleniumLibrary
#Library                        OperatingSystem
#Library                        String
#Library                        RequestsLibrary
#Library                        JSONLibrary
#Library                        Collections
#Library                         XvfbRobot
Resource                        /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/RoutersMobile.robot
*** Variables ***
${Device_name}      HT7A61A01144
${Appium_server}    http://localhost:4723/wd/hub
${appPackage}       com.misteraladin.android.stag
${appActivity}      com.misteraladin.android.activity.SplashScreenActivity_ #com.misteraladin.android.activity.FirstScreenActivity_
${platfrom}         11.0
${automationName}   Uiautomator2


*** Keywords ***
Setup and open dialer Android App
  ${androiddriver}=  Open Application   ${Appium_server}    platformName=android    platformVersion=${platfrom}     deviceName=${Device_name}  automationName=${automationName}
  ...  appPackage=${appPackage}     newCommandTimeout=3000      appActivity=${appActivity}

Allow PermissionController Android App
    wait until element is visible   com.android.permissioncontroller:id/permission_allow_one_time_button
    click element                   com.android.permissioncontroller:id/permission_allow_one_time_button
    click element                   com.android.permissioncontroller:id/permission_allow_one_time_button
    click element                   com.android.permissioncontroller:id/permission_allow_button
    click element                   com.android.permissioncontroller:id/permission_allow_button