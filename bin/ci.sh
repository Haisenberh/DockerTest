#!/bin/sh
# Usage : bin/ci [setup]
set -e
bin/wait-for-postgres
time php artisan migrate --force --no-interaction
time $1