*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://the-internet.herokuapp.com/add_remove_elements/
${BROWSER}          Chrome
${ADD_BUTTON_ID}    //button[contains(text(),'Add Element')]
${RMV_BUTTON_ID}    //button[contains(text(),'Delete')]
*** Test Cases ***
Clicking Add Element button should increase numbers of Delete buttons
    Open Test Web Page
    Add Element
    Add Element
    Remove Element
    Add Element
    Remove Element
    Remove Element
    [Teardown]  Close Browser

*** Keywords ***
Open Test Web Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
Add element
    Wait Until Page Contains Element    ${ADD_BUTTON_ID}
    Click Button        ${ADD_BUTTON_ID}
    Sleep   1s
Remove element
    Click Button        ${RMV_BUTTON_ID}
    Sleep   1s
