*** Settings ***
Library    SeleniumLibrary
Resource        ../Pages/Homepage.robot
Resource        ../Pages/FindYourProperty.robot
Resource        ../Pages/Resultpage.robot
*** Keywords ***
I login to Househunt
    [Arguments]         ${URL}      ${BROWSER}
    open browser         ${URL}      ${BROWSER}
    maximize browser window

I click on Find your property
   Click on Find your property

I switch to new window
    switch to new window

I click on Search and fill the details
     click on Search and fill the details

I click on See Results with wait
       click on See Results with wait


I sort the results as Low to high
        sort the results as Low to high

I print the names of first 5 Property
         print the names of first 5 Property