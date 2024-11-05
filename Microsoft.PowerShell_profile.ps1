cls

# Oh My Posh
oh-my-posh init pwsh --config "C:\Users\$env:UserName\AppData\Local\Programs\oh-my-posh\themes\custom.json" | Invoke-Expression

# Git Posh
Import-Module posh-git

# Icons
Import-Module -Name Terminal-Icons

# Autocompletion
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine

    Set-PSReadLineOption -EditMode Windows

    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

    Set-PSReadLineOption -HistorySearchCursorMovesToEnd
    Set-PSReadLineOption -ShowToolTips
    Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView

    Set-PSReadLineOption -Colors @{
        Command            = 'Magenta'
        Number             = 'DarkGray'
        Member             = 'DarkGray'
        Operator           = 'DarkGray'
        Type               = 'DarkGray'
        Variable           = 'DarkGreen'
        Parameter          = 'DarkGreen'
        ContinuationPrompt = 'DarkGray'
        Default            = 'DarkGray'
      }
}