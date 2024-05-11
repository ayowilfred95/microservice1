# Use the official Microsoft .NET runtime as a parent image
FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Set the working directory in the container
WORKDIR /app

# Copy the binaries from the publish folder to the workdir in the container
COPY ./bin/Release/net6.0/publish/ .

# Expose port 80 for the application
EXPOSE 80

# Set the command to run the application
ENTRYPOINT ["dotnet", "YourBackendApp.dll"]
