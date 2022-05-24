ALTER TABLE partitioned_exports
    DROP COLUMN start_index,
    DROP COLUMN end_index;

ALTER TABLE partitioned_exports ADD cegid_area enum('EUR', 'ASS', 'AME', 'ASN', 'JAP') NOT NULL;