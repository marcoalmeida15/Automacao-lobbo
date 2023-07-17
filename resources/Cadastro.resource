*** Settings ***
Library    AppiumLibrary
Library    String

*** Variables ***
${Cadastro}                     Cadastre-se
${Tutor}                        //android.widget.ImageView[2]
${Campo_Nome}                   //android.widget.EditText[1]
${Nome}                         Marco
${Sobrenome}                    Almeida
${Campo_Sobrenome}              //android.widget.EditText[2]
${Campo_cpf}                    //android.widget.EditText[3]
${Cpf}                          04836535000
${Campo_Celular}                //android.widget.EditText[4]
${Celular}                      51996276914
${Click_fora_do_campo}          //android.view.View
${Campo_email}                  //android.widget.EditText[5]
${Flegar_primeira_opção}        //android.widget.CheckBox
${Flegar_segunda_opção}         //android.widget.CheckBox[2]
${Flegar_terceira_opção}         //android.widget.CheckBox[3]
${Continuar}                    //android.widget.Button[@content-desc="Continuar"]
${Modal_Token_email}            //android.view.View[@content-desc="Informe o código token enviado por e-mail"]
${Opção_ja_possui_login}        //android.view.View[@content-desc="Ja possuí login? Clique e entre!"]
${Campo_email_login}            //android.widget.EditText[1]
${Email_login}                  wevak24610@iturchia.com
${Click_fora_do_campo_senha}    //android.view.View[@content-desc="Sua senha "]
${Campo_senha}                  //android.widget.EditText[2]
${Senha}                        Marco@123
${Olho}                         //android.view.View[1]
${Botão_entrar}                 //android.widget.Button[@content-desc="Entrar"]
${Nome_entrada}                 //android.view.View[1]
${Veterinario}                  //android.widget.ImageView[3]
*** Keywords ***
Dado que o usuário esteja na tela de cadastro
    Click Element                    accessibility_id=${Cadastro}
    
E ele entrar como tutor
    Click Element                    xpath=${Tutor} 

Quando ele colocar os dados
    ${random_string}=    Generate Random String    length=4    chars=[LETTERS]    
    ${email}=    Set Variable    ${random_string}\@gmail.com
    Wait Until Element Is Visible    xpath=${Campo_Nome} 
    Click Element                    xpath=${Campo_Nome}  
    Input Text                       xpath=${Campo_Nome}   ${Nome}   
    Click Element                    xpath=${Campo_Sobrenome}
    Input Text                       xpath=${Campo_Sobrenome}    ${Sobrenome}
    Click Element                    xpath=${Campo_cpf} 
    Input Text                       xpath=${Campo_cpf}     ${Cpf}
    Click Element                    xpath=${Campo_Celular}
    Input Text                       xpath=${Campo_Celular}    ${Celular}
    Click Element                    xpath=${Click_fora_do_campo}
    Click Element                    xpath=${Campo_email}
    Input Text                       xpath=${Campo_email}    ${email}
    Click Element                    xpath=${Click_fora_do_campo}

E flegar os termos 
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Flegar_primeira_opção}
    Click Element                    xpath=${Flegar_primeira_opção}
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Flegar_segunda_opção}
    Click Element                    xpath=${Flegar_segunda_opção}  

E clicar em continuar
    Wait Until Element Is Visible    xpath=${Continuar}
    Click Element                    xpath=${Continuar}    

Então deve aparecer uma modal para ele colocar um código recebido do email
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Modal_Token_email}

Quando ele clicar no "Clique e entre!"
    Wait Until Element Is Visible    xpath=${Opção_ja_possui_login}
    Click Element                    xpath=${Opção_ja_possui_login}   

Então deve ser redirecionado para a tela de login
    Wait Until Element Is Visible    xpath=${Click_fora_do_campo}

