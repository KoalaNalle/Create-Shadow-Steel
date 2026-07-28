$ErrorActionPreference = 'Stop'

$destination = Join-Path $PSScriptRoot 'gradle\wrapper\gradle-wrapper.jar'
$source = 'https://raw.githubusercontent.com/KoalaNalle/Create-Dreams-and-Desires/1.21.1/gradle/wrapper/gradle-wrapper.jar'

New-Item -ItemType Directory -Force -Path (Split-Path $destination) | Out-Null
Invoke-WebRequest -Uri $source -OutFile $destination

Write-Host "Downloaded Gradle wrapper to $destination"
