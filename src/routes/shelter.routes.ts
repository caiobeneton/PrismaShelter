import { Router } from "express";
import { insertGuest, listAll, removeGuest } from "../controller/shelter.controller";
import { guestValidation } from "../middlewares/guestValidation.middleware.js";

const router = Router();

router.get("/findAll", listAll)
router.post("/insert", guestValidation, insertGuest)
router.delete("/delete/:id", removeGuest)

export default router;