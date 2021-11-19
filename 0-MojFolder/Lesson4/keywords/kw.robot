*** Settings ***
Resource    ../variables/variables.robot

*** Keywords ***
Open Chrome On Alza Homepage
    Open Browser    https://www.alza.sk/EN/   gc
    Maximize Browser Window
    Wait Until Page Contains Element    ${computersLink}   20 sec

Navigate To
    [Arguments]    ${place}    ${waiter}
    Click Element   ${place}
    Wait Until Element Is Visible    ${waiter}