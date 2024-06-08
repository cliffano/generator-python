# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring,duplicate-code,too-many-locals
from unittest.mock import patch
import unittest.mock
import unittest
from click.testing import CliRunner
from {{ project_id }} import display
from {{ project_id }} import cli

class Test{{ project_name }}(unittest.TestCase):

    @patch('{{ project_id }}.load')
    @patch('{{ project_id }}.init')
    def test_display( # pylint: disable=too-many-arguments
            self,
            func_init,
            func_load):

        mock_logger = unittest.mock.Mock()

        func_init.return_value = mock_logger
        func_load.return_value = {
            'text': 'Hello World'
        }

        display(conf_file='{{ project_id }}.yaml', reverse=False, transformation='lower')

    @patch('{{ project_id }}.load')
    @patch('{{ project_id }}.init')
    def test_display_with_non_default_args( # pylint: disable=too-many-arguments
            self,
            func_init,
            func_load):

        mock_logger = unittest.mock.Mock()

        func_init.return_value = mock_logger
        func_load.return_value = {
            'text': 'Hello World'
        }

        display(conf_file='{{ project_id }}.yaml', reverse=True, transformation='upper')

    @patch('{{ project_id }}.display')
    def test_cli( # pylint: disable=too-many-arguments
            self,
            func_display):

        func_display.return_value = None

        runner = CliRunner()
        result = runner.invoke(cli, [
            '--conf-file',
            '{{ project_id }}.yaml',
            '--reverse',
            '--transformation',
            'lower'
        ])
        assert not result.exception
        assert result.exit_code == 0
        assert result.output == ''

        # should delegate call to display
        func_display.assert_called_once_with('{{ project_id }}.yaml', True, 'lower')
