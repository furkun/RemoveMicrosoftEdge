:: https://privacy.sexy script (v0.10.3) start
@echo off

:: Ensure admin privileges
fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

echo Do you want to remove Microsoft Edge?
choice
IF ERRORLEVEL 2 goto No
IF ERRORLEVEL 1 GOTO Yes

:Yes

echo --- Uninstall Edge (chromium-based)
PowerShell -ExecutionPolicy Unrestricted -Command " $installer = (Get-ChildItem \"$env:ProgramFiles*\Microsoft\Edge\Application\*\Installer\setup.exe\"); if (!$installer) { Write-Host Could not find the installer; } else { & $installer.FullName -uninstall -system-level -verbose-logging -force-uninstall }; "
echo --- Microsoft Edge (Legacy) app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdge'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Microsoft Edge (Legacy) Dev Tools Client app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdgeDevToolsClient'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Win32 Web View Host app / Desktop App Web Viewer
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.Win32WebViewHost'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Microsoft PPI Projection app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.PPIProjection'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- ChxApp app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.Windows.Apprep.ChxApp'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Assigned Access Lock App app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.Windows.AssignedAccessLockApp'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Capture Picker app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.Windows.CapturePicker'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Cloud Experience Host app (breaks Microsoft cloud/corporate sign in)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.Windows.CloudExperienceHost'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
echo --- Content Delivery Manager app (automatically installs apps)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = (Get-AppxPackage -AllUsers 'Microsoft.Windows.ContentDeliveryManager'); if (!$package) { Write-Host 'Not installed'; exit 0; } $directories = @($package.InstallLocation, \"$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)\"); foreach($dir in $directories) { if ( !$dir -Or !(Test-Path \"$dir\") ) { continue; } cmd /c ('takeown /f \"' + $dir + '\" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } cmd /c ('icacls \"' + $dir + '\" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership'; } $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) { if($file.Name.EndsWith('.OLD')) { continue; } $newName =  $file.FullName + '.OLD'; Write-Host \"Rename '$($file.FullName)' to '$newName'\"; Move-Item -LiteralPath \"$($file.FullName)\" -Destination \"$newName\" -Force; } }"
:: :: https://privacy.sexy script (v0.10.3) end

::Disable auto update
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EdgeUpdate /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1 /f
echo Auto update disabled.

:: Remove Microsoft Edge directories
cd %windir%\SystemApps
takeown /f Microsoft.MicrosoftEdge* /a /r
icacls Microsoft.MicrosoftEdge* /grant Everyone:f /t
for /d %%a in (Microsoft.MicrosoftEdge*) do rd /s /q "%%a"
cd\Program Files (x86)\Microsoft
takeown /f Edge* /a /r
icacls Edge* /grant Everyone:f /t
for /d %%a in (Edge*) do rd /s /q "%%a"
echo Removed all Edge folders.
pause

:No
exit
