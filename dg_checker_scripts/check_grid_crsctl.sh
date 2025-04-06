#!/bin/bash
# check_grid_crsctl.sh

. /home/grid/.bash_profile

echo "Estado de bases de datos en Clusterware:"
crsctl stat res -w "TYPE = ora.database.type" -t | grep -Ei 'boticadb'
