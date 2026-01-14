import express from "express";
import healthRouter from "./routes/health.js";

const app = express();
app.use(express.json());

app.use("/health", healthRouter);

app.get("/", (req, res) => {
    res.json({ message: "ShipFast API running 🚀" });
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
    console.log(`API running at http://localhost:${PORT}`);
});
