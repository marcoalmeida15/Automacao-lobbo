***Settings***
Resource    resources/base.robot

Test Setup       Abrir app
Test Teardown    Fechar app
Library          String

***Test Cases***
Cenário 01 - Entrando no menu notificações
    Dado que o usuário está dentro do app
    Quando ele entrar no menu notificações
    Então deve conter as notificações recebidas

Cenário 02 - Visualizando todas as notificações
    Dado que o usuário está dentro do app
    Quando ele entrar no menu notificações
    Então deve conter as notificações recebidas

Cenário 03 - Visualizando apenas notificações pendentes de visualização
    Dado que o usuário está dentro do app
    Quando ele entrar no menu notificações
    E flegar para ver somente as notificações pendentes de visualização
    Então deve conter somente as notificações pendentes de visualização
    