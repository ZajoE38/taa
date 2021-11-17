*** Keywords ***
Open Chrome
    open browser    https://www.artin.sk    gc
    maximize browser window
    wait until page contains    Tvoríme IT riešenia    60 sec

Click Button Kontakt
    click element    ${BTN_KONTAKT}
    wait until page contains    Naše pobočky

Click Button O Nas
    click element    ${BTN_O_NAS}
    wait until element is visible    ${DIV_ABOUT_PERSONS}

Print Number Of Employees
    sleep    3
    #  preco nefunguje Set Local Variable?
    ${counter} =    get text    xpath://div[@class="about persons"]/h4
    Log    ${counter}

Click Dropdown Button Kariera
    mouse over    ${DROPDOWN_KARIERA}
    wait until element is visible    ${BTN_KONTAKTUJ_NAS}
    click element    ${BTN_KONTAKTUJ_NAS}

Input Name
    [Arguments]    ${name}
    input text    ${INPUT_MENO}    ${name}

Input Surname
    [Arguments]    ${surname}
    input text    ${INPUT_PRIEZVISKO}    ${surname}

Input Email
    [Arguments]    ${email}
    input text    ${INPUT_EMAIL}    ${email}

Input Phone Number
    [Arguments]    ${phone}
    input text    ${INPUT_PHONE_NUMBER}    ${phone}

Input Textarea
    [Arguments]    ${text}
    input text    ${INPUT_TEXTAREA}    ${text}

Attach Resume
    choose file    ${INPUT_ATTACHMENT}    ${PATH_RESUME}

Input Linkedin
    input text    ${INPUT_LINKEDIN}    ${URL_LINKEDIN}

Chceck Acceptance
    select checkbox    ${CHK_ACCEPTANCE}
    checkbox should be selected    ${CHK_ACCEPTANCE}

Check Contact Me
    select checkbox    ${CHK_CONTACT_ME}
    checkbox should be selected    ${CHK_CONTACT_ME}

Click Submit Button
    click element    ${BTN_SUBMIT}