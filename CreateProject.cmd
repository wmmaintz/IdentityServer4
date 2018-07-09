dotnet new web --name MyIdentityServer -o ./src/MyIdentityServer
dotnet add ./src/MyIdentityServer/MyIdentityServer.csproj package IdentityServer4
dotnet new webapi --name MyApiServer -o ./src/MyApiServer
dotnet new xunit --name MyApiServerTests -o ./tests/MyApiServerTests
dotnet add ./tests/MyApiServerTests/MyApiServerTests.csproj reference ./src/MyApiServer/MyApiServer.csproj
dotnet add ./tests/MyApiServerTests/MyApiServerTests.csproj package IdentityServer4.AspNetIdentity
dotnet add ./tests/MyApiServerTests/MyApiServerTests.csproj package Microsoft.AspNetCore.TestHost
dotnet new sln --name MyApi
dotnet sln ./MyApi.sln add ./src/MyIdentityServer/MyIdentityServer.csproj ./src/MyApiServer/MyApiServer.csproj ./tests/MyApiServerTests/MyApiServerTests.csproj