*** Settings ***
Resource   common.resource
Resource   locators.resource

*** Keywords ***
Dado que acesso a tela de login
    Abrir Site no Login

Quando faço login com usuario "${user}" e senha "${pass}"
    Wait Until Element Is Visible    ${LOGIN_USERNAME}    30s
    Input Text       ${LOGIN_USERNAME}    ${user}
    Input Password   ${LOGIN_PASSWORD}    ${pass}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}      30s
    Click Element    ${LOGIN_BUTTON}

Quando tento logar sem informar usuario e senha
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    30s
    Click Element    ${LOGIN_BUTTON}

Então devo estar logado no sistema
    Wait Until Element Is Visible    ${USER_DROPDOWN}    30s

Então devo ver mensagem de campo obrigatorio
    Page Should Contain    Required

Então devo ver mensagem de credenciais invalidas
    ${ok1}=    Run Keyword And Return Status    Wait Until Page Contains    Invalid    10s
    ${ok2}=    Run Keyword And Return Status    Wait Until Page Contains    Credenciais    10s
    IF    not (${ok1} or ${ok2})
        Fail    Mensagem de credenciais inválidas não encontrada.
    END
