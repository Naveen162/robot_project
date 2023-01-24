*** Settings ***
Library     AppiumLibrary
Library    SeleniumLibrary

*** Test Cases ***
TC1
   &{dic}       Create Dictionary   buildName=khan lt7
   ...      projectName=khan project lt7
   ...      userName=naveenmanibhaska_bV3ZG7
   ...      accessKey=hSgo3cWPvGKuqc7cAfxz

   Open Application    remote_url=http://hub.browserstack.com/wd/hub
   ...      platformName=ios
   ...      deviceName=iPhone 11 Pro
   ...      app=bs://0e9ae50b899fba3c8731e7a5177d40a18688cc30
   ...      platformVersion=13
   ...      bstack:options=${dic}

   Set Appium Timeout    20s
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
   Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
   Input Password      xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce
   Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]

   Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
   Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
   Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
   Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther

   Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    naveen
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    manibhaskar
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022
   Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]

   ${app_source}           Get Source
   Log        ${app_source}

   [Teardown]      Close Application


TC2
   Open Browser     url=http://google.com/      browser=chrome
   Title Should Be    Google

TC3
   Open Browser     url=http://www.db4free.net/phpMyAdmin/      browser=chrome
   Input Text       input_username   hello@gmail.com
   Input Password   input_password    welcome@123
   Click Element    input_go
TC4
   Open Browser     browser=chrome
   @{output}    Run Keyword And Ignore Error    Click Element    xpath=//a
   Log To Console    ${output}
   Log To Console    ${output}[0]
   Log To Console    ${output}[1]