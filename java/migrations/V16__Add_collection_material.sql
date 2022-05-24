ALTER TABLE ARTICLE
  ADD (
    GA_COLLECTION VARCHAR(6),
    GA_LIBREART4 VARCHAR(6)
  );

  ALTER TABLE partitioned_exports
    MODIFY COLUMN
        resource enum (
          'sentTransfers', 
          'transferRequests', 
          'users',
          'stores',
          'products', 
          'stocklevels', 
          'stockrooms', 
          'zones', 
          'productsDescriptionsTranslations', 
          'productsSize', 
          'sellers', 
          'userGroupAuthorizations',
          'collections',
          'materials'
          ) NOT NULL;
