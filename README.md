# Ansible bootstrap role

This is an [Ansible](http://www.ansible.com) role to bootstrap a host with the minimum requirements to run ansible installing python and adding ansible main and become user on the host. The role variables allows the specification of the authentication information necessary to acomplish the bootstrap.

The role is integrated with `amtega.authorized_keys` role in order to bootstrap SSH key pairs. See [amtega.authorized_keys](https://galaxy.ansible.com/amtega/authorized_keys) documentation for details.

## Role Variables

A list of all the default variables for this role is available in `defaults/main.yml`.

## Modules

The role provides these modules:

- bootstrap_shadow_facts: get remote encrypted shadow password information for a set of users.

## Tests

The role provides these tests:

- bootstrap_shadow_match: test if given a clear password match a shadow ecnrypted password (shadow password information can be obtanied using bootstrap_shadow_facts module described previously)

## Example Playbook

This is an example playbook:

```yaml
---

- hosts: all
  vars:
    bootstrap_ansible_user: root
    bootstrap_ansible_password: mypassword
    authorized_keys:
      - comment: Test key pair
        key: "{{ lookup('file', '/root/id_rsa.pub') }}"
        state: present
  roles:
    - amtega.bootstrap
```

## Testing

Tests are based on [molecule with vagrant virtual machines](https://molecule.readthedocs.io/en/latest/installation.html).

```shell
cd amtega.bootstrap

molecule test
```

## License

Copyright (C) 2020 AMTEGA - Xunta de Galicia

This role is free software: you can redistribute it and/or modify it under the terms of:

GNU General Public License version 3, or (at your option) any later version; or the European Union Public License, either Version 1.2 or – as soon they will be approved by the European Commission ­subsequent versions of the EUPL.

This role is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details or European Union Public License for more details.

## Author Information

- Juan Antonio Valiño García.
