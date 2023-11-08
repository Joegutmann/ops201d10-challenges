# Create a Powershell script that performs the following operations:


# Create a local file called network_report.txt that holds the contents of an ipconfig
# /all command.

$filecontent = Invoke-Expression 'ipconfig /all'

$filecontent | Out-File -FilePath C:\Users\Joe\Documents\network_report.txt

# Use Select-String to search network_report.txt and return only the IP version 4 address.

Select-String -Path C:\Users\Joe\Documents\network_report.txt -Pattern 'IPv4 Address' 

# Remove the network_report.txt when you are finished searching it.

Remove-Item -Path C:\Users\Joe\Documents\network_report.txt

# For this challenge, you must use at least one variable and one function.