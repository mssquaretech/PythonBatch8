*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${url}                         https://househunt.london.ac.uk/
${Findpropertyxpath}           (//a[@class='nav-link'])[2]
${Searchxpath}                  (//li[@class='first leaf menu-mlid-1241 search mid-1241']/a)[2]
${Universityxpath}               ( //div[contains(text(),'University')])[1]
*** Keywords ***



*** Test Cases ***
Launch URL
   open browser      ${url}       chrome
   maximize browser window
   Capture page screenshot

Click on find property
    Click Element                  ${Findpropertyxpath}
    capture page screenshot

Navigate to new window
   switch window        title=Find Your Property | University of London Housing Services
   capture page screenshot

Click on Search button
   click element                  ${Searchxpath}
   capture page screenshot
   sleep   10

Enter data in Search A Property
  click element                  ${Universityxpath}
  input text                     Royal Academy of Music (RAM)
  capture page screenshot
  close all browsers

