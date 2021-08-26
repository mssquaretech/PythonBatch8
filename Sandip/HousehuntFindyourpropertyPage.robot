*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Search}                         (//a[text()='Search'])[3]

*** Keywords ***
click on search button
  Click element                 ${Search}
  CAPTURE PAGE SCREENSHOT
  sleep     10