# Ansible bootstrap role

This is an [Ansible](http://www.ansible.com) role to bootstrap a host with the minimum requirements to run ansible installing python and adding ansible main and become user on the host. The role variables allows the specification of the authentication information necessary to acomplish the bootstrap.

## Requirements

- Ansible >= 2.3

## Role Variables

A list of all the default variables for this role is available in `defaults/main.yml`.

## Dependencies

None.

## Example Playbook

This is an example playbook:

```yaml
---

- hosts: all
  vars:
    bootstrap_ansible_user: root
    bootstrap_ansible_password: mypassword
  roles:
    - bootstrap
```

## Testing

Test are based on docker containers. You can run the tests with the following commands:

```shell
$ cd bootstrap/test
$ ansible-playbook main.yml
```

If you have docker engine configured you can avoid running dependant 'docker_engine' role (that usually requries root privileges) with the following commands:

```shell
$ cd bootstrap/test
$ ansible-playbook --skip-tags "role::docker_engine" main.yml
```

## License

Not defined.

## Author Information

- Juan Antonio Valiño García ([juanval@edu.xunta.es](mailto:juanval@edu.xunta.es)). Amtega - Xunta de Galicia
