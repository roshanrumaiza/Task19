*** Settings ***
#importing the keyword file
Resource    C://Users//ASUS//PycharmProjects//Playwright-Demo//Task19//resources//keywords.robot
#importing the variable file
Variables   C://Users//ASUS//PycharmProjects//Playwright-Demo//Task19//variables//variables.py
Library    SeleniumLibrary
#suite setup and teardown is common to all the test cases
Suite Setup     Open Browser to login page
Suite Teardown  Close Browser


*** Test Cases ***
#test case to verify login withvalid crediantials
Verify login functionalties with valid crediantials
    login with valid crediantials
    Title Should be     RobotSpareBin Industries Inc. - Intranet

#test case to verify logout functionality
Verify logout functionalities
    login with valid crediantials
    logout from the application
