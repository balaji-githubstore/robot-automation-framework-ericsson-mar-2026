*** Settings ***
Documentation   Test Suite valides all invalid login scenario

Resource    ../../../Resource/UI/CommonFunctionalities.resource

Library     DataDriver    file=../../../Data/LoginSuiteData/invalid_login_data.csv

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser


Test Template    Invalid Login Template


*** Test Cases ***
TC1

*** Keywords ***
Invalid Login Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    name=username    ${username}
    Input Password    name=password    ${password}
    Click Element    xpath=//button[contains(normalize-space(),'Login')]
    Element Should Contain    xpath=//p[contains(normalize-space(),'Invalid')]    ${expected_error}
