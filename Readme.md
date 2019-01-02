```ps

Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/voronenko-p/win-gitlab-runner/master/bootstrap.ps1'))
```

or

```ps

Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/probuju'))
```



Box addresses

```
(Get-NetIPAddress).IPAddress
```


=============================================



Edit the sshd_config file located at %ProgramData%\ssh.

Make sure password authentication is enabled


PasswordAuthentication yes


mklink /D c:\pwsh "C:\Program Files\PowerShell\6"
and then enter it in the subsystem:


Subsystem    powershell c:\pwsh\pwsh.exe -sshs -NoLogo -NoProfile


Copy
PubkeyAuthentication yes


==================================================


$session = New-PSSession -HostName 192.168.2.145 -UserName Administrator
Enter-PSSession $session
