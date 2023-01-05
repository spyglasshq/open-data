CREATE OR REPLACE ROW ACCESS POLICY

    merchants.governance.tag_policy AS (data varchar) RETURNS boolean ->

        SYSTEM$GET_TAG_ON_CURRENT_TABLE(
            'merchants.governance.application_environment'
        ) = SYSTEM$GET_TAG(
            'merchants.governance.application_environment',
            CURRENT_USER(),
            'user'
        );
