FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copy the project file and restore the NuGet packages
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the project files and build
COPY . ./
RUN dotnet publish -c Release -o out

# Use the official .NET runtime image as the final image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# Copy the built app from the build-env stage
COPY --from=build-env /app/out .

# Expose the necessary ports
EXPOSE 80 8080

# Set the entry point to run the application
ENTRYPOINT ["dotnet", "OTEL.dll"]
