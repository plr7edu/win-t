# IDM Activation Script

An open-source tool to activate and reset the trial of [Internet Download Manager](https://www.internetdownloadmanager.com/)

## Features

-   IDM activation with registry key lock method
-   Activation persists even after installing IDM updates
-   IDM trial reset
-   Fully open source
-   Based on the transparent batch script

## IAS Latest Release

Last Release - v1.0 (01-Dec-2023)\
[GitHub](https://github.com/WindowsAddict/IDM-Activation-Script) - [BitBucket](https://bitbucket.org/WindowsAddict/idm-activation-script/)

## Download / How to use it?

-   First fresh install [Internet Download Manager](https://www.internetdownloadmanager.com/). Make sure previous cracks/patches are removed/uninstalled if there are any.
-   After that follow the below steps to activate it.

### Method 1 - PowerShell

(Recommended)

-   On Windows 8.1/10/11, right-click on the Windows start menu and select PowerShell or Terminal (Not CMD).
-   Copy-paste the below code and press enter\
    `irm https://massgrave.dev/ias | iex`
-   You will see the activation options, and follow onscreen instructions.
-   That's all.

### Method 2 - Traditional

-   Download the file from [GitHub](https://github.com/WindowsAddict/IDM-Activation-Script/archive/refs/heads/main.zip) or [Bitbucket](https://bitbucket.org/WindowsAddict/idm-activation-script/get/main.zip)
-   Right-click on the downloaded zip file and extract
-   In the extracted folder, run the file named `IAS.cmd`
-   You will see the activation options, and follow onscreen instructions.
-   That's all.

## Info

#### Activation

-   This script applies the registry lock method to activate the Internet download manager (IDM).
-   This method requires the Internet at the time of activation.
-   IDM updates can be installed directly without having to activate it again.
-   After the activation, if in some cases, IDM starts to show an activation nag screen, then just run the activation option again without using the reset option.

#### Reset IDM Activation / Trial

-   Internet download manager provides a 30-day trial period, you can use this script to reset this Activation / Trial period whenever you want.
-   This option also can be used to restore status if in case IDM reports a fake serial key and other similar errors.

#### OS requirement

-   The project is supported for Windows 7/8/8.1/10/11 and their Server equivalent.
-   The PowerShell method to run IAS is supported on Windows 8 and higher.

#### Advanced Info

-   To add a custom name in IDM license info, edit line number 29 in the script file.
-   For activation in unattended mode, run the script with the `/act` parameter.
-   For reset in unattended mode, run the script with the `/res` parameter.

## How does it work?

-   IDM stores the data related to trial and activation across various registry keys. Some of these keys are locked to protect them from tampering and data is stored in a pattern to track the fake serial issue and the remaining trial days. To activate it, the script here simply generates those registry keys by triggering a few downloads in IDM, identifies those registry keys, and locks them so IDM can't edit and view them. That way IDM cannot show the warning that it's activated with a fake serial key.

## Troubleshoot

-   Browser Integration Fix: [Chrome](https://www.internetdownloadmanager.com/register/new_faq/bi9.html) - [Firefox](https://www.internetdownloadmanager.com/register/new_faq/bi4.html)
-   Reach out to us on [Discord](https://discord.gg/gjJEfq7ux8) (signup not required) with an error screenshot.

[![](https://lookimg.com/images/2023/03/21/QTvjcD.png)](https://discord.gg/gjJEfq7ux8)

## Changelog

#### v1.0

-   Added the code to relaunch the script with conhost.exe if the script is running from the terminal app.
-   Fixed an issue in getting the current user account SID.

#### v0.9

-   Fixed an issue where the script can not activate and reset IDM in non-admin user accounts.
-   Fixed an issue where the script incorrectly shows that IDM is activated.
-   Fixed an issue where a fake serial pop-up may appear. The script will also show the info to run the activation option again without using the reset option.
-   Fixed an issue where Powershell code to launch IAS may not work due to GitHub block in some regions. It will use the new [BitBucket](https://bitbucket.org/WindowsAddict/idm-activation-script/) repo as a fallback link.
-   IDM registry scanning and locking code is now written in Powershell.
-   The script update checker code is added to the script.
-   The script will now disable quick edit mode temporarily because users often click inside the script window and it pauses the script.
-   The script will back up the CLSISD registry keys before performing operations on them.
-   Many error checks are added to better identify the issues.

#### v0.8

-   Move the project to [Github](https://github.com/WindowsAddict/IDM-Activation-Script) and [massgrave.dev](https://massgrave.dev/idm-activation-script.html)
-   Minor bug fixes
-   Add info to inform users that empty registry keys are being deleted when the script deletes a lot of them

## Screenshots

![](https://massgrave.dev/IAS.png?raw=true)

![](https://massgrave.dev//IAS_Activation.png?raw=true)

## Credits

|                                             |                                                                                                                                                                                                                                        |
|----------------|--------------------------------------------------------|
| Dukun Cabul                                 | Original researcher of this IDM trial reset and activation logic, made an Autoit tool for these methods, [IDM-AIO_2020_Final](https://nsaneforums.com/topic/371047-discussion-internet-download-manager-fixes/page/8/#comment-1632062) |
| AveYo aka BAU                               | [reg_own lean and mean snippet](https://pastebin.com/XTPt0JSC)                                                                                                                                                                         |
| [abbodi1406](https://github.com/abbodi1406) | Help in coding                                                                                                                                                                                                                         |
| WindowsAddict                               | IAS Author                                                                                                                                                                                                                             |

And thanks to the IAS users for their interest, feedback, and assistance.

------------------------------------------------------------------------

Made with Love ❤️
