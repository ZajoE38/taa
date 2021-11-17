*** Variables ***
${PATH_RESUME}    C:\\Users\\micha\\Documents\\Resume\\MichalZajacEN.pdf
${URL_LINKEDIN}    https://www.linkedin.com/in/michal-zajac-254244b2/
${URL_AUTO_TESTER}    https://www.artin.sk/kariera-volne-miesta/pracovna-pozicia/?jobid=4699
${BTN_KONTAKT}    id:menu-item-3078
${BTN_O_NAS}    id:menu-item-3084
${H2_ABOUT_PERSONS}    xpath://div[@class="about persons"]/h4
${DIV_ABOUT_PERSONS}    xpath://div[@class="about persons"]
${DROPDOWN_KARIERA}    id:menu-item-3127
${BTN_VOLNE_MIESTA}    id:menu-item-3081
${BTN_KONTAKTUJ_NAS}    id:menu-item-3080
${LINK_AUTO_TESTER}    xpath://div[@id="pracovneponuky"]//strong[text()="Test Automation Engineer (Python)"]
${BTN_DAJ_NAM_VEDIET}    xpath://a[text()="DAJ NÁM O SEBE VEDIEŤ"]
${URL_DAJ_NAM_VEDIET}    https://www.artin.sk/kariera-kontakt/?contactid=4699
${INPUT_MENO}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="your-name"]
${INPUT_PRIEZVISKO}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="your-surname"]
${INPUT_EMAIL}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="your-email"]
${INPUT_PHONE_NUMBER}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="intl_tel-500-cf7it-national"]
${INPUT_TEXTAREA}    xpath://div[@id="wpcf7-f532-p1101-o2"]//textarea[@name="your-message"]
${INPUT_ATTACHMENT}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="filepriloha"]
${INPUT_LINKEDIN}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="linkedin"]
${CHK_ACCEPTANCE}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="acceptance-133"]
${CHK_CONTACT_ME}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[@name="ponuky[]"]
${BTN_SUBMIT}    xpath://div[@id="wpcf7-f532-p1101-o2"]//input[contains(@class, "wpcf7-submit" )]