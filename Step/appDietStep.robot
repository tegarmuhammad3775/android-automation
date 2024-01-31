*** Settings ***
Library            AppiumLibrary
Resource           ../Resources/appDietPages.robot
Variables          ../Resources/appDietLocator.yaml
Suite Setup        Start Session Apps
Suite Teardown     Close Apps


*** Test Cases ***
As a user i want to open diet app    
    Sleep    5
    Page Should Contain Text    Welcome...

As a user i want to input my Data
    User Input Welcome Data
    User Tap Next Button