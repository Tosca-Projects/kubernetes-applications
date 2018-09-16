#!/bin/sh
kubectl delete deployment deploy-alien
kubectl delete service svc-alien
kubectl delete deployment deploy-yorc
kubectl delete service svc-yorc
kubectl delete secret yorc-conf
kubectl delete persistentvolumeclaim nfs
kubectl delete service svc-nfs-server
kubectl delete deployment deploy-nfs-server
kubectl delete persistentvolumeclaim nfs-vol-claim
kubectl delete persistentvolume nfs
kubectl delete statefulset sfs-consul
kubectl delete service svc-consul
kubectl delete persistentvolumeclaim data-sfs-consul-0 data-sfs-consul-1 data-sfs-consul-2
