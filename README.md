# ansible-hdp
Ansible recipe to install HDP ( Hortonworks Data Platform) 

It has been tested on Azure / OpenStack.

Currently, it's working with single DB - MySQL. The blueprint are not exporting password. The installation will initially fail but it will be overwritten following the installation. 

# How To 
Configure repositories and other variables in group_vars/all 

Add your blueprint in blueprints folder. You will also need to modify the host-mapping section to reflect your env.

In case of failure, you may want to delete ambari-server package / delete /tmp/blueprint.json and /tmp/host-map.json as if they are present steps are skipped

# TODO
- Implement postgresql
- Implement kerberos
- Implement Ranger
- Generate a host map based upon hosts config
