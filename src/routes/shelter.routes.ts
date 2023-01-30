import { Router } from "express";
import { insertGuest, listAll } from "../controller/shelter.controller";
import { guestValidation } from "../middlewares/guestValidation.middleware.js";

const router = Router();

router.get("/findAll", listAll)
router.post("/insert", guestValidation, insertGuest)

export default router;