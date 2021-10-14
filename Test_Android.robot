*** Settings ***
Library     AppiumLibrary


** Test Cases ***
Open Test Application For Android
    Open Test Application
    Close Popup When App Start
    Click Search Icon On Topbar
    Input Search Keywords Into Search Box   Icon
    Click Bottom Navigation Icon Menu 


*** Keywords ***
Open Test Application
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     deviceName=Pixel_3a_API_30_x86
    ...     platformVersion=11.0
    ...     platformName=Android
    ...     appPackage=com.material.components
    ...     appActivity=com.material.components.activity.MainMenu

Close Popup When App Start
    Wait Until Page contains Element        id=com.material.components:id/bt_close      30s
	Tap     id=com.material.components:id/bt_close

Click Search Icon On Topbar
    Wait Until Page contains Element        accessibility_id=Search     30s
    Tap     accessibility_id=Search

Input Search Keywords Into Search Box
    [Arguments]     ${kw}
    Wait Until Page contains Element    id=com.material.components:id/search_src_text       30s
    Input Text      id=com.material.components:id/search_src_text       ${kw}

Click Bottom Navigation Icon Menu  
    Wait Until Page contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]       30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]
