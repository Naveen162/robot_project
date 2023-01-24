*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait   120s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text  name=UserFirstName   naveen
    Input Text  name=UserLastName    manibhaskar
    Input Text  name=UserEmail       naveenmanibhaskar19@gmail.com
    Select From List By Label  name=UserTitle   IT Manager
    Input Text    name=CompanyName    L&t
    Select From List By Label  name=CompanyEmployees   101 - 500 employees
    Input Text  name=UserPhone  1234567890
    Select From List By Label  name=CompanyCountry  India
    Click Element  xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
TC2
    Open Browser  browser=chrome
    Set Selenium Implicit Wait    120s
    Go To         url=https://www.goto.com/meeting/trial
    Input Text    name=FirstName    Naveen
    Input Text    name=LastName     mani bhaskar
    Input Text    name=Email        naveenmanibhaskar19@gmail.com
    Input Text    name=PhoneNumber  1234567890
    Input Text    name=Password     Naveen@123
    Select From List By Label  name=CompanySize  10-99
TC3
    Set Selenium Implicit Wait   100s
    Open Browser   browser=chrome
    Go To          url=https://www.medibuddy.in/
    Click Element  link=login
    Input Text     name=mobile    1234567890
TC5
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.medibuddy.in
    Click Element    link=Login
    Click Element    xpath=//div[@class='coperate']
    Click Element    xpath=//div[@class='coperate']
    Input Text    name=userName    john123
    Click Element    xpath=//button[@class='btn btn-primary']
    Input Text    name=password    john@123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[text()='Log in']
    Element Text Should Be    xpath=//*[contains(text(),'Please enter valid username and password')]    Please enter valid username and password