*** Settings ***
#Library                         SeleniumLibrary
Resource                        /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/Routers.robot

*** Variables ***
${field_element_daftar}         xpath=//a[contains(text(),'Daftar')]
${allow_permission}             xpath=//*[@id="optInText"]
${field_username}               xpath=//input[@id='fullname']
${field_email}                  xpath=//*[@id="email"]
${field_noHP}                   xpath=//*[@id="phone_number_phone_number"]
${newslatter}                   xpath=//input[@id='register-newsletter']
${termcondition}                xpath=//*[@id="termconditions"]
${btn_ok_Register}              xpath=//button[contains(text(),'OK')]



#Expected Wording Page Register
${expected_getTittle}               Register - Mister Aladin - Mister Aladin
${expected_wording_1}               Daftar
${expected_wording_2}               Nama Lengkap
${expected_wording_3}               E-mail
${expected_wording_4}               Nomor Telepon
${expected_wording_5}               Atau daftar melalui
${expected_wording_6}               Saya mau dikirimkan newsletter dan penawaran eksklusif
${expected_wording_otp_1}           Password
${expected_wording_otp_2}           Masa berlaku kode OTP
${expected_validasi_regis_1}        xpath=//span[contains(text(),'Wajib diisi')]


*** Keywords ***
Clear All Cookies Pages
    Execute Javascript                  window.location.reload(true);
    Sleep                               2s

Click Register Now
    Wait Until Element Is Visible       ${field_element_daftar}
    Click Link                          ${field_element_daftar}
    Wait Until Element Is Visible       ${allow_permission}
    Click Element                       ${allow_permission}

Get Tittle Register & Wording Page
    Wait Until Element Is Visible       ${field_username}
    ${Get_title}=                       Get Title
    Should Be Equal As Strings          ${Get_title}        ${expected_getTittle}
    Page Should Contain                 ${expected_wording_1}
    Page Should Contain                 ${expected_wording_2}
    Page Should Contain                 ${expected_wording_3}
    Page Should Contain                 ${expected_wording_4}
    Page Should Contain                 ${expected_wording_5}
    Page Should Contain                 ${expected_wording_6}

Input all the field and tick the agreement
    [Arguments]     ${USERNAME}     ${EMAIL}     ${NOTELPON}
    Wait Until Element Is Visible                   ${field_username}
    Input Text                                      ${field_username}       ${USERNAME}
    Input Text                                      ${field_email}          ${EMAIL}
    Input Text                                      ${field_noHP}           ${NOTELPON}
    Click Element                                   ${newslatter}
    Click Element                                   ${termcondition}

Click Register Button
    Wait Until Element Is Visible                   ${btn_ok_Register}
    Click Element                                   ${btn_ok_Register}
    Sleep                                           5s

Input Email & No Telepon without Username
    [Arguments]     ${EMAIL}     ${NOTELPON}
    Wait Until Element Is Visible                   ${field_email}
    Input Text                                      ${field_email}          ${EMAIL}
    Input Text                                      ${field_noHP}           ${NOTELPON}
    Click Element                                   ${newslatter}
    Click Element                                   ${termcondition}

Validasi Fields Username, Email, NoTelepon Register Page
    Wait Until Element Is Visible                   ${expected_validasi_regis_1}
    Page Should Contain Element                     ${expected_validasi_regis_1}

Input Input No Telepon without Username & Email
    [Arguments]     ${NOTELPON}
    Wait Until Element Is Visible                   ${field_noHP}
    Input Text                                      ${field_noHP}           ${NOTELPON}
    Click Element                                   ${newslatter}
    Click Element                                   ${termcondition}

Input Email without Username & No Telepon
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible                   ${field_email}
    Input Text                                      ${field_email}          ${EMAIL}
    Click Element                                   ${newslatter}
    Click Element                                   ${termcondition}

Not Input Fields Username, Email, No Telepon, but tick the agreement
    Wait Until Element Is Visible                   ${newslatter}
    Click Element                                   ${newslatter}
    Click Element                                   ${termcondition}









