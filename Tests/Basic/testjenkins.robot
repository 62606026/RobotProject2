*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://www.google.co.th/
${expected_result}     กริยา 3 ช่อง

*** Keywords ***
open google.com
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
   open google.com
   search keywords
   wait result
   close browser