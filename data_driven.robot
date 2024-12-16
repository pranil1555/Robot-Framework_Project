*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=C:/Users/vaish/PycharmProjects/pranil_projects/Robot_Framework/pythonProject/Test/login_data.xlsx

*** Variables ***
${URL}      https://example.com/login

*** Test Cases ***
Login Test
    [Template]    Validate Login

*** Keywords ***
Validate Login
    [Arguments]    ${username}    ${password}    ${expected_result}
    Open Browser    ${URL}    chrome
    Input Text      id:username    ${username}
    Input Text      id:password    ${password}
    Click Button    id:login
    Wait Until Page Contains    ${expected_result}
    Close Browser
