*** Settings ***
Documentation   Test Suite valides all invalid login scenario

Resource    ../../../Resource/UI/CommonFunctionalities.resource
Resource    ../../../Resource/UI/Pages/LoginPage.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

*** Test Cases ***
Verify Invalid Login Test
    Enter Username   John
    Enter Password   admin123
    Click Login
    Validate Invalid Login Error Message    Invalid credentials
