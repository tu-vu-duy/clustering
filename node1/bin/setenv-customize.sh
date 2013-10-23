#!/bin/sh

CLUSTOR_NAME="may45"; #change this name by your clustor
OLPWD=$PWD;
cd $CATALINA_BASE;
cd ../
DATA_DIR="$PWD";
cd "$OLPWD";
EXO_DATA_DIR="$DATA_DIR/gatein-data";
EXO_PROFILES="all,cluster";
CATALINA_OPTS="${CATALINA_OPTS} -Djgroups.tcpping.initial_host=127.0.0.1[7800],127.0.0.1[7801] -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=./ -Xmx2g -XX:MaxPermSize=512m -Xss512k  -Djgroups.bind_addr=127.0.0.1 -Dinfinispan-cluster-name=$CLUSTOR_NAME -Djgroups.tcpping.num_initial_members=2 -Djgroups.tcp.bind_port=7800"
export EXO_DATA_DIR EXO_PROFILES;
