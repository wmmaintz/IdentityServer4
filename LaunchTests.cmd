@ECHO OFF
CLS
SET CMDSTR="CLS & DOTNET test ./tests/MyApiServerTests/MyApiServerTests.csproj & ECHO. & PAUSE"

ECHO.
ECHO  Launching IdentityServer4 tests in separate cmd window ...
ECHO.

START CMD /C %CMDSTR%
SET CMDSTR=
