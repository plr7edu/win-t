@Echo Off

cd %Systemdrive%\Syncthing\*syncthing-windows-amd64*
START syncthing.exe &&  TIMEOUT /T 10 && START "firefox.exe" http://127.0.0.1:8384/




