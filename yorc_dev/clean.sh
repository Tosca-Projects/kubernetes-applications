#!/bin/sh
kubectl delete deployment deploy-yorc
kubectl delete service svc-yorc
kubectl delete secret yorc-conf