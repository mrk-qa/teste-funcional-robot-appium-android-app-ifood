***Settings***

Library                                 AppiumLibrary
Resource                                helpers.robot

***Keywords***

Open Session
    Open Application                    http://localhost:4723/wd/hub
    ...                                 automationName=UiAutomator2
    ...                                 platformName=Android
    ...                                 deviceName=Emulator
    ...                                 app=${EXECDIR}/app/ifood.apk