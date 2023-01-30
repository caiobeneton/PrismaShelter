import express, { json } from "express";
import { Request, Response } from "express";
import dotenv from "dotenv";
import router from "./routes/shelter.routes.js";

dotenv.config()

const app = express();

app.use(json());

app.get("/health", (req: Request, res: Response) => {
    res.send("Ok")
})

app.use(router)

const port = process.env.PORT || 4000

app.listen(port, () => console.log(`Running in port ${port}`))