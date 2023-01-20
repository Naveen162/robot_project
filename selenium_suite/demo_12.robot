*** Settings ***
Library    Collections
Library    OperatingSystem
Library    String
*** Test Cases ***
TC1
   ${List} List Files  In  Directory
   Log To Console    ${List}
   Log List     ${List}
TC2
   Remove File      path=C:${/}Mine${/}demo.txt
   File Should Not Exist    path=C:${/}Mine${/}demo.txt
TC3
   File Should Not Exist  path=C:${/}Mine${/}Company${/}LT7${/}Chat.txt
TC4
   ${name}      Set Variable    robot framework session
   Log To Console    ${name}
   ${u_name}   Convert To Upper Case ${name}
   Log To Console    ${u_name}
   ${final_Str}     Remove String   ${u_name}   SESSION
   Log To Console    ${final_Str}
TC5
   ${num1}      Set Variable        $200,100
   ${num2}      Set Variable        $200
   ${final_num1}     Remove String       ${num1}    $   ,
   ${final_num2}     Remove String       ${num2}    $
   Log To Console    ${final_num1}
   Log To Console    ${final_num2}
   ${s_sum}    Evaluate   ${final_num1}+${final_num2}
   Log To Console    ${s_sum}