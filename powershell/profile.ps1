$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression

Set-Alias -Name cvc -value connect-viserver
Set-Alias -Name dvc -value disconnect-viserver
function pst-vc01-ro { connect-viserver -server pst-vc01.int.dc5.cz -Username read-only -Password VMware01!# }
function pst-vc01 { connect-viserver -server pst-vc01.int.dc5.cz -Username administrator@vsphere.dc5.local }


Write-Host "-------------------------------------------------------"
Write-Host "| help2                                               |"
Write-Host "-------------------------------------------------------"
Write-Host "| cvc, dvc, pst-vc01, pst-vc01-ro                     |"
Write-Host "-------------------------------------------------------"

Write-Host "======================================================="
write-HOst " edit:  vi ~/.config/powershell/profile.ps1 "