Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*instagram*"} | Remove-AppxPackage
Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*tiktok*"} | Remove-AppxPackage
Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*spotify*"} | Remove-AppxPackage
Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*netflix*"} | Remove-AppxPackage
Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource | Where-Object {$_.PackageFullName -like "*disney+*"} | Remove-AppxPackage
