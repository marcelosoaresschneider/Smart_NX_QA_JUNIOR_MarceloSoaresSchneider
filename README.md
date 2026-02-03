# Smart NX - QA Jr - Robot Framework + SeleniumLibrary (OrangeHRM)

Projeto de automação de testes Web com Robot Framework e SeleniumLibrary. Aplicando cenários em escritos em Gherkin (Dado/Quando/Então) no site OrangeHRM. Inclui testes de Login, do módulo PIM, Cadastro de “Employee”, Filtros de “Employee” e Exclusão de “Employee”.



## Estrutura do das pastas no projeto

- `tests/` → arquivos `.robot` (casos de teste)
- `resources/` → keywords e variáveis reutilizáveis
- `results/` → relatórios gerados ao executar (log e report)



## Pré-condições (o que preciso ter antes da execução)

- Python instalado (3.10 ou superior)
- Google Chrome instalado
- Git instalado



## Clonar o projeto do Github

No terminal, execute:
- "git clone https://github.com/marcelosoaresschneider/Smart_NX_QA_JUNIOR_MarceloSoaresSchneider.git"

Depois entre na pasta do projeto
- "cd Smart_NX_QA_JUNIOR_MarceloSoaresSchneider"



## Instalar as dependências (RobotFramework e a SeleniumLibrary)

Criar o arquivo `requirements.txt` (na raiz do projeto) e preencher com:

- "robotframework==7.0.1"
- "robotframework-seleniumlibrary==6.6.1"
- "selenium==4.23.1"

Dentro da pasta do projeto no terminal, execute:
- "py -m pip install -r requirements.txt"



## Executar os testes

Executar todos os testes e gerar relatórios na pasta results/:

- "robot -d results tests/"



## Como ver o relatório (resultados)

Depois de executar, a pasta results/ terá os arquivos:

- report.html → relatório resumido (PASS/FAIL)

- log.html → detalhes passo a passo (onde falhou e por quê)

- output.xml → resultado técnico


Como abrir:

- Abra a pasta results/

- Clique duas vezes em report.html (abre no navegador)

- Se algum teste falhar, abra log.html para ver o erro detalhado
