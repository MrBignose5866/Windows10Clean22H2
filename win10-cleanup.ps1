# Win10CleanUp

# Removing AppX Packages
Write-Host "::Removing All Appx UWP Packages"
$Apps = @(
"Microsoft.3DBuilder"
"Microsoft.BingFinance"
"Microsoft.BingNews" 
"Microsoft.BingTranslator" 
"Microsoft.BingSports" 
"Microsoft.BingWeather" 
"Microsoft.Getstarted" 
"Microsoft.MicrosoftOfficeHub" 
"Microsoft.MicrosoftSolitaireCollection" 
"Microsoft.Office.OneNote" 
"Microsoft.People" 
"Microsoft.SkypeApp" 
"Microsoft.Windows.Photos" 
"microsoft.windowscommunicationsapps" 
"Microsoft.WindowsMaps" 
"Microsoft.WindowsPhone" 
"Microsoft.WindowsSoundRecorder" 
"Microsoft.XboxApp" 
"Microsoft.ZuneMusic" 
"Microsoft.ZuneVideo" 
"Microsoft.AppConnector" 
"Microsoft.ConnectivityStore" 
"Microsoft.Office.Sway" 
"Microsoft.Messaging" 
"Microsoft.CommsPhone" 
"Microsoft.WindowsFeedbackHub" 
"Microsoft.Wallet" 
"Microsoft.ScreenSketch" 
"Microsoft.GetHelp" 
"Microsoft.Xbox.TCUI" 
"Microsoft.XboxGameOverlay" 
"Microsoft.XboxGamingOverlay" 
"Microsoft.Xbox.TCUI" 
"Microsoft.XboxSpeechToTextOverlay" 
"Microsoft.XboxGameCallableUI"
"Microsoft.XboxIdentityProvider"
"Microsoft.549981C3F5F10"
"Microsoft.MixedReality.Portal" 
"Microsoft.MicrosoftPowerBIForWindows" 
"Microsoft.Microsoft3DViewer" 
"Microsoft.GamingServices" 
"Microsoft.FreshPaint" 
"Microsoft.MicrosoftStickyNotes" 
"Microsoft.WindowsAlarms" 
"Microsoft.WindowsCalculator" 
"Microsoft.WindowsCamera" 
"Microsoft.YourPhone" 
"Microsoft.Windows.CloudExperienceHost" 
"Microsoft.Windows.ContentDeliveryManager" 
"Microsoft.Windows.PeopleExperienceHost" 
"Microsoft.OneConnect"
"Microsoft.Paint"
"Microsoft.MSPaint" 
"Microsoft.BingFoodAndDrink" 
"Microsoft.BingHealthAndFitness" 
"Microsoft.BingTravel"
"Microsoft.GamingApp"
"Microsoft.WindowsReadingList" 
"2FE3CB00.PicsArt-PhotoStudio" 
"46928bounde.EclipseManager" 
"4DF9E0F8.Netflix" 
"613EBCEA.PolarrPhotoEditorAcademicEdition" 
"6Wunderkinder.Wunderlist" 
"7EE7776C.LinkedInforWindows" 
"89006A2E.AutodeskSketchBook" 
"9E2F88E3.Twitter" 
"A278AB0D.DisneyMagicKingdoms" 
"A278AB0D.MarchofEmpires" 
"ActiproSoftwareLLC.562882FEEB491" 
"CAF9E577.Plex"
"Microsoft.Todos"
"MicrosoftCorporationII.MicrosoftFamily"
"MicrosoftCorporationII.QuickAssist"
"Microsoft.WindowsTerminal"
"ClearChannelRadioDigital.iHeartRadio" 
"D52A8D61.FarmVille2CountryEscape" 
"D5EA27B7.Duolingo-LearnLanguagesforFree" 
"DB6EA5DB.CyberLinkMediaSuiteEssentials" 
"DolbyLaboratories.DolbyAccess" 
"Drawboard.DrawboardPDF" 
"Facebook.Facebook" 
"Fitbit.FitbitCoach" 
"Flipboard.Flipboard" 
"GAMELOFTSA.Asphalt8Airborne" 
"KeeperSecurityInc.Keeper" 
"NORDCURRENT.COOKINGFEVER" 
"PandoraMediaInc.29680B314EFC2" 
"Playtika.CaesarsSlotsFreeCasino" 
"ShazamEntertainmentLtd.Shazam" 
"SlingTVLLC.SlingTV" 
"SpotifyAB.SpotifyMusic" 
"TheNewYorkTimes.NYTCrossword" 
"ThumbmunkeysLtd.PhototasticCollage" 
"TuneIn.TuneInRadio" 
"WinZipComputing.WinZipUniversal" 
"XINGAG.XING" 
"flaregamesGmbH.RoyalRevolt2" 
"king.com.*" 
"king.com.BubbleWitch3Saga" 
"king.com.CandyCrushSaga" 
"king.com.CandyCrushSodaSaga" 
"Microsoft.Print3D" 
"Microsoft.MinecraftUWP" 
"Microsoft.NetworkSpeedTest" 
"Microsoft.Windows.Cortana" 
"Microsoft.MicrosoftEdge" 
"Clipchamp.Clipchamp"
"Microsoft.Windows.ContentDeliveryManager"
"Microsoft.PowerAutomate"
"Microsoft.WindowsStore"
"Microsoft.MicrosoftEdgeDevToolsClient"
)

