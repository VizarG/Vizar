



Invoke-Sqlcmd -ServerInstance 169.254.17.117 -Username 'sa' -Password $a -Query " 

SELECT name, physical_name,size,max_size,growth  
FROM sys.master_files  
WHERE database_id = DB_ID(N'tempdb'); 
go

USE master;  
GO  
ALTER DATABASE tempdb   
MODIFY FILE (NAME = tempdev, size=10240kb , filegrowth=5120kb);  
GO  
ALTER DATABASE tempdb   
MODIFY FILE (NAME = templog,  size=10240kb , filegrowth=1024kb);  
GO  
ALTER DATABASE tempdb   
MODIFY FILE (NAME = tempdev, FILENAME = 'E:\tempdb.mdf');  
GO  
ALTER DATABASE tempdb   
MODIFY FILE (NAME = templog, FILENAME = 'E:\tempdb.ldf');  
GO  



SELECT name, physical_name,size,max_size,growth  
FROM sys.master_files  
WHERE database_id = DB_ID(N'tempdb'); 
go

"


