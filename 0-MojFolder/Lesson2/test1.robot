*** Test Cases ***
Moj prvy test
    [Documentation]    Toto je zakladny popis testu
    ...                Toto je druhy riadok dokumentacie
    [Tags]    regression    full
    Set log level   TRACE
    Log    Hello World!    level=TRACE
    Log    Hello Hello
    Fail

Moj druhy test
    [Tags]    smoke
    Log    Moj druhy test    level=DEBUG
