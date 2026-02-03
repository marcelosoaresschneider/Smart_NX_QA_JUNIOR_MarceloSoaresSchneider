*** Settings ***
Resource        ../resources/login.resource
Resource        ../resources/locators.resource
Test Setup      Dado que acesso a tela de login
Test Teardown   Fechar Navegador

*** Test Cases ***
CT01 - Login com sucesso
    Quando faço login com usuario "${VALID_USER}" e senha "${VALID_PASS}"
    Então devo estar logado no sistema

CT02 - Login sem fornecer usuario e senha
    Quando tento logar sem informar usuario e senha
    Então devo ver mensagem de campo obrigatorio

CT03 - Login com credenciais invalidas
    Quando faço login com usuario "Admin" e senha "errada123"
    Então devo ver mensagem de credenciais invalidas
