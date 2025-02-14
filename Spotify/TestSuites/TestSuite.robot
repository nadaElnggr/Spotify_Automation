*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyword.robot
Resource    ../Resources/02- Login/Login.robot
Resource    ../Resources/03-EditProfile/EditProfile.robot

Suite Setup             CommonKeyword.Begin Web Test
Suite Teardown          CommonKeyword.End Web Test

*** Test Cases ***
Test Case 1:
    Login with mail

Test Case 2 :
    Edit Profile

