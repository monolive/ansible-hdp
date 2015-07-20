# ansible-hdp
Ansible recipe to install HDP ( Hortonworks Data Platform) 

Currently, it's working with single DB - MySQL. The blueprint are not exporting password. The installation will initially fail but it will be overwritten following the installation. 

# How To 
Configure repositories and other variables in group_vars/all 

Add your blueprint in blueprints folder

# TODO
- Implement postgresql
- Implement kerberos
- Implement Ranger
- Generate a host map based upon hosts config
