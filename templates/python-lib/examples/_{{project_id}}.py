# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring,duplicate-code,too-many-locals
from {{project_id}} import Display

display = Display(conf_files=['{{project_id}}.yaml'])
text = display.format(reverse=False, transformation='lower')
print(text)