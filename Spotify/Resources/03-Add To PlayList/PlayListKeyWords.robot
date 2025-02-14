*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/03-Add To PlayList/PlayListAssertions.robot
Resource    ../../Resources/03-Add To PlayList/PlayListLocators.robot
Resource    ../../Resources/00-Common/CommonVariable.robot



*** Variables ***
${SEARCH_KEYWORD}   Bang Bang



*** Keywords ***
Search For A Song
    Scroll Element Into View    ${SEARCH_BAR}
    Input Text    ${SEARCH_BAR}    ${SEARCH_KEYWORD}
    Wait Until Element Is Enabled    ${SEARCH_BUTTON}
    Click Element    ${SEARCH_BUTTON}
#    Wait Until Element Is Enabled    ${SONG_TAB}
#    Click Element    ${SONG_TAB}

Create a Play List
    Wait Until Element Is Enabled    ${SIDE_LIST}
    Click Element    ${SIDE_LIST}
    Wait Until Element Is Enabled    ${ADD_LIST}
    Click Element    ${ADD_LIST}
    Wait Until Element Is Enabled    ${CRAETE_LIST}
    Click Element    ${CRAETE_LIST}
    Scroll Element Into View    ${SONG_SEARCH}
    Input Text    ${SONG_SEARCH}    ${SEARCH_KEYWORD}
    Wait Until Element Is Enabled    ${ADD_SONG}
    Click Element    ${ADD_SONG}
    Scroll Element Into View    ${PLAY_BUTTON}
    Click Element    ${PLAY_BUTTON}

