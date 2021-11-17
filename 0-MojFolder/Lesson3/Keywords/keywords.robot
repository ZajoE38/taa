*** Keywords ***
Open Chrome
    open browser    https://www.artin.sk    gc
    maximize browser window
    wait until page contains    Tvoríme IT riešenia    60 sec