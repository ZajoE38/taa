*** Settings ***
Documentation    Suite description
Library    OperatingSystem

*** Variables ***
${PATH} =    C:\\Computer Science\\Testing\\TAA\\testautomationacademy\\0-MojFolder\\Lesson2\\homework


*** Keywords ***
Log and print environmental variables
    Log    Environment variables
    Log environment variables

*** Test Cases ***
File should exist
    [Tags]    Homework
    Log    "File should exist"
    Create File    ${PATH}\\slides.md    "# SLIDES"
    Should Exist    ${PATH}\\slides.md


Environment variables
    [Tags]    Homework
    Log and print environmental variables

