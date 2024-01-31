*** Settings ***
Library    AppiumLibrary
Variables  ../Resources/appDietLocator.yaml

*** Keywords ***
Start Session Apps
    Open Application	http://localhost:4723/wd/hub	
    ...	                platformName=Android	
    ...	                platformVersion=11.0
    ...                 deviceName=emulator-5554
    ...                 appPackage=com.fghilmany.dietmealapp
    ...                 appActivity=com.fghilmany.dietmealapp.ui.main.MainActivity 
    ...                 automationName=UiAutomator2
    ...                 autoGrantPermissions=true
    ...                 noReset=true
    Sleep               1  

User Input Welcome Data  
    Input Text    ${homePageNameField}    MySkill
    Input Text    ${homePageWeightField}    70
    Input Text    ${homePageHeightField}    180
    Tap           ${homePageGenderMaleButton}

User Tap Next Button
    Click Element    ${homePageNextButton}

Close Session Apps
    Capture Page Screenshot
    Close Application            

Close Apps
    Capture Page Screenshot
    Close Application