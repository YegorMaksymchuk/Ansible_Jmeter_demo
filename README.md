# Ansible_Jmeter_demo

### It is a simple example how to use Ansible to setup VM for Jmeter performance test

# Ansible installetion:
[Guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

# Ansible folder 
- used for storing ansible playbook files 
- to run ansible please make next steps:
1. set your values in to ansible/hosts.ini
2. execute next command:
```
ansible-playbook -i ansible/hosts.ini 000-setup-playbook.yml
```