--
-- Name: i2b2_table_defrag(); Type: FUNCTION; Schema: tm_cz; Owner: -
--
CREATE FUNCTION i2b2_table_defrag() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -------------------------------------------------------------
  -- Moves the I2B2 tables to reduce defragmentation
  -- KCR@20090527 - First Rev
  -- JEA@20090923 - Removed I2B2DEMODATA.IDX_OB_FACT_3, Oracle doesn't need to index every column like SQL Server (per Aaron A.)
  -------------------------------------------------------------
  EXECUTE 'ALTER TABLE I2B2METADATA.I2B2 MOVE';
  EXECUTE 'ALTER TABLE I2B2DEMODATA.CONCEPT_DIMENSION MOVE';
  EXECUTE 'ALTER TABLE I2B2DEMODATA.OBSERVATION_FACT MOVE';
  EXECUTE 'ALTER TABLE I2B2DEMODATA.PATIENT_DIMENSION MOVE';
  --Rebuild Indexes
  EXECUTE 'ALTER INDEX I2B2DEMODATA.OB_FACT_PK REBUILD';
  EXECUTE 'ALTER INDEX I2B2DEMODATA.IDX_OB_FACT_1 REBUILD';
  EXECUTE 'ALTER INDEX I2B2DEMODATA.IDX_OB_FACT_2 REBUILD';

  EXECUTE 'ALTER INDEX I2B2DEMODATA.IDX_CONCEPT_DIM_1 REBUILD';
  EXECUTE 'ALTER INDEX I2B2DEMODATA.IDX_CONCEPT_DIM_2 REBUILD';

  EXECUTE 'ALTER INDEX I2B2METADATA.IDX_I2B2_A REBUILD';
  EXECUTE 'ALTER INDEX I2B2METADATA.IDX_I2B2_B REBUILD';

END;







$$;
