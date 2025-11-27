#!/bin/bash
set -e

echo "Running update..."
python3 update.py

echo "Reloading source code..."
cd /usr/src/app

export PYTHONPATH=/usr/src/app

echo "Starting bot..."
python3 -m bot
