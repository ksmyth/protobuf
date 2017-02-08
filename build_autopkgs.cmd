Setlocal EnableDelayedExpansion

set PSModulePath=%PSModulePath%;C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf.autopkg || exit /b !ERRORLEVEL!


"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Release;Platform=x64 || exit /b !ERRORLEVEL!
"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Debug;Platform=x64 || exit /b !ERRORLEVEL!
"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Release;Platform=win32 || exit /b !ERRORLEVEL!
"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Debug;Platform=win32 || exit /b !ERRORLEVEL!

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf-vc140.autopkg || exit /b !ERRORLEVEL!


rd /s/q vsprojects\Debug vsprojects\Release vsprojects\x64


"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=12.0;PlatformToolset=v120;Configuration=Release;Platform=x64 || exit /b !ERRORLEVEL!
"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=12.0;PlatformToolset=v120;Configuration=Debug;Platform=x64 || exit /b !ERRORLEVEL!
"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=12.0;PlatformToolset=v120;Configuration=Release;Platform=win32 || exit /b !ERRORLEVEL!
"C:\Program Files (x86)\MSBuild\14.0\bin"\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=12.0;PlatformToolset=v120;Configuration=Debug;Platform=win32 || exit /b !ERRORLEVEL!

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf-vc120.autopkg || exit /b !ERRORLEVEL!

rd /s/q vsprojects\Debug vsprojects\Release vsprojects\x64


C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=10.0;PlatformToolset=v100;Configuration=Release;Platform=x64 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=10.0;PlatformToolset=v100;Configuration=Debug;Platform=x64 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=10.0;PlatformToolset=v100;Configuration=Release;Platform=win32 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=10.0;PlatformToolset=v100;Configuration=Debug;Platform=win32 || exit /b !ERRORLEVEL!

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf-vc100.autopkg || exit /b !ERRORLEVEL!

rd /s/q vsprojects\Debug vsprojects\Release vsprojects\x64


C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=11.0;PlatformToolset=v110;Configuration=Release;Platform=x64 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=11.0;PlatformToolset=v110;Configuration=Debug;Platform=x64 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=11.0;PlatformToolset=v110;Configuration=Release;Platform=win32 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=11.0;PlatformToolset=v110;Configuration=Debug;Platform=win32 || exit /b !ERRORLEVEL!

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf-vc110.autopkg || exit /b !ERRORLEVEL!

rd /s/q vsprojects\Debug vsprojects\Release vsprojects\x64


C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=9.0;PlatformToolset=v90;Configuration=Release;Platform=x64 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=9.0;PlatformToolset=v90;Configuration=Debug;Platform=x64 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=9.0;PlatformToolset=v90;Configuration=Release;Platform=win32 || exit /b !ERRORLEVEL!
C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=9.0;PlatformToolset=v90;Configuration=Debug;Platform=win32 || exit /b !ERRORLEVEL!

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf-vc90.autopkg || exit /b !ERRORLEVEL!

rd /s/q vsprojects\Debug vsprojects\Release vsprojects\x64

