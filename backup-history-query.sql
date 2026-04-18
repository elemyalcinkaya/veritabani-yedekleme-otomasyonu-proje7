SELECT 
    bs.database_name,
    bs.backup_start_date,
    bs.backup_finish_date,
    bmf.physical_device_name,
    bs.type AS backup_type
FROM msdb.dbo.backupset bs
JOIN msdb.dbo.backupmediafamily bmf 
    ON bs.media_set_id = bmf.media_set_id
WHERE bs.database_name = 'Project1'
ORDER BY bs.backup_finish_date DESC;