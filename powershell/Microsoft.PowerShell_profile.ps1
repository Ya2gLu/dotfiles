#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim

#Terminal-Icons
Import-Module -Name Terminal-Icons

# Proxy
$env:HTTPS_PROXY="https://127.0.0.1:7890"
$env:HTTP_PROXY="http://127.0.0.1:7890"

#oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\bubblesline.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/tree/main/themes/atomic.omp.json' | Invoke-Expression

#ZLocation
Import-Module ZLocation

#PSReadLine
Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineOption -PredictionViewStyle ListView

#Function
function whereis ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
