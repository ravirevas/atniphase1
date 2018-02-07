#!/usr/bin/env bash

cd $ATNI_REPO/parsers
./run_zteumts_parser.sh /etl/commnet/zteumts/staging/temp/

cd $ATNI_REPO/shell_scripts/zteumts/

./refresh_zteumts_tables.sh