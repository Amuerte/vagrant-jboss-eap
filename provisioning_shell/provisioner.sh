#! /bin/bash

echo "start provisoning"

chmod 600 .ssh/id_dsa

rm -rf ./provisioning
cp -Rf /vagrant/provisioning_ansible/ ./provisioning
chmod -x ./provisioning/hosts

cd ./provisioning
ansible-playbook -vvvv -i ./hosts -u vagrant ./site.yml 