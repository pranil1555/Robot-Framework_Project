*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://practice.expandtesting.com/dropdown
${DROPDOWN_FIELD}     id:dropdown
${VALUE_TO_SELECT}    Option 2
${EXPECTED_VALUE}     Option 2

*** Test Cases ***
Dropdown Selection Test
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Select Dropdown Value
    Verify Selected Value
    Close Browser

*** Keywords ***
Select Dropdown Value
    [Documentation]  Select a value from the dropdown menu.
    Wait Until Element Is Visible    ${DROPDOWN_FIELD}    timeout=10
    Select From List By Label        ${DROPDOWN_FIELD}    ${VALUE_TO_SELECT}


Verify Selected Value
    [Documentation]  Verify that the selected value matches the expected value.
    ${selected_value}=    Get Selected List Label    ${DROPDOWN_FIELD}
    Should Be Equal As Strings       ${selected_value}    ${EXPECTED_VALUE}