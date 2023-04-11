# Remove Defaults
rename-item alias:\gl gll -force

New-Alias -Name vi -Value nvim

function git-checkout { git checkout $args }
Set-Alias -Name gco -Value git-checkout

function git-log { git log }
Set-Alias -Name gl -Value git-log

function git-submodule-update { git submodule update $args }
Set-Alias -Name gsu -Value git-submodule-update

function git-add-all { git add --all }
Set-Alias -Name gaa -Value git-add-all

function git-status { git status }
Set-Alias -Name gst -Value git-status

function git-diff-cached { git diff --cached }
Set-Alias -Name gdca -Value git-diff-cached

function cd-workspace { cd ~/workspace }
Set-Alias -Name cdw -Value cd-workspace
