conn.execute({
  sqlText: "SHOW GRANTS",
  complete: (err, stmt, rows) => {
    console.log(rows)
  },
});
