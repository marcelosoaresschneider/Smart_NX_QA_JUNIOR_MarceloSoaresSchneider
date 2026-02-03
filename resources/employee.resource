*** Settings ***
Resource   common.resource
Resource   locators.resource

*** Keywords ***
Dado que estou logado e no PIM (lista de employees)
    Abrir Site no Login
    Logar como Admin
    Garantir que estou na lista de Employees (PIM)

Quando clico no botao Add
    Wait Until Element Is Visible    ${BTN_ADD}    30s
    Click Element    ${BTN_ADD}
    Wait Until Location Contains     /pim/addEmployee    30s

Então devo ver a tela de cadastro de employee
    Location Should Contain    /pim/addEmployee

Quando tento salvar sem preencher o nome
    Wait Until Element Is Visible    ${BTN_SAVE}    30s
    Click Element    ${BTN_SAVE}

Então devo ver validacao de campos obrigatorios
    Wait Until Page Contains Element    ${REQUIRED_ERROR}    30s

Quando preencho dados basicos do employee (sem login) e salvo
    ${first}    ${last}    ${id}=    Gerar dados simples de Employee
    Set Suite Variable    ${EMP_FIRST}    ${first}
    Set Suite Variable    ${EMP_LAST}     ${last}
    Set Suite Variable    ${EMP_ID}       ${id}

    Wait Until Element Is Visible    ${FIRST_NAME}       30s
    Input Text    ${FIRST_NAME}         ${EMP_FIRST}
    Input Text    ${LAST_NAME}          ${EMP_LAST}
    Clear Element Text                  ${EMPLOYEE_ID_ADD}
    Input Text    ${EMPLOYEE_ID_ADD}    ${EMP_ID}

    ${real_id}=    Get Value    ${EMPLOYEE_ID_ADD}
    Set Suite Variable    ${EMP_ID}    ${real_id}

    Click Element    ${BTN_SAVE}

Então o employee deve ser cadastrado com sucesso
    Wait Until Location Contains    /pim/viewPersonalDetails    30s
    Wait Until Element Is Visible   ${FIRST_NAME}               30s
    Sleep    1s
    ${first}=    Get Value    ${FIRST_NAME}
    Should Contain    ${first}    ${EMP_FIRST}

Quando tento cadastrar com Employee ID ja existente
    ${first1}    ${last1}    ${id}=    Gerar dados simples de Employee
    Set Suite Variable    ${DUP_ID}    ${id}

    Quando clico no botao Add
    Wait Until Element Is Visible    ${FIRST_NAME}    30s
    Input Text    ${FIRST_NAME}           ${first1}
    Input Text    ${LAST_NAME}            ${last1}
    Clear Element Text                    ${EMPLOYEE_ID_ADD}
    Input Text    ${EMPLOYEE_ID_ADD}      ${DUP_ID}
    Click Element    ${BTN_SAVE}
    Wait Until Location Contains          /pim/viewPersonalDetails    30s

    Garantir que estou na lista de Employees (PIM)
    Quando clico no botao Add
    Wait Until Element Is Visible    ${FIRST_NAME}    30s
    ${first2}    ${last2}    ${id2}=    Gerar dados simples de Employee
    Input Text    ${FIRST_NAME}           ${first2}
    Input Text    ${LAST_NAME}            ${last2}
    Clear Element Text                    ${EMPLOYEE_ID_ADD}
    Input Text    ${EMPLOYEE_ID_ADD}      ${DUP_ID}
    Click Element    ${BTN_SAVE}

Então devo ver mensagem de Employee ID ja existente
    Wait Until Page Contains Element    ${EMP_ID_EXISTS_ERROR}    30s
    ${msg}=    Get Text    ${EMP_ID_EXISTS_ERROR}
    Should Contain    ${msg}    exist    ignore_case=True

Quando pesquiso employee pelo nome
    [Arguments]    ${first}    ${last}
    Garantir que estou na lista de Employees (PIM)
    Clear Element Text    ${EMPLOYEE_NAME_FILTER}
    Input Text            ${EMPLOYEE_NAME_FILTER}    ${first} ${last}
    Wait Until Element Is Visible    ${LISTBOX}    30s
    Click Element    xpath=//div[@role='listbox']//*[contains(normalize-space(.),'${first}')][1]
    Wait Until Element Is Visible    ${BTN_SEARCH}    30s
    Click Element    ${BTN_SEARCH}

Quando pesquiso employee pelo ID
    [Arguments]    ${emp_id}
    Garantir que estou na lista de Employees (PIM)
    Clear Element Text    ${EMPLOYEE_ID_FILTER}
    Input Text            ${EMPLOYEE_ID_FILTER}    ${emp_id}
    Wait Until Element Is Visible    ${BTN_SEARCH}    30s
    Click Element         ${BTN_SEARCH}

Então devo ver o employee na lista
    [Arguments]    ${emp_id}
    Wait Until Page Contains Element    xpath=//div[contains(@class,'oxd-table-body')]//div[@role='row']//*[contains(normalize-space(.),'${emp_id}')]    30s

Então devo ver que nao existe registro
    Wait Until Element Is Visible    ${NO_RECORDS}    30s

Quando deleto o employee pelo ID e cancelo
    [Arguments]    ${emp_id}
    Quando pesquiso employee pelo ID    ${emp_id}
    Então devo ver o employee na lista  ${emp_id}

    Click Element    xpath=(//div[contains(@class,'oxd-table-body')]//div[@role='row']//*[contains(normalize-space(.),'${emp_id}')]/ancestor::div[@role='row']//button[contains(@class,'oxd-icon-button')])[last()]
    Wait Until Element Is Visible    ${BTN_CANCEL_DELETE}    30s
    Sleep    1s
    Click Element    ${BTN_CANCEL_DELETE}
    Sleep    1s

Então o employee nao deve ser excluido
    [Arguments]    ${emp_id}
    Quando pesquiso employee pelo ID    ${emp_id}
    Então devo ver o employee na lista  ${emp_id}

Quando deleto o employee pelo ID e confirmo
    [Arguments]    ${emp_id}
    Quando pesquiso employee pelo ID    ${emp_id}
    Então devo ver o employee na lista  ${emp_id}

    Click Element    xpath=(//div[contains(@class,'oxd-table-body')]//div[@role='row']//*[contains(normalize-space(.),'${emp_id}')]/ancestor::div[@role='row']//button[contains(@class,'oxd-icon-button')])[last()]
    Wait Until Element Is Visible    ${BTN_CONFIRM_DELETE}    30s
    Sleep    1s
    Click Element    ${BTN_CONFIRM_DELETE}
    Sleep    1s

Então o employee deve ser excluido
    [Arguments]    ${emp_id}
    Quando pesquiso employee pelo ID    ${emp_id}
    Então devo ver que nao existe registro
