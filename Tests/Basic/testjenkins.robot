*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://www.google.co.th/
${expected_result}     กิริยา 3 ช่อง

*** Keywords ***
openbrowser
    Open Browser     ${url}     ${browser}
search keywords
    Input Text    name=q    ${expected_result}
    Submit Form
wait result
    Wait Until Page Contains    ${expected_result}
close browser
    Close Browser
*** Test Cases ***
Search case
   openbrowser
   search keywords
   wait result
   close browser