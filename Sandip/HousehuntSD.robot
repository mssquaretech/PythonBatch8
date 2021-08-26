*** Settings ***
Documentation       This page conatins all keywords
Library      SeleniumLibrary
Resource     Pages/HousehuntSearch.robot
Resource     Pages/HousehuntHomePage.robot
Resource     Pages/HousehuntFindyourpropertyPage.robot
Resource     ../Configuration/Env3.robot

*** Keywords ***

I naviagte to
   [Arguments]    ${URL}  ${Browser}
   open browser   ${URL}  ${Browser}
   maximize browser window

I click on Find Your Property
  Click on find your property

I naviagte to new window
  Navigate to new window

I click on Search Button
  click on search button

I enter data in University
  Enter data in University

I enter data in Campus
  Enter data in Campus

I click on See Reults Button
  click on See Reults Button

I click on Sort dropdown
  click on Sort dropdown

#I can see list of Property