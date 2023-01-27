*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE_NUM}       94902
@{COLORS}   red green yellow
*** Test Cases ***
TC1
   ${my_name}   Set Variable    naveen
   Log To Console    ${my_name}
   Log To Console    ${BROWSER_NAME}
TC2
   Log To Console    ${COLORS}[1]
   Log To Console    ${COLORS}
TC3
   ${item_count}  Get Length    ${COLORS}
   Log To Console    ${item_count}
TC4
   @{fruits}    Create List   apple   orange  mango
   Log To Console    ${fruits}[1]
   Append To List    ${fruits}      grapes
   Log To Console    ${fruits}
   Remove From List  ${fruits}      0
   Log To Console    ${fruits}
   Insert Into List  ${fruits}      3    guava
   Log To Console    ${fruits}
   Get Length        ${fruits}
TC5
   ${fruits}    Create List     orange  mango   apple   pineapple
   ${count}     Get Length    ${fruits}
   Log To Console    ${Count}

   FOR    ${fruits}    IN RANGE    0    4
       Log To Console   ${fruits}
   END