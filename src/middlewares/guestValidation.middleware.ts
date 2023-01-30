import { NextFunction, Request, Response } from "express";
import { guests } from "../protocols/shelter.protocols.js";
import { guestSchema } from "../schemas/guest.schema.js";

export async function guestValidation(req: Request, res: Response, next: NextFunction) {
    const newGuest = req.body as guests

    const { error } = guestSchema.validate(newGuest, { abortEarly: false })

    if (error) {
        const errors = error.details.map((detail) => detail.message)
        return res.status(422).send(errors)
    }

    next()
}