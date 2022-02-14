*** Settings ***
Documentation                   Regression Mobile Mister Aladin Login Page
Library                         AppiumLibrary   run_on_failure=AppiumLibrary.Capture Page Screenshot
#Resource                       ../Resources/Common/Browsers.robot
Resource                        ../../../Frameworks/RoutersMobile.robot

*** Variables ***
${real_input_email}             test.device@misteraladin.com
${real_input_password}          MisterAladin_2019
${fake_email}                   andika_prananto@misteraladin.com
${fake_password}                Misteraladin_2022




*** Test Cases ***
TC001 When Setup and open dialer Android App
    [Documentation]             Open application and allow permission apps
	[Tags]                      Regression Mobile App
    MobileSetUp.Setup and open dialer Android App
    MobileSetUp.Allow PermissionController Android App
#    Go Back

TC002 Click Skip Or Login and Click My Profile
    [Documentation]             Click Skip Or Login and Click My Profile
	[Tags]                      Regression Mobile App
    LoginEmail.Button Skip and Login
    LoginEmail.Click Button My Profile

TC003 Input Email Not Input Password
    [Documentation]             Input Email Not Input Password
    [Tags]                      Regression Mobile App
    ${RANDOM_NUMBER}            Generate random string      10      0123456789
    ${input_email}              Catenate                    aladin+${RANDOM_NUMBER}@mnc.tv
    ${input_email}              Catenate                    mister+${RANDOM_NUMBER}@aladin.com
    LoginEmail.Input Email Not Input Password           ${input_email}

TC003 Input Password not Input Email
    [Documentation]             Input Password not Input Email
    [Tags]                      Regression Mobile App
    ${RANDOM_NUMBER}            Generate random string      3      0123456789
    ${input_password}           Catenate                    MisterAladin_${RANDOM_NUMBER}
    ${input_password}           Catenate                    MisterAladin_${RANDOM_NUMBER}
    LoginEmail.Input Password not Input Email           ${input_password}

TC004 Not Input All Field
    [Documentation]             Not Input All Field
    [Tags]                      Regression Mobile App
    LoginEmail.Not Input All Field

TC005 Input Email with number only
    [Documentation]             Input Email with number only
    [Tags]                      Regression Mobile App
    ${RANDOM_NUMBER}            Generate random string      3      0123456789
    ${input_email_number}       Catenate                    923849${RANDOM_NUMBER}
    ${input_email_number}       Catenate                    903294${RANDOM_NUMBER}
    LoginEmail.Input Email with number only                 ${input_email_number}       ${real_input_password}

TC006 Input Email with spesial karakter
    [Documentation]             Input Email with spesial karakter
    [Tags]                      Regression Mobile App
    ${RANDOM_NUMBER}                        Generate random string      3      !@$%^&*()_+=-{}|:"<>?
    ${input_email_spesialkarakter}          Catenate                    @@%^%*^${RANDOM_NUMBER}
    ${input_email_spesialkarakter}          Catenate                    @@%^%*^${RANDOM_NUMBER}
    LoginEmail.Input Email with spesial karakter    ${input_email_spesialkarakter}       ${real_input_password}

TC007 Input email with invalid data login
    [Documentation]             Input email with invalid data login
    [Tags]                      Regression Mobile App
    LoginEmail.Input email with invalid data login      ${fake_email}       ${fake_password}

TC008 Validasi Text In Login Page
    [Documentation]             Validasi Page Text
    [Tags]                      Regression Mobile App
    LoginEmail.Validasi Text In Login Page

TC009 Input Valid Email, Password Login
    [Documentation]             Input Valid Email, Password Login
    [Tags]                      Regression Mobile App
    LoginEmail.Input Valid Email, Password Login        ${real_input_email}       ${real_input_password}