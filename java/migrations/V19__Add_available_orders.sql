
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
            'customerOrders',
            'availableOrders'
            ) NOT NULL;