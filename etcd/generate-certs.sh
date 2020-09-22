#!/bin/bash

cfssl gencert --initca=true certs/config/etcd-root-ca-csr.json | cfssljson --bare certs/etcd-root-ca

cfssl gencert \
  --ca certs/etcd-root-ca.pem \
  --ca-key certs/etcd-root-ca-key.pem \
  --config certs/config/etcd-gencert.json \
  certs/config/etcd1-ca-csr.json | cfssljson --bare certs/etcd1

cfssl gencert \
  --ca certs/etcd-root-ca.pem \
  --ca-key certs/etcd-root-ca-key.pem \
  --config certs/config/etcd-gencert.json \
  certs/config/etcd2-ca-csr.json | cfssljson --bare certs/etcd2

cfssl gencert \
  --ca certs/etcd-root-ca.pem \
  --ca-key certs/etcd-root-ca-key.pem \
  --config certs/config/etcd-gencert.json \
  certs/config/etcd3-ca-csr.json | cfssljson --bare certs/etcd3

cfssl gencert \
  --ca certs/etcd-root-ca.pem \
  --ca-key certs/etcd-root-ca-key.pem \
  --config certs/config/etcd-gencert.json \
  certs/config/client-root-user-ca-csr.json | cfssljson --bare certs/client-root-user

cfssl gencert \
  --ca certs/etcd-root-ca.pem \
  --ca-key certs/etcd-root-ca-key.pem \
  --config certs/config/etcd-gencert.json \
  certs/config/client-vault-user-ca-csr.json | cfssljson --bare certs/client-vault-user

echo "Certificate was ganerated successfully.... Please run docker-compose up -d"
