*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SPOTIFY_LOGO}    //svg[@data-encore-id='logoSpotify']
${SIGNUP_ASSERT}   //h1[contains(text(), 'Sign up to start listening')]
${PASSWORD_ASSERT}   //span[contains(text(), 'Create a password')]
${INFO_ASSERT}    //span[contains(text(), 'Tell us about yourself')]
${HOME_AFTER_SIGN_UP}   //button[@data-testid='whats-new-feed-button']
${TERMS_ASSERT}    //span[contains(text(), 'Terms & Conditions')]
${HOME_ASSERT}    //h2[contains(text(), 'Recommended for you')]


