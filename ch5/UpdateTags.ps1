$resource = Get-AzResource -Name 'packtstoragewithtags' -ResourceGroup 'packtstorageresourcegroup'
$resource.tags
$newtags = @{"Environment"="Dev"}
New-AzTag -ResourceId $resource.id -Tag $newtags