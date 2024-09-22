*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
selenium speed test
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    ${speed}=   Get Selenium Speed
    Log To Console    "Default selenium speed is "+${speed}
    Maximize Browser Window
    Set Selenium Speed    3 seconds
    Select Radio Button    Gender    F
    ${speed}=   Get Selenium Speed
    Log To Console    "After setting the speed "+${speed}
    Input Text    id:FirstName    Robin
    Input Text    LastName    Shawn
    Close Browser

