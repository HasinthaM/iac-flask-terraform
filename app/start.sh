#!/bin/sh
: "${DB_HOST:=localhost}"
: "${DB_PORT:=3306}"

echo "Waiting for database at \$DB_HOST:\$DB_PORT ..."
until nc -z \$DB_HOST \$DB_PORT; do
  echo "Database not ready — sleeping 2s..."
  sleep 2
done

echo "Database reachable — starting Flask app"
exec python app.py
