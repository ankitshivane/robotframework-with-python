*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
selenium speed test
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Select Radio Button    Gender    F
    Input Text    id:FirstName    Robin
    Input Text    LastName    Shawn
    Close Browser

