#!/bin/bash
#
# Force convert table to TokuDB

if [[ -z "${1}" ]]; then
  echo "Please provide database name"
  exit 1
fi

for t in $(mysql --batch --skip-column-names "${1}" -e "SHOW TABLES"); do
  mysql "${1}" -e "ALTER TABLE \`${t}\` ENGINE=TokuDB \`COMPRESSION\`=TOKUDB_LZMA ROW_FORMAT=DEFAULT KEY_BLOCK_SIZE=0;"
done