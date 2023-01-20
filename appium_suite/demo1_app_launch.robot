*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1
   Open Application    remote_url=http://localhost:4723/wd/hub
   ...      platformName=android
   ...      deviceName=redmi
   ...      app=C:${/}Components${/}khan-academy-7-3-2.apk

   Wait Until Page Contains Element    xpath=//*[@text='Dismiss']   30s
   Click Element    xpath=//*[@text='Dismiss']

   Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Sign in']   30s
   Click Element    xpath=//android.widget.Button[@text='Sign in']

   Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']   30s
   Click Element    xpath=//android.widget.TextView[@text='Sign in']

   Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']   30s
   Click Element    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']
   Input Text    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']   naveen
   Click Element    xpath=//android.widget.EditText[@text='Password']
   Input Text    xpath=//android.widget.EditText[@text='Password']  naveen@123