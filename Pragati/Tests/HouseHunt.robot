*** Settings ***
Documentation    Suite description
Resource          ../Resource/HouseHuntSD.robot
Resource          ../Resource/Pages/HouseHuntHome.robot
Resource          ../Resource/Pages/HouseHuntProperty.robot
Resource          ../Resource/Pages/HouseHuntPropertyPage.robot



*** Test Cases ***
House Hunt TestCases
    Given I navigate to         https://househunt.london.ac.uk/         chrome
    When I click on Find Your Property
    And Click on search
    And Select Value as "Royal Academy of Music (RAM)"
    And Click on Campus
    And Click on See Results
    And Sort the properties as "Low to High"
    Then Print names of first 5 properties