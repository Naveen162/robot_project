*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser    url=http://facebook.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    naveen
    Input Text    name=lastname   manibhaskar
    Input Password    name=New Password   naveen@123
    #20jan 2000
    Click Element     xpath=//input[@value='-1']
    Select From List By Label    id=day     20
    Select From List By Label    id=month   Apr