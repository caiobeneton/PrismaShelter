import { Request, Response } from "express";
import { guests } from "../protocols/shelter.protocols.js";
import { findMany, insertUnique, removeUnique } from "../repository/shelter.repository.js";

async function listAll(req: Request, res: Response) {
    try {
        const result = await findMany()

        return res.send(result)
    } catch (error) {
        return res.status(500)
    }
}

async function insertGuest(req: Request, res: Response) {
    const newGuest = req.body as guests

    try {
        await insertUnique(newGuest)

        return res.sendStatus(201)
    } catch (error) {
        return res.status(500)
    }
}

async function removeGuest(req: Request, res: Response) {
    const { id } = req.params

    try {
        await removeUnique(Number(id))

        return res.sendStatus(200)
    } catch (error) {
        return res.status(500)
    }
}

export {
    listAll,
    insertGuest,
    removeGuest
}