*** Settings ***
Documentation    HomePagesFiles
Library         SeleniumLibrary

*** Variables ***
${FindYourPropertyxpath}    //div[contains(@class,'primary')]/descendant::a[contains(@href,'property')]
${WindowLink}           https://housing.london.ac.uk/find-your-property



*** Keywords ***
Click on Find your property
        click element   ${FindYourPropertyxpath}
        sleep       2s
switch to new window
        @{windowHandles}=      get window handles
        log to console           @{windowHandles}
        switch window           ${windowHandles}[1]
        sleep       2s