*** Settings ***
Library             SeleniumLibrary
Library             String


*** Variables ***
${SortDropDownXpath}            //span[text()='Default']
${SortValueXpath}               //span[contains(text(),<SortValue>)]
${ListOfPropertiesXPath}             //h3[@class='card-info__address mt-2 mb-2']


*** Keywords ***
Sort the properties with ${SortValue}
    sleep                           30s
    click element                   ${SortDropDownXpath}
    ${SortValueXpath}               Replace string              ${SortValueXpath}           <SortValue>             ${SortValue}
    click element                   ${SortValueXpath}


List of first 5 properties
    sleep                           20s
    @{ListOfProperties}=            get webelements             ${ListOfPropertiesXPath}
    FOR     ${i}        IN RANGE        0       4
        ${PropertyText}     get text        ${ListOfProperties}[${i}]
        log to console      ${PropertyText}
    END