*** Settings ***
Resource        ../resources/employee.resource
Suite Setup     Dado que estou logado e no PIM (lista de employees)
Suite Teardown  Fechar Navegador

*** Test Cases ***
CT08 - Validar existencia do botao Add
    Wait Until Element Is Visible    ${BTN_ADD}    15s

CT09 - Acessar tela de cadastro clicando no botao Add
    Quando clico no botao Add
    Então devo ver a tela de cadastro de employee

CT10 - Tentar cadastrar sem preencher o nome
    Quando clico no botao Add
    Quando tento salvar sem preencher o nome
    Então devo ver validacao de campos obrigatorios

CT11 - Validar tentativa de cadastro com Employee ID ja existente
    Quando tento cadastrar com Employee ID ja existente
    Então devo ver mensagem de Employee ID ja existente

CT12 - Cadastrar um employee sem dados de login
    Quando clico no botao Add
    Quando preencho dados basicos do employee (sem login) e salvo
    Então o employee deve ser cadastrado com sucesso
