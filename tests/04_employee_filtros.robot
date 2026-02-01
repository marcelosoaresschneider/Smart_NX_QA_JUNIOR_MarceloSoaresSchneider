*** Settings ***
Resource        ../resources/employee.resource
Suite Setup     Dado que estou logado e no PIM (lista de employees)
Suite Teardown  Fechar Navegador

*** Test Cases ***
CT13 - Pesquisar employee pelo nome
    # cria um employee para garantir dado de teste
    Quando clico no botao Add
    Quando preencho dados basicos do employee (sem login) e salvo
    Então o employee deve ser cadastrado com sucesso

    Quando pesquiso employee pelo nome    ${EMP_FIRST}    ${EMP_LAST}
    Então devo ver o employee na lista    ${EMP_ID}

CT14 - Pesquisar employee pelo ID
    Quando pesquiso employee pelo ID      ${EMP_ID}
    Então devo ver o employee na lista    ${EMP_ID}

CT15 - Pesquisar employee com nome inexistente
    Garantir que estou na lista de Employees (PIM)
    Clear Element Text    ${EMPLOYEE_NAME_FILTER}
    Input Text            ${EMPLOYEE_NAME_FILTER}    NomeQueNaoExiste123
    Click Button          ${BTN_SEARCH}
    Então devo ver que nao existe registro

CT16 - Pesquisar employee com ID inexistente
    Quando pesquiso employee pelo ID    999999
    Então devo ver que nao existe registro
