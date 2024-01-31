*** Settings ***
Library            AppiumLibrary
Resource           ../Resources/appDemosPages.robot
Variables          ../Resources/locator.yaml
Suite Setup        Start Session Apps
Suite Teardown     Close Apps


*** Test Cases ***
As a user i want to open Demos app
    Page Should Contain Text    Accessibility
    Tap Accessibility
    Sleep    1
    Page Should Contain Text    Accessibility Node Provider
As a user i want to open Accessibility Node Provider
    Tap Accessibility Node Provider
    Page Should Contain Text    Enable TalkBack
    