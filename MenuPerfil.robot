***Settings***
Resource    resources/base.robot

Test Setup       Abrir app
Test Teardown    Fechar app
Library          String

***Test Cases***
Cenário 01 - Validando opções de adicionar foto 
    Dado que o usuário está dentro do app
    E ele entrar no menu perfil
    Quando ele clicar na imagem
    Então deve ter as opções de câmera e galeria

Cenário 02 - Validando a opção de adicionar uma foto pela câmera
    Dado que o usuário está dentro do app
    E ele entrar no menu perfil
    Quando ele clicar na imagem
    Então ele clica na opção de câmera
   
Cenário 03 - Validando a opção de adicionar uma foto pela galeria
    Dado que o usuário está dentro do app
    E ele entrar no menu perfil
    Quando ele clicar na imagem
    Então ele clica na opção de galeria

# Cenário 04 - Tirando o campo obrigatório "Seu nome"
#     Dado que o usuário está dentro do app
#     E ele entrar no menu perfil
#     Quando ele tirar o nome
#     # Então não deve ser possivel salvar

Cenário 05 - Validando "Alterar minha senha"
    Dado que o usuário está dentro do app
    E ele entrar no menu perfil
    Quando ele clicar em "Alterar minha senha"
    Então deve aparecer uma modal para ele colocar um código recebido do email
