#!/bin/bash

docker compose up -d

sleep 2

docker exec backoffice-backend bash "./script.sh"
