# PacketSniff

Analyseur de paquets réseau (comme Wireshark) couplé à un client HTTP
(comme Bruno), avec une interface graphique, en C pur. Fonctionne sous
macOS et Windows.

## Compiler et lancer

Le projet se compile avec un `Makefile` (un fichier qui explique à l'outil
`make` comment fabriquer le programme). Il se lance depuis un terminal,
dans le dossier du projet.

| Commande     | Ce qu'elle fait                                   |
|--------------|---------------------------------------------------|
| `make`       | compile le programme                              |
| `make run`   | compile (si besoin) puis lance le programme       |
| `make clean` | supprime les fichiers compilés pour repartir à zéro |

Le programme produit s'appelle `packetsniff` (macOS) ou `packetsniff.exe`
(Windows).

Exemple :

```
make run
```

Résultat attendu : `PacketSniff : la base compile et fonctionne.`

## Prérequis

### macOS

Installer les outils de développement d'Apple (ils contiennent `gcc`, le
compilateur, et `make`) :

```
xcode-select --install
```

### Windows

Utiliser MSYS2 (un environnement qui apporte les outils Linux sous
Windows), dans le terminal **MSYS2 UCRT64**, puis installer :

```
pacman -S mingw-w64-ucrt-x86_64-gcc make
```

Lancer ensuite les commandes `make` depuis ce même terminal.
