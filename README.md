# mysql-client-docker

A mysql-client docker image for k8s deployment.

## Running locally

### Connect to a MySQL database

``` bash
docker run --rm -it --name mysql-client andreswebs/mysql-client -u <user> -p<password> -h <host_ip_address> -P <port> -D <database>
```

(Notice that there is no space between `-p` and the password string.)

To get a shell inside the running container:

``` bash
docker exec -it mysql-client /bin/sh
```


## Running on kubernetes

### Prerequisites

You need a working k8s cluster and `kubectl` configured.

### Deploy the objects:

``` bash
kubectl apply -f mysql-client.yml
```

### Attach to the pod:

``` bash
kubectl attach --namespace=mysql-client -ti mysql-client
```

### Connect to a MySQL database:

``` bash
mysql -u <user> -p<password> -h <host_ip_address> -P <port> -D <database>
```

(Notice that there is no space between `-p` and the password string.)

## Authors

**Andre Silva** 

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
