del "ATtiny-Plant.exe"
::Downloadable
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "ATtiny-Plant.cs" /win32icon:icon.ico /resource:avrdude.exe,EmbedExe.avrdude.exe /resource:avrdude.conf,EmbedExe.avrdude.conf /reference:System.dll /reference:System.IO.Compression.FileSystem.dll /reference:C:\windows\assembly\GAC_MSIL\System.Management.Automation\1.0.0.0__31bf3856ad364e35\System.Management.Automation.dll /reference:mscorlib.dll
::Embedded
::C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "ATtiny-Plant.cs" /win32icon:icon.ico /resource:Drivers\zadig-2.4.exe,EmbedExe.zadig-2.4.exe /resource:php-7.4.0-Win32-vc15-x64.zip,EmbedExe.php-7.4.0-Win32-vc15-x64.zip /resource:VC_redist.x64.exe,EmbedExe.VC_redist.x64.exe /resource:avrdude.exe,EmbedExe.avrdude.exe /resource:avrdude.conf,EmbedExe.avrdude.conf /reference:System.dll /reference:System.IO.Compression.FileSystem.dll /reference:C:\windows\assembly\GAC_MSIL\System.Management.Automation\1.0.0.0__31bf3856ad364e35\System.Management.Automation.dll /reference:mscorlib.dll
pause