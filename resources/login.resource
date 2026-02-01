*** Settings ***
Resource   common.resource
Resource   locators.resource

*** Keywords ***
Dado que acesso a tela de login
    Abrir Site no Login

Quando faço login com usuario "${user}" e senha "${pass}"
    Wait Until Element Is Visible    ${LOGIN_USERNAME}    15s
    Input Text       ${LOGIN_USERNAME}    ${user}
    Input Password   ${LOGIN_PASSWORD}    ${pass}
    Click Button     ${LOGIN_BUTTON}

Quando tento logar sem informar usuario e senha
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    15s
    Click Button    ${LOGIN_BUTTON}

Então devo estar logado no sistema
    Wait Until Element Is Visible    ${USER_DROPDOWN}    15s

Então devo ver mensagem de campo obrigatorio
    Page Should Contain    Required

Então devo ver mensagem de credenciais invalidas
    Page Should Contain    Invalid credentials
