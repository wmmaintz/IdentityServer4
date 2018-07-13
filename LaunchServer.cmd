@ECHO OFF
CLS
SET CMDSTR="CLS & DOTNET run --project ./src/MyIdentityServer/MyIdentityServer.csproj & ECHO. & PAUSE"

ECHO.
ECHO  Launching IdentityServer4 in separate cmd window ...
ECHO.

START CMD /C %CMDSTR%
SET CMDSTR=