function Update-Config
(
    [Parameter(Mandatory=$true)] $Config,
    [Parameter(Mandatory=$false)]  [string] $NewRelicApiKey,
    [Parameter(Mandatory=$false)]  [string] $RancherApiKey,
    [Parameter(Mandatory=$false)]  [string] $RancherApiSecret,
    [Parameter(Mandatory=$false)]  [string] $NodeAppName,
    [Parameter(Mandatory=$false)]  [string] $NodeAppVersion
)
{

}


$json = (Get-Content "nr.json" -Raw) | ConvertFrom-Json

$json.psobject.properties.name
$json.psobject.properties.value
# thumbs up

exit

#$foo = 
#exit

$configJson = Get-Content -Raw -Path "nr.json" | ConvertFrom-Json
$configJson.psobject.properties.name

# all the things
#$configJson[0]
#$configJson[1]
#Update-Config -Config $configJson 
#$configJson | ConvertTo-Json -Depth 99 | Set-Content "nr.json";


write-host $configJson
exit
#$this=Select-Object -Property Id, AppId $configJson
# blank
write-host $configJson.psobject.properties.NewRelicAppId.NRIds.Id.NR.AppId.value
#exit

$newRelicApiKey = $configJson.NewRelicAPI.NewRelicApiKey;
write-host "it is $configJson.NRIds.Id.NR.AppId"

exit
$myjson=ConvertFrom-Json $configJson
write-host $myjson.NR.AppId.value
#write-host "$configJson.psobject.properties.name"




# $configJson |
#      Select-Object -ExpandProperty NewRelicAppId |
#      ForEach-Object {
#         Write-Host "Key : " $_
#         Write-Host "Value : " $configJson."$_"
#      }
#write-host "outside loop: app name is $appName"

#write-host $configJson.psobject.properties.value
#Write-Host $configJson("Id").ToString()
#write-host $configJson..NewRelicAppId.NRIds.Id.NR.AppId

#$json | Select NRIds,@{Name="AppID";E={$_.Details | Select -Expand AppId}}
#write-host $json
exit
#$global:appName = "co"
$appName = "pd"
write-host "just set appname to $appName"
if ($appName = "as") {
    # this always matches...
    write-host "inside loop: app name is $appName"
    $NewRelicAppId = $configJson.NewRelicAppId.as;
}
elseif ($appName = "pd") {
        write-host "inside loop: app name is $appName"
    $NewRelicAppId = $configJson.NewRelicAppId.pd;
}
elseif ($appName = "co") {
        write-host "inside loop: app name is $appName"
    write-host "app name is $appName"
    $NewRelicAppId = $configJson.NewRelicAppId.co;
    }
write-host "new relic api key is $NewRelicApiKey"
#write-host "app name is $appName"
write-host "new relic app id is $NewRelicAppId"

#$apiKey = $configJson.rancher.apiKey;
#    $apiSecret = $configJson.rancher.apiSecret;
#    $appName = $configJson.nodeApp.name;
#$version = $configJson.nodeApp.version;
