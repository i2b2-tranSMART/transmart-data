--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ANALYSIS_COHORT_XREF
--
 CREATE TABLE "BIOMART"."BIO_ANALYSIS_COHORT_XREF" 
  (	"STUDY_ID" VARCHAR2(255 BYTE), 
"COHORT_ID" VARCHAR2(255 BYTE), 
"ANALYSIS_CD" VARCHAR2(255 BYTE), 
"BIO_ASSAY_ANALYSIS_ID" NUMBER NOT NULL ENABLE,
 CONSTRAINT "BIO_ANALYSIS_COHORT_XREF_PK" PRIMARY KEY ("BIO_ASSAY_ANALYSIS_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "TRANSMART" ;
