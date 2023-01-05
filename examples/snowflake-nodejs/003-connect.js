const crypto = require("crypto");
const snowflake = require("snowflake-sdk");

const privateKeyObject = crypto.createPrivateKey({
  key: snowflakeRsaPrivKey,
  format: "pem"
});
const privateKey = privateKeyObject.export({
  format: "pem",
  type: "pkcs8"
});

const conn = snowflake.createConnection({
  account: "zryewvz-yi01408",
  username: "my_service_user",
  authenticator: "snowflake_jwt",
  role: "service_users",
  warehouse: "service_compute_wh",
  privateKey
});
