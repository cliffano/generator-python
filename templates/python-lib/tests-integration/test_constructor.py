# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring,duplicate-code,too-many-locals
import unittest
from {{project_id}} import Display

class TestConstructor(unittest.TestCase):

    def test_constructor_with_lower_non_reverse(self):
        display = Display(conf_file='examples/{{project_id}}.yaml')
        text = display.format(reverse=False, transformation='lower')
        assert text == 'hello world'

    def test_constructor_with_upper_reverse(self):
        display = Display(conf_file='examples/{{project_id}}.yaml')
        text = display.format(reverse=True, transformation='upper')
        assert text == 'DLROW OLLEH'
