#!/bin/bash
set -e

URL="http://localhost"

echo "Validating site..."

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS" -eq 200 ]; then
    echo "Validation successful!"
    exit 0
else
    echo "Validation failed with HTTP $STATUS"
    exit 1
fi