ForEach ($App in $Apps){
Get-AppxPackage $App | Remove-AppxPackage
Get-AppxPackage -AllUsers $App | Remove-AppxPackage
Get-AppxProvisionedPackage -online | where-object {$_.packagename -like $App} | Remove-AppxProvisionedPackage -online
}

# Hide Search Box
Write-Host "::Hiding Search Box"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0

# Hide Task View Button
Write-Host "::Hiding Task View Button"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0

# Hide News & Interests
Write-Host "::Hiding News & Interests"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2

# Change Default Windows Explorer View To This PC
Write-Host "::Changing File Explorer View to This PC"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1

# Show File Extensions
Write-Host "::Showing File Extensions"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0

# Hide Cortana Button
Write-Host "::Hiding Cortana Button"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Type DWord -Value 0

# Hide Teams Button
Write-Host "::Hiding Teams Button"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarMn" -Type DWord -Value 0

# Hiding Action Center
Write-Host "::Hiding Action Center"
Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1

# Disable Windows Media Player
Write-Host "::Disabling Windows Media Player"
Disable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer"

# Disable Content Delivery Manager
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0

# Disable Meet Now
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Type DWord -Value 1

# Restart Windows Explorer
taskkill /f /im explorer.exe
Start-Process explorer.exe

# Remove OneDrive
Write-Output "Kill OneDrive process"
taskkill.exe /F /IM "OneDrive.exe"
taskkill.exe /F /IM "explorer.exe"

Write-Output "Remove OneDrive"
if (Test-Path "$env:systemroot\System32\OneDriveSetup.exe") {
    & "$env:systemroot\System32\OneDriveSetup.exe" /uninstall
}
if (Test-Path "$env:systemroot\SysWOW64\OneDriveSetup.exe") {
    & "$env:systemroot\SysWOW64\OneDriveSetup.exe" /uninstall
}

Write-Output "Removing OneDrive leftovers"
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "$env:localappdata\Microsoft\OneDrive"
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "$env:programdata\Microsoft OneDrive"
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "$env:systemdrive\OneDriveTemp"
# check if directory is empty before removing:
If ((Get-ChildItem "$env:userprofile\OneDrive" -Recurse | Measure-Object).Count -eq 0) {
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue "$env:userprofile\OneDrive"
}

Write-Output "Disable OneDrive via Group Policies"
New-FolderForced -Path "HKLM:\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\OneDrive"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC" 1

Write-Output "Remove Onedrive from explorer sidebar"
New-PSDrive -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" -Name "HKCR"
mkdir -Force "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
Set-ItemProperty -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree" 0
mkdir -Force "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
Set-ItemProperty -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree" 0
Remove-PSDrive "HKCR"

# Thank you Matthew Israelsson
Write-Output "Removing run hook for new users"
reg load "hku\Default" "C:\Users\Default\NTUSER.DAT"
reg delete "HKEY_USERS\Default\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload "hku\Default"

Write-Output "Removing startmenu entry"
Remove-Item -Force -ErrorAction SilentlyContinue "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"

Write-Output "Removing scheduled task"
Get-ScheduledTask -TaskPath '\' -TaskName 'OneDrive*' -ea SilentlyContinue | Unregister-ScheduledTask -Confirm:$false

Write-Output "Restarting explorer"
Start-Process "explorer.exe"

Write-Output "Waiting for explorer to complete loading"
Start-Sleep 10

# Remove 3D Objects Folder From User Profile
Remove-Item "$env:USERPROFILE\3DObjects"

# Remove 3D Objects Folder LeftOvers
Remove-ItemProperty -Path "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"

# Disable People Icon on Taskbar
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0

# Restart Windows Explorer
taskkill /f /im explorer.exe
Start-Process explorer.exe