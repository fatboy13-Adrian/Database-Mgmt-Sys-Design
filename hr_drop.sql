Rem
Rem $Header: hr_drop.sql 03-mar-2001.10:05:14 ahunold Exp $
Rem
Rem hr_drop.sql


SET SERVEROUTPUT ON  VERIFY OFF

SPOOL drop_user_schema

CONNECT user&1/oracle

DROP PROCEDURE add_job_history;
DROP PROCEDURE secure_dml;

DROP VIEW emp_details_view;

DROP SEQUENCE departments_seq;
DROP SEQUENCE employees_seq;
DROP SEQUENCE locations_seq;

DROP TABLE regions     CASCADE CONSTRAINTS;
DROP TABLE departments CASCADE CONSTRAINTS;
DROP TABLE locations   CASCADE CONSTRAINTS;
DROP TABLE jobs        CASCADE CONSTRAINTS;
DROP TABLE job_history CASCADE CONSTRAINTS;
DROP TABLE employees   CASCADE CONSTRAINTS;
DROP TABLE countries   CASCADE CONSTRAINTS;  

CONNECT system/manager
DROP USER user&1 CASCADE;
COMMIT;

SPOOL OFF


