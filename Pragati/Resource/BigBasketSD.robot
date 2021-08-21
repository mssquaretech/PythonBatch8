*** Settings ***
Library         SeleniumLibrary


*** Keywords ***
I nevigate to
    [Arguments]         ${URL}          ${Browser}
    open browser        ${URL}          ${Browser}
    maximize browser window

I enter vegetables in searchbox
    input text          //input[@qa='searchBar']        Vegetables
    capture page screenshot

I click on search button
    click button        //button[@qa='searchBtn']

I can see list of vegetables
    sleep       2s
    ${VegetableText}        get text        //h2[@qa='pageName']
    log to console          ${VegetableText}