*** Settings ***
Documentation   Test Suite valides all invalid login scenario

Resource    ../../../Resource/UI/CommonFunctionalities.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

*** Test Cases ***
Verify Invalid Login Test
    Input Text    name=username    john
    Input Password    name=password    admin123
    Click Element    xpath=//button[contains(normalize-space(),'Login')]
    Element Should Contain    xpath=//p[contains(normalize-space(),'Invalid')]    Invalid credentials
