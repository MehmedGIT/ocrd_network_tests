#!/usr/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

SERVER_ENDPOINT=localhost:8080/workflow/run
METS_PATH=$SCRIPT_DIR/ws29/data/mets.xml
WORKFLOW_PATH=$SCRIPT_DIR/workflow.txt
PAGE_RANGE=PHYS_0007..PHYS_0012
AGENT_TYPE=server

curl -v -X POST "$SERVER_ENDPOINT?mets_path=$METS_PATH&page_id=$PAGE_RANGE&page_wise=True&agent_type=$AGENT_TYPE" \
-H "Content-type: multipart/form-data" \
-F "workflow=@$WORKFLOW_PATH"
