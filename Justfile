@k3s:
    just k3s-main k3s-node

@k3s-main:
    ansible-playbook -k -i inventory.yml playbooks/k3s/main/playbook.yml

@k3s-node:
    ansible-playbook -k -i inventory.yml playbooks/k3s/node/playbook.yml

@docker:
    ansible-playbook -k -i inventory.yml playbooks/docker/playbook.yml

@iot-temp:
    ansible-playbook -k -i inventory.yml playbooks/iot-temp/playbook.yml
