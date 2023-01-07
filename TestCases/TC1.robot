*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com

*** Test Cases ***
LoginTest
    # create webdriver    CHROME  executable_path="C:\webdrivers\chromedriver.exe"  #this line no needed when we have drivers in python scripts folder
    # open browser    https://www.saucedemo.com   chrome #used as variables
    # input text  id:user-name    standard_user
    # input text  id:password  secret_sauce
    # click element   id:login-button #above 3 lines moved to keyword loginToApplication
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    input text  id:user-name    standard_user
    input text  id:password  secret_sauce
    click element   id:login-button