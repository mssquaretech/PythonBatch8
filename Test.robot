*** Settings ***
Library       SeleniumLibrary


*** Variables ***
${url}          https://google.com
${Textbox}      //input[@class='gLFyf gsfi']
${Gmailxpath}    //*[text()='Gmail']
${Signinxapth}   //*[contains (text(),'Sign in')]
${Usernamexpath}  //input[@id='identifierId']
${Nextbuttonxapth}  (//*[contains(text(),'Next')])[2]

*** Keywords ***
I launch URL
  open browser         ${url}                       Chrome
  input text         ${Textbox}                     Automation
  capture page screenshot
  Maximize browser window
  wait until page contains element   ${Gmailxpath}

I Click on gmail
   click element      ${Gmailxpath}
   capture page screenshot
   wait until page contains element   ${Signinxapth}

I click on Signin Gmail
   click Element     ${Signinxapth}
   capture page screenshot
   wait until page contains element    ${Usernamexpath}

I Enter username
   input text    ${Usernamexpath}           joshisandip011@gmail.com
   capture page screenshot
   click element  ${Nextbuttonxapth}
   capture page screenshot
*** Test Cases ***

Test google
  Given I launch URL
  When I Click on gmail
  And I click on Signin Gmail
  Then I Enter username
