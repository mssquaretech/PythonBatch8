*** Settings ***
Documentation    FindyourPropertyPage
Library     SeleniumLibrary

*** Variables ***

${Searchxpath}           //aside[@id='sidebar-first']/descendant::a[contains(text(),'Search')]
${UniversityXpath}       //div[@class='below']/descendant::div[contains(text(),'University')]
${UniversitytbXpath}    //div[@class='filter ng-star-inserted']/child::input
${RAMXpath}              //span[contains(text(),'Royal Academy of Music (RAM)')]
${CampusXpath}            //div[@class='below']/descendant::div[contains(text(),'Campus')]
${MaincampusXpath}      //span[contains(text(),'Main Campus')]
${SeeResultXpath}           //button[contains(text(),'See Results')]

*** Keywords ***

click on Search and fill the details
    click element       ${Searchxpath}
    click element       ${UniversityXpath}
    input text          ${UniversitytbXpath}          Royal Academy
    sleep       2s
    click element       ${RAMXpath}
    sleep       2s
    click element       ${CampusXpath}
    sleep       2s
    click element    ${MaincampusXpath}

click on See Results with wait
    click button       ${SeeResultXpath}
    wait until page contains    Search A Property