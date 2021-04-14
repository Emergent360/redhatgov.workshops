#!/bin/bash

cluster_name=openshift4

domain_name=lab-emergent360.com

hostname=https://api.${cluster_name}.${domain_name}:6443

user_prefix=user

password=openshift

start=1
end=50
for ((i=start; i<=end; i++))
do
 oc login "${hostname}" --insecure-skip-tls-verify -u ${user_prefix}${i} -p ${password}
 oc delete project --all
 oc logout
done

