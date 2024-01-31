*** Settings ***
Library    AppiumLibrary
Variables  ../Resources/locator.yaml

*** Keywords ***
Start Session Apps
    # Set Appium Timeout    10
    # Open Application    192.168.0.4:4273/wd/hub
    Open Application	http://localhost:4723/wd/hub	
    ...	                platformName=Android	
    ...	                platformVersion=11.0
    ...                 deviceName=emulator-5554
    ...                 appPackage=io.appium.android.apis
    ...                 appActivity=io.appium.android.apis.ApiDemos
    # ...                 automationName=UiAutomator2
    # ...                 autoGrantPermissions=true
    # ...                 noReset=true
    # Sleep               1    

Tap Accessibility
   Tap                 ${accessibility}
   
Tap Accessibility Node Provider
    Tap                ${accessibility_node_provider}

Tap Accessibility Node Querying
    Tap                ${accessibility_node_querying}

Tap Accessibility Service
    Tap                ${accessibility_service}

Tap Custom View
    Tap                ${custom_view}    

Close Session Apps
    Capture Page Screenshot
    Close Application            

Close Apps
    Capture Page Screenshot
    Quit Application