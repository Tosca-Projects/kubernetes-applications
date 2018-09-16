# Yorc for dev and testing
This application is a single container of yorc on kubernetes, using a configuration file given in secret and exposing service with LoadBalancer.

## How to deploy it 

Clone this repo.
```
git clone https://github.com/ystia/kubernetes-applications.git
cd yorc_dev
```
Create secret containing your yorc configuration (you can edit it before if you want).
```
kubectl create secret generic yorc-conf --from-file config.yorc.yaml 
```
Create yorc deployment and service.
```
kubectl create -f yorc.yaml
```
## Tear down :

Launch clean.sh script.
```
./clean.sh
```