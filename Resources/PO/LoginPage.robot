*** Settings ***
Documentation    This resource file contains keywords related to the login page of the CRM application. It includes actions for filling in login details and submitting the login form.
Library           SeleniumLibrary

*** Variables ***
${LOGIN_SUBMIT}       //*[@id="submit-id"]
${EMAIL_FIELD}        email-id
${PASSWORD_FIELD}     password
${REMEMBER_ME}        remember

*** Keywords ***
Fill Login Details
    [Documentation]    This keyword fills in the login details on the login page, including the email, password, and an optional 'Remember Me' checkbox. It then submits the login form by clicking the submit button.
    [Tags]             Login    FormSubmission
    [Arguments]               ${email}    ${password}
    Input Text              ${EMAIL_FIELD}                              ${email}
    Input Password          ${PASSWORD_FIELD}                           ${password}
    Select Checkbox         ${REMEMBER_ME}
    Click Button            ${LOGIN_SUBMIT}
