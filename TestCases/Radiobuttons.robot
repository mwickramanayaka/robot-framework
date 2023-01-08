*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://sliitacademy.lk/new-intake/

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed    1seconds
    click link  xpath://*[text()='Online Registration']

    select radio button    radio-27  Male   #name of the radio button and value
    select radio button    radio-125  Local
    select radio button    radio-691  Colombo
    select radio button    radio-166  English
    select radio button    radio-608  Social Media
    select radio button    radio-691  Colombo

    select checkbox    checkbox-272[]
    select checkbox    checkbox-323[]
    unselect checkbox   checkbox-272[]

*** Keywords ***
