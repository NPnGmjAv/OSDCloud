Write-Host  -ForegroundColor Green "Starting OSDCloud ZTI"
Start-Sleep -Seconds 2

#Change Display Resolution for Virtual Machine
#if ((Get-MyComputerModel) -match 'Virtual') {
#    Write-Host  -ForegroundColor Green "Setting Display Resolution to 1600x"
#    Set-DisRes 1600
#}

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Green "Updating OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Green "Importing OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Green "Start OSDCloud"
Start-OSDCloud -OSLanguage en-gb -OSBuild "22H2" -OSEdition Enterprise -ZTI

#Restart from WinPE
wpeutil reboot
