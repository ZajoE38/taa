#!/usr/bin/env robot

*** Settings ***
Library   SeleniumLibrary
Resource    ./Keywords/kw.robot
Resource    ./Variables/variables.robot
Test Setup  Open Chrome On Alza Homepage
# Test Teardown   Close Browser


*** Test Cases ***
Adding a specific item
    Mouse Over    ${computersLink}
    Wait Until Element Is Visible   ${homeAndOffice}
    Navigate To   ${homeAndOffice}  ${affordable}
    Navigate To   ${affordable}  ${nejprodavanejsiTab}
    Click Element    ${nejprodavanejsiTab}
    Wait Until Element Is Visible    ${circleLoader}
    Wait Until Element Is Not Visible    ${circleLoader}
    Navigate To   ${thirdBestItem}  ${addToCartBtn}
    ${productPrice}    Get Text    ${price}
    Click Element    ${addToCartBtn}
    Wait Until Page Contains    Product Added to Cart.
    ${basketCountValue}    Get Text    ${basketCounter}
    Should Be Equal    ${basketCountValue}    1
    Should be Equal    ${productPrice}    511 €