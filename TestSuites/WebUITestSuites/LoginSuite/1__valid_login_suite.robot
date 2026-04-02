*** Settings ***
Documentation   Test Suite valides all valid login scenario

Resource    ../../../Resource/UI/CommonFunctionalities.resource
Resource    ../../../Resource/UI/Pages/LoginPage.resource
Resource    ../../../Resource/UI/Pages/DashboardPage.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Login Test
    Enter Username   Admin
    Enter Password   admin123
    Click Login
    Validate Time at Work Message    Time at Work


