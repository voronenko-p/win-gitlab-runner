```ps

Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/voronenko-p/win-gitlab-runner/master/bootstrap.ps1'))
```

or

```ps

Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/probuju'))
```




