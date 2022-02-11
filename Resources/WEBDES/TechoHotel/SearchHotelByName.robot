*** Settings ***
#Library                            SeleniumLibrary
Resource                            /Users/andikaprananto/PycharmProjects/AladinOtomasi-Master/Frameworks/Routers.robot

*** Variables ***
${field_search_Hotel}               xpath=//input[@id='input-hotel-search']
${popup_afterhotelsearch}           css=.item-text-title
${input_start_date}                 xpath=//input[@id='input-start-date-hotel']



#Expected


*** Keywords ***
Input Search Hotel By Name
    [Arguments]                         ${byNameHotel}
    Input Text                          xpath=//input[@id='input-hotel-search']       ${byNameHotel}
    Wait Until Element Is Visible       css=.item-text-title
    Click Element                       css=.item-text-title
    Click Element                       xpath=//*[@id="input-start-date-hotel"]

Click Date CheckIn
    [Arguments]                                 ${datcheckin}
    ${datcheckin}       Get Current Date        increment=1 day     result_format=%d
    ${datcheckin}=      Convert To Integer  ${datcheckin}
    Log  NEXT DAY ${datcheckin}
    Wait Until Element Is Visible       css=div.vc-title-layout.align-center
    Click Element                       xpath=//*/text()[normalize-space(.)='${datcheckin}']/parent::*
    Sleep                               5s

Click Date CheckOut
    [Arguments]                                     ${dataCheckOut}
    ${dataCheckOut}       Get Current Date          increment=7 day     result_format=%d
    ${dataCheckOut}=      Convert To Integer        ${dataCheckOut}
    Log  NEXT DAY ${dataCheckOut}
    Wait Until Element Is Visible       css=div.vc-title-layout.align-center
    Click Element                       xpath=//*/text()[normalize-space(.)='${dataCheckOut}']/parent::*
        Sleep                               5s

Input Jumlah Kamar & Tamu
    Wait Until Element Is Visible       xpath=//*[@id="site-content"]/section[2]/div/div/div/div/div[2]/div[3]/div/div[4]/div[1]
    Click Element                       xpath=//*[@id="site-content"]/section[2]/div/div/div/div/div[2]/div[3]/div/div[4]/div[1]
        #Kamar
        Click Element       xpath=//*[@id="site-content"]/section[2]/div/div/div[1]/div/div[2]/div[3]/div/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/button[2]
        Click Element       xpath=//*[@id="site-content"]/section[2]/div/div/div[1]/div/div[2]/div[3]/div/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/button[2]
        #Tamu
        Click Element                           xpath=/html/body/div[2]/div/div/main/section[2]/div/div/div[1]/div/div[2]/div[3]/div/div[4]/div[2]/div[1]/div[2]/div[2]/div[2]/button[2]
        Wait Until Element Is Visible           xpath=//h1[contains(text(),'Saatnya Bersantai')]
         Scroll Element Into View               xpath=//h1[contains(text(),'Saatnya Bersantai')]
        #Selesai
        Click Element       xpath=//*/text()[normalize-space(.)='Selesai']/parent::*
        #Button Search
        Click Element       xpath=//button[@id='btn-search-hotel']


Product Detail Page Hotel by Name
    Wait Until Element Is Visible   xpath=//h2[contains(text(),'${byNameHotel}')]
    Click Element                   xpath=//a[@class='btn-open-map']
    Wait Until Element Is Visible   xpath=//img[@src='/img/close.svg']
    Click Element                   xpath=//img[@src='/img/close.svg']
    Click Element                   xpath=//a[@class='btn-show-more']
    Click Element                   xpath=//i[@class='fa fa-close']
    Wait Until Element Is Visible   xpath=//button[@class='btn btn-login']
    Scroll Element Into View        xpath=//button[@class='btn btn-login']
    Page Should Contain             Fasilitas Hotel
    Page Should Contain             Wifi
    Page Should Contain             Kolam Renang
    Page Should Contain             Layanan Kamar
    Page Should Contain             Restoran
    Page Should Contain             Area Parkir
    Page Should Contain             Lift
    Page Should Contain             Spa & Pusat Kebugaran
    Scroll Element Into View        xpath=//h3[contains(text(),'Deluxe')]
    Page Should Contain             Deluxe
    Scroll Element Into View        xpath=//*/text()[normalize-space(.)='Pilih']/parent::*
    Click Link                      xpath=//*/text()[normalize-space(.)='Lihat Detail']/parent::*
        Page Should Contain         Harga 1 Kamar/Malam
        Should Be String            IDR 180.000
        Page Should Contain         Jumlah Kamar
        Page Should Contain         1
        Page Should Contain         Jumlah Malam
        Page Should Contain         1
        Scroll Element Into View    xpath=//*/text()[normalize-space(.)='Kebijakan Anak']/parent::*
            Click Element           xpath=//*/text()[normalize-space(.)='Fasilitas']/parent::*
            Scroll Element Into View    xpath=//*/text()[normalize-space(.)='Fasilitas']/parent::*
            Should Be String            12.0 m2
            Scroll Element Into View    xpath=//*/text()[normalize-space(.)='Tentang Kamar']/parent::*
            Scroll Element Into View    css=i.fa.fa-close
            Click Element               css=i.fa.fa-close

Click Fasilitas Product Detail Page Hotel by Name
    Click Element               xpath=//*/text()[normalize-space(.)='WiFi']/parent::*
    Click Element               xpath=//*/text()[normalize-space(.)='Termasuk Sarapan']/parent::*
    Click Element               xpath=//*/text()[normalize-space(.)='Bisa Refund']/parent::*
        #Unclick
            Click Element            xpath=//*/text()[normalize-space(.)='WiFi']/parent::*
            Click Element           xpath=//*/text()[normalize-space(.)='Termasuk Sarapan']/parent::*
            Click Element           xpath=//*/text()[normalize-space(.)='Bisa Refund']/parent::*

