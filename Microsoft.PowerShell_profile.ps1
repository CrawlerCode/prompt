cls

# OhMyPosh
oh-my-posh --init --shell pwsh --config "C:\Users\$env:UserName\AppData\Local\Programs\oh-my-posh\themes\custom.json" | Invoke-Expression


# Icons
Import-Module -Name Terminal-Icons

# Autocompletion
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine

    Set-PSReadLineOption -HistorySearchCursorMovesToEnd
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

    Set-PSReadLineOption -ShowToolTips
    Set-PSReadLineOption -PredictionSource History

    Set-PSReadlineOption -Colors @{InlinePrediction = 'DarkYellow' }
}