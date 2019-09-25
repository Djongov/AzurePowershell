#This script allows you to list your available subscriptions, select one of them, show you all the resource groups in it and ask you if you want to delete them.
Connect-AzAccount
$azureSubs = Get-AzSubscription
$azureSubs | Sort-Object SubscriptionName | Format-Table -Property Name, SubscriptionId, State
$Sub = Read-Host "Enter the subscriptionId you want to clean"
Get-AzSubscription -SubscriptionId $Sub | Set-AzContext
Write-Host "These are the Resource Groups in this subscription" -ForegroundColor Yellow
$rgName=Get-AzResourceGroup
$rgName
$lastValidation = Read-Host "Do you wish to delete ALL the resouces previously listed? Type y to proceed or anything else for abort"

if($lastValidation.ToLower().Equals("y"))
{
Foreach($name in $rgName)
{
Write-Host "The Resourge groups in $theSub will be deleted...." -ForegroundColor Yellow
Write-Host $name.ResourceGroupName
Remove-AzResourceGroup -Name $name.ResourceGroupName -Verbose -Force
}
}else{
     Write-Host "Aborted. No resourges were deleted." -ForegroundColor Yellow
}