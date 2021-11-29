# Kubernetes Multicast
Multicast on a local kubernets cluster.

Requires [kind](https://kind.sigs.k8s.io/), [skaffold](https://skaffold.dev/), [docker](https://docs.docker.com/get-docker/).


## Running the application
Create the cluster:
```
$ ./create-cluster.sh
```

Then run the appliation:
```
$ skaffold dev
```

To delete the cluster:
```
$ ./delete-cluster.sh
```

## Pod errors due to “too many open files”
Known issue with kind see [here](https://kind.sigs.k8s.io/docs/user/known-issues/#pod-errors-due-to-too-many-open-files).
