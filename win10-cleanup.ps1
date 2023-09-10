# Win10CleanUp

# Removing AppX Packages
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
"Microsoft.MSPaint" 
"Microsoft.BingFoodAndDrink" 
"Microsoft.BingHealthAndFitness" 
"Microsoft.BingTravel" 
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
"Microsoft.WindowsStore"
)

ForEach ($App in $Apps){
Get-AppxPackage $App | Remove-AppxPackage
}

# Hide Search Box
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0

# Hide Task View Button
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0

# Hide News & Interests
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2

# Change Default Windows Explorer View To This PC
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1

# Show File Extensions
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0

# Hide Cortana Button
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Type DWord -Value 0

# Hide Teams Button
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarMn" -Type DWord -Value 0

# Set Taskbar To Left
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Type DWord -Value 0

# Disable Action Center
Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1

# Disable Windows Media Player
Disable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer"