$Token ='s115455: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'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$Headers = @{

    Authorization = 'Basic {0}' -f $Base64Token;
    };

$Body =@{
    name = 'Test';
    description ='This was created from Powershell';
    } | ConvertTo-Json


Invoke-RestMethod -Headers $Headers -Uri https://api.github.com/user/repos -Body $Body -Method Post 