*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://www.google.co.th/
${expected_result}     Podcasts ไทย

*** Keywords ***
เปิดเว็บ google.com
    Open Browser     ${url}     ${browser}
ค้นหาตาม keywords
    Input Text    name=q    ${expected_result}
    Submit Form
รอผลลัพธ์
    Wait Until Page Contains    ${expected_result}
ปิด browser
    Close Browser
*** Test Cases ***
Search case
   เปิดเว็บ google.com
   ค้นหาตาม keywords
   รอผลลัพธ์
   ปิด browser
   เปิดเว็บ google.com
   ค้นหาตาม keywords
   รอผลลัพธ์