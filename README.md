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
Dentro da pasta do projeto, no terminal, execute:

```bash
py -m pip install -r requirements.txt
```

Se o comando `py` não funcionar, use:

```bash
python -m pip install -r requirements.txt
```


## Erros comuns

### Erro de ChromeDriver (SessionNotCreatedException)
Se aparecer erro parecido com "This version of ChromeDriver only supports Chrome version X", significa que existe um ChromeDriver incompatível no computador.

Solução simples (Windows):
1. No terminal, rode:
```bash
where chromedriver
```
2. Se aparecer algum caminho, apague ou renomeie o `chromedriver.exe` antigo.
3. Apague o cache do Selenium:
- Abra o Explorador de Arquivos e cole: `%USERPROFILE%\.cache\selenium`
- Apague a pasta.
4. Rode o teste novamente:
```bash
robot -d results tests/01_login.robot
```

## Executar os testes
Recomendado para testar primeiro (Login):

```bash
robot -d results tests/01_login.robot
```

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
