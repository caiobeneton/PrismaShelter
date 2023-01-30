import prisma from "../database/database.js";
import { guests, newGuest } from "../protocols/shelter.protocols.js";

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

async function findUnique(id: number) {
    return prisma.guests.findFirst({
        where: { id: id },
    })
}

async function updateUnique(id: number, guest: newGuest) {
    return prisma.guests.update({
        where: { id: id },
        data: guest
    })
}

export {
    findMany,
    insertUnique,
    removeUnique,
    findUnique,
    updateUnique
}