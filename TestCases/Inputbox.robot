*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com

*** Test Cases ***
TestingInputBox
    Open browser    ${url}  ${browser}
    maximize browser window
    title should be  Swag Labs
    ${"email_txt"}  set variable    id:user-name

    element should be visible  ${"email_txt"}
    element should be enabled  ${"email_txt"}

    input text  ${"email_txt"}  standard_user
    sleep   5
    clear element text   ${"email_txt"}
    sleep   3
    close browser

*** Keywords ***
