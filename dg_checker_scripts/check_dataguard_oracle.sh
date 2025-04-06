#!/bin/bash
# check_dataguard_oracle.sh

ORACLE_SID=BOTICADB19C
. /home/oracle/.bash_profile

echo "Verificando MRP0 en standby..."
sqlplus -s / as sysdba <<EOF
SET PAGESIZE 0 FEEDBACK OFF VERIFY OFF HEADING OFF ECHO OFF
SELECT 'MRP0 status: ' || status FROM v$managed_standby WHERE process = 'MRP0';
EOF

echo -e "\nVerificando destino de standby (dest_id=2)..."
sqlplus -s / as sysdba <<EOF
SET LINES 200
COL destination FOR A30
COL recovery_mode FOR A30
SELECT destination, status, recovery_mode FROM v$archive_dest_status WHERE dest_id = 2;
EOF
