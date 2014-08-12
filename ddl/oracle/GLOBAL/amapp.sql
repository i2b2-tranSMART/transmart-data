--
-- Type: USER; Name: AMAPP
--
CREATE USER "AMAPP" IDENTIFIED BY VALUES 'S:9571FFB20AE27E19978ABB02101BD2F2057143B93D977AC576CC50197513;02955D58870FE54F'
   DEFAULT TABLESPACE "TRANSMART"
   TEMPORARY TABLESPACE "TEMP";
--
-- Type: ROLE_GRANT; Name: AMAPP
--
--
-- Type: TABLESPACE_QUOTA; Name: AMAPP
--
--
-- Type: SYSTEM_GRANT; Name: AMAPP
--
GRANT GLOBAL QUERY REWRITE TO "AMAPP" WITH ADMIN OPTION;
GRANT QUERY REWRITE TO "AMAPP" WITH ADMIN OPTION;
GRANT DROP ANY MATERIALIZED VIEW TO "AMAPP" WITH ADMIN OPTION;
GRANT ALTER ANY MATERIALIZED VIEW TO "AMAPP" WITH ADMIN OPTION;
GRANT CREATE ANY MATERIALIZED VIEW TO "AMAPP" WITH ADMIN OPTION;
GRANT CREATE TRIGGER TO "AMAPP";
GRANT CREATE PROCEDURE TO "AMAPP";
GRANT CREATE VIEW TO "AMAPP";
GRANT SELECT ANY TABLE TO "AMAPP";
GRANT CREATE TABLE TO "AMAPP";
GRANT UNLIMITED TABLESPACE TO "AMAPP";
GRANT CREATE SESSION TO "AMAPP";
