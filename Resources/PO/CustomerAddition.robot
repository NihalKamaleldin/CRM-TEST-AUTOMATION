*** Settings ***
Documentation    This resource contains keywords for interacting with the customer details form in the CRM application.
Library     SeleniumLibrary

*** Variables ***
${CUSTOMER_EMAIL_FIELD}    EmailAddress
${CUSTOMER_FNAME_FIELD}     FirstName
${CUSTOMER_LNAME_FIELD}     LastName
${CITY_FIELD}              City
${STATE_REGION_VALUE}      StateOrRegion
${GENDER_VALUE}            gender
${PROMOTIONAL_LIST_CHECKBOX}       promos-name
${ADD_TO_PROMOTIONAL_LIST}        promos-yes
${SUMBIT_CUSTOMER_DETAILS}        //*[@id="loginform"]/div/div/div/div/form/button


*** Keywords ***
Fill cusotmer details
    [Documentation]    This Keyword fills in the customer details form with the provided information and submits the form. This includes entering the customer’s email, first name, last name, city, state or region, and gender. It also involves selecting the checkbox to add the customer to the promotional list and submitting the form.    [Tags]    AddCustomer    FormSubmission
    [Arguments]         ${customer_entered_email}   ${customer_fname}   ${customer_lname}  ${city}     ${state_region}    ${gender}
    Enter Customer Email                              ${customer_entered_email}
    Enter Customer FName                              ${customer_fname}
    Enter Customer LName                              ${customer_lname}
    Enter Customer City                               ${city}
    Select The State or Region                        ${state_region}
    Select Gender                                     ${gender}
    Add Customer to Promotional List
    Sumbit Customer Details


Enter Customer Email
    [Arguments]                       ${customer_entered_email}
    input text                        ${CUSTOMER_EMAIL_FIELD}          ${customer_entered_email}

Enter Customer FName
    [Arguments]                       ${customer_fname}
    input text                        ${CUSTOMER_FNAME_FIELD}        ${customer_fname}

Enter Customer LName
    [Arguments]                       ${customer_lname}
    input text                        ${CUSTOMER_LNAME_FIELD}        ${customer_lname}

Enter Customer City
    [Arguments]                       ${city}
    input text                        ${CITY_FIELD}             ${city}


Select The State or Region
    [Arguments]                     ${state_region}
        select from list by value   ${STATE_REGION_VALUE}      ${state_region}


Select Gender
    [Arguments]                    ${gender}
    select radio button            ${GENDER_VALUE}     ${gender}


Add Customer to Promotional List
    scroll element into view    ${PROMOTIONAL_LIST_CHECKBOX}
    select checkbox             ${ADD_TO_PROMOTIONAL_LIST}


Sumbit Customer Details
    scroll element into view     ${SUMBIT_CUSTOMER_DETAILS}
    click button    ${SUMBIT_CUSTOMER_DETAILS}