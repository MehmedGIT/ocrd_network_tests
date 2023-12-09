#!/usr/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# This is currently broken. The path of the mets server socket is different for PS and PWs
# export OCRD_NETWORK_LOGS_ROOT_DIR=$SCRIPT_DIR/ocrd_network_logs
# export OCRD_NETWORK_SOCKETS_ROOT_DIR=$SCRIPT_DIR/ocrd_network_sockets
ocrd network processing-server $SCRIPT_DIR/ps_config.yml --address "localhost:8080"
