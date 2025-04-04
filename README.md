<https://learn.microsoft.com/en-us/dotnet/core/diagnostics/observability-prgrja-example>

Create the docker image and run
pack build my-app --buildpack paketo-buildpacks/dotnet-core --builder paketobuildpacks/builder-jammy-base
docker run -p 8080:8080 my-app

<https://github.com/open-telemetry/opentelemetry-dotnet/blob/main/examples/AspNetCore/otel-collector.yaml>
<https://github.com/open-telemetry/opentelemetry-dotnet/blob/main/src/OpenTelemetry.Exporter.OpenTelemetryProtocol/README.md>
