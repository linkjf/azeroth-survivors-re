# Agents: Windows release and data

This fork does not contain the WoW client. The Windows release is the executable only.

## Windows release

- Fork: https://github.com/linkjf/azeroth-survivors-re
- Release: https://github.com/linkjf/azeroth-survivors-re/releases/tag/v0.2.0
- Asset: `warcraft-survivors.exe`

Download that asset. It is not in the `main` tree. Tag `v0.2.0` was cut from branch `windows-port`.

## Data

The data is not in the release and it is not in git. Download it with the original repository's instructions. This checkout already has them, because `main` comes from that repository:

- Original repo: https://github.com/OutThisLife/azeroth-survivors-re
- README, section "The game data (not in this repo)"
- `scripts/fetch-data.sh`, the data step used by `make build` and `make native`

On Windows, run that script from Git Bash. The original README says PowerShell and cmd cannot run the Makefile.

The script leaves the MPQs in `wow-data/Data`. That folder is in `.gitignore`.

## Launch

With the release exe and the folder the script produced:

```text
set WOW_DATA=wow-data\Data
warcraft-survivors.exe
```

`WOW_DATA` points at the `Data` folder, the one that contains the `.MPQ` files, on a local disk. The exe does not connect to a server or to `wenilla-host`.

Do not upload `wow-data/`, the MPQs, or the client zip.
