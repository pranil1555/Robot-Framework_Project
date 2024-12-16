*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com
${SEARCH_TERM}  Python automation testing

*** Test Cases ***
Google Search Automation
    Open Browser    ${URL}    chrome
    Input Text      name:q    ${SEARCH_TERM}
    Press Key       name:q    ENTER
    Wait Until Page Contains    Python automation testing
    Close Browser
