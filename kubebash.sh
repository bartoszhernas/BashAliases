#!/bin/bash
DJANGO_POD_NAME=$(kubectl get pods | grep Running | grep ${1}-service -m 1 | awk '{print $1}' )
kubectl exec ${DJANGO_POD_NAME} -c ${1}-django -it -- bash