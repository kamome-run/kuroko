# Kuroko: Optimizador de Entorno de Desarrollo para Crostini

Kuroko es una herramienta de línea de comandos (CLI) diseñada para resolver problemas de entrada de texto en japonés en entornos ChromeOS (Crostini) y automatizar la configuración del entorno de desarrollo. Aborda específicamente el problema donde las aplicaciones basadas en Electron (como VS Code, Antigravity) no pueden comunicarse correctamente con el IME (Fcitx-Mozc) debido a la falta de puentes GTK/Qt.

## Características

- **Configuración Automatizada**: Instala los paquetes necesarios (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) y configura las variables de entorno (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) en la configuración de su shell.
- **Lanzador de Aplicaciones**: Un envoltorio para lanzar aplicaciones forzando las variables de entorno IME correctas, asegurando que la entrada en japonés funcione.
- **Herramienta de Diagnóstico**: Un comando `doctor` para verificar el estado del demonio Fcitx y las variables de entorno.

## Instalación

1. Clone este repositorio:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. Ejecute el comando de configuración:
   ```bash
   ./kuroko setup
   ```
3. Reinicie su shell o ejecute `source ~/.bashrc`.

## Uso

### Configurar Entorno
```bash
./kuroko setup
```

### Lanzar Aplicación
Para lanzar una aplicación (por ejemplo, VS Code, Antigravity, Cursor) con soporte IME:
```bash
./kuroko launch <application-name>

# Ejemplos
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### Diagnosticar Problemas
Para verificar si su entorno está configurado correctamente:
```bash
./kuroko doctor
```

## Soporte
Si necesita ayuda o encuentra un error, por favor abra un problema (Issue) en GitHub.

## Licencia
Este proyecto está licenciado bajo la GNU General Public License v3.0. Consulte el archivo [LICENSE](LICENSE) para más detalles.
