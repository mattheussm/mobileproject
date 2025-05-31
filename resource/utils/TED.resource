*** Settings ***
Resource    ../../base.resource
Resource    ../pages/TED_T_PAGE.robot
Library    String

*** Keywords ***

Open App
    Open Application    
    ...    remote_url=http://localhost:4723/wd/hub
    ...    automationName=UIAutomator2
    ...    platformName=android
    ...    deviceName=Google Pixel 7 Pro
    ...    app=${CURDIR}${/}..${/}app${/}TED.apk

Allow Notifications
    Wait Until Element Is Visible    ${NotifAlert}
    Click Element    ${AllowNotif}

Click Sign up Button
    Wait Until Element Is Visible    ${WelcomeText}
    Click Element    ${SignupButton}
    Sleep    15

Select Interests
    [Arguments]    @{interests}
    FOR    ${interest}    IN    @{interests}
        ${locator}=    Set Variable    ${InterestsList}//android.widget.Button[.//android.widget.TextView[@text="${interest}"]]
        Wait Until Element Is Visible    ${locator}    10s
        Click Element    ${locator}
    END

Click On Next Button    
    Wait Until Element Is Visible    ${NextButton}  
    Click Element    ${NextButton}

Select Motivators By Name
    [Arguments]    @{motivators}
    FOR    ${motivator}    IN    @{motivators}
        ${locator}=    Set Variable    ${MotivatorsList}//android.widget.Button[.//android.widget.TextView[@text="${motivator}"]]
        Wait Until Element Is Visible    ${locator}    10s
        Click Element    ${locator}
    END



    
