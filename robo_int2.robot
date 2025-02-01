*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${Browser}          Chrome
${Url}              https://example.com
${Expected_Title}   Example Domain

*** Test Cases ***
Verify Webpage Title
    [Documentation]    This test case verifies that the title of the webpage matches the expected value.
    Open Browser       ${Url}    ${Browser}
    Maximize Browser Window
    ${Actual_Title}=   Get Title
    Should Be Equal    ${Actual_Title}    ${Expected_Title}
    Log                Webpage title verified successfully: ${Actual_Title}
    Close Browser
