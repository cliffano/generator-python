<!-- BEGIN:AVATAR -->
To be populated by generator-python python-lib-partials
<!-- END:AVATAR -->

<!-- BEGIN:BADGES -->
To be populated by generator-python python-lib-partials
<!-- END:BADGES -->

# {{project_name}}

{{project_name}} is a {{project_desc}} .

## Installation

    pip3 install {{project_id}}

## Usage

Create a configuration file, e.g. `{{project_id}}.yaml`:

    ---
    text: Hello World

Create {{project_id}} object and run it:

    from {{project_id}} import Display

    display = Display(conf_files=['{{project_id}}.yaml'])
    text = display.format(reverse=False, transformation='lower')
    print(text)

## Configuration

These are the configuration properties that you can use with `{{project_id}}` CLI.
Some example configuration files are available on [examples](examples) folder.

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| `text` | String | The message text | Hello World |

## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
To be populated by generator-python python-lib-partials
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
To be populated by generator-python python-lib-partials
<!-- END:BUILD_REPORTS -->
