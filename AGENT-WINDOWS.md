# Agents: release de Windows y data

Este fork no contiene el cliente de WoW. El release de Windows es solo el ejecutable.

## Release de Windows

- Fork: https://github.com/linkjf/azeroth-survivors-re
- Release: https://github.com/linkjf/azeroth-survivors-re/releases/tag/v0.2.0
- Asset: `warcraft-survivors.exe`

Descarga ese asset. No está en el árbol de `main`. El tag `v0.2.0` salió de la rama `windows-port`.

## Data

La data no está en el release ni en git. Hay que bajarla con las instrucciones del repo original. Este checkout ya las trae, porque `main` parte de ese repo:

- Repo original: https://github.com/OutThisLife/azeroth-survivors-re
- README, sección "The game data (not in this repo)"
- `scripts/fetch-data.sh`, que es el paso de data de `make build` y de `make native`

En Windows ese script se corre desde Git Bash. El README original lo dice: PowerShell y cmd no pueden correr el Makefile.

El script deja los MPQ en `wow-data/Data`. Esa carpeta está en `.gitignore`.

## Arranque

Con el exe del release y la carpeta que produjo el script:

```text
set WOW_DATA=wow-data\Data
warcraft-survivors.exe
```

`WOW_DATA` apunta a la carpeta `Data`, la que contiene los `.MPQ`, en disco local. El exe no se conecta a un servidor ni a `wenilla-host`.

No subas `wow-data/`, los MPQ ni el zip del cliente.
