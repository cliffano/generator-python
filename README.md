<img align="right" src="https://raw.github.com/cliffano/generator-python/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/generator-python/workflows/CI/badge.svg)](https://github.com/cliffano/generator-python/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/generator-python/badge.svg)](https://snyk.io/test/github/cliffano/generator-python)

Generator-Python
----------------

Generator-Python is a Python projects generator using [Plop](https://plopjs.com/).

It provides the following components:

| Component | Description |
|-----------|-------------|
| python-cli | Generate a Python CLI project with executable command. |
| python-lib | Generate a Python library project. |

All components are built using [PieMaker](https://github.com/cliffano/piemaker).

Usage
-----

Generate Python CLI project:

    make generate-python-cli

Generate Python library project:

    make generate-python-lib

Both components will prompt you the following inputs:

| Prompt | Description |
|--------|-------------|
| Project ID | Used for Python package name and CLI command. |
| Project Name | Used in documentation or comments. |
| Project Description | Used in documentation or comments. |
| Author Name | The name of the project author. |
| Author Email | The email of the project author. |