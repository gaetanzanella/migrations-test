ALTER TABLE PIECE
  ADD (
    GP_STATUTPIECE nvarchar(40) DEFAULT NULL
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
            'materials',
            'customerOrders'
            ) NOT NULL;