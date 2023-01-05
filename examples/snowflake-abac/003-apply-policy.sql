ALTER TABLE
    merchants.production.finance
ADD ROW ACCESS POLICY
    merchants.governance.tag_policy ON (data);

ALTER TABLE
    merchants.staging.finance
ADD ROW ACCESS POLICY
    merchants.governance.tag_policy ON (data);
