# `Font` Caskaydia Cove Nerd Font

## Download & Install

- [Caskaydia Cove Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip)

## Change Terminal Font

- Settings > Your Profile > Appearance > Font
- Select **Caskaydia Cove Nerd Font Mono**

# `OhMyPosh`

## Install

``` bash
winget install JanDeDobbeleer.OhMyPosh
```

## PowerShell-ExecutionPolicy


- Run as **Administrator** with **PowerShell**

```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -Force
```

## PowerShell Profile


> File: C:\Users\%USERNAME%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

> File: C:\Users\%USERNAME%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

```
oh-my-posh --init --shell pwsh --config "C:\Users\$env:UserName\AppData\Local\Programs\oh-my-posh\themes\custom.json" | Invoke-Expression
Import-Module -Name Terminal-Icons
```

## Theme

> File: C:\Users\%USERNAME%\AppData\Local\Programs\oh-my-posh\themes\custom.json