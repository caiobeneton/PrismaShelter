import { Router } from "express";
import { listAll } from "../controller/shelter.controller";

const router = Router();

router.get("/findAll", listAll)

export default router;