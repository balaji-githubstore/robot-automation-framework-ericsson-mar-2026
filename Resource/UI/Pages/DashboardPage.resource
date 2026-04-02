*** Settings ***
Documentation    This resource handles all elements on the login page.

Resource    ../CommonFunctionalities.resource


*** Variables ***
${TIMETOWORK_LOCATOR}     xpath=//p[text()='Time at Work']

*** Keywords ***
Validate Time at Work Message
    [Arguments]     ${expected_value}
    Element Text Should Be    ${TIMETOWORK_LOCATOR}    ${expected_value}
