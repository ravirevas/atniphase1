#!/usr/bin/env bash

cd $ATNI_REPO/parsers
./run_genband_parser.sh /etl/gtt/genband/staging/

cd $ATNI_REPO/shell_scripts/genband/

./refresh_genband_tables.sh
