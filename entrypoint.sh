#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /my_api/tmp/pids/server.pid

# Exec the container's main process (CMD command in rails file)
exec "$@"