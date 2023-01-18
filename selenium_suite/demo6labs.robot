*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
   Open Browser     browser=edge
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://www.db4free.net/
   Switch Window    phpMyAdmin
TC2
   Open Browser      browser=edge
   Set Selenium Implicit Wait    10s
   Go To    url=https://www.online.citibank.co.in/
   Click Element    xpath://a[@title='Close']
   Click Element    xpath://span[@class='txtsign']
   Switch Window    Citibank India
   Click Element    xpath://div[@onclick='ForgotUserID();')]
   Click Element    xpath://a[@class='sbSelector']
   Click Element    link=select your product type
   Click Element    link=Credit Card
   Input Text       id=citiCard1    2345
   Input Text       id=citiCard2    2345
   Input Text       id=citiCard3    2345
   Input Text       id=citiCard4    2345
   Input Text       id=cvvnumber    340
TC3
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error  Click Element  xpath=//a[@title='close']
    Click Element    xpath://a[@title='Close']
    Click Element    xpath://span[@class='txtSign']
    Switch Window   Citibank India
    Click Element    xpath://div[@onclick='ForgotUserID();']
    Click Element    xpath://a[@class='sbSelector']
    Click Element    link:Credit Card
    Input Text     id=citiCard1     4545
    Input Text     id=citiCard2     5656
    Input Text     id=citiCard3     8887
    Input Text     id=citiCard4     9998
    Input Text     id=cvvnumber     758
    Click Element   name:DOB
    Select From List By Label       xpath=//select[@class='ui-datepicker-year']     2022
    Select From List By Label      xpath=//select[@class='ui-datepicker-month']     Apr
    Click Element    link=14
    Click Element    xpath//input[@value='proceed']
    Element Should Contain    id=ui-id-1    Please accept Terms and conditions
    Switch Window   MAIN
    Close Window
    Sleep    2s
    Close Browser
TC5
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame   xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId   test123
    Click Element   link=CONTINUE
    ${alert_text}    Handle Alert     action=Accept
    Log To Console   ${alert_text}
    Unselect Frame
    
TC6
   Open Browser     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://www.redbus.in/
   Click Element    id=sign-in-icon-down
   Click Element    id=signInLink
   Select Frame    xpath=//iframe[@class='modalIframe']
   Input Text      id=mobileNoInp   7878
   Element Should Contain    xpath=//*[contains(text(),'Please enter valid')]    Please enter valid mobile number

TC7
   Open Browser     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://www.facebook.com/
   Input Text    css=@email     Jack
   Input Password    css=#pass  pass123
   Click Element    css=button[name='login']