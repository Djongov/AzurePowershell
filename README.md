# Azure Powershell scripts repository
This repository holds Azure Powershell scripts<br>
## Delete All Resource groups in a subscription
File: <b>DeleteRGs.ps1</b><br>
This script allows you to empty subscriptions by deleting all of the resource groups inside. It is safe to run as it first asks you about the subscription you want to choose, then it will ask you again if you are sure and you can abort. Note that it doesn't guarantee that all the resource groups will be deleted, as some resources like VNETs cannot be delated if there are delagations on the subnets.
## Delete all the empty App Service Plans
File: <b><strong>Delete-Empty-ASP.ps1</b><br>
This script allows you to query all your subscriptions and search for App Service Plans that are empty. This is to reduce cost of unused App Service plans. It will not search for Free (F1) App Service plans. It will however, try to delete Consumption plans (Y1)
## Export App Service Certificate
File: <b>Export-AppServiceCertificate.ps1</b><br>
This script exports App Service Certificate with very few actions. Not my design.
