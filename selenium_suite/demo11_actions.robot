*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
   Open Browser     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait  30s
   Go To    url=https://www.ilovepdf.com/pdf_to_word
   Choose File    xpath=//input[@type='file']       C:/Users/40032462/Downloads/Sample.pdf
   Sleep   5s

TC5 Javascript
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait   10s
    Go To    url=https://phptravels.net/
    Click Element  id=select2-hotels_city-container
    Input Text   xpath=//span[Contains(text()='Search by City']   Vadodara
    Click Element   xpath=//li[contains(text(),'Vadodara,Ind']
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript  document.querySelector('#checkin').value='29-11-2023'

