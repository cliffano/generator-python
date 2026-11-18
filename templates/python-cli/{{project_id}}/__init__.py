# pylint: disable=too-many-locals
"""
{{project_id}}
{{{underline "=" project_id.length}}}
... .
"""
import click
from .config import load
from .logger import init
from .models.message import Message

def display(conf_file: str, reverse: bool, transformation: str) -> None:
    """Display text from configuration file.

    This is the documented entry point behind the ``cli`` command; Sphinx
    autodoc does not render Click commands.

    :param conf_file: Path to the YAML configuration file.
    :param reverse: When true, the text is reversed.
    :param transformation: Text transformation type, ``lower`` or ``upper``;
        any other value leaves the case unchanged.
    """

    logger = init()

    logger.info(f'Loading configuration file {conf_file}')
    conf = load(conf_file)
    message = Message(conf['text'])

    if reverse:
        message.reverse()

    if transformation == 'lower':
        message.lower()
    elif transformation == 'upper':
        message.upper()

    print(f'Message: {message.get_text()}')

@click.command()
@click.option('--conf-file', default='{{project_id}}.yaml', show_default=True, type=str,
              help='Configuration file path')
@click.option('--reverse', is_flag=True, default=False, show_default=True, type=bool,
              help='When reverse is enabled, message text is written in reverse')
@click.option('--transformation', default='lower', show_default=True, type=str,
              help='Message text transformation type, can be lower or upper')
@click.version_option(package_name="{{project_id}}", prog_name="{{project_id}}")
def cli(conf_file: str, reverse: bool, transformation: str) -> None:
    """{{project_desc}}"""
    display(conf_file, reverse, transformation)
