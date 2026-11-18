"""Configuration loader.
"""
import yaml
from .logger import init

def load(conf_file: str) -> dict:
    """Load configuration values from file.

    :param conf_file: Path to the YAML configuration file.
    :returns: Configuration values parsed from the file.
    :raises FileNotFoundError: If the configuration file does not exist.
    """

    logger = init()
    logger.info(f'Loading configuration file {conf_file}')

    conf = {}
    with open(conf_file, 'r', encoding='utf-8') as stream:
        conf = yaml.safe_load(stream)

    return conf
