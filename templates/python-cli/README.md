<img align="right" src="https://raw.github.com/{{github_id}}/{{project_id}}/main/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/{{github_id}}/{{project_id}}/workflows/CI/badge.svg)](https://github.com/{{github_id}}/{{project_id}}/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/{{github_id}}/{{project_id}}/badge.svg)](https://snyk.io/test/github/{{github_id}}/{{project_id}})
[![Dependencies Status](https://img.shields.io/librariesio/release/pypi/{{project_id}})](https://libraries.io/github/{{github_id}}/{{project_id}})
[![Published Version](https://img.shields.io/pypi/v/{{project_id}}.svg)](https://pypi.python.org/pypi/{{project_id}})
<br/>

{{project_name}}
{{underline "-" project_name.length}}

{{project_name}} is a {{project_desc}} .

Installation
------------

    pip3 install {{project_id}}

Usage
-----

Create a configuration file, e.g. `{{project_id}}.yaml`:

    ---
    text: Hello World

Run {{project_id}} with specified config file:

    {{project_id}} --conf-file {{project_id}}.yaml

Run {{project_id}} with specified config file and custom flags:

    {{project_id}} --conf-file {{project_id}}.yaml --reverse --transformation upper

Show help guide:

    {{project_id}} --help

Configuration
-------------

These are the configuration properties that you can use with `{{project_id}}` CLI.
Some example configuration files are available on [examples](examples) folder.

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| `text` | String | The message text | Hello World |

Colophon
--------

[Developer's Guide](https://{{github_id}}.github.io/developers_guide.html#python)

Build reports:

* [Lint report](https://{{github_id}}.github.io/{{project_id}}/lint/pylint/index.html)
* [Code complexity report](https://{{github_id}}.github.io/{{project_id}}/complexity/wily/index.html)
* [Unit tests report](https://{{github_id}}.github.io/{{project_id}}/test/pytest/index.html)
* [Test coverage report](https://{{github_id}}.github.io/{{project_id}}/coverage/coverage/index.html)
* [Integration tests report](https://{{github_id}}.github.io/{{project_id}}/test-integration/pytest/index.html)
* [API Documentation](https://{{github_id}}.github.io/{{project_id}}/doc/sphinx/index.html)
