[Setup]
AppName=EFCC Telematics Core
AppVersion=1.2
DefaultDirName={pf}\EFCC Telematics
OutputBaseFilename=efcc-telematics-setup
ArchitecturesInstallIn64BitMode=x64

[Dirs]
Name: "{app}\data"
Name: "{app}\logs"

[Files]
Source: "out\*"; DestDir: "{app}"; Flags: recursesubdirs

[Run]
Filename: "{app}\jre\bin\java.exe"; Parameters: "-jar ""{app}\tracker-server.jar"" --install .\conf\config.xml"; Flags: runhidden

[UninstallRun]
Filename: "{app}\jre\bin\java.exe"; Parameters: "-jar ""{app}\tracker-server.jar"" --uninstall"; Flags: runhidden
