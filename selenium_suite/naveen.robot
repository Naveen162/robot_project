*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
   Open Browser     browser=chrome
   Set Selenium Implicit Wait    120s
   Go To    url=https://www.goto.com/meeting/trialr
   Input Text    name=FirstName  naveen
   Input Text    name=LastName   manibhaskar
   Input Text    name=Email     naveenmanibhaskar@19.com
   Input Text    name=PhoneNumber    1234567890
   Input Text    name=Password    naveen@123
   Select From List By Label    name=CompanySize  100-249