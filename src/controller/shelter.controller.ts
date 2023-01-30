import { Request, Response } from "express";
import { guests, newGuest } from "../protocols/shelter.protocols.js";
import { findMany, findUnique, insertUnique, removeUnique, updateUnique } from "../repository/shelter.repository.js";

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

async function findById(req: Request, res: Response) {
    const { id } = req.params

    try {
        const guestById = await findUnique(Number(id))

        return res.send(guestById)
    } catch (error) {
        return res.status(500)
    }
}

async function updateGuest(req: Request, res: Response) {
    const { id } = req.params
    const newGuest = req.body as newGuest

    try {
        await updateUnique(Number(id), newGuest)

        return res.sendStatus(200)
    } catch (error) {
        return res.status(500)
    }
}

export {
    listAll,
    insertGuest,
    removeGuest,
    findById,
    updateGuest
}