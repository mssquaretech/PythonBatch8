*** Settings ***
Documentation    Househunt assignment
Resource        ../../Resource/SD File/HousehuntSD.robot
Resource         ../../Configuration/Env.robot

*** Test Cases ***
Test Househunt
    Given I login to Househunt  ${URL}      ${BROWSER}
    And I click on Find your property
    And I switch to new window
    When I click on Search and fill the details
    And I click on See Results with wait
    And I sort the results as Low to high
    Then I print the names of first 5 Property
