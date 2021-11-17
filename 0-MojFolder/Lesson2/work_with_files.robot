*** Settings ***
Library    OperatingSystem
Documentation    Suite level dokumentacia
Metadata    VERSION    1.0
Metadata    NAME    Michal
Default Tags    regression    #  ak pustim file, vsetkym nastavi tag

*** Variables ***
# Globalne
${VAR1} =    "Hello, World"
${VAR2}    Ahoj, Svet

*** Test Cases ***
Praca s premennou
    Log    ${VAR1}
    Log    ${VAR2}
    Log    c:${/}VAR1${/}svet    #  c:\ahoj\svet
    Log    ${CURDIR}
    Log    ${EXECDIR}
    Log    ${TEST NAME}
    Set Global Variable    ${GLOBAL_VAR}    Global variable    #  Ked pustam z . a nastavi sa az ked test zbehne
    Set Local Variable    ${test_local_var}    Praca s lokal    #  Ak skonci napr FOR tak sa vymaze
    Set Test Variable    ${test_praca_var}    Praca s variables  #  po skonceni testu sa vymaze
    Set Suite Variable    ${test_SUITE_var}    Suite variable    #  vidia iba v subore kde definujem
    ${var}    ahoj

Create file test
    Create File    taa2.txt    "Hello, World!"

