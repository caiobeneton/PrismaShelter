import prisma from "../database/database.js";

async function findMany() {
    return prisma.guests.findMany()
}

export {
    findMany
}