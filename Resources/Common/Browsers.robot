*** Settings ***
#Library                         SeleniumLibrary
#Library                        OperatingSystem
#Library                        String
#Library                        RequestsLibrary
#Library                        JSONLibrary
#Library                        Collections
#Library                         XvfbRobot
Resource                    /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/Routers.robot
*** Variables ***
#Headless


*** Keywords ***
Open MyHeadless Keyword
    ${options}=         Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method         ${options}      add_argument        --headless
    #my_create_webdriver   Chrome  ${options}
    Open Browser        ${HOST_WEBDES}         Headless Chrome
    Maximize Browser Window

Close Browser
    Close Window



#Open Mychrome Browser
#    [Arguments]    ${URL}
#    ${chrome_options}       Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
#    ${window_size}          Set Variable    window-size=1920,1080
#    Call Method    ${chrome_options}    add_argument    --no-sandbox
#    Call Method    ${chrome_options}    add_argument    test-type
#    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
#    Call Method    ${chrome_options}    add_argument    --disable-gpu
#    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
#    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
#    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Call Method    ${chrome_options}    add_argument    --disable-notifications
#    Call Method    ${chrome_options}    add_argument    --disable-infobars
#    Call Method    ${chrome_options}    add_argument    ${window_size}

