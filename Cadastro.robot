***Settings***
Resource    resources/base.robot

Test Setup       Abrir app
Test Teardown    Fechar app
Library          String

***Test Cases***
Cenário 01 - Cadastrando um tutor
    Dado que o usuário esteja na tela de cadastro
    E ele entrar como tutor
    Quando ele colocar os dados 
    E flegar os termos 
    E clicar em continuar
    Então deve aparecer uma modal para ele colocar um código recebido do email

Cenário 02 - Verificar o clique de "Já possuí Login?" - Tutor
    Dado que o usuário esteja na tela de cadastro
    E ele entrar como tutor
    Quando ele clicar no "Clique e entre!"
    Então deve ser redirecionado para a tela de login

Cenário 03 - Fazendo login pela tela de cadastro - Tutor
    Dado que o usuário esteja na tela de cadastro
    E ele entrar como tutor
    Quando ele clicar no "Clique e entre!"
    E colocar as credenciais
    Então deve entrar no app como tutor

# Cenário 04 - Cadastrando um veterinário sem especialidade
#     Dado que o usuário esteja na tela de cadastro
#     E ele entrar como veterinário
#     Quando ele colocar os dados pessoais
#     E flegar os termos 
#     E clicar em continuar
#     E colocar os dados profissionais
#     E clicar em continuar
#     E flegar todos os tipos de atendimento sem a especialidade
#     E clicar em continuar
#     Então deve aparecer uma modal para ele colocar um código recebido do email
