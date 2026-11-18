# pylint: disable=too-many-locals,too-few-public-methods
"""
{{project_id}}
{{{underline "=" project_id.length}}}
... .
"""
from .config import load
from .logger import init
from .models.message import Message

class Display():
    """A class for managing the display of text from configuration file.

    :param conf_file: Path to the YAML configuration file.
    """

    def __init__(self, conf_file: str) -> None:
        logger = init()

        logger.info(f'Loading configuration file {conf_file}')
        #: Configuration values loaded from the configuration file.
        self.conf = load(conf_file)

    def format(self, reverse: bool, transformation: str) -> str:
        """Format text from configuration file with transformations.

        :param reverse: When true, the text is reversed.
        :param transformation: Text transformation type, ``lower`` or
            ``upper``; any other value leaves the case unchanged.
        :returns: Formatted message text.
        """

        message = Message(self.conf['text'])

        if reverse:
            message.reverse()

        if transformation == 'lower':
            message.lower()
        elif transformation == 'upper':
            message.upper()

        return message.get_text()
