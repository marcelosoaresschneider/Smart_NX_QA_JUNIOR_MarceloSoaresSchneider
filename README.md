# Projeto de Testes Automatizados (Robot Framework + SeleniumLibrary)

Projeto simples de automação de testes Web com **Robot Framework** + **SeleniumLibrary** no site **OrangeHRM**.

## Existem 2 formas de testar
Você pode executar os testes de duas maneiras:

1. **Opção 1 (recomendada) — com venv (ambiente isolado)**
2. **Opção 2 (execução rápida) - sem venv**

Abaixo estão as duas opções com o passo a passo completo.

---

## Requisitos
- **Python** instalado (recomendado: 3.10+)
- **Google Chrome** instalado
- Acesso à internet (para abrir o site do OrangeHRM)

> Observação: o `requirements.txt` foi preparado para funcionar em versões comuns do Python (incluindo 3.13), sem exigir uma versão específica.

---

## Estrutura do projeto
- `tests/` → arquivos `.robot` (casos de teste)
- `resources/` → keywords, variáveis e locators reutilizáveis

---

## Opção 1 (recomendada) — com venv (ambiente isolado)
> Use esta opção para simular um ambiente “limpo” e evitar conflitos no seu Python.

### 1) Abrir o terminal na pasta do projeto
No Windows: abra a pasta do projeto e use **PowerShell** nela.

### 2) Criar o venv
```powershell
python -m venv .venv
```

### 3) Ativar o venv
```powershell
.\.venv\Scripts\Activate.ps1
```

Se aparecer erro de política (ExecutionPolicy), rode:
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\.venv\Scripts\Activate.ps1
```

### 4) Atualizar pip e instalar dependências
```powershell
python -m pip install --upgrade pip
pip install -r requirements.txt
```

### 5) Executar os testes (gera evidências em `results`)
```powershell
robot -d results tests
```

### 6) Ver relatórios
Abra no navegador:
- `results
report.html`
- `results\log.html`

---

## Opção 2 (execução rápida) - sem venv
> Use esta opção se você só quer instalar e rodar rapidamente.

### 1) Abrir o terminal na pasta do projeto
No Windows: abra a pasta do projeto e use **PowerShell** nela.

### 2) Instalar dependências
```powershell
pip install -r requirements.txt
```

### 3) Executar os testes (gera evidências em `results`)
```powershell
robot -d results tests
```

### 4) Ver relatórios
Abra no navegador:
- `results
report.html`
- `results\log.html`

---

## Observações
- Os relatórios ficam na pasta `results/`.
- Se algum teste falhar, compacte a pasta `results` (inclui `output.xml`, `log.html`, `report.html`) para análise.
