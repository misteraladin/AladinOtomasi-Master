*** Settings ***
Documentation               Regression Register Page Aladin
Library                     SeleniumLibrary
#Resource                   ../Resources/Common/Browsers.robot
Resource                    ../../Frameworks/Routers.robot

*** Variables ***
${USERNAME}                 KEMAL LOVERS
${EMAIL}                    kemal.lovers@gmail.com
${NOTELPON}                 8129960932



*** Test Cases ***
TC001 Open MyHeadless Browser
    [Documentation]             Open MyHeadless Browser
	[Tags]                      Regression
    Browsers.Open MyHeadless Keyword
TC002 Registration with username, email and password
    [Documentation]             User is able to register their email and password from the website.
	[Tags]                      Regression
	${RANDOM_NUMBER}            Generate random string      10      0123456789
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER}@gmail.com
    RegisterPage.Clear All Cookies Pages
    RegisterPage.Click Register Now
    RegisterPage.Get Tittle Register & Wording Page
    RegisterPage.Input all the field and tick the agreement     ${USERNAME}     ${EMAIL}     ${NOTELPON}
    RegisterPage.Click Register Button
    Reload Page
#    Go Back
TC003 Registration Input Email & No Telepon without Username
    [Documentation]             User Registration Input Email & No Telephone without Username from the website.
	[Tags]                      Regression
	${RANDOM_NUMBER_1}            Generate random string      1       0123456789
	${RANDOM_NUMBER_2}            Generate random string      10      0123456789
    ${NOTELPON}			        Catenate	                8129960910${RANDOM_NUMBER_1}
    ${NOTELPON}			        Catenate	                8128860910${RANDOM_NUMBER_1}
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER_2}@mola.tv
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER_2}@gmail.com
	RegisterPage.Clear All Cookies Pages
	RegisterPage.Get Tittle Register & Wording Page
	RegisterPage.Input Email & No Telepon without Username      ${EMAIL}        ${NOTELPON}
	RegisterPage.Click Register Button
    RegisterPage.Validasi Fields Username, Email, NoTelepon Register Page
TC004 Registration Input No Telepon without Username & Email
    [Documentation]             User Registration Input No Telephone without Username & Email from the website.
	[Tags]                      Regression
	${RANDOM_NUMBER}            Generate random string      1       0123456789
    ${NOTELPON}			        Catenate	                8129960910${RANDOM_NUMBER}
    ${NOTELPON}			        Catenate	                8128860910${RANDOM_NUMBER}
	RegisterPage.Clear All Cookies Pages
	RegisterPage.Get Tittle Register & Wording Page
	RegisterPage.Input Input No Telepon without Username & Email    ${NOTELPON}
	RegisterPage.Click Register Button
    RegisterPage.Validasi Fields Username, Email, NoTelepon Register Page
TC005 Registration Input Email without Username & No Telepon
    [Documentation]             User Registration Registration Input Email without Username & No Telepon from the website.
	[Tags]                      Regression
	${RANDOM_NUMBER}            Generate random string      10      0123456789
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			        Catenate	                kamal.lovers+${RANDOM_NUMBER}@gmail.com
	RegisterPage.Clear All Cookies Pages
	RegisterPage.Get Tittle Register & Wording Page
	RegisterPage.Input Email without Username & No Telepon          ${EMAIL}
	RegisterPage.Click Register Button
    RegisterPage.Validasi Fields Username, Email, NoTelepon Register Page
TC006 Not Input Fields Username, Email, No Telepon, but tick the agreement
    [Documentation]             Not Input Fields Username, Email, No Telepon, but tick the agreement from the website.
	[Tags]                      Regression
	RegisterPage.Clear All Cookies Pages
	RegisterPage.Get Tittle Register & Wording Page
	RegisterPage.Not Input Fields Username, Email, No Telepon, but tick the agreement
    RegisterPage.Click Register Button
    RegisterPage.Validasi Fields Username, Email, NoTelepon Register Page
TC007 Not input all the field and tick the agreement
    [Documentation]             Not input all the field and tick the agreement from the website.
	[Tags]                      Regression
	RegisterPage.Clear All Cookies Pages
	RegisterPage.Get Tittle Register & Wording Page
	RegisterPage.Click Register Button
    RegisterPage.Validasi Fields Username, Email, NoTelepon Register Page






















