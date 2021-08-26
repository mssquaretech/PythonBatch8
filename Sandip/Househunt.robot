*** Settings ***
Library   SeleniumLibrary
Resource  ../../Resource/HousehuntSD.robot
Resource  ../../Configuration/Env3.robot



*** Test Cases ***
Search Property
  Given I naviagte to      ${URL}        ${Browser}
  When I click on Find Your Property
  And I naviagte to new window
  And I click on Search Button
  And I Enter data in University
  And I enter data in Campus
  And I click on See Reults Button
  And I click on Sort dropdown
  #Then I can see list of Property
