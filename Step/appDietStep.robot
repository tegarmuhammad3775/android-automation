*** Settings ***
Library            AppiumLibrary
Resource           ../Resources/appDietPages.robot
Variables          ../Resources/appDietLocator.yaml
Suite Setup        Start Session Apps
Suite Teardown     Close Apps