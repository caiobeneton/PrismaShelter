import Joi from "joi";

export const guestSchema = Joi.object({
    name: Joi.string().required(),
    species: Joi.string().required(),
    caregiverId: Joi.number().optional(),
    branchsId: Joi.number().optional(),
})