<!-- BEGIN:AVATAR -->
![Avatar](avatar.jpg)
<!-- END:AVATAR -->

<!-- BEGIN:BADGES -->
[![Build Status](https://github.com/cliffano/generator-python/workflows/CI/badge.svg)](https://github.com/cliffano/generator-python/actions?query=workflow%3ACI)
[![Code Scanning Status](https://github.com/cliffano/generator-python/workflows/CodeQL/badge.svg)](https://github.com/cliffano/generator-python/actions?query=workflow%3ACodeQL)
[![Security Status](https://snyk.io/test/github/cliffano/generator-python/badge.svg)](https://snyk.io/test/github/cliffano/generator-python)
<!-- END:BADGES -->

# Generator-Python

Generator-Python is a Python projects generator using [Plop](https://plopjs.com/).

It provides the following components:

| Component | Description |
|-----------|-------------|
| python-cli | Generate a Python CLI project with executable command. |
| python-cli-partials | Generate README partial snippets for Python CLI projects. |
| python-lib | Generate a Python library project. |
| python-lib-partials | Generate README partial snippets for Python library projects. |

All components are built using [PieMaker](https://github.com/cliffano/piemaker).

## Usage

Generate Python CLI project:

```shell
make generate-python-cli
```

Generate Python library project:

```shell
make generate-python-lib
```

Generate Python CLI partial snippets:

```shell
make generate-python-cli-partials
```

Generate Python library partial snippets:

```shell
make generate-python-lib-partials
```

Both components will prompt you the following inputs:

| Prompt | Description |
|--------|-------------|
| Project ID | Used for Python package name and CLI command. |
| Project Name | Used in documentation or comments. |
| Project Description | Used in documentation or comments. |
| Author Name | The name of the project author. |
| Author Email | The email of the project author. |
| GitHub ID | The GitHub ID of the project repo. |
| GitHub Repository | The GitHub repository URL for the project. |
| GitHub Actions token prefix | Prefix for the GitHub token secret used in GitHub Actions workflows. |


## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
[Developer's Guide](https://cliffano.github.io/developers-guide-makefile.html)
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
Build reports:

<!-- END:BUILD_REPORTS -->

Related Projects:

* [PieMaker](https://github.com/cliffano/piemaker) - Makefile for building Python packages
