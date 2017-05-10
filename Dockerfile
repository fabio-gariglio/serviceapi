# Use an official Microsoft DotNet core base image
FROM microsoft/aspnetcore

# Set the working directory
WORKDIR /app

COPY out .

ENTRYPOINT ["dotnet", "serviceapi.dll"]
