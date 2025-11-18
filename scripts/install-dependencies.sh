#!/bin/bash
set -e

DEPLOY_DIR="/var/www/html"

echo "Preparing deployment directory..."

sudo mkdir -p $DEPLOY_DIR
sudo rm -rf $DEPLOY_DIR/*

echo "Deployment directory ready."