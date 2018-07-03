--
-- views in _cross.sql excluded from synonyms and permissions
--
GRANT SELECT on  SEARCHAPP.SEARCH_BIO_MKR_CORREL_VIEW to BIOMART_USER;

CREATE OR REPLACE SYNONYM "BIOMART_USER"."SEARCH_BIO_MKR_CORREL_VIEW" for "SEARCHAPP"."SEARCH_BIO_MKR_CORREL_VIEW";

GRANT SELECT on  AMAPP.AM_TAG_DISPLAY_VW to BIOMART_USER;

CREATE OR REPLACE SYNONYM "BIOMART_USER"."AM_TAG_DISPLAY_VW" for "AMAPP"."AM_TAG_DISPLAY_VW";


