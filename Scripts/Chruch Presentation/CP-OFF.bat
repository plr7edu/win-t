:: Mute Volume
START %systemdrive%\PLR-WINDOWS-HOST-TOOLS\"Sound Volume View"\SoundVolumeView.exe /Unmute Speakers


:: Set Maximum Brightness
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,10)
