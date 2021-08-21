*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${FindYourPropXpath}    //a[text()='Find Your Property']


*** Keywords ***
I navigate to
    [Arguments]         ${URL}          ${Browser}
    open browser        ${URL}          ${Browser}
    maximize browser window


I click on Find Your Property
    Click on Find Your Property
    Switch a window

Click on search
    Click on searchbox

Select Value as ${University}
    Select university as ${University}

Click on Campus
    Select Campus as Main Campus

Click on See Results
    Click on See Results Button

Sort the properties as ${SortValue}
    Sort the properties with ${SortValue}

Print names of first 5 properties
    List of first 5 properties