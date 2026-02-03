*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    locators.resource

*** Keywords ***
Abrir Site no Login
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser

Logar como Admin
    Wait Until Element Is Visible    ${LOGIN_USERNAME}    15s
    Input Text       ${LOGIN_USERNAME}    ${VALID_USER}
    Input Password   ${LOGIN_PASSWORD}    ${VALID_PASS}
    Click Button     ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${USER_DROPDOWN}     15s

Ir para o módulo PIM (Employee List)
    Click Element    ${MENU_PIM}
    Wait Until Location Contains    /pim/    15s

Gerar dados simples de Employee
    ${rand}=    Generate Random String    6    [LETTERS]
    ${id}=      Generate Random String    6    [NUMBERS]
    ${first}=   Set Variable    Test${rand}
    ${last}=    Set Variable    User${rand}
    RETURN    ${first}    ${last}    ${id}

Garantir que estou na lista de Employees (PIM)
    Ir para o módulo PIM (Employee List)
    Wait Until Element Is Visible    ${BTN_ADD}    15s
