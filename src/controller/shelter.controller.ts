import { Request, Response } from "express";
import { findMany } from "../repository/shelter.repository.js";

async function listAll(req: Request, res: Response) {
    try {
        const result = await findMany()

        return res.send(result)
    } catch (error) {
        return res.status(500)
    }
}

export {
    listAll
}