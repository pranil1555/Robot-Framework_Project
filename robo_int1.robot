*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${Browser}            Chrome
${Url}                https://practicetestautomation.com/practice-test-login/
${Username}           Student
${Password}           Password123
${Dashboard_Text}     Congratulations

*** Test Cases ***
Verify User Login Functionality
    [Documentation]    This test case verifies that the user can log in successfully and is redirected to the dashboard.
    Open Browser       ${Url}    ${Browser}
    Maximize Browser Window
    Log To Console     Inputting username and password
    Input Text         id:username          ${Username}
    Input Text         id:password          ${Password}
    Click Button       id:submit
    Log To Console     Waiting for dashboard text: ${Dashboard_Text}
    Wait Until Page Contains    ${Dashboard_Text}    timeout=20s
    Page Should Contain    ${Dashboard_Text}
    Log To Console     Login successful! Dashboard loaded.
    Close Browser
