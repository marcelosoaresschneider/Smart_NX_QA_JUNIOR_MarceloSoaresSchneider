*** Settings ***
Resource        ../resources/pim.resource
Test Setup      Dado que estou logado e na tela inicial
Test Teardown   Fechar Navegador

*** Test Cases ***
CT04 - Pesquisar o modulo PIM
    Quando pesquiso o modulo "PIM" no menu lateral
    Então devo ver o modulo "PIM" no menu

CT05 - Pesquisar um modulo diferente de PIM
    Quando pesquiso o modulo "Admin" no menu lateral
    Então devo ver o modulo "Admin" no menu
    Então nao devo ver o modulo "PIM" no menu

CT06 - Apagar a pesquisa do menu
    Quando pesquiso o modulo "PIM" no menu lateral
    Quando apago a pesquisa do menu lateral
    Então devo ver varios modulos no menu novamente

CT07 - Acessar o modulo PIM
    Quando acesso o modulo PIM
    Então devo estar no modulo PIM
