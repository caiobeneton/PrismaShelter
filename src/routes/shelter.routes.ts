import { Router } from "express";
import { findById, insertGuest, listAll, removeGuest, updateGuest } from "../controller/shelter.controller.js";
import { guestValidation } from "../middlewares/guestValidation.middleware.js";

const router = Router();

router.get("/findAll", listAll)
router.get("/findById/:id", findById)
router.post("/insert", guestValidation, insertGuest)
router.delete("/delete/:id", removeGuest)
router.patch("/update/:id", updateGuest)

export default router;