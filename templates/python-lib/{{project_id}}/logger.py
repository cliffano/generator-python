"""Logger for {{project_name}}."""
from conflog import Conflog

def init():
    """Initialize logger.

    :returns: Logger configured with the project log format.
    """

    cfl = Conflog(
        conf_dict={
            'level': 'info',
            'format': '[{{project_id}}] %(levelname)s %(message)s'
        }
    )

    return cfl.get_logger(__name__)
