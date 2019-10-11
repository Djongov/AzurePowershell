
$azureSubs = Get-AzSubscription
# The script works by querying App Serivce plans that have 0 NumberofSites property. Also because Free tier App Service plans without any sites in them are OK cost-wise, the script will not delete them. Script will delete Consumption (Y1) plans. If you want it to skip Y1 plans along with Free (F1), add another -and operator with CNotMatch "Y1"
Write-Host "These are the App Service plans that are matching the criteria:"
$azureSubs | ForEach-Object {Select-AzSubscription $_ | Out-Null; Get-AzAppServicePlan | Where {($_.NumberOfSites -eq "0" -and $_.Sku.name -CNotMatch "F1")} -WarningAction SilentlyContinue}
#If you want to delete everything that came up in the results - Run the last line
$azureSubs | ForEach-Object {Select-AzSubscription $_ | Out-Null; Get-AzAppServicePlan | Where {($_.NumberOfSites -eq "0" -and $_.Sku.name -CNotMatch "F1")} -WarningAction SilentlyContinue} | Remove-AzAppServicePlan