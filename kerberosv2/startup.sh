#! /bin/bash
###############
/opt/docker/install.sh 
/usr/sbin/kadmind -nofork
/usr/sbin/krb5kdc 

