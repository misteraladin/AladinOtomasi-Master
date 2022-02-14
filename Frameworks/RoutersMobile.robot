*** Settings ***
Library                 AppiumLibrary   run_on_failure=AppiumLibrary.Capture Page Screenshot
Library                 OperatingSystem
Library                 String
Library                 RequestsLibrary
Library                 JSONLibrary
Library                 Collections
Library                 XvfbRobot
Library                 DateTime
#Library                ../Library/MolatvLibrary.py

#Frameworks
Resource                Configs.robot


#Resources
Resource                ../Resources/MOB/Login/LoginEmail.robot
Resource                ../Resources/MOB/Login/LoginHP.robot
Resource                ../Resources/Common/MobileSetUp.robot

