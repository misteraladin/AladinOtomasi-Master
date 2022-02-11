*** Settings ***
#Library                            SeleniumLibrary
Resource                            /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/RoutersMobile.robot

*** Variables ***
${btn_Skip}                         com.misteraladin.android.stag:id/relSkip
${btn_login}                        com.misteraladin.android.stag:id/relSignIn
${btn_myprofile}                    com.misteraladin.android.stag:id/navigation_my_profile


*** Keywords ***
Button Skip and Login
    Wait Until Element Is Visible   ${btn_Skip}
    Click Element                   ${btn_Skip}
#    wait until element is visible   ${btn_login}
#    click element                   ${btn_login}

Click Button My Profile
    Wait until element is visible   ${btn_myprofile}
    click element                   ${btn_myprofile}

Input Email Not Input Password
    [Arguments]                     ${input_email}
    Wait until element is visible   com.misteraladin.android.stag:id/txtTitle
    Page should contain element     com.misteraladin.android.stag:id/txtTitle
    Input text                      com.misteraladin.android.stag:id/etEmail        ${input_email}
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot
    Clear Text                      com.misteraladin.android.stag:id/etEmail

Input Password not Input Email
    [Arguments]                     ${input_password}
    Wait until element is visible   com.misteraladin.android.stag:id/txtTitle
    Page should contain element     com.misteraladin.android.stag:id/txtTitle
    input text                      com.misteraladin.android.stag:id/etPassword     ${input_password}
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot
    clear text                      com.misteraladin.android.stag:id/etPassword

Not Input All Field
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot

Input Email with number only
    [Arguments]                     ${input_email_number}       ${real_input_password}
    Input text                      com.misteraladin.android.stag:id/etEmail        ${input_email_number}
    Input text                      com.misteraladin.android.stag:id/etPassword     ${real_input_password}
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot
    clear text                      com.misteraladin.android.stag:id/etEmail
    clear text                      com.misteraladin.android.stag:id/etPassword

Input Email with spesial karakter
    [Arguments]                     ${input_email_spesialkarakter}     ${real_input_password}
    Input text                      com.misteraladin.android.stag:id/etEmail        ${input_email_spesialkarakter}
    Input text                      com.misteraladin.android.stag:id/etPassword     ${real_input_password}
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot
    clear text                      com.misteraladin.android.stag:id/etEmail
    clear text                      com.misteraladin.android.stag:id/etPassword

Input email with invalid data login
    [Arguments]                     ${fake_email}       ${fake_password}
    Input text                      com.misteraladin.android.stag:id/etEmail        ${fake_email}
    Input text                      com.misteraladin.android.stag:id/etPassword     ${fake_password}
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot
    clear text                      com.misteraladin.android.stag:id/etEmail
    clear text                      com.misteraladin.android.stag:id/etPassword

Validasi Text In Login Page
    Should Be String        Log In
    Should Be String        E-mail
    Should Be String        Password
    Should Be String       Forgot Password
    Should Be String        Or log in via
    Should Be String        Don't have an account
    Should Be String        PHONE NUMBER
    Should Be String        E-MAIL

Input Valid Email, Password Login
    [Arguments]                     ${real_input_email}       ${real_input_password}
    Input text                      com.misteraladin.android.stag:id/etEmail        ${real_input_email}
    Input text                      com.misteraladin.android.stag:id/etPassword     ${real_input_password}
    click element                   com.misteraladin.android.stag:id/btnSignIn
    capture page screenshot













