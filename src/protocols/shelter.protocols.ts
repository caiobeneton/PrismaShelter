export type guestsEntity = {
    id: number;
    name: string;
    species: string;
    caregiverId?: number;
    branchsId?: number;
}

export type guests = Omit<guestsEntity, "id">
export type newGuest = Partial<guestsEntity>