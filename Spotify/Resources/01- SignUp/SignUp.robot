*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/01- SignUp/SignUpKeyWords.robot


*** Keywords ***
Valid SignUp with Prefer Not To Say Gender
    Open Spotify
    Click on SignUp Button
    Enter The SignUp Mail
    Enter a valid password
    Enter Displayed Name
    Enter Birthday Date
    Select Prefer Not to Say Gender
    Submit Data
    Accept News Cookies
    Accept Privacy Cookies
    Close Spotify

Valid SignUp with Google Account
    Open Spotify
    Click on SignUp Button
    Click on SignUp with Google
    Close Spotify

Valid SignUp with Female Gender
    Open Spotify
    Click on SignUp Button
    Enter The SignUp Mail
    Enter a valid password
    Enter Displayed Name
    Enter Birthday Date
    Select Prefer Not to Say Gender
    Select Male Gender
    Select Female Gender
    Submit Data
    Accept News Cookies
    Accept Privacy Cookies
    Close Spotify

Valid SignUp with Male Gender
    Open Spotify
    Click on SignUp Button
    Enter The SignUp Mail
    Enter a valid password
    Enter Displayed Name
    Enter Birthday Date
    Select Male Gender
    Submit Data
    Accept News Cookies
    Accept Privacy Cookies
    Sumbit SignUp
    Close Spotify


Invalid Short Password SignUp
    Open Spotify
    Click on SignUp Button
    Enter The SignUp Mail
    Enter Ivalid Short Password
    Close Spotify


Invalid Only Char Password SignUp
    Open Spotify
    Click on SignUp Button
    Enter The SignUp Mail
    Enter Ivalid Only Chars Password
    Close Spotify


Invalid Only Numbers Password SignUp
    Open Spotify
    Click on SignUp Button
    Enter The SignUp Mail
    Enter Ivalid Only Numbers Password
    Close Spotify

