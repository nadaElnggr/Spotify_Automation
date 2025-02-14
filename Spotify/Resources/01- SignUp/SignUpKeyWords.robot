*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/01- SignUp/SignUpAssertions.robot
Resource    ../../Resources/01- SignUp/SignUpLocators.robot
Resource    ../../Resources/00-Common/CommonVariable.robot



*** Variables ***
${SIGNUP_MAIL}  datakhriana@gmail.com
${VALID_PASSWORD}   Dody562005
${NUMBER_PASSWORD}  6690
${LETTER_PASSWORD}  NadaNGR
${SHORT_PASSWORD}  Nada23
${DISPLAYED_NAME}   Nada Elnaggar
${BIRTH_DAY}    06
${BIRTH_YEAR}   2002
${NEWS_SELECTOR}    '#checkbox-marketing'
${PRIVACY_SELECTOR}    '#checkbox-privacy'




*** Keywords ***
Open Spotify
    Open Browser    ${URL_TEST}    ${BROWSER}
    Maximize Browser Window

Click on SignUp Button
    Wait Until Element Is Enabled    ${SIGNUP_BUTTON}
    Click Element    ${SIGNUP_BUTTON}
    Wait Until Element Is Visible    ${SIGNUP_ASSERT}

Click on SignUp with Google
    Wait Until Element Is Enabled    ${GOOGLE_BUTTON}
    Click Element    ${GOOGLE_BUTTON}
    Sleep    5



Enter The SignUp Mail
    Input Text    ${EMAIL_FIELD}    ${SIGNUP_MAIL}
    Scroll Element Into View    ${NEXT_BUTTON}
    Wait Until Element Is Enabled    ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_ASSERT}

Enter a valid password
    Input Text    ${PASSWORD_FIELD}    ${VALID_PASSWORD}
    Wait Until Element Is Enabled    ${HIDE_SHOW_PASSWORD}
    Click Element    ${HIDE_SHOW_PASSWORD}
    Wait Until Element Is Enabled    ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${INFO_ASSERT}

Enter Ivalid Only Numbers Password
    Input Text    ${PASSWORD_FIELD}    ${NUMBER_PASSWORD}
    Wait Until Element Is Enabled    ${HIDE_SHOW_PASSWORD}
    Click Element    ${HIDE_SHOW_PASSWORD}
    Wait Until Element Is Enabled    ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_ASSERT}

Enter Ivalid Only Chars Password
    Input Text    ${PASSWORD_FIELD}    ${LETTER_PASSWORD}
    Wait Until Element Is Enabled    ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_ASSERT}

Enter Ivalid Short Password
    Input Text    ${PASSWORD_FIELD}    ${SHORT_PASSWORD}
    Wait Until Element Is Enabled    ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_ASSERT}

Enter Displayed Name
    Scroll Element Into View    ${NAME_FIELD}
    Wait Until Element Is Enabled    ${NAME_FIELD}
    Input Text    ${NAME_FIELD}    ${DISPLAYED_NAME}


Enter Birthday Date
    Scroll Element Into View    ${BB_DAY}
    Input Text    ${BB_DAY}    ${BIRTH_DAY}
    Click Element    ${BB_MONTH}
    Click Element    ${SELECTED_MONTH}
    Input Text    ${BB_YEAR}    ${BIRTH_YEAR}
    

Select Female Gender
    Scroll Element Into View    ${FEMALE_RADIO_BUTTON}
    Click Element    ${FEMALE_RADIO_BUTTON}


Select Male Gender
    Scroll Element Into View    ${MALE_RADIO_BUTTON}
    Click Element    ${MALE_RADIO_BUTTON}


Select Prefer Not to Say Gender
    Scroll Element Into View    ${NOT_TO_SAY_RADIO_BUTTON}
    Click Element    ${NOT_TO_SAY_RADIO_BUTTON}

Submit Data
    Execute JavaScript    document.evaluate('${SUBMIT_DATA_SIGNUP}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView();
    Wait Until Element Is Enabled    ${SUBMIT_DATA_SIGNUP}
    Execute JavaScript    document.evaluate('${SUBMIT_DATA_SIGNUP}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
    Wait Until Element Is Visible    ${TERMS_ASSERT}

Accept News Cookies
    ${checkbox}    Get WebElement    ${ACCEPT_NEWS_COOKIES}
    Execute JavaScript    document.querySelector(${NEWS_SELECTOR}).scrollIntoView();
    Wait Until Element Is Enabled    ${ACCEPT_NEWS_COOKIES}
    Execute JavaScript    document.querySelector(${NEWS_SELECTOR}).checked = true;
    Sleep    1

Accept Privacy Cookies
    ${checkbox}    Get WebElement    ${ACCEPT_PRIVACY_COOKIES}
    Execute JavaScript    document.querySelector(${PRIVACY_SELECTOR}).scrollIntoView();
    Wait Until Element Is Enabled    ${ACCEPT_PRIVACY_COOKIES}
    Execute JavaScript    document.querySelector(${PRIVACY_SELECTOR}).checked = true;
    Sleep    1
    
Sumbit SignUp
    Scroll Element Into View    ${SUBMIT_SIGNUP}
    Wait Until Element Is Enabled    ${SUBMIT_SIGNUP}
    Execute JavaScript    document.querySelector('${SUBMIT_SIGNUP}').click();
    Wait Until Element Is Visible    ${HOME_ASSERT}
    
Close Spotify
    Close All Browsers