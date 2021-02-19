#!/bin/bash

oc new-project qemu-user-static
oc create sa qemu-user-static -n qemu-user-static
oc adm policy add-scc-to-user anyuid -z qemu-user-static -n qemu-user-static
oc adm policy add-scc-to-user privileged -z qemu-user-static -n qemu-user-static
oc apply -f deploy/qemu-user-static-daemonset.yaml -n qemu-user-static
oc apply -f deploy/qemu-user-static-imagestream.yaml -n qemu-user-static