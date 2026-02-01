*** Settings ***
Resource   common.resource
Resource   locators.resource

*** Keywords ***
Dado que estou logado e na tela inicial
    Abrir Site no Login
    Logar como Admin

Quando pesquiso o modulo "${texto}" no menu lateral
    Wait Until Element Is Visible    ${SIDEBAR_SEARCH_INPUT}    15s
    Clear Element Text               ${SIDEBAR_SEARCH_INPUT}
    Input Text                       ${SIDEBAR_SEARCH_INPUT}    ${texto}

Então devo ver o modulo "${nome_modulo}" no menu
    Wait Until Page Contains Element    xpath=//span[normalize-space()='${nome_modulo}']    15s

Então nao devo ver o modulo "${nome_modulo}" no menu
    Page Should Not Contain Element     xpath=//span[normalize-space()='${nome_modulo}']

Quando apago a pesquisa do menu lateral
    Clear Element Text    ${SIDEBAR_SEARCH_INPUT}

Então devo ver varios modulos no menu novamente
    # validação simples: Dashboard costuma existir no menu
    Wait Until Page Contains Element    xpath=//span[normalize-space()='Dashboard']    15s

Quando acesso o modulo PIM
    Click Element    ${MENU_PIM}

Então devo estar no modulo PIM
    Wait Until Location Contains    /pim/    15s
