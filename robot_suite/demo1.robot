*** Settings ***
Library     DateTime

*** Test Cases ***
TC1
    Log To Console  message=Naveen
    Log To Console    hello

TC2
    ${my_name}  Set variable     Naveen
    Log To Console  ${my_name}

TC3
    ${Today_Date}  Get Current Date
    Log To Console  ${Today_Date}

TC4
    ${radius}   Set variable    10
    ${area}     Evaluate   ${radius} * ${radius} * 3.14
    Log To Console   ${area}