#!/bin/bash
[ -f native.zip ] || curl -L https://github.com/warrenfalk/rocksdb-sharp/releases/download/v5.4.6.9/native-6e05979.zip --output native.zip
[ -f native.zip ] && { mkdir -p RocksDbNative/native; cd RocksDbNative/native && unzip ../../native.zip; }
[ -f native.zip -a -f native/amd64/librocksdb.so ] && rm native.zip
