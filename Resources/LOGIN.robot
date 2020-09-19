*** Settings ***
Resource    SETTING.robot
Resource    BROWSER.robot

*** Variables ***

*** Keywords  ***
Bypasscertification
    Click Button    id=details-button
    Click Link    id=proceed-link

Input credentials
   [Arguments]    ${username}    ${password}
   Input Text    id=username    ${username}
   Input Text    id=password    ${password}

Submit login form
    Click Button    id=btnLogin

Logout
    Page Should Contain Link    /logout
    Click Link    ${BASE_CONTEXT_PATH}/logout
    Location Should Be    ${BASE_URL}/welcome.action
    Page Should Contain Element    css=div.div-title    Login Form

Login to system
    Wait Until Element Is Visible    id=username
    LOGIN.Input credentials    ${USERNAME}    ${PASSWORD}
    LOGIN.Submit login form
    Should display welcome page

Should display welcome page
    Location Should Be    ${BASE_URL}/dashboard.action?page=0
    Wait Until Element Is Visible    id=menubar
