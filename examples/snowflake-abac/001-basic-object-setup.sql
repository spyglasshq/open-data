-- Create database and schema
CREATE DATABASE IF NOT EXISTS merchants;
CREATE SCHEMA IF NOT EXISTS merchants.governance;

-- Create tables
CREATE TABLE IF NOT EXISTS merchants.production.finance (data varchar);
CREATE TABLE IF NOT EXISTS merchants.staging.finance (data varchar);

-- Create users
CREATE USER IF NOT EXISTS payment_service;
CREATE USER IF NOT EXISTS payment_service_staging;

-- Create governance tags
CREATE TAG IF NOT EXISTS merchants.governance.application_environment
    allowed_values 'production', 'staging', 'development';

-- Add tags to tables
ALTER TABLE merchants.production.finance
    SET TAG merchants.governance.application_environment = 'production';
ALTER TABLE merchants.staging.finance
    SET TAG merchants.governance.application_environment = 'staging';

-- Add tags to users
ALTER USER payment_service
    SET TAG merchants.governance.application_environment = 'production';
ALTER USER payment_service_staging
    SET TAG merchants.governance.application_environment = 'staging';
