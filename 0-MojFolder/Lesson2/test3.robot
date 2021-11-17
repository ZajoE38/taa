*** Test Cases ***
Moj prvy test test3
    [Documentation]    Toto je zakladny popis testu
    [Tags]    regression    full
    Set log level   TRACE
    Log    Hello World!    level=TRACE
    Log    Hello Hello
    Fail

Moj druhy test test3
    [Tags]    smoke
    Log    Moj druhy test    level=DEBUG
