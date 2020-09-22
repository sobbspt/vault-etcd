## Useful commands

### add user root
```
ETCDCTL=3 etcdctl --endpoints "https://etcd1:2379,https://etcd2:2379,https://etcd3:2379" --ca-file /data/etcd/certs/etcd-root-ca.pem --key-file /data/etcd/certs/client-root-user-key.pem --cert-file /data/etcd/certs/client-root-user.pem user add root
```

### enable auth
```
ETCDCTL=3 etcdctl --endpoints "https://etcd1:2379,https://etcd2:2379,https://etcd3:2379" --ca-file /data/etcd/certs/etcd-root-ca.pem --key-file /data/etcd/certs/client-root-user-key.pem --cert-file /data/etcd/certs/client-root-user.pem auth enable
```

### add user vault
```
ETCDCTL=3 etcdctl --endpoints "https://etcd1:2379,https://etcd2:2379,https://etcd3:2379" --ca-file /data/etcd/certs/etcd-root-ca.pem --key-file /data/etcd/certs/client-root-user-key.pem --cert-file /data/etcd/certs/client-root-user.pem user add vault
```

### add role
```
ETCDCTL=3 etcdctl --endpoints "https://etcd1:2379,https://etcd2:2379,https://etcd3:2379" --ca-file /data/etcd/certs/etcd-root-ca.pem --key-file /data/etcd/certs/client-root-user-key.pem --cert-file /data/etcd/certs/client-root-user.pem role add vault-role
```

### assign user to roles
```
ETCDCTL=3 etcdctl --endpoints "https://etcd1:2379,https://etcd2:2379,https://etcd3:2379" --ca-file /data/etcd/certs/etcd-root-ca.pem --key-file /data/etcd/certs/client-root-user-key.pem --cert-file /data/etcd/certs/client-root-user.pem user grant vault --roles vault-role
```

### grant permission to role
```
ETCDCTL=3 etcdctl --endpoints "https://etcd1:2379,https://etcd2:2379,https://etcd3:2379" --ca-file /data/etcd/certs/etcd-root-ca.pem --key-file /data/etcd/certs/client-root-user-key.pem --cert-file /data/etcd/certs/client-root-user.pem role grant vault-role --read --path /a/*
```
