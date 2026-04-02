*** Settings ***
Variables   ../../../Data/LoginSuiteData/login_suite_data.yaml

Resource    ../../../Resource/UI/CommonFunctionalities.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

*** Test Cases ***
TC1
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${BASE_URL}
#    Log To Console    ${Messages.ERROR.invalid_login_error}
#    Log To Console    ${Colors[0]}