#!/usr/bin/bash
set -o nounset

cd ../
. ./.venv/bin/activate

printf "\n\n========================================\n"
printf "Show help guide:\n"
{{project_id}} --help

printf "\n\n========================================\n"
printf "Run command with default config file:\n"
{{project_id}}

printf "\n\n========================================\n"
printf "Run command with specified config file:\n"
{{project_id}} --conf-file examples/{{project_id}}.yaml

printf "\n\n========================================\n"
printf "Run command with specified config file and custom flags:\n"
{{project_id}} --conf-file examples/{{project_id}}.yaml --reverse --transformation upper
