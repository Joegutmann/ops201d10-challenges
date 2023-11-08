# Enable FIle Printer sharing

Set-NetFirewallRule -displaygroup "File and printer sharing" -Enabled True

 # Allow icmp traffic
netsh advfirewall firewall add rule name=" allow incoming ping requests IPV4" Dir=in action=allow protocol=icmpv4
# creation of a rule named allow... allowing incoming traffic is allowed and the protocol is icmpv4

# Enable Remote Management (WinRM)
winrm quickconfig
Set-Service WinRM -StartupType Automatic
New-NetFirewallRule -Name "WinRM-HTTP" -DisplayName "Windows Remote Management (HTTP-In)" -Enabled True -Profile Any -Action Allow -Direction Inbound -LocalPort 5985 -Protocol TCP

 # remove bloatware
Get-AppxPackage | Select Name, PackageFullName
# get the list of installed programs
Get-AppxPackage *<AppName>* | Remove-AppxPackage
#remove the ones you don't want
#other option is
iex ((New-Object System.Net.Webclient) .Downloadstring('https://git.io/debloat'))
 # enable hpyer v

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# disable smbv1 insecure protocol

Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0 -Force

sc.exe config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc.exe config mrxsmb10 start= disabled
