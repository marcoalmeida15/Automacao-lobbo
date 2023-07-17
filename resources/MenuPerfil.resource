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
${Email_login_tutor}            wevak24610@iturchia.com
${Email_login_veterinario}      gaboce9880@kameili.com
${Click_fora_do_campo_senha}    //android.view.View[@content-desc="Sua senha "]
${Campo_senha}                  //android.widget.EditText[2]
${Senha}                        Marco@123
${Olho}                         //android.view.View[1]
${Botão_entrar}                 //android.widget.Button[@content-desc="Entrar"]
${Nome_entrada}                 //android.view.View[2]
${Veterinario}                  //android.widget.ImageView[3]
${Entrar_no_app}                Entrar no app 
${Botão_enviar}                 //android.widget.Button[@content-desc="Enviar"]
${Opção_tutor}                  //android.view.View[@content-desc="Sou Tutor"]
${Opção_veterinario}            //android.view.View[@content-desc="Sou Veterinário"]
${Esqueceu_sua_senha}           //android.view.View[@content-desc="Esqueceu a senha?"]
${Recuperar_email}              //android.widget.EditText
${Nao_tenho_cadastro}           //android.view.View[@content-desc="Não tenho cadastro? Clique e cadastre-se!"]
${Tela_cadastro}                //android.view.View[@content-desc="Criar uma conta"]
${Click_voltar}                 //android.widget.Button[@content-desc="Voltar"]
${Tela_login}                   //android.view.View[@content-desc="Sou Tutor"]

*** Keywords ***
Dado que o usuário está dentro do app
    Click Element                    accessibility_id=${Entrar_no_app}
    Wait Until Element Is Visible    xpath=${Campo_email_login}
    Click Element                    xpath=${Campo_email_login}
    Input Text                       xpath=${Campo_email_login}    ${Email_login_tutor}
    Click Element                    xpath=${Click_fora_do_campo_senha}
    Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=${Campo_senha}
    Click Element                    xpath=${Campo_senha}    
    Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=${Campo_senha}
    Input Password                   xpath=${Campo_senha}    ${Senha}
    Click Element                    xpath=${Click_fora_do_campo_senha}
    Click Element                    xpath=${Botão_entrar}

E ele entrar no menu perfil
    Wait Until Element Is Visible    accessibility_id=Perfil
    Click Element                    accessibility_id=Perfil

Quando ele clicar na imagem
    Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    xpath=//android.view.View[2]
    Click Element                    xpath=//android.view.View[2]

Então deve ter as opções de câmera e galeria
    Wait Until Element Is Visible    accessibility_id=Câmera
    Wait Until Element Is Visible    accessibility_id=Galeria

Então ele clica na opção de câmera
    Click Element                    accessibility_id=Câmera

Então ele clica na opção de galeria
    Click Element                    accessibility_id=Galeria    

# Quando ele tirar o nome
    

# Então não deve ser possivel salvar

Quando ele clicar em "Alterar minha senha"
    Swipe    792    1790    796    1002
    Wait Until Element Is Visible    accessibility_id=Alterar minha senha
    Click Element                    accessibility_id=Alterar minha senha