*** Settings ***
Resource    ../base.resource

*** Test Cases ***

Register New User
# robot -d results -i newuser test/Tests.robot
    [Tags]    regressao    newuser
    Open App
    Allow Notifications
    Click Sign up Button
    Select Interests    Design    Science    Technology 
    Click On Next Button
    Select Motivators By Name    A sense of hope    Professional growth
    Click On Next Button