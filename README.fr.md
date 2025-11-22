# Kuroko : Optimiseur d'Environnement de Développement Crostini

Kuroko est un outil en ligne de commande (CLI) conçu pour résoudre les problèmes de saisie japonaise dans l'environnement ChromeOS (Crostini) et automatiser la configuration de l'environnement de développement. Il s'attaque spécifiquement au problème où les applications basées sur Electron (comme VS Code, Antigravity) ne peuvent pas communiquer correctement avec l'IME (Fcitx-Mozc) en raison de l'absence de ponts GTK/Qt.

## Fonctionnalités

- **Configuration Automatisée** : Installe les paquets nécessaires (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) et configure les variables d'environnement (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) dans la configuration de votre shell.
- **Lanceur d'Applications** : Une enveloppe pour lancer des applications en forçant les variables d'environnement IME correctes, assurant ainsi le fonctionnement de la saisie japonaise.
- **Outil de Diagnostic** : Une commande `doctor` pour vérifier l'état du démon Fcitx et des variables d'environnement.

## Installation

1. Clonez ce dépôt :
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. Exécutez la commande de configuration :
   ```bash
   ./kuroko setup
   ```
3. Redémarrez votre shell ou exécutez `source ~/.bashrc`.

## Utilisation

### Configurer l'Environnement
```bash
./kuroko setup
```

### Lancer une Application
Pour lancer une application (par exemple, VS Code, Antigravity, Cursor) avec le support IME :
```bash
./kuroko launch <application-name>

# Exemples
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### Diagnostiquer les Problèmes
Pour vérifier si votre environnement est correctement configuré :
```bash
./kuroko doctor
```

## Support
Si vous avez besoin d'aide ou si vous trouvez un bug, veuillez ouvrir une issue sur GitHub.

## Licence
Ce projet est sous licence GNU General Public License v3.0. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
