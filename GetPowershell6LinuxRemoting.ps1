choco install pwsh
choco install openssh -params '"/SSHServerFeature"' -y
choco install curl
choco install sed
refreshenv

New-Item -Path c:\pwsh -ItemType SymbolicLink -Value "C:\Program Files\PowerShell\6" -force

cd $env:USERPROFILE; mkdir .ssh; cd .ssh; New-Item authorized_keys
cmd.exe /c curl -l https://api.github.com/users/voronenko/keys | jq -r '.[].key' > $HOME/.ssh/authorized_keys
# tune sshd_config, if needed
cmd.exe /c curl -l https://raw.githubusercontent.com/voronenko-p/win-gitlab-runner/master/sshd_config > C:\ProgramData\ssh\sshd_config
Restart-Service sshd
