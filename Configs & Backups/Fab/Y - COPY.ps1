# Define the paths
$path1 = "C:\Church-Presentation-Tools\Applications-Configs\Fab"
$path2 = "D:\CHRUCH\Chruch Presentation Workflow Setup\1 - SETUP\3 - Configs\Fab"


# Copy all .txt and .ink files
Get-ChildItem -Path . -Filter *.ini | Copy-Item -Destination $path1 
Get-ChildItem -Path . -Filter *.lnk | Copy-Item -Destination $path1 

Get-ChildItem -Path . -Filter *.ini | Copy-Item -Destination $path2 
Get-ChildItem -Path . -Filter *.lnk | Copy-Item -Destination $path2 

Read-Host -Prompt "Press any key to continue"