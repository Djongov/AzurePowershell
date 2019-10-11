# AzurePowershell
This repository holds Azure Powershell scripts<br>
<strong>DeleteRGs.ps1</strong> - This script allows you to empty subscriptions by deleting all of the resource groups inside. It is safe to run as it first asks you about the subscription you want to choose, then it will ask you again if you are sure and you can abort. Note that it doesn't guarantee that all the resource groups will be deleted, as some resources like VNETs cannot be delated if there are delagations on the subnets.
