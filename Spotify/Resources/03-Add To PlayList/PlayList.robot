*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/03-Add To PlayList/PlayListKeyWords.robot
Resource    ../../Resources/02- Login/Login.robot



*** Keywords ***
Play List Creation
    Login with valid mail and password
    Search For A Song
    Create a Play List


