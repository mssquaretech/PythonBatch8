*** Settings ***
Documentation    ResultsPage
Library         SeleniumLibrary

*** Variables ***
${ElementPresentXpath}  //h1[text()='Search A Property']
${SortXpath}            //span[text()='Default']
${LowtoHighXpath}        //span[text()='Price: Low to High']
@{ListofPropertyXpath}      //div[@class='row']/descendant::h3[@class='card-info__address mt-2 mb-2']

*** Keywords ***
sort the results as Low to high
        sleep   50s
        click element   ${SortXpath}
        wait until element is visible  ${LowtoHighXpath}
        click element   ${LowtoHighXpath}
        sleep   5s

print the names of first 5 Property
        @{ListofProperties}=    get webelements     @{ListofPropertyXpath}
        FOR   ${i}  IN RANGE    0      4
            log to console  get text    ${ListofProperties}[${i}]
        END



