#!/bin/bash
NAME=hgsnailsmonitor
DJANGO_POD_NAME=$(kubectl get -n hernas pods | grep Running | grep ${NAME}-service -m 1 | awk '{print $1}' )
kubectl -n hernas exec ${DJANGO_POD_NAME} -c ${NAME}-django -it -- sh
