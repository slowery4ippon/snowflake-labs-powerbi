-- Use Account Admin role
use role accountadmin;

-- Create Power_BI Demo database 
create database powerbi_db;

-- Create schemas
create schema powerbi_db.athlete_schema;

-- create role 
create role powerbi_role;

-- grant usage 
grant usage on warehouse bi_warehouse to role powerbi_role;
grant usage on database powerbi_db to role powerbi_role;
grant usage on schema athlete_schema to role powerbi_role;

-- Grant CREATE on schema
grant create file format on schema athlete_schema to role powerbi_role;

-- Grant CREATE STAGE on the schema 
grant create stage on schema powerbi_db.athlete_schema to role powerbi_role;

-- Grant usage for file format
grant all privileges on file format powerbi_db.athlete_schema to role powerbi_role;

-- Grant CREATE TABLE on the schema
grant create table on schema powerbi_db.athlete_schema to role powerbi_role;

-- Check all grants to the role
show grants to role powerbi_role;

-- Grant the role to a user
grant role powerbi_role to user OWAIS;
