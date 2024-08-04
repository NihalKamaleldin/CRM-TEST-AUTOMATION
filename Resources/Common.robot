*** Settings ***
Documentation    This resource file contains common keywords used for test initialization and teardown in the CRM application. It includes keywords for starting and ending tests, including browser setup and teardown actions.
Library          SeleniumLibrary

*** Keywords ***
Begin Test
    [Documentation]    This keyword initializes the test environment by opening a browser, navigating to the specified URL, and setting up Selenium configurations. It is typically used at the beginning of a test case to prepare the test environment.
    [Tags]             TestSetup    Browser
    [Arguments]        ${start_url}    ${browser}
    Log               Starting the test case!
    Open Browser       ${start_url}    ${browser}
    Maximize Browser Window
    # Initialize Selenium settings
    Set Selenium Speed    0.0001s
    Set Selenium Timeout  5s

End Test
    [Documentation]    This keyword performs the teardown actions for a test case, including closing the browser and pausing briefly to ensure that all actions are properly completed. It is typically used at the end of a test case to clean up the test environment.
    [Tags]             TestTeardown    Cleanup
    Sleep               5s
    Close Browser
