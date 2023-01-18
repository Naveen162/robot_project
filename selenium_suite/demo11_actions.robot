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