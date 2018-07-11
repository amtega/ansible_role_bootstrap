# Make coding more python3-ish
from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from crypt import crypt
from spwd import getspnam


def bootstrap_password_match(username, password):
    """Test if given user/password is valid.

    Args:
        username (string): username to check.
        password (string): password to check in clear text.

    Returns:
        bool: true if username/password is valid or false if not.
    """
    try:
        cryptedpasswd = getspnam(username)[1]
        return crypt(password, cryptedpasswd) == cryptedpasswd
    except:
        return False


class TestModule:
    """ Ansible tests """

    def tests(self):
        return {
            'bootstrap_password_match': bootstrap_password_match,
        }
