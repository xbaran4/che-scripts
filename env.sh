#!/bin/sh

# shellcheck disable=SC2034
CHEDIR=/home/mvala/dev/che
CHEPLUGINREGISTRYDIR=/home/mvala/dev/che-plugin-registry
CHEDEVFILEREGISTRYDIR=/home/mvala/dev/che-devfile-registry
CHEOPERATORDIR=/home/mvala/dev/go/src/github.com/eclipse/che-operator

getKubeChePod() {
	kubectl get pods -n che | grep -P 'che-' | cut -d' ' -f1
}

getOcChePod() {
  oc get pods -n che |  grep -P 'che-[0-9a-f]*-[0-9a-z]*'| cut -d' ' -f1
}
