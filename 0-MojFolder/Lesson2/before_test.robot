*** Settings ***
Test Setup    Log    ${TEST_NAME}    #  Lokalny ma precedens
Test Teardown    Log    Test Teardown


*** Test Cases ***
Test 1
    [Setup]    Log    ${TEST_NAME}
    [Teardown]    Log    Teardown
    Log    Ahoj

Test 2
    [Setup]    Log    ${TEST_NAME}
    [Teardown]    Log    Teardown
    Log    Ahoj
    Fail

Test 3
    [Setup]    Log    ${TEST_NAME}
    [Teardown]    Log    Teardown
    Log    ${TEST_NAME}
    Log    Ahoj


