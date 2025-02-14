*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyword.robot
Resource    ../Resources/02- Login/Login.robot

Suite Setup             CommonKeyword.Begin Web Test
Suite Teardown          CommonKeyword.End Web Test

*** Test Cases ***

Verify that the user can login with valid mail and password
    Login with valid mail and password

