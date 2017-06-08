# Ansible bootstrap role

This is an [Ansible](http://www.ansible.com) role to bootstrap a host with the minimum requirements to run ansible installing python and adding ansible main and become user on the host. The role variables allows te specification of the authentication information necessary to acomplish the bootstrap.

The role is designed to be extended easly loading operating system dependant variables and tasks:

- The role dinamically loads variables applicable to all operating systems from `vars/main.yml` and the specific operating system ones from `vars/{{ ansible_distribution | lower }}*.yml`.

- The role dinamically loads taks applicable to all operating systems from `tasks/python/main.yml` and `tasks/users/main.yml`

- The specific operating system ones are dinamically loaded from the previous tasks dirs looking at the files `{{ ansible_distribution | lower }}*.yml`.

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
