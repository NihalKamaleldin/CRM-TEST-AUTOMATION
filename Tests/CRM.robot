*** Settings ***
Documentation    This suite tests the CRM application functionality, including user login, customer management, and sign out. It uses SeleniumLibrary to interact with the web application.
Library          SeleniumLibrary
Resource         ../Resources/CRMApp.robot
Resource         ../Resources/Common.robot
Test Setup          Begin Test      ${START_URL}    ${BROWSER}
Test Teardown       End test

#Run the scripts
#robot -d results tests/CRM.robot

*** Variables ***
${BROWSER}           chrome
${START_URL}         https://automationplayground.com/crm/
${USER_EMAIL}        jane@gmail.com
${USER_PASSWORD}     coolstrongpassword
${CUSTOMER_EMAIL}    customer@gmail.com
@{CUSTOMER_NAME}     Jane     Doe
${CITY}             Fairbanks
${STATE_REGION}      AK
${GENDER}           female


*** Test Cases ***
Should be able to add new customer
    [Documentation]    This test case verifies that a user can successfully add a new customer. The test includes logging in, navigating to the customer list, adding a new customer, and verifying the addition.
    [Tags]             Smoke    AddCustomer    Regression
    CRMApp.Login                ${USER_EMAIL}       ${USER_PASSWORD}
    CRMApp.View customers List
    CRMApp.Add new customer
    CRMApp.Fill customer details        ${CUSTOMER_EMAIL}   ${CUSTOMER_NAME}[0]    ${CUSTOMER_NAME}[1]   ${CITY}     ${STATE_REGION}     ${GENDER}
    CRMApp.Sign out



