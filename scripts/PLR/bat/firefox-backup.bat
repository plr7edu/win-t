::Firefox Backup

Echo Firefox Profile Backup Zipping...

"C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\PLR\Desktop\Firefox-Root-Directory-Backup.zip" "C:\Users\plr\AppData\Roaming\Mozilla\Firefox\Profiles\*"
"C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\PLR\Desktop\Firefox-Local-Directory-Backup.zip" "C:\Users\PLR\AppData\Local\Mozilla\Firefox\Profiles\*"

echo Done!
