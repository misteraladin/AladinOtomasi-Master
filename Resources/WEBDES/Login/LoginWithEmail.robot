*** Settings ***
#Library                            SeleniumLibrary
Resource                            /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/Routers.robot

*** Variables ***
${field_email}                      xpath=//input[@id='email']
${field_password}                   xpath=//input[@id='password']
${toogle_password}                  xpath=//body/div[@id='__nuxt']/div[@id='__layout']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/form[1]/div[2]/span[1]/span[1]
${btn_LOGIN}                        xpath=//body/div[@id='__nuxt']/div[@id='__layout']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/form[1]/button[1]
${forgot_password}                  xpath=//span[contains(text(),'Lupa password?')]
${forgot_email}                     xpath=//input[@id='email']
${btn_forgot_password}              xpath=//button[contains(text(),'Reset Password')]
${validasi_invalid_data_login}      xpath=/html/body/div[6]/div/div[3]/button[1]


#Expected
${expected_after_login}             Hi Nina Arina!


*** Keywords ***
Forgot Password
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible       ${forgot_password}
    Click Element                       ${forgot_password}
    Input Text                          ${forgot_email}         ${EMAIL}
    Click Element                       ${btn_forgot_password}

Login Using Credentials
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Input Email On Login Page           ${EMAIL}
    Input Password On Login Page        ${PASSWORD}
    Click Login Button On Login Page


#Restore Existing Cookies Or Relogin
#     [Arguments]     ${EMAIL}    ${PASSWORD}
#    # Remove special characters
#    ${EMAILS}                Remove String         ${EMAIL}     .    @    +
#
#    # Check Is variable exist?
#    ${is_variable_exist}=    Get Variable Value    ${cookies_${EMAIL}}
#    ${variable_status}=      Set Variable If    """${is_variable_exist}""" != 'None'    ${True}    ${False}
#
#    # Assign value if variable is not exist
#    IF  '${variable_status}' == '${False}'
#        Login Using Credentials           ${EMAIL}      ${PASSWORD}
#        Get Cookies    ${EMAIL}
#    ELSE IF    '${variable_status}' == '${True}'
#        Set All Cookies    ${EMAIL}
#        Reload Page
#    END

Input Email On Login Page
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible       ${field_email}
    Input Text                          ${field_email}              ${EMAIL}

Input Password On Login Page
    [Arguments]     ${PASSWORD}
    Wait Until Element Is Visible       ${field_password}
    Input Password                      ${field_password}           ${PASSWORD}
    Press Keys                          ${toogle_password}          [Return]

Click Login Button On Login Page
    Wait Until Element Is Visible       ${btn_LOGIN}
    Click Element                       ${btn_LOGIN}
    Sleep                               5s
#    Click Element                       ${validasi_invalid_data_login}

Expected After Login Succsess
    Wait Until Element Is Visible       css=li:nth-of-type(3) > .nav-link
    Page Should Contain                 Hi Nina Arina!


