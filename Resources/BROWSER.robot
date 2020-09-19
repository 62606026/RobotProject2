*** Settings ***
Resource    SETTING.robot

*** Keywords  ***
Open Application Browser
    [Arguments]    ${path}
    Open Browser    ${BASE_URL}${path}    ${BROWSER}
