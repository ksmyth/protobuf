Setlocal EnableDelayedExpansion

set PATH=%PATH%;C:\Program Files (x86)\MSBuild\14.0\bin

MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Release;Platform=x64 || exit /b !ERRORLEVEL!
MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Debug;Platform=x64 || exit /b !ERRORLEVEL!
MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Release;Platform=win32 || exit /b !ERRORLEVEL!
MSBuild.exe /m vsprojects\protobuf.sln /t:libprotobuf /p:VisualStudioVersion=14.0;PlatformToolset=v140;Configuration=Debug;Platform=win32 || exit /b !ERRORLEVEL!

set PSModulePath=%PSModulePath%;C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf.autopkg || exit /b !ERRORLEVEL!
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\protobuf-vc140.autopkg || exit /b !ERRORLEVEL!
