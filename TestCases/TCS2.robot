*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/index.htm

*** Test Cases ***
Login should happen
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Timeout    2
#    Sleep    3
    Click Link    xpath:/html/body/header/nav/ul/li[5]/a
#    Sleep    3
    Element Should Be Visible    id:login_email
    Input Text    id:login_email    tetuser
    Input Text    id:login_password    testpassword
#    Sleep    2
    Select Checkbox    id:remember_me
    Click Button    id:sign_in_btn
    Sleep    5
    Close Browser