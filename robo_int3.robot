*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://practice.expandtesting.com/upload
${FILE_PATH}     C:\\Users\\vaish\\robot.txt
${UPLOAD_FIELD}    id:fileInput
${UPLOAD_BUTTON}    type=submit
${STATUS_FIELD}     id:fileStatus
${EXPECTED_STATUS}  Upload Successful

*** Test Cases ***
File Upload Test
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Log    Upload Button Locator: ${UPLOAD_BUTTON}
    Upload File
    Scroll Element Into View    ${UPLOAD_BUTTON}
    Verify Upload Status
    Close Browser

*** Keywords ***
Upload File
    [Documentation]  Locate the file upload field and upload the specified file.
    Log    Locating upload field: ${UPLOAD_FIELD}
    Input Text    ${UPLOAD_FIELD}    ${FILE_PATH}
    Log    Upload field value entered: ${FILE_PATH}
    Wait Until Element Is Visible    ${UPLOAD_BUTTON}    timeout=10
    Wait Until Element Is Enabled    ${UPLOAD_BUTTON}    timeout=10
    Scroll Element Into View         ${UPLOAD_BUTTON}
    Log    Clicking upload button: ${UPLOAD_BUTTON}
    Click Button                     ${UPLOAD_BUTTON}

Verify Upload Status
    [Documentation]  Verify that the file upload status matches the expected value.
    wait until element is visible
