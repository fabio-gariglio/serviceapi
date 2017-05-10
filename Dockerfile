# Use a bare Dot.Net Core image
FROM microsoft/dotnet:1.1.2-runtime

# Define Asp.Net Core environment variables
ENV ASPNETCORE_URLS="http://*:5000"
ENV ASPNETCORE_ENVIRONMENT="Development"

# Set the working directory
WORKDIR /app

# Copy Dot.Net output folder content to the container
COPY out .

# Expose default Asp.Net Core port
EXPOSE 5000

# Run the app
ENTRYPOINT ["dotnet", "serviceapi.dll"]
