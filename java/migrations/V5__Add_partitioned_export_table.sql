CREATE TABLE partitioned_exports (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     status enum('CREATED','IN_PROGRESS','DONE') NOT NULL,
     resource enum('sentTransfers', 'transferRequests', 'users', 'stores', 'products', 'stocklevels', 'stockrooms', 'zones', 'productsDescriptionsTranslations', 'productsSize') NOT NULL,
     start_index nvarchar(100) NOT NULL,
     end_index nvarchar(100) NOT NULL,
     date_done datetime DEFAULT NULL,
     PRIMARY KEY (id,start_index,end_index)
);
