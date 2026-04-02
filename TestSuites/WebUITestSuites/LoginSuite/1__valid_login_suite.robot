*** Settings ***
Documentation   Test Suite valides all valid login scenario

Resource    ../../../Resource/UI/CommonFunctionalities.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Login Test
    Input Text    name=username    Admin
    Input Password    name=password    admin123
    Click Element    xpath=//button[contains(normalize-space(),'Login')]
    Element Text Should Be    xpath=//p[text()='Time at Work']    Time at Work


