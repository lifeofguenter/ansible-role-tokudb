[![Build Status](https://travis-ci.org/lifeofguenter/ansible-role-tokudb.svg?branch=master)](https://travis-ci.org/lifeofguenter/ansible-role-tokudb)

# Ansible Role for TokuDB

This ansible role will install TokuDB (via MariaDB), apply some "sane" production settings and fully disable InnoDB.
If munin and/or fail2ban are installed, additional tasks will run accordingly to activate them for MySQL as well.

## Requirements

_None._

## Role Variables

```
mysql_user: admin
```

```
mysql_password: a-secure-password
```

## Dependencies

_None._

## Example Playbook

```
- hosts: servers
  roles:
    - { role: lifeofguenter.tokudb }
```

## License

MIT

## Author Information

Gunter Grodotzki <gunter@grodotzki.co.za>
