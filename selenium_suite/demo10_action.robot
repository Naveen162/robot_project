*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
   Open Browser     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://nasscom.in/
   Mouse Over   xpath-//a[text()='Membership']
   Mouse Over   xpath=//a[text()='Become a Member ']
   Click Element  xpath=//a[text()='Membership Benefits']
   Click Element  xpath=//a[text()='Click to Apply to online']
   Input Text    xpath=//textarea[@name='field_company_profile[0][value]']    L&T
   Click Element   id=Calculate-Fee
   ${alert_text}    Handle Alert    action=Accept
   Log To Console   ${alert_text}
   Should Be Equal  ${alert_text}   Please enter the total revenue greater than ZERO.