import express from "express";
import eventRoutes from "./routes/events.js";

const app = express();
app.use(express.json());

app.use(eventRoutes);

app.listen(process.env.PORT);