E colocar as credenciais
    Click Element                    xpath=${Campo_email_login}
    Input Text                       xpath=${Campo_email_login}  ${Email_login}  
    Click Element                    xpath=${Click_fora_do_campo_senha}
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Campo_senha}
    Click Element                    xpath=${Campo_senha}
    Input Text                       xpath=${Campo_senha}   ${Senha} 
    Wait Until Element Is Visible    xpath=${Olho}
    Click Element                    xpath=${Olho}

Então deve entrar no app como tutor
    Click Element                    xpath=${Botão_entrar} 
    Wait Until Element Is Visible    xpath=${Nome_entrada}

E ele entrar como veterinário
    Wait Until Element Is Visible    xpath=${Veterinario}
    Click Element                    xpath=${Veterinario}

Quando ele colocar os dados pessoais
    ${random_string}=    Generate Random String    length=4    chars=[LETTERS]    
    ${email}=    Set Variable    ${random_string}\@gmail.com
    Wait Until Element Is Visible    xpath=${Campo_Nome}
    Click Element                    xpath=${Campo_Nome}
    Input Text                       xpath=${Campo_Nome}    ${Nome} 
    Click Element                    xpath=${Campo_Sobrenome}
    Input Text                       xpath=${Campo_Sobrenome}    ${Sobrenome}
    Click Element                    xpath=${Campo_cpf}
    Input Text                       xpath=${Campo_cpf}    ${Cpf}
    Click Element                    xpath=${Campo_Celular}
    Input Text                       xpath=${Campo_Celular}    ${Celular}
    Click Element                    xpath=${Click_fora_do_campo}
    Click Element                    xpath=${Campo_email}
    Input Text                       xpath=${Campo_email}    ${email}
    Click Element                    xpath=${Click_fora_do_campo}
    
# E colocar os dados profissionais
#     Sleep    10s
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[1]
#     Click Element                    xpath=//android.widget.EditText[1]
#     Input Text                       xpath=//android.widget.EditText[1]        PetClinical 
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[2]
#     Click Element                    xpath=//android.widget.EditText[2]
#     Input Text                       xpath=//android.widget.EditText[2]        123456
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[3] 
#     Click Element                    xpath=//android.widget.EditText[3]  
#     Input Text                       xpath=//android.widget.EditText[3]        95520000 
#     Click Element                    xpath=${Click_fora_do_campo}
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[4] 
#     Click Element                    xpath=//android.widget.EditText[4]  
#     Input Text                       xpath=//android.widget.EditText[4]        Avenida Brasil
#     Click Element                    xpath=${Click_fora_do_campo}
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[5]
#     Click Element                    xpath=//android.widget.EditText[5]  
#     Input Text                       xpath=//android.widget.EditText[5]        1639 
#     Click Element                    xpath=${Click_fora_do_campo}
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[6] 
#     Click Element                    xpath=//android.widget.EditText[6]  
#     Input Text                       xpath=//android.widget.EditText[6]        Casa 
#     Click Element                    xpath=${Click_fora_do_campo}
#     Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[7]
#     Click Element                    xpath=//android.widget.EditText[7]       
#     Input Text                       xpath=//android.widget.EditText[7]        Albatroz     
#     Click Element                    xpath=${Click_fora_do_campo}
    # Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[8] 
    # Click Element                    xpath=//android.widget.EditText[8]  
    # Input Text                       xpath=//android.widget.EditText[8]        Canoas
    # Click Element                    xpath=${Click_fora_do_campo}
    # Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=//android.widget.EditText[9]
    # Click Element                    xpath=//android.widget.EditText[9]  
    # Input Text                       xpath=//android.widget.EditText[9]        Rio Grande Do Sul 

E flegar todos os tipos de atendimento sem a especialidade   
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Flegar_primeira_opção}
    Click Element                    xpath=${Flegar_primeira_opção}
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Flegar_segunda_opção}
    Click Element                    xpath=${Flegar_segunda_opção}
    Wait Until Keyword Succeeds    5x    10s    Wait Until Element Is Visible    xpath=${Flegar_terceira_opção}
    Click Element                    xpath=${Flegar_terceira_opção}
