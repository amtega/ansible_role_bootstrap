# Make coding more python3-ish
from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from crypt import crypt


def bootstrap_shadow_match(clear_password, shadow_password):
    """Test if given a clear password match with a shadow ecnrypted password.

    Args:
        clear_password (string): clear password to match
        shadow_password (string): encrypted shadow password to match with

    Returns:
        bool: true if both passwords match or false if not.
    """
    try:
        return crypt(clear_password, shadow_password) == shadow_password
    except Exception:
        return False


class TestModule:
    """ Ansible tests """

    def tests(self):
        return {
            'bootstrap_shadow_match': bootstrap_shadow_match
        }
