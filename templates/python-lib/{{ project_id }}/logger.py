"""Logger for {{ project_name }}."""
from conflog import Conflog

def init():
    """Initialize logger.
    """

    cfl = Conflog(
        conf_dict={
            'level': 'info',
            'format': '[{{ project_id }}] %(levelname)s %(message)s'
        }
    )

    return cfl.get_logger(__name__)
