*** Settings ***
Library     AppiumLibrary


** Test Cases ***
Open Test Application For Android
    Open Test Application
    Close Popup When App Start
    Click Expansion Panels Icon Menu 
    Click Basic Icon Menu 
    Click Input Icon Menu 
    Click Sex Type Menu 
    Click Save 


*** Keywords ***
Open Test Application
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     deviceName=Pixel_3a_API_30_x86
    ...     platformVersion=11.0
    ...     platformName=Android
    ...     appPackage=com.material.components
    ...     appActivity=com.material.components.activity.MainMenu

Close Popup When App Start
    Wait Until Page contains Element        id=com.material.components:id/bt_close
	Tap     id=com.material.components:id/bt_close

Click Expansion Panels Icon Menu  
    Wait Until Page contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Expansion Panels']]       30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Expansion Panels']]

Click Basic Icon Menu  
    Wait Until Page contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Basic']]       
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Basic']]

Click Input Icon Menu  
    Wait Until Page contains Element    id=com.material.components:id/bt_toggle_input       
    Tap     id=com.material.components:id/bt_toggle_input

Click Sex Type Menu  
    Wait Until Page contains Element     xpath=//android.widget.RadioButton[@text='Female']     30s
    Tap     xpath=//android.widget.RadioButton[@text='Female'] 

Click Save 
    Wait Until Page contains Element    id=com.material.components:id/bt_save_input       
    Tap     id=com.material.components:id/bt_save_input

