*** Settings ***
Library    SeleniumLibrary
Resource    ./Keywords/keywords.robot
Resource    ./Variables/variables.robot
Test Setup    Open Chrome
Test Teardown    close browser


*** Test Cases ***
Open Artin Homepage
    wait until page contains    Vyvíjame


Open Contacts Page
    Click Button Kontakt


Count IT Specialists
    Click Button O Nas
    Print Number Of Employees


Fill Application
    Click Dropdown Button Kariera
    scroll element into view    ${BTN_SUBMIT}
    Input Name    Michal
    Input Surname    Zajac
    Input Email    michal38zajac@gmail.com
    Input Phone Number    0904941510
    Input Textarea    "Lorem ipsum dolor sit amet"
    Attach Resume
    Input Linkedin
    Chceck Acceptance
    Check Contact Me
#    Click Submit Button



