#!/bin/bash
#oc create namespace hana-gitlab
oc adm policy add-scc-to-user anyuid -z default -n hana-gitlab
oc adm policy add-scc-to-user privileged -z default -n hana-gitlab
oc adm policy add-scc-to-user anyuid -z gitlab-user -n hana-gitlab
oc adm policy add-scc-to-user privileged -z gitlab-user -n hana-gitlab
oc adm policy add-scc-to-user privileged -z gitlab-runner-user -n hana-gitlab

