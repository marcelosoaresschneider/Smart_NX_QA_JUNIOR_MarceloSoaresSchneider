*** Settings ***
Resource        ../resources/employee.resource
Suite Setup     Dado que estou logado e no PIM (lista de employees)
Suite Teardown  Fechar Navegador

*** Test Cases ***
CT17 - Clicar na lixeira e cancelar exclusao
    # cria um employee só para este teste
    Quando clico no botao Add
    Quando preencho dados basicos do employee (sem login) e salvo
    Então o employee deve ser cadastrado com sucesso

    Quando deleto o employee pelo ID e cancelo    ${EMP_ID}
    Então o employee nao deve ser excluido        ${EMP_ID}

CT18 - Clicar na lixeira e confirmar exclusao
    # cria outro employee para este teste (evita depender do CT17)
    Quando clico no botao Add
    Quando preencho dados basicos do employee (sem login) e salvo
    Então o employee deve ser cadastrado com sucesso

    Quando deleto o employee pelo ID e confirmo   ${EMP_ID}
    Então o employee deve ser excluido            ${EMP_ID}
