#!/bin/bash

echo "🛠  Running composer install..."
composer install --no-interaction --prefer-dist

echo "🚀 Starting apachectl..."
exec apachectl -D FOREGROUND
