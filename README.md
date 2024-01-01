# Ansible_Jmeter_demo

### It is a simple example of how to use Ansible to set VM for a Jmeter performance test

# Ansible installation:

[Guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

# Ansible folder 
- used for storing Ansible playbook files 
- to run ansible please make the next steps:
1. set your values into ansible/hosts.ini
2. execute the next command:
```
ansible-playbook -i ansible/hosts.ini 000-setup-playbook.yml
```
