*** Settings ***
Library   SeleniumLibrary
#Resource    ./Keywords/keywords.robot
#Resource    ./Variables/variables.robot
Test Setup  Open Chrome O Doprave Homepage
Test Teardown   Close Browser


*** Variables ***
${language_switcher_btn}        //ul[contains(@class, "language-switcher-locale-url")]/li[contains(@class, "active")]
${language_switcher_sk}         //a[contains(@class, "language-link")][contains(text(), "Slovenčina")]
@{languages}                    //ul[contains(@class, "language-switcher-locale-url")]/li/a

${region_bb}                    //span[contains(@class, "city-name bb")]
${sandwich_btn}                 //div[@class="left-controls"]//div[@class="access-bar"]/button[@class="btn-menu"]
${sandwich_additional_maps}     //div[contains(@class, "ol-layerswitcher-ui layer-toolbar")]
${map_visibility_toggle_btn}    //div[@class="visibility-toggler-wrapper"]/button
${traffic_incidents_btn}        //span[contains(@class, "ol-tree ng-scope ol-collapsed")][@style=""]
${i_button}                     //span[contains(@class, "tempStyleLegend ng-scope legendBold")]
${i_toolbar}                    //div[contains(@class, "ol-layer layer-toolbar")]


*** Keywords ***
Open Chrome O Doprave Homepage
    Open Browser    https://odoprave.info   gc
    Set Window Size    1920    1080


*** Test Cases ***
Change Language to SK
    page should not contain    Slovenčina
    click element    ${language_switcher_btn}
    sleep    3
    click element    ${language_switcher_sk}

Tooltip Map
    mouse over   ${region_bb}
    sleep    2
    page should contain    Number of reported events
    #  stale elemene exception

TC25 Traffic situation - additional maps
    go to    https://odoprave.info/wps/portal/pub/Home/dopravna-situacia
    sleep    5
    click element    ${sandwich_btn}
    click element    ${sandwich_additional_maps}
    element text should be    ${map_visibility_toggle_btn}    Hide inactive maps
    click element    ${map_visibility_toggle_btn}
    element text should be    ${map_visibility_toggle_btn}    Show inactive maps

TC26 Traffic situation - additional maps - traffic incidents
    go to    https://odoprave.info/wps/portal/pub/Home/dopravna-situacia
    sleep    5
    click element    ${sandwich_btn}
    click element    ${traffic_incidents_btn}
    click element    ${i_button}
    element should be visible    ${i_toolbar}






