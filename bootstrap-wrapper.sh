#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
DESTINATION="$ROOT/gradle/wrapper/gradle-wrapper.jar"
SOURCE="https://raw.githubusercontent.com/KoalaNalle/Create-Dreams-and-Desires/1.21.1/gradle/wrapper/gradle-wrapper.jar"

mkdir -p "$(dirname "$DESTINATION")"

if command -v curl >/dev/null 2>&1; then
    curl -fL "$SOURCE" -o "$DESTINATION"
elif command -v wget >/dev/null 2>&1; then
    wget -O "$DESTINATION" "$SOURCE"
else
    echo "curl or wget is required to download the Gradle wrapper."
    exit 1
fi

echo "Downloaded Gradle wrapper to $DESTINATION"
