Testing openstack on ESXi
=========================

Installing openstack core components using ansible and vagrant on ESXi as hypervisor

Requirements
------------

This role requires [Ansible 2.6.0](https://docs.ansible.com/ansible/devel/roadmap/ROADMAP_2_6.html) or higher.

You can simply use pip to install (and define) a stable version:

```sh
pip install ansible==2.6.3
```

Also you need to have vagrant plugin for `vsphere` installed  
```sh
vagrant plugin install vagrant-vmware-esxi
vagrant plugin list
vagrant version
 ```

Role Variables
--------------

```sh
ansible-galaxy install pyguy.esxi-openstack
```
to run vagrant test:
```sh
vagrant up --provider=vmware_esxi
```
Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: pyguy.esxi-openstack }

License
-------

GPLv2

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
