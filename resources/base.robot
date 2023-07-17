***Settings***
Library     AppiumLibrary

Resource    Cadastro.resource
Resource    Login.resource

*** Keywords ***
Abrir app
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel_2_API_28
    ...                 app=/Users/Luan/Documents/Projetos/Automação-front-lobbo/app/lobbo.apk
    ...                 udid=emulator-5554
    
    Wait Until Element Is Visible    accessibility_id=Cadastre-se        10
    
Fechar app
    Capture Page Screenshot
    Close Application