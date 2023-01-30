-- CreateTable
CREATE TABLE "Caregiver" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "branch" TEXT NOT NULL,

    CONSTRAINT "Caregiver_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Branchs" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "adress" TEXT NOT NULL,

    CONSTRAINT "Branchs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Guests" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "species" TEXT NOT NULL,
    "caregiverId" INTEGER,
    "branchsId" INTEGER,

    CONSTRAINT "Guests_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Guests" ADD CONSTRAINT "Guests_caregiverId_fkey" FOREIGN KEY ("caregiverId") REFERENCES "Caregiver"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Guests" ADD CONSTRAINT "Guests_branchsId_fkey" FOREIGN KEY ("branchsId") REFERENCES "Branchs"("id") ON DELETE SET NULL ON UPDATE CASCADE;
