*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyword.robot
Resource    ../Resources/03-Add To PlayList/PlayList.robot


Suite Setup             CommonKeyword.Begin Web Test
Suite Teardown          CommonKeyword.End Web Test

*** Test Cases ***
Verify that the user can search for a song
    Play List Creation



