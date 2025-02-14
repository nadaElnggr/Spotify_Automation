*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SIGNUP_BUTTON}    //button[@data-testid='signup-button']
${EMAIL_FIELD}    //input[@type='email']
${NEXT_BUTTON}    //span[contains(text(), 'Next')]
${PASSWORD_FIELD}   //input[@type='password']
${HIDE_SHOW_PASSWORD}   //button[@aria-label='Show password']
${NAME_FIELD}    //input[@id='displayName']
${BB_DAY}   //input[@data-testid='birthDateDay']
${BB_MONTH}    //div[@data-encore-id='formSelect']
${BB_YEAR}    //input[@data-testid='birthDateYear']
${SELECTED_MONTH}   //*[@id="month"]/option[7]
${FEMALE_RADIO_BUTTON}    //div[@data-encore-id='formRadio']//label[@for='gender_option_female']
${MALE_RADIO_BUTTON}    //div[@data-encore-id='formRadio']//label[@for='gender_option_male']
${NOT_TO_SAY_RADIO_BUTTON}    //div[@data-encore-id='formRadio']//label[@for='gender_option_prefer_not_to_say']
${SUBMIT_DATA_SIGNUP}   //*[@id="__next"]/main/main/section/div/form/div[2]/button
${ACCEPT_NEWS_COOKIES}  //input[@id='checkbox-marketing' and @type='checkbox']
${ACCEPT_PRIVACY_COOKIES}  //input[@id='checkbox-privacy' and @type='checkbox']
${SUBMIT_SIGNUP}    //button[@data-testid='submit']
${GOOGLE_BUTTON}    //a[@data-testid="idp-button-google"]



