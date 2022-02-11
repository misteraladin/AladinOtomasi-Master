*** Settings ***
Library                 SeleniumLibrary
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
Resource                ../Resources/Common/Browsers.robot
Resource                ../Resources/Common/CommonKey.robot
Resource                ../Resources/WEBDES/Register/RegisterPage.robot
Resource                ../Resources/WEBDES/Login/LoginWithEmail.robot
Resource                ../Resources/WEBDES/TechoHotel/SearchHotelByName.robot

