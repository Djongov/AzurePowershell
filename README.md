# Azure Powershell scripts repository
This repository holds Azure Powershell scripts<br>
## Delete All Resource groups in a subscription
File: <strong>DeleteRGs.ps1</strong><br>
This script allows you to empty subscriptions by deleting all of the resource groups inside. It is safe to run as it first asks you about the subscription you want to choose, then it will ask you again if you are sure and you can abort. Note that it doesn't guarantee that all the resource groups will be deleted, as some resources like VNETs cannot be delated if there are delagations on the subnets.
## Delete all the empty App Service Plans
File: <strong>Delete-Empty-APS.ps1</strong><br>
This script allows you to query all your subscriptions and search for App Service Plans that are empty. This is to reduce cost of unused App Service plans. It will not search for Free (F1) App Service plans. It will however, try to delete Consumption plans (Y1)
