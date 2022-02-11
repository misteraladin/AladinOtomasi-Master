*** Settings ***
Documentation               Regression Techo Hotel Page Aladin
Library                     SeleniumLibrary
#Resource                   ../Resources/Common/Browsers.robot
Resource                    ../../Frameworks/Routers.robot

*** Variables ***
${byNameHotel}              Roemahkoe Heritage Hotel Boutique
${datcheckin}               9
${dataCheckOut}             11

*** Test Cases ***
TC001 Open MyHeadless Browser
    [Documentation]             Open MyHeadless Browser
	[Tags]                      Regression
    Browsers.Open MyHeadless Keyword

TC002 Click Techo Hotel Now
    [Documentation]             Open Tab Techo Hotel From Web
	[Tags]                      Regression
	CommonKey.Click Techo Hotel Now

TC003 Input Search Hotel By Name
    SearchHotelByName.Input Search Hotel By Name        ${byNameHotel}
    SearchHotelByName.Click Date CheckIn                ${datcheckin}
    SearchHotelByName.Click Date CheckOut               ${dataCheckOut}
    SearchHotelByName.Input Jumlah Kamar & Tamu

TC004 Product Detail Page Hotel by Name
    SearchHotelByName.Product Detail Page Hotel by Name
    SearchHotelByName.Click Fasilitas Product Detail Page Hotel by Name
