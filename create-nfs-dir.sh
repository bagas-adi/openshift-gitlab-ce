#!/bin/bash

NFS_PATH=/openshift-gitlab/$1

mkdir -p $NFS_PATH
chmod 777 $NFS_PATH
chown nfsnobody. $NFS_PATH
ls -ilR $NFS_PATH

echo "$NFS_PATH 192.168.1.0/24(rw,all_squash,async)" >> /etc/exports
cat /etc/exports
