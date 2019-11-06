freehck.add_repo
=========

Correct way to add repo and its key

Description
-----------

This role adds a repository and registers repo key into the system

Role Variables
--------------

`add_repo_url`: repo string/url (use string for debian-based distros and baseurl for rpm-based).

`add_repo_string`: alias for `add_repo_url`

`add_repo_name`: repo name, also a filename to store repo configuration

`add_repo_state`: state of the repo, `present` (default) or `absent`

`add_repo_key`: path/url to repo key, optional variable

Example
-------

    - hosts: all
      become: true
      roles:
        - role: freehck.add_repo
          add_repo_name: docker-stable
          add_repo_string: 'deb https://download.docker.com/linux/ubuntu {{ ansible_distribution_release }} stable'
          add_repo_key: 'https://download.docker.com/linux/ubuntu/gpg'

Install
-------

This role can be installed from [Ansible Galaxy](https://galaxy.ansible.com/):

`ansible-galaxy install freehck.add_repo`

License
-------

MIT

Author Information
------------------

This role was written by Dmitrii Kashin aka freehck
