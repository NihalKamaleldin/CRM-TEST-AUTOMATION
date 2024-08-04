*** Settings ***
Documentation    This resource file contains keywords related to the landing page of the CRM application. It includes actions for verifying the landing page and navigating to the sign-in page.
Library    SeleniumLibrary

*** Variables ***
${SIGN_IN_LINK}    sign-in-link
${LANDING_PAGE_HEADLINE}    Customers Are Priority One!

*** Keywords ***
Verify Landing Page Is Loaded
    [Documentation]    This keyword waits until the landing page contains the specified headline text, verifying that the page has loaded correctly. It ensures the user is on the correct landing page before proceeding with any other actions.
    [Tags]             PageLoad    Verification
    Wait Until Page Contains    ${LANDING_PAGE_HEADLINE}

Click on Sign In And Verfiy Login Page is Loaded
    [Documentation]    This keyword performs the action of clicking on the sign-in link and then waits until the login page is displayed. It navigates the user from the landing page to the login page.
    [Tags]             Navigation    SignIn
    Click Link    ${SIGN_IN_LINK}
    Wait Until Page Contains    Login
