# Remove Defaults
rename-item alias:\gl gll -force

New-Alias -Name vi -Value nvim

function git-checkout { git checkout $args }
Set-Alias -Name gco -Value git-checkout

function git-log { git log }
Set-Alias -Name gl -Value git-log
