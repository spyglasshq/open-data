CREATE USER IF NOT EXISTS my_service_user;
ALTER USER my_service_user SET rsa_public_key='MIIBIjANBgkqh...';
GRANT ROLE service_users TO USER my_service_user;
