#!/bin/bash
set -e

echo "Stopping existing application..."

# Example for Node.js (PM2)
if pgrep -f "node"; then
  sudo pkill -f node
  echo "Node process stopped"
fi

# Example for Java
if pgrep -f "java"; then
  sudo pkill -f java
  echo "Java process stopped"
fi