*** Settings ***
Documentation                   Regression Login Page Aladin
Library                         SeleniumLibrary
#Resource                       ../Resources/Common/Browsers.robot
Resource                        ../../Frameworks/Routers.robot

*** Variables ***
${EMAIL}                        test.device@misteraladin.com
${PASSWORD}                     MisterAladin_2019


*** Test Cases ***
TC001 Open MyHeadless Browser
    [Documentation]             Open MyHeadless Browser
	[Tags]                      Regression
    Browsers.Open MyHeadless Keyword

TC002 Login
    [Documentation]             Open Login Page & Clear Cache
	[Tags]                      Regression
    CommonKey.Clear All Cookies Pages
    CommonKey.Click Login Page Now

TC003 Forgot Password
    [Documentation]  User is able to reset the Password.
	[Tags]  Skip
	${RANDOM_NUMBER}            Generate random string      10      0123456789
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER}@gmail.com
    LoginWithEmail.Forgot Password                          ${EMAIL}
    Log     Reason Can't Automated : Automated Can't get Valid OTP from Email
    Reload Page

TC004 Login Using Credentials Valid
    CommonKey.Clear All Cookies Pages
    LoginWithEmail.Login Using Credentials                  ${EMAIL}    ${PASSWORD}
    LoginWithEmail.Expected After Login Succsess

