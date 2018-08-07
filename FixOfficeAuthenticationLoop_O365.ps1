<#ScriptName:
ScriptDate: 
Set the regkey to bypass endless authentication loop (got from Microsoft support)
David Blum conseils informatiques - david.blum@db-conseilsinformatiques.ch

[HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Common\Identity] 

Add the Dword as : "DisableADALatopWAMOverride"=dword:00000001

Restart your computer and check the outcome.



#>

Push-Location
Set-Location HKCU:
Test-Path .\Software\Microsoft\Office\16.0\Common\Identity\
New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Common\Identity\ -Name "DisableADALatopWAMOverride" -Value 1 -Type "DWord"