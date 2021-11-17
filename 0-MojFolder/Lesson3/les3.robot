*** Settings ***
Library    SeleniumLibrary
Resource    ./Keywords/keywords.robot
Resource    ./Variables/variables.robot
Test Setup    Open Chrome
Test Teardown    close browser


*** Test Cases ***
Open Artin Homepage
    wait until page contains    Vyvíjame


Open Artin Homepage
    click element    id:menu-item-3078
    wait until page contains    Naše pobočky


Pocet IT Specialistov
    click element    id:menu-item-3084
    wait until page contains    IT špecialistov v troch pobočkách
    sleep    3
    ${foo} =    get text    xpath://div[@class="about persons"]/h4
    log    ${foo}


Application
    click element    id:menu-item-3127
    sleep   3 s
    wait until element is visible    xpath:a[text()='Kontakt']
    click element
    #  input
    #  webelementy dat do premennych
    #  pouzovat vlastne keywordy
