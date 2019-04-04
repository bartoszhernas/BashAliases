#!/bin/bash
NAME=stampapi
DJANGO_POD_NAME=$(kubectl get pods | grep Running | grep ${NAME}-service -m 1 | awk '{print $1}' )
kubectl exec ${DJANGO_POD_NAME} -c ${NAME}-django -it -- bash