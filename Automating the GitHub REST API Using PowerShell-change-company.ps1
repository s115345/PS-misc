$Token ='s115455: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'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$Headers = @{

    Authorization = 'Basic {0}' -f $Base64Token;
    };

$Body =@{
    Company = 'Ap Hogeschool-antwerpen';
    } | ConvertTo-Json


Invoke-RestMethod -Headers $Headers -Uri https://api.github.com/user -Body $Body -Method Patch 

