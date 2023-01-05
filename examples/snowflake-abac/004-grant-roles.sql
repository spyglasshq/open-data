GRANT USAGE ON DATABASE merchants TO ROLE payment_services_production;
GRANT USAGE ON SCHEMA merchants.production TO ROLE payment_services_production;
GRANT USAGE ON SCHEMA merchants.staging TO ROLE payment_services_production;
GRANT USAGE ON SCHEMA merchants.governance TO ROLE payment_services_production;
GRANT SELECT ON ALL TABLES IN SCHEMA merchants.production TO ROLE payment_services_production;
GRANT SELECT ON ALL TABLES IN SCHEMA merchants.staging TO ROLE payment_services_production;
