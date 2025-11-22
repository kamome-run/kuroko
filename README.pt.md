# Kuroko: Otimizador de Ambiente de Desenvolvimento Crostini

Kuroko é uma ferramenta de linha de comando (CLI) projetada para resolver problemas de entrada de texto em japonês no ChromeOS (Crostini) e automatizar a configuração do ambiente de desenvolvimento. Ele aborda especificamente o problema onde aplicativos baseados em Electron (como VS Code, Antigravity) não conseguem se comunicar corretamente com o IME (Fcitx-Mozc) devido à falta de pontes GTK/Qt.

## Funcionalidades

- **Configuração Automatizada**: Instala os pacotes necessários (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) e configura as variáveis de ambiente (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) na configuração do seu shell.
- **Iniciador de Aplicativos**: Um wrapper para iniciar aplicativos forçando as variáveis de ambiente IME corretas, garantindo que a entrada em japonês funcione.
- **Ferramenta de Diagnóstico**: Um comando `doctor` para verificar o status do daemon Fcitx e as variáveis de ambiente.

## Instalação

1. Clone este repositório:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. Execute o comando de configuração:
   ```bash
   ./kuroko setup
   ```
3. Reinicie seu shell ou execute `source ~/.bashrc`.

## Uso

### Configurar Ambiente
```bash
./kuroko setup
```

### Iniciar Aplicativo
Para iniciar um aplicativo (por exemplo, VS Code, Antigravity, Cursor) com suporte a IME:
```bash
./kuroko launch <application-name>

# Exemplos
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### Diagnosticar Problemas
Para verificar se seu ambiente está configurado corretamente:
```bash
./kuroko doctor
```

## Suporte
Se precisar de ajuda ou encontrar um erro, por favor abra uma issue no GitHub.

## Licença
Este projeto está licenciado sob a GNU General Public License v3.0. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
