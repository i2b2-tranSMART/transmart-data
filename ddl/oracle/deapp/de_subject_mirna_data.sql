--
-- Type: TABLE; Owner: DEAPP; Name: DE_SUBJECT_MIRNA_DATA
--
 CREATE TABLE "DEAPP"."DE_SUBJECT_MIRNA_DATA"
  (	"TRIAL_SOURCE" VARCHAR2(200 BYTE),
"TRIAL_NAME" VARCHAR2(50 BYTE),
"ASSAY_ID" NUMBER(18,0),
"PATIENT_ID" NUMBER(18,0),
"RAW_INTENSITY" NUMBER,
"LOG_INTENSITY" NUMBER,
"PROBESET_ID" NUMBER(38,0),
"ZSCORE" NUMBER(18,9),
 PRIMARY KEY ("ASSAY_ID", "PROBESET_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS LOGGING
 TABLESPACE "TRANSMART" ;
