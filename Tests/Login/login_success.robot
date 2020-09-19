*** Settings ***
Suite Setup    Open Application Browser    ${BLANK}
Suite Teardown    Close Browser
Resource    ../../Resources/LOGIN.robot

*** Variables ***
${BLANK}

*** Test cases ***
Login success
    [Tags]    dev
    Bypasscertification
    LOGIN.Input credentials    ${USERNAME}    ${password}
    LOGIN.Submit login form
    Should display welcome page
Logout success
    Logout

*** Keywords  ***
