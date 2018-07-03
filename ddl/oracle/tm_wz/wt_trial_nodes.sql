--
-- Type: TABLE; Owner: TM_WZ; Name: WT_TRIAL_NODES
--
 CREATE TABLE "TM_WZ"."WT_TRIAL_NODES" 
  (	"LEAF_NODE" VARCHAR2(4000 BYTE), 
"CATEGORY_CD" VARCHAR2(250 BYTE), 
"VISIT_NAME" VARCHAR2(100 BYTE), 
"SAMPLE_TYPE" VARCHAR2(100 BYTE), 
"DATA_LABEL" VARCHAR2(500 BYTE), 
"NODE_NAME" VARCHAR2(500 BYTE), 
"DATA_VALUE" VARCHAR2(500 BYTE), 
"DATA_TYPE" VARCHAR2(20 BYTE), 
"DATA_LABEL_CTRL_VOCAB_CODE" VARCHAR2(500 BYTE), 
"DATA_VALUE_CTRL_VOCAB_CODE" VARCHAR2(500 BYTE), 
"DATA_LABEL_COMPONENTS" VARCHAR2(1000 BYTE), 
"LINK_TYPE" VARCHAR2(50 BYTE), 
"OBS_STRING" VARCHAR2(100 BYTE), 
"VALUETYPE_CD" VARCHAR2(50 BYTE), 
"REC_NUM" NUMBER(18,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

--
-- Type: INDEX; Owner: TM_WZ; Name: IDX_WT_TRIALNODES
--
CREATE INDEX "TM_WZ"."IDX_WT_TRIALNODES" ON "TM_WZ"."WT_TRIAL_NODES" ("LEAF_NODE", "NODE_NAME")
TABLESPACE "INDX" ;

--
-- Type: INDEX; Owner: TM_WZ; Name: IDX_WTN_LOAD_CLINICAL
--
CREATE INDEX "TM_WZ"."IDX_WTN_LOAD_CLINICAL" ON "TM_WZ"."WT_TRIAL_NODES" ("LEAF_NODE", "CATEGORY_CD", "DATA_LABEL")
TABLESPACE "INDX" ;

