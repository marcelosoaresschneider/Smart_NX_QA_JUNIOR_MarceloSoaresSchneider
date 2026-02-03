# Smart NX - QA Jr - Robot Framework + SeleniumLibrary (OrangeHRM)

Projeto simples de automação de testes Web com Robot Framework e SeleniumLibrary, usando cenários em estilo Gherkin (Dado/Quando/Então/E) no site OrangeHRM. Inclui testes de Login, do módulo PIM, Cadastro de Employee, Filtros de Employee e Exclusão de Employee.

## Estrutura de pastas do projeto
- `tests/` → arquivos `.robot` (casos de teste)
- `resources/` → keywords e variáveis reutilizáveis
- `results/` → relatórios gerados ao executar (log e report)

## Pré-condições (o que preciso ter antes da execução)
- Python instalado (3.10 ou superior)
- Google Chrome instalado
- Git instalado

## Baixar o projeto (clonar do GitHub)
No terminal, execute:

```bash
git clone https://github.com/marcelosoaresschneider/Smart_NX_QA_JUNIOR_MarceloSoaresSchneider.git
cd Smart_NX_QA_JUNIOR_MarceloSoaresSchneider
```

## Instalar as dependências (Robot Framework e SeleniumLibrary)
No arquivo `requirements.txt` (na raiz do projeto) preencha com:

```text
robotframework==7.0.1
robotframework-seleniumlibrary==6.6.1
selenium==4.23.1
```

Dentro da pasta do projeto, no terminal, execute:

```bash
py -m pip install -r requirements.txt
```

## Executar os testes
Executar todos os testes e gerar relatórios na pasta `results/`:

```bash
robot -d results tests/
```

## Como ver o relatório (resultados)
Depois de executar, a pasta `results/` terá os arquivos:
- `report.html` → relatório resumido (PASS/FAIL)
- `log.html` → detalhes passo a passo (onde falhou e por quê)
- `output.xml` → resultado técnico

Como abrir:
1. Abra a pasta `results/`
2. Clique duas vezes em `report.html` (abre no navegador)
3. Se algum teste falhar, abra `log.html` para ver o erro detalhado
