*** Settings ***
Resource            /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/Routers.robot

*** Variables ***
${URL_BLANK}                    about:blank
${field_login}                  xpath=//*[@id="site-header"]/div/div/div[2]/nav/ul/li[2]/a
${allow_permission}             xpath=//*[@id="optInText"]
${field_techo_hotel}            xpath=//*[@id="site-content"]/section[2]/div/div/div/div/div[1]/ul/li[3]/a
${field_search_hotel}           xpath=//a[contains(text(),'Hotel')]



*** Keywords ***
Start Testing
    [Arguments]                 ${URL}
    Open Mola TV                ${URL}
    Set Selenium Timeout        ${DEFAULT_TIMEOUT}
    Set Selenium Speed	        ${DELAY}
#    Click Button Browse On Welcome Page

Clear All Cookies Pages
    Execute Javascript                  window.location.reload(true);
    Sleep                               1s

Click Login Page Now
    Wait Until Element Is Visible       ${field_login}
    Click Link                          ${field_login}
    Wait Until Element Is Visible       ${allow_permission}
    Click Element                       ${allow_permission}

Click Techo Hotel Now
    Wait Until Element Is Visible       ${allow_permission}
    Click Element                       ${allow_permission}
    Wait Until Element Is Visible       ${field_techo_hotel}
    Click Element                       ${field_techo_hotel}

