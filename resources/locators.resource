*** Variables ***

${BASE_URL}                 https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}                  chrome

${VALID_USER}               Admin
${VALID_PASS}               admin123

${LOGIN_USERNAME}           xpath=//input[@name='username']
${LOGIN_PASSWORD}           xpath=//input[@name='password']
${LOGIN_BUTTON}             xpath=//button[@type='submit']

${USER_DROPDOWN}            xpath=//span[contains(@class,'oxd-userdropdown-tab')]

${SIDEBAR_SEARCH_INPUT}     xpath=//input[@placeholder='Search']

${MENU_PIM}                 xpath=//span[contains(normalize-space(.),'PIM')]/ancestor::a

${BTN_ADD}                  xpath=//div[contains(@class,'orangehrm-header-container')]//button[contains(normalize-space(.),'Add')]
${BTN_SEARCH}               xpath=//button[contains(normalize-space(.),'Search')]
${BTN_RESET}                xpath=//button[contains(normalize-space(.),'Reset')]
${NO_RECORDS}               xpath=//span[contains(normalize-space(.),'No Records Found')]

${EMPLOYEE_NAME_FILTER}     xpath=//label[contains(normalize-space(.),'Employee Name')]/../following-sibling::div//input
${EMPLOYEE_ID_FILTER}       xpath=//label[contains(normalize-space(.),'Employee Id')]/../following-sibling::div//input

${FIRST_NAME}               xpath=//input[@name='firstName']
${MIDDLE_NAME}              xpath=//input[@name='middleName']
${LAST_NAME}                xpath=//input[@name='lastName']
${EMPLOYEE_ID_ADD}          xpath=//label[contains(normalize-space(.),'Employee Id')]/../following-sibling::div//input
${BTN_SAVE}                 xpath=//button[@type='submit' and (contains(normalize-space(.),'Save') or .//*[contains(normalize-space(.),'Save')])]

${REQUIRED_ERROR}           xpath=//span[contains(@class,'oxd-input-field-error-message') and contains(normalize-space(.),'Required')]
${EMP_ID_EXISTS_ERROR}      xpath=//label[contains(normalize-space(.),'Employee Id')]/../..//span[contains(@class,'oxd-input-field-error-message')]

${LISTBOX}                  xpath=//div[@role='listbox']

${BTN_CONFIRM_DELETE}       xpath=//button[contains(normalize-space(.),'Yes, Delete')]
${BTN_CANCEL_DELETE}        xpath=//button[contains(normalize-space(.),'No, Cancel')]
