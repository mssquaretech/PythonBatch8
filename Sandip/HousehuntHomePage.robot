*** Settings ***
Documentation    This file contains all keywords realted to Househunt home page.
Library     SeleniumLibrary


*** Keywords ***
Click on find your property
   Click element        (//*[contains(text(),'Find Your Property')])[1]
   capture page screenshot

Navigate to new window
    Switch window        title=Find Your Property | University of London Housing Services