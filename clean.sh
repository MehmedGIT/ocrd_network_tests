#!/usr/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

rm -Rf ./ocrd_network_logs
rm -Rf ./ocrd_network_sockets
rm -Rf ./ws29/data/OCR-D-*
git restore $SCRIPT_DIR/ws29/data/mets.xml
