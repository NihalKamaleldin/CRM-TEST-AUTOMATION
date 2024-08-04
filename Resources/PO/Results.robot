*** Settings ***
Documentation    This resource file contains keywords related to verifying the results of actions performed in the CRM application. It includes keywords for confirming that a customer has been successfully added and that a user has been signed out.
Library         SeleniumLibrary

*** Keywords ***

Cutomer Added Sucess
    [Documentation]    This keyword verifies that a new customer has been successfully added by checking for the presence of a success message on the page. It ensures that the action of adding a customer has been completed successfully.
    [Tags]             Verification    CustomerAddition
    wait until page contains    Success! New customer added.

User Signed Out
    [Documentation]    This keyword verifies that the user has been successfully signed out by checking for the presence of a sign-out confirmation message on the page. It ensures that the sign-out process was completed successfully.
    [Tags]             Verification    SignOut
    wait until page contains    Signed Out