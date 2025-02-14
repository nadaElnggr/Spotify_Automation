*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyword.robot
Resource    ../Resources/01- SignUp/SignUp.robot
Resource    ../Resources/01- SignUp/signup.robot
#
#Suite Setup             CommonKeyword.Begin Web Test
#Suite Teardown          CommonKeyword.End Web Test

*** Test Cases ***
Verify that the user can't signup with only numbers password
    Invalid Only Numbers Password SignUp

Verify that the user can't signup with only chars password
    Invalid Only Char Password SignUp

Verify that the user can't signup with less than 10 chars password
    Invalid Short Password SignUp

#Verify that the user can signup with Prefer Not To Say Gender
#    Valid SignUp with Prefer Not To Say Gender
#
#Verify that the user can signup with Male Gender
#    Valid SignUp with Male Gender

Verify that the user can signup with Female Gender
    Valid SignUp with Female Gender





