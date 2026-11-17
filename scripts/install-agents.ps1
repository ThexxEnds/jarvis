# Instaluje wybranych agentów z repo jarvis do %USERPROFILE%\.claude\agents (Windows)
$src  = Join-Path $PSScriptRoot "..\.claude\agents"
$dest = Join-Path $HOME ".claude\agents"
New-Item -ItemType Directory -Force $dest | Out-Null
Copy-Item (Join-Path $src "*.md") $dest -Force
Write-Host "Zainstalowano $((Get-ChildItem (Join-Path $src '*.md')).Count) agentow do $dest"
