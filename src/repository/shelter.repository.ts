import prisma from "../database/database.js";
import { guests } from "../protocols/shelter.protocols.js";

async function findMany() {
    return prisma.guests.findMany()
}

async function insertUnique(guest: guests) {
    return prisma.guests.create({
        data: guest
    })
}

async function removeUnique(id: number) {
    return prisma.guests.delete({
        where: { id: id },
    })
}

export {
    findMany,
    insertUnique,
    removeUnique
}