*** Settings ***
Library             SeleniumLibrary
Library             RPA.Browser.Selenium

*** Keywords ***
Click on Find Your Property
    click element       ${FindYourPropXpath}


Switch a window
    wait until page contains                Search
    switch window                           title:Find Your Property | University of London Housing Services