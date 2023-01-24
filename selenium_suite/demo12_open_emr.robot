*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1 Add Patient
   Open Browser     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go to    url=http://demo.openemr.io/b/openemr/
   Input Text    name=authUser      admin
   Input Text    name=clearPass      pass
   Select From List By Label    name=languageChoice  English (Indian)
   Click Element    login-button
   Mouse Over    xpath=//div[@role='button']
   Click Element    xpath=//div[text()='New/Search']
   Select Frame     xpath=//iframe[@name='pat']
   Input Text    name=form_fname    naveen
   Input Text    name=form_lname     manibhaskar
   Click Element    name=form_DOB
   Input Text    name=form_DOB      24-01-2023
   Click Element    name=form_sex
   Click Element    xpath=//option[text()='Male']
   Click Element    id=create
   Unselect Frame
   Select Frame     xpath=//iframe=[@name=modalframe]
   #Click Element    xpath=//div[@class=closeDlgIframe]
   Click Element    xpath=//button[text()='Create New Patient']
   #Click Element    xpath=//input[text()='Confirm Create New Patient']