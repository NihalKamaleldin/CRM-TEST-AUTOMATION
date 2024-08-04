*** Settings ***
Documentation     This is the CRMAPP
Library           SeleniumLibrary
Resource          ../Resources/PO/LoginPage.robot
Resource          ../Resources/PO/CustomerAddition.robot
Resource          ../Resources/PO/CustomersList.robot
Resource          ../Resources/PO/LandingPage.robot
Resource          ../Resources/PO/Results.robot

*** Keywords ***
Login with valid credentials
    [Documentation]    Logs into the application. This involves verifying that the landing page is loaded, clicking the sign-in link, and filling in the login details.
    [Arguments]        ${email}    ${password}
    [Tags]             Login    Authentication
    LandingPage.Verify Landing Page Is Loaded
    LandingPage.Click on Sign In And Verfiy Login Page is Loaded
    LoginPage.Fill Login Details    ${email}    ${password}

View Customers List
    [Documentation]    Navigates to the customers list page by ensuring the page is correctly loaded.
    [Tags]             Navigation    CustomerList
    CustomersList.View Customer List

Add New Customer
    [Documentation]    Clicks the button to add a new customer and waits for the add customer page to load.
    [Tags]             CustomerManagement    AddCustomer
    CustomersList.Click Add Customer Button

Fill Customer Details
    [Documentation]    Fills out the form to add a new customer with the provided details and submits the form.
    [Arguments]        ${customer_email}    ${customer_fname}    ${customer_lname}    ${city}    ${state_region}    ${gender}
    [Tags]             CustomerManagement    FormSubmission
    CustomerAddition.Fill cusotmer details    ${customer_email}    ${customer_fname}    ${customer_lname}    ${city}    ${state_region}    ${gender}

Sign Out And Verify User is Signed out
    [Documentation]    Signs out of the application and verifies that the user has been signed out.
    [Tags]             Logout    Authentication
    Click on Sign out
    Results.User Signed Out

Click on Sign out
     Click Link    Sign Out