*** Settings ***

#keyword file
Library    SeleniumLibrary
Variables   C://Users//ASUS//PycharmProjects//Playwright-Demo//Task19//variables//variables.py

*** Keywords ***
#steps to open the browser to login
Open Browser to login page
     Open Browser  ${URL}  ${Browser}
     Maximize Browser window

#steps to enter the crediantials and submit the form
login with valid crediantials
    Input Text  id=username     ${User}
    Input Text  id=password     ${Pass}
    Click Button    xpath=//button[text()='Log in']

#steps tologout from the application
logout from the application
    Wait Until Element Is Visible    id=logout
    Click Button   id=logout
    #verify the logout is succesful by mentioning the title of the login page
    Title Should be   RobotSpareBin Industries Inc. - Intranet
