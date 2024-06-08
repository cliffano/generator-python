# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring,duplicate-code,too-many-locals
from unittest.mock import patch
import unittest.mock
import unittest
from {{ project_id }} import Display

class Test{{ project_name }}(unittest.TestCase):

    @patch('{{ project_id }}.load')
    @patch('{{ project_id }}.init')
    def test_display_with_lower_non_reverse( # pylint: disable=too-many-arguments
            self,
            func_init,
            func_load):

        mock_logger = unittest.mock.Mock()

        func_init.return_value = mock_logger
        func_load.return_value = {
            'text': 'Hello World'
        }

        display = Display(conf_file='{{ project_id }}.yaml')
        text = display.format(reverse=False, transformation='lower')
        assert text == 'hello world'

    @patch('{{ project_id }}.load')
    @patch('{{ project_id }}.init')
    def test_display_with_upper_reverse( # pylint: disable=too-many-arguments
            self,
            func_init,
            func_load):

        mock_logger = unittest.mock.Mock()

        func_init.return_value = mock_logger
        func_load.return_value = {
            'text': 'Hello World'
        }

        display = Display(conf_file='{{ project_id }}.yaml')
        text = display.format(reverse=True, transformation='upper')
        assert text == 'DLROW OLLEH'
