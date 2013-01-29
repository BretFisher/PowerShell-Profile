
# Load posh-git example profile
. $home + '\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'
. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")

# quick ways to navigate around the system, e.g. cd $documents
$tools = "c:\tools"
$code = "c:\code"
$winsitter = "c:\code\winsitter"
$vstools = "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools"
$documents = $home + "\Documents"
$desktop = $home + "\Desktop"
$downloads = $home + "\Downloads"
$modules = $home + "\Documents\WindowsPowerShell\Modules"

Set-Alias subl "C:\tools\sublime\sublime_text.exe"
Set-Alias vim "c:\tools\vim73\vim.exe"
Set-Alias vs "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe"
# to add arguments to a command, you need to create a function and then alias that
function vs2012admin {Start-Process "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe" -verb runAs}
Set-Alias vsadmin vs2012admin
Set-Alias conemu "C:\tools\ConEmu\ConEmu64.exe"
Set-Alias console2 "c:\tools\console.exe"

# no need to import modules in PowerShell 3.0, they get loaded as needed
#Import-Module "PsGet"
#Import-Module "PSUrl"
#Import-Module "PoshCode"
#Import-Module "WAPPSCmdlets"
#Import-Module "Pscx"

# for using New-PSRemote command to connect to other "untrusted" boxes. You don't need this unless you know you do.
$PSSessionOption = New-PSSessionOption -SkipRevocationCheck -SkipCACheck -SkipCNCheck

# for if you have PowerTab and are in PowerShell 2.0
<############### Start of PowerTab Initialization Code ########################
    Added to profile by PowerTab setup for loading of custom tab expansion.
    Import other modules after this, they may contain PowerTab integration.
#>

#Import-Module "PowerTab" -ArgumentList "C:\Users\bret\Documents\WindowsPowerShell\PowerTabConfig.xml"
################ End of PowerTab Initialization Code ##########################
