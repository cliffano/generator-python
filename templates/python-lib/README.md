<img align="right" src="https://raw.github.com/{{github_id}}/{{github_repo}}/main/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/{{github_id}}/{{github_repo}}/workflows/CI/badge.svg)](https://github.com/{{github_id}}/{{github_repo}}/actions?query=workflow%3ACI)
[![Code Scanning Status](https://github.com/{{github_id}}/{{github_repo}}/workflows/CodeQL/badge.svg)](https://github.com/{{github_id}}/{{github_repo}}/actions?query=workflow%3ACodeQL)
[![Dependencies Status](https://img.shields.io/librariesio/release/pypi/{{project_id}})](https://libraries.io/github/{{github_id}}/{{github_repo}})
[![Security Status](https://snyk.io/test/github/{{github_id}}/{{github_repo}}/badge.svg)](https://snyk.io/test/github/{{github_id}}/{{github_repo}})
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

Create {{project_id}} object and run it:

    from {{project_id}} import Display

    display = Display(conf_files=['{{project_id}}.yaml'])
    text = display.format(reverse=False, transformation='lower')
    print(text)

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
* [Code complexity report](https://{{github_id}}.github.io/{{project_id}}/complexity/radon/cc.txt)
* [Unit tests report](https://{{github_id}}.github.io/{{project_id}}/test/pytest/index.html)
* [Test coverage report](https://{{github_id}}.github.io/{{project_id}}/coverage/coverage/index.html)
* [Integration tests report](https://{{github_id}}.github.io/{{project_id}}/test-integration/pytest/index.html)
* [API Documentation](https://{{github_id}}.github.io/{{project_id}}/doc/sphinx/index.html)
