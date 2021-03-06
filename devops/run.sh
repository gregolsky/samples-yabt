#!/bin/bash -e

if [ -z "$SETTINGS_RAVENDB_URL" ]; then
    echo "SETTINGS_RAVENDB_URL env var is required."
    exit 1
fi

if [ -z "$SETTINGS_RAVENDB_CERTIFICATE" ]; then
    echo "SETTINGS_RAVENDB_CERTIFICATE env var is required."
    exit 2
fi

envsubst < appsettings.docker.json > appsettings.json

exec dotnet WebApi.dll