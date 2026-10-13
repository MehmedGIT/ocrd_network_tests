#!/usr/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

export OCRD_NETWORK_SERVER_ADDR_PROCESSING=http://localhost:8080
METS_PATH=$SCRIPT_DIR/ws29/data/mets.xml
WORKFLOW_PATH=$SCRIPT_DIR/workflow4.txt
AGENT_TYPE=worker

ocrd network client workflow run --path-to-workflow=$WORKFLOW_PATH --path-to-mets=$METS_PATH --page-wise --print-state --block
