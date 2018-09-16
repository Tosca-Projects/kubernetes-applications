# Yorc application
This application makes yorc running in HA on kubernetes. It create a consul server cluster and 3 replicas of yorc. It deploys an alien4cloud pod with associated service (LoadBalancer)

## How to deploy it 

Clone this repo.
```
git clone https://github.com/ystia/kubernetes-applications.git
cd yorc
```
Create secret containing your yorc configuration (you can edit it before if you want).
```
kubectl create secret generic yorc-conf --from-file config.yorc.yaml 
```
Create consul statefulSet and service.
```
kubectl create -f consul.yaml
```
IMPORTANT : replace "default" in the PersistentVolume section by your actual namespace
Create NFS deployment and service. 
```
kubectl create -f nfs.yaml
```
Create yorc deployment and service.
```
kubectl create -f yorc.yaml
```
Create alien deployment and service.
```
kubectl create -f alien.yaml
```

## Uses 
Once deployed, you can access alien with the public IP given by the loadBalancer. 
Then, you can upload yorcA4Cplugin and configure yorc orchestrator with the adress : `http://svc-yorc:8800`
## Tear down :

Launch clean.sh script.
```
./clean.sh
```