*** Settings ***
Library         SeleniumLibrary
Library         String

*** Variables ***
${SerachElemXpath}                      //div[@id='block-menu_block-2']/descendant::a
${UniversitySearchBoxXpath}             //div[text()=' University ']
${UniversityValueXpath}                 //div[@class='filter ng-star-inserted']/input
${UniversityNameXpath}                  //li/span[text()=<UniversityName>]
${CampusSearchBoxXpath}                 //div[text()=' Campus ']
${CampusXpath}                          //span[text()='Main Campus']
${SeeResultsXpath}                      //button[text()='See Results']

*** Keywords ***
Click on searchbox
    click element           ${SerachElemXpath}

Select university as ${University}
    wait until page contains                            Search A Property
    click element                                       ${UniversitySearchBoxXpath}
    sleep                        2s
    input text                                          ${UniversityValueXpath}                 royal
    ${UniversityNameXpath}       Replace String         ${UniversityNameXpath}          <UniversityName>        ${University}
    wait until page contains                            RAM
    click element                                       ${UniversityNameXpath}

Select Campus as Main Campus
    click element                                       ${CampusSearchBoxXpath}
    click element                                       ${CampusXpath}

Click on See Results Button
    click button                                        ${SeeResultsXpath}
