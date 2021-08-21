*** Settings ***
Documentation    Suite description
Resource        ../Resource/BigBasketSD.robot

*** Test Cases ***
BigBasket TestCase
    Given I nevigate to                         https://www.bigbasket.com/      chrome
    When I enter vegetables in searchbox
    And I click on search button
    Then I can see list of vegetables