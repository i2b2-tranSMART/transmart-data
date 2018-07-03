--
-- Name: set_bio_data_uid_path(); Type: FUNCTION; Schema: tm_cz; Owner: -
--
CREATE FUNCTION set_bio_data_uid_path() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE

 -- jobRunID CONTROL.SYSTEM_JOB_RUN.JOB_RUN_ID%TYPE;
 -- jobStepID CONTROL.SYSTEM_JOB_STEP.JOB_STEP_ID%TYPE;
--CREATE or REPLACE  SYNONYM genego for pictor.genego;

BEGIN

-------------------------------------------------------------------------------
-- Loads data from PICTOR into biomart_LZ
--  emt@20090310
--------------------------------------------------------------------------------
  --jobrunid := control.insert_system_job_run('LoadGeneGOPathways', 'Load All Pathways from GENEGO in PICTOR');



  --jobStepID := control.insert_system_job_step(jobRunID, 'Insert disease pathways into bio_marker for GENEGO disease pathways'
  --, 'Insert disease pathways into bio_marker for GENEGO disease pathways', 22);

  delete from biomart.bio_data_uid where unique_id in
                    (select biomarker_pathway_uid(primary_source_code, primary_external_id)
                    from bio_marker);
  delete from biomart.bio_data_uid where unique_id in
                    (select biomarker_gene_uid(primary_external_id)
                    from bio_marker);
  insert into biomart.bio_data_uid(
                    bio_data_id, unique_id, bio_data_type)
                    select
                    bio_marker_id
                    , biomarker_pathway_uid(primary_source_code, primary_external_id)
                    , 'BIO_MARKER.PATHWAY'
                    from bio_marker
                    where bio_marker_type='PATHWAY'
                    and not exists
                      (select 1 from biomart.bio_data_uid
                      where biomarker_pathway_uid(bio_marker.primary_source_code, bio_marker.primary_external_id) =
                      bio_data_uid.unique_id);
  insert into biomart.bio_data_uid(
                    bio_data_id, unique_id, bio_data_type)
                    select
                    bio_marker_id
                    , biomarker_gene_uid(primary_external_id)
                    , 'BIO_MARKER.GENE'
                    from bio_marker
                    where bio_marker_type='GENE'
                    and not exists
                      (select 1 from biomart.bio_data_uid
                      where biomarker_gene_uid(bio_marker.primary_external_id) = bio_data_uid.unique_id);

end;
 
$$;

