ALTER TABLE ETABLISS
  ADD (
      ET_ADRESSE1 nvarchar(35) DEFAULT NULL,
      ET_ADRESSE2 nvarchar(35) DEFAULT NULL,
      ET_ADRESSE3 nvarchar(35) DEFAULT NULL,
      ET_TELEPHONE nvarchar(25) DEFAULT NULL, 
      ET_VILLE nvarchar(35) DEFAULT NULL,
      ET_CODEPOSTAL nvarchar(35) DEFAULT NULL
  );