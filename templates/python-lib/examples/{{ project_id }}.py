# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring,duplicate-code,too-many-locals
from {{ project_id }} import {{ project_id }}

{{ project_id }} = {{ project_id }}(conf_files=['{{ project_id }}.yaml'])
print {{ project_id }}.get_format(False, 'lower')