# Smart NX - QA Jr - Robot Framework + SeleniumLibrary (OrangeHRM)

Projeto de automação de testes Web com Robot Framework e SeleniumLibrary. Aplicando cenários em escritos em Gherkin (Dado/Quando/Então) no site OrangeHRM. Inclui testes de Login, do módulo PIM, Cadastro de “Employee”, Filtros de “Employee” e Exclusão de “Employee”.



## Estrutura do projeto

Smart_NX_QA_JUNIOR_MarceloSoaresSchneider/
├─ README.md
├─ requirements.txt
├─ .gitignore
├─ tests/
│  ├─ 01_login.robot
│  ├─ 02_pim.robot
│  ├─ 03_employee_cadastro.robot
│  ├─ 04_employee_filtros.robot
│  └─ 05_employee_exclusao.robot
├─ resources/
│  ├─ common.resource
│  ├─ locators.resource
│  ├─ login.resource
│  ├─ pim.resource
│  └─ employee.resource
└─ results/
   ├─ log.html
   ├─ report.html
   └─ output.xml



## Pré-condições (o que preciso ter antes da execução)

- Python instalado (3.10 ou superior)
- Google Chrome instalado
- Git instalado

