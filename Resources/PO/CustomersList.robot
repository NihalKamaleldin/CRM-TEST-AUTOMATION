*** Settings ***
Documentation    This resource file contains keywords for interacting with the customer list page in the CRM application. It includes actions for viewing the customer list and navigating to the "Add Customer" page.
Library     SeleniumLibrary

*** Variables ***
${NEW_CUSTOMER_BUTTON}            xpath=//*[@id="new-customer"]
${HOMEPAGE_HEADLINE}        Our Happy Customers

*** Keywords ***
View Customer List
    [Documentation]    This Keyword waits until the homepage headline is present to verify the customers list page is loaded.
    [Tags]    ViewCustomerList
    Wait Until Page Contains    ${HOMEPAGE_HEADLINE}

Click Add Customer Button
    [Documentation]    This Keyword click the button to add a new customer and wait until the add customer page is loaded.
    [Tags]    AddCustomer
    Click Link    ${NEW_CUSTOMER_BUTTON}
    Wait Until Page Contains    Add Customer