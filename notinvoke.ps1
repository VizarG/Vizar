


Invoke-Sqlcmd -ServerInstance 169.254.17.117 -Username 'sa' -Password $a   -Query "


USE master;  
GO  
IF EXISTS(select * from sys.databases where name= 'HumanResources' or  name= 'InternetSales') 

	DROP DATABASE HumanResources, InternetSales



ELSE

 
	CREATE DATABASE HumanResources  
ON  PRIMARY  
(NAME = 'HumanResources', FILENAME = 'E:\Data\HumanResources.mdf', SIZE = 50MB, FILEGROWTH = 5MB, MAXSIZE =  UNLIMITED   )
 
LOG ON  
(NAME = 'HumanResources_log', FILENAME = 'E:\Logs\HumanResources.ldf', SIZE = 5MB , FILEGROWTH = 1MB, MAXSIZE =  UNLIMITED   );

CREATE DATABASE InternetSales 
ON  PRIMARY  
(NAME = 'InternetSales', FILENAME = 'E:\Data\InternetSales.mdf', SIZE = 5MB, FILEGROWTH = 1MB, MAXSIZE =  UNLIMITED   ),

FILEGROUP SalesData
(NAME = 'InternetSales_data1', FILENAME = 'E:\Data\InternetSales_data1.ndf', SIZE = 100MB, FILEGROWTH = 10MB, MAXSIZE =  UNLIMITED   ),

(NAME = 'InternetSales_data22', FILENAME = 'E:\AdditionalData\InternetSales_data2.ndf', SIZE = 100MB, FILEGROWTH = 10MB, MAXSIZE =  UNLIMITED   )   

LOG ON  
(NAME = 'InternetSales_log', FILENAME = 'E:\Logs\InternetSales.ldf', SIZE = 2MB , FILEGROWTH = 200KB, MAXSIZE =  UNLIMITED   );

"


