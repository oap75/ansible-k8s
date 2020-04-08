#!/bin/bash


cfssl gencert -initca /opt/ssl/ca-csr.json | cfssljson -bare /opt/ssl/ca

cfssl gencert -ca=/opt/ssl/ca.pem -ca-key=/opt/ssl/ca-key.pem -config=/opt/ssl/ca-config.json -profile=kubernetes /opt/ssl/etcd-csr.json | cfssljson -bare /opt/ssl/etcd