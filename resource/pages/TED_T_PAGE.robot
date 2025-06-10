*** Settings ***
Resource    ../../base.resource

*** Variables ***
### Buttons
${AllowNotif}          xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${DenyNotif}           xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]
${SigninButton}        xpath=//android.widget.TextView[@resource-id="Typography" and @text="Already have a TED account? Sign in"]
${SignupButton}        xpath=//android.widget.Button[@content-desc="Let's go!, Tap to get started, answering two quick questions and improving our services"]
${NextButton}          xpath=//android.widget.Button[@resource-id="Next"]

### Containers
${NotifAlert}          xpath=//android.widget.LinearLayout[@resource-id="com.android.permissioncontroller:id/content_container"]
${WelcomeText}         xpath=//android.widget.TextView[@resource-id="Typography" and @text="Answer two quick questions to get started."]
${InterestsPageMsg}    xpath=//android.widget.TextView[@content-desc="What interests you?"]
${MotivatorsScreen}    xpath=//android.view.ViewGroup[@content-desc="MotivatorsScreen"]
${MotivatorsMsg}       xpath=//android.widget.TextView[@content-desc="What are you looking for?"]

## Lists
${InterestsList}       xpath=//android.view.ViewGroup[@resource-id="Topics_List"]
${MotivatorsList}      xpath=//android.view.ViewGroup[@resource-id="Motivators_List"]

## Inputs
${EmailSignUp}         xpath=//android.widget.EditText[@resource-id="EmailInput>Input"]
${FirstNameInpt}       xpath=//android.widget.EditText[@resource-id="FirstName>Input"]
${LastNameInpt}        xpath=//android.widget.EditText[@resource-id="LastName>Input"]
${FirstPasswordInpt}  xpath=//android.widget.EditText[@resource-id="Password>Input"]  