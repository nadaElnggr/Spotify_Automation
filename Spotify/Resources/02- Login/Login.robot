*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/02- Login/LoginKeyWords.robot

*** Keywords ***
Login with valid mail and password
    click on login button
    Enter Valid Mail
    Enter Valid Password
    Login
