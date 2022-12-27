$gitHubRepository = "<REPO>"
$gitHubUsername = "<USERNAME>"

$gitHubApiKey = "<TOKEN>"

$releaseParams = @{}

$releaseParams = @{
    Url = "https://api.github.com/repos/$gitHubUsername/$gitHubRepository/release";
    Method = 'GET'
    Headers = @{
        Authorization = 'Basic '+[Convert]::ToBase64String(
            [Text.Encoding]::ASCII.GetBytes($gitHubApiKey + ":x-oauth-basic")
        );
    }
    ContentType = 'application/json'
    Body = (ConvertTo-Json $releaseData -Compress)

}

$ServicePoint = [System.Net.ServicePointManager]::FindServicePoint($($releaseParams.Uri))

$results = Invoke-RestMethod @releaseParams

ForEach($result in $results){
    Write-Host "Name: $($result.name)"
    Write-Host "Release: $(result.tag_name)"
    Write-Host "Downloads: $($result.assets.download_count)"
    Write-Host "URL: $($result.assets_url)"
}

$ServicePoint.CloseConnectionGroup("") | Out-Null