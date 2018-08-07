<#ScriptName:
ScriptDate: 
Set the regkey to bypass endless authentication loop (got from Microsoft support)
David Blum conseils informatiques - david.blum@db-conseilsinformatiques.ch

[HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Common\Identity] 

Add the Dword as : "DisableADALatopWAMOverride"=dword:00000001

Restart your computer and check the outcome.



#>

Push-Location
Set-Location HKLM:
Test-Path .\SYSTEM\CurrentControlSet\Control\Session Manager\Power 
New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Common\Identity\ -Name "HiberBootEnabled" -Value 0 -Type "DWord"


