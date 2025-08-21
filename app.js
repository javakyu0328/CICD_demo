const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

// 헬스체크용
app.get("/health", (req, res) => res.json({ ok: true }));

app.get("/", (req, res) => {
  res.send("Hello CI/CD World! 🚀");
});

app.listen(port, "0.0.0.0", () => {
  console.log(`Server running on http://localhost:${port}`);
});
