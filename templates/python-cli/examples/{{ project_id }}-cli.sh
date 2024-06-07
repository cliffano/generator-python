#!/bin/sh

echo "\n\n========================================"
echo "Show help guide: {{ project_id }} --help"
{{ project_id }} --help

echo "\n\n========================================"
echo "Run command with default config file: {{ project_id }}"
{{ project_id }}

echo "\n\n========================================"
echo "Run command with specified config file:"
echo "{{ project_id }} --conf-file {{ project_id }}.yaml"
{{ project_id }} --conf-file {{ project_id }}.yaml
