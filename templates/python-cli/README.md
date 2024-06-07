<img align="right" src="https://raw.github.com/cliffano/{{ project_id }}/main/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/{{ project_id }}/workflows/CI/badge.svg)](https://github.com/cliffano/{{ project_id }}/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/{{ project_id }}/badge.svg)](https://snyk.io/test/github/cliffano/{{ project_id }})
[![Dependencies Status](https://img.shields.io/librariesio/release/pypi/{{ project_id }})](https://libraries.io/github/cliffano/{{ project_id }})
[![Published Version](https://img.shields.io/pypi/v/{{ project_id }}.svg)](https://pypi.python.org/pypi/{{ project_id }})
<br/>

{{ project_name }}
-------

{{ project_name }} is a {{ project_desc }} .

Installation
------------

    pip3 install {{ project_id }}

Usage
-----

Create a configuration file, e.g. `{{ project_id }}.yaml`:

    ---
    msg: hello world

Configuration
-------------

These are the configuration properties that you can use with `{{ project_id }}` CLI.
Some example configuration files are available on [examples](examples) folder.

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| `text` | String | The message text | Hello World |

Colophon
--------

[Developer's Guide](https://cliffano.github.io/developers_guide.html#python)

Build reports:

* [Lint report](https://cliffano.github.io/{{ project_id }}/lint/pylint/index.html)
* [Code complexity report](https://cliffano.github.io/{{ project_id }}/complexity/wily/index.html)
* [Unit tests report](https://cliffano.github.io/{{ project_id }}/test/pytest/index.html)
* [Test coverage report](https://cliffano.github.io/{{ project_id }}/coverage/coverage/index.html)
* [Integration tests report](https://cliffano.github.io/{{ project_id }}/test-integration/pytest/index.html)
* [API Documentation](https://cliffano.github.io/{{ project_id }}/doc/sphinx/index.html)
