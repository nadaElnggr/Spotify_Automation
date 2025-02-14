*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/02- Login/LoginAssertion.robot
Resource    ../../Resources/02- Login/LoginLocators.robot

*** Variables ***
${EMAIL}    datakhriana@gmail.com
${PASSWORD}    Dody562005
*** Keywords ***
click on login button
    click element    ${LOGIN-BUTTON}


Enter Valid Mail
    Scroll Element Into View    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    ${EMAIL}

Enter Valid Password
    Scroll Element Into View    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}

Login
    Scroll Element Into View    ${SUBMIT_LOGIN}
    Click Element    ${SUBMIT_LOGIN}
    Sleep    5




