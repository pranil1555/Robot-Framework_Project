*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com
${POST_ID}     1

*** Test Cases ***
Get Post By ID
    Create Session    api    ${BASE_URL}
    ${response}    Get    api    /posts/${POST_ID}
    Should Be Equal As Strings    ${response.status_code}    200
    Log To Console    ${response.json()}

Create New Post
    Create Session    api    ${BASE_URL}
    ${data}    Create Dictionary    title=Test Post    body=Hello World    userId=1

