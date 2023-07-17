***Settings***
Resource    resources/base.robot

Test Setup       Abrir app
Test Teardown    Fechar app
Library          String

***Test Cases***
Cenário 01 - Fazendo login com Tutor
    Dado que o usuário esteja na tela de login
    E na opção de Tutor
    Quando ele colocar as credenciais
    E entrar no app
    Então deve retornar uma frase de "Olá, " e seu nome

Cenário 02 - Fazendo login com Veterinario
    Dado que o usuário esteja na tela de login
    E na opção de Veterinario
    Quando ele colocar o email e a senha
    E entrar no app
    Então deve retornar uma frase de "Olá, " e seu nome

# Cenário 03 - Fazendo logout            #falar com maicao sobre click estar em 1 elemento só(nao esta clicando no botao que precisa)
#     Dado que o usuário esteja na tela de login
#     Quando ele colocar as credenciais
#     E entrar no app
#     E fazer o logout
#     # Então deve retornar para a página de login

Cenário 04 - Validando "Esqueceu a senha?"
    Dado que o usuário esteja na tela de login
    E ele clicar no "Esqueceu sua senha?"
    Quando enviar o email
    Então deve aparecer uma modal para ele colocar um código recebido do email

# Cenário 05 - Validando botão de reenviar código 
#     Dado que o usuário esteja na tela de login
#     E ele clicar no "Esqueceu sua senha?"
#     Quando enviar o email
#     Então deve aparecer uma modal para ele colocar um código recebido do email
#     E clicar no "Reenviar"

Cenário 06 - Validando "Não tenho cadastro? Clique e cadastre-se"
    Dado que o usuário esteja na tela de login
    Quando ele clicar na frase "Não tenho cadastro? Clique e cadastre-se"
    Então ele deve ser redirecionado para a tela de cadastro

Cenário 07 - Validando "Não tenho cadastro? Clique e cadastre-se" e voltando para tela de login
    Dado que o usuário esteja na tela de login
    Quando ele clicar na frase "Não tenho cadastro? Clique e cadastre-se"
    E foi redirecionado para a tela de cadastro
    E clicar para voltar
    Então deve ser redirecionado para a tela de login novamente