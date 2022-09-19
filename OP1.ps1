$file = 'c:\Users\Rapha\OneDrive\School - Goed\!Leerjaar 3\Powershell\test.ps1'
if (-not(Test-Path -Path $file -PathType Leaf)) {
    try {
        $null = New-Item -ItemType File -Path $file -Force -ErrorAction Stop
        Write-Host "The file [$file] has been created."
    }
    catch {
        throw $_.Exception.Message
    }
}
else {
    Write-Host "Cannot create [$file] because a file with that name already exists."
}