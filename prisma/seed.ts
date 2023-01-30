import prisma from "../src/database/database.js";

async function main() {
    await prisma.guests.createMany({
        data: [
            {
                name: "test",
                species: "test"
            },
            {
                name: "test2",
                species: "test2"
            }
        ]
    })
}

main()
    .then(() => {
        console.log("registro feito com sucesso");
    })
    .catch(e => {
        console.error(e);
        process.exit(1);
    })
    .finally(async () => {
        await prisma.$disconnect();
    })