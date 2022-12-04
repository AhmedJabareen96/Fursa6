### Kubernetes Final Task
This task is about kubernetes. in this task, I continerized both of Ynet-rss and Bitcoin-rate apps and ran them into kubernetes pods.
In order to get to them, I used two services, one for each container.
In addition to Ingress, which makes users' life easier.

### Requirements:
In order for everything to run, you'll need:
- Docker to create containers.
- Kubernetes for manging pods and containers.
- Minikube to run Kubernetes locally.

Running the application:
In order to run the application, use:
```bash
kubectl apply -f apps.yml
kubectl apply -f services.yml
kubectl apply -f ingress.yml
```
Using the application
use:
`kubectl get ingress`
and copy the IP address.
If you are using bash, use:
`ADDR=$(kubectl get ingress | awk 'FNR==2 {print $4}')`
To get to ynet-rss go to:
`curl $ADDR/ynet-rss/list`
to get bitcoin current rate,:
`curl $ADDR/bitcoin-rate/getNow`
to get bitcoin rate average in the last 10 minutes:
`curl $ADDR/bitcoin-rate/getAvg`