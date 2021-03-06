#! /bin/bash
#############
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/kadm5.conf /var/kerberos/kadm5.conf

/usr/sbin/kdb5_util create -s -P masterkey

kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw kmarta marta"
kadmin.local -q "addprinc -pw kmarta marta/admin"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw ksuperuser superuser"
kadmin.local -q "addprinc -pw kjulia julia"



