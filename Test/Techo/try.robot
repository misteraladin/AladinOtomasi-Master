*** Settings ***
Library         Seleniumlibrary


*** Variables ***


*** Keywords ***
Open Browser
    Open browser        www.tokopedia.com       Chrome
    Maximize Browser Window

*** Test Cases ***
TC001 Hotel Click Techo
    When Open Browser
