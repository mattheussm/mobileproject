# 🤖 Automação de Testes Mobile - App TED Talks (Android)

Este projeto tem como objetivo automatizar testes funcionais no aplicativo **TED Talks** para Android utilizando **Appium**. O foco está na validação de fluxos principais (caminho feliz) e também em cenários críticos de entrada inválida, garantindo uma boa cobertura de testes automatizados na experiência do usuário.

---

## 🛠 Tecnologias e Ferramentas

- [Appium](https://appium.io/)
- [Python](https://www.python.org/)  
- Android Emulator ou dispositivo real
- [uiautomatorviewer](https://developer.android.com/studio/test/uiautomator) (para inspecionar elementos)

---

## ✅ Casos de Teste Planejados

### Caminhos Felizes (fluxos positivos)
1. Cadastrar um novo usuário ✅
2. Login com credenciais válidas
3. Buscar uma palestra e reproduzir vídeo
4. Adicionar uma palestra aos favoritos
5. Alterar idioma das legendas de um vídeo

### Validações Negativas (entradas inválidas)
1. Login com senha incorreta
2. Buscar uma palestra com campo vazio
3. Cadastro com e-mail em formato inválido
---

## 🚧 Status do Projeto

- [x] Estrutura inicial configurada
- [x] Caso de teste: Cadastro de novo usuário
- [ ] Demais casos de teste ainda não iniciados

---
## ▶️ Como Executar os Testes

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/ted-automation-appium.git
cd ted-automation-appium
```

### 2. Instale as dependências

```bash
pip install -r requirements.txt
```

### 3. Inicie o emulador Android (via VS Code ou Android Studio)

> Certifique-se de que o dispositivo esteja visível com:
```bash
adb devices
```

### 4. Inicie o servidor Appium pelo Appium Inspector

Use a configuração padronizada abaixo:

```json
{
  "appium:automationName": "UIAutomator2",
  "platformName": "android",
  "appium:deviceName": "Modelo do aparelho usado no emulador ou aparelho físico",
  "appium:app": "Caminho do APK no seu computador"
}
```

### 5. Inicie o servidor Appium manualmente via terminal

```bash
appium -pa wd/hub
```

### 6. Execute os testes com Robot Framework

```bash
robot -d results -i newuser test/Tests.robot
```

- `-d results`: define a pasta de saída dos relatórios
- `-i newuser`: executa apenas testes marcados com a tag `newuser`

  
## 📌 Observações
Os testes estão sendo desenvolvidos e evoluídos em ciclos curtos.

O projeto é uma iniciativa de estudo e demonstração prática de automação mobile.

Feedbacks e contribuições são sempre bem-vindos!

## 👨‍💻 Autor
[Matheus Vasconcelos]
Quality Analyst | Testes Manuais e Automatizados
[Linkedin](www.linkedin.com/in/mattheussmv)
