*** Settings ***
Library   SeleniumLibrary
Resource    ./Keywords/kw.robot
Resource    ./Variables/variables.robot
Test Setup  Open Chrome On Google Homepage
Test Teardown   Close Browser

*** Variables ***
${google_URL}           https://www.google.com/
${suhlasim_btn}         //div[contains(text(), "Súhlasím")]
${search_textbox}       //input[@name="q"]
${results_div}          //div[@id="rso"]


*** Keywords ***
Open Chrome On Google Homepage
    open browser    ${google_URL}    gc
    set window size    1920    1080
    click element    ${suhlasim_btn}

Enter Text And Press Enter
    input text    ${search_textbox}    what is an Apple
    press keys    ${search_textbox}    RETURN

Assert TC4
    element should be visible    ${results_div}
    page should contain    apple


*** Test Cases ***
#TC4 Press Enter From The Textbox
#    Enter Text And Press Enter
#    Assert TC4

TC6 Invalid Value In The Search Textbox
    input text    ${search_textbox}    @#$%^
    press keys    ${search_textbox}    RETURN





