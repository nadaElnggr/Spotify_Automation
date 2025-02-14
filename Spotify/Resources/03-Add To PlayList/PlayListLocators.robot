*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SEARCH_BAR}   //input[@placeholder="What do you want to play?"]
${SEARCH_BUTTON}    //button[@data-encore-id="buttonTertiary"]
${SIDE_LIST}    //div[@class="FTiXRW7kAldHmLaxVQ2N iYP0xuQiJCgi7gx1jUPJ"]
${ADD_LIST}    //button[@aria-label="Create playlist or folder"]
${CRAETE_LIST}  //button[@class="mWj8N7D_OlsbDgtQx5GW"]
${SONG_SEARCH}    //input[@placeholder="Search for songs or episodes"]
${ADD_SONG}    //button[@data-testid="add-to-playlist-button"]
${PLAY_BUTTON}  //button[@data-testid="play-button"]