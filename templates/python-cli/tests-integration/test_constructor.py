# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring,duplicate-code,too-many-locals
import unittest
from {{ project_id }} import display

class TestConstructor(unittest.TestCase):

    def test_constructor_with_default_args(self):
        display('examples/{{ project_id }}.yaml', False, 'lower')

    def test_constructor_with_non_default_args(self):
        display('examples/{{ project_id }}.yaml', True, 'upper')
