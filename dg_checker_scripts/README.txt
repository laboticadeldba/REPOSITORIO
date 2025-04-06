# Oracle Data Guard & Grid Verifier Scripts

Este paquete contiene dos scripts para validar el estado de Oracle Data Guard y recursos en Oracle Grid Infrastructure (CRS).

## 📜 Contenido

- `check_dataguard_oracle.sh`: Ejecutar con usuario `oracle`. Verifica:
  - Estado del proceso `MRP0` (Managed Recovery Process)
  - Estado del destino de archivado a standby (`LOG_ARCHIVE_DEST_2`)

- `check_grid_crsctl.sh`: Ejecutar con usuario `grid`. Verifica:
  - Estado de las bases de datos registradas en Oracle Clusterware (CRS)

## ✅ Recomendaciones

- Agregar permisos de ejecución:
  ```bash
  chmod +x check_*.sh
  ```

- Ejecutar cada script con su respectiva cuenta (`oracle` o `grid`).

- Integrarlos en tareas programadas (`cron`) o herramientas de monitoreo para ejecución periódica.

## 🌐 Más información

Visita [www.laboticadeldba.com](https://www.laboticadeldba.com) para más guías técnicas.
