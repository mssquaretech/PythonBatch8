*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${University}             //div[contains(text(),'University')][1]
${Input}                  (//input)[1]
${RAMClick}               //span[contains(text(),'Royal Academy of Music (RAM)')]
${campusclick}            //div[contains(text(),'Campus')]
${maincampusclick}        //span[contains(text(),'Main Campus')]
${Seeresults}             //button[contains(text(),'See Results')]
${Defaultclick}           //span[text()='Default']
${LowtoHighclick}         //span[contains(text(),' Low to High')]


*** Keywords ***

Enter data in University
  Click element                  ${University}
  input text                     ${Input}               Royal Academy of Music
  click element                  ${RAMClick}

Enter data in Campus
  click element                  ${campusclick}
  click element                  ${maincampusclick}
  capture page screenshot

click on See Reults Button
  click element                  ${Seeresults}
  sleep              20

click on Sort dropdown
  click element                  ${Defaultclick}
  click element                  ${LowtoHighclick}
  sleep     15
  capture page screenshot
