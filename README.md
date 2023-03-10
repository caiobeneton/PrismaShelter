# PrismaShelter

TypeScript/Prisma POC simulating an API for an animal shelter


## API Documentation

#### Insert an iten

```http
  POST /insert
  Body: {
    name: string;
    species: string;
    caregiverId?: number;
    branchsId?: number;
    }
```
#### Return all itens

```http
  GET /findAll
```
#### Return one iten

```http
  GET /findById/${id}
```

| Parameter  | Type       | Description                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Required**. Id of the animal |

#### Update
```http
  PATCH /update/${id}
```
| Parameter  | Type       | Description                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Required**. Id of the animal |

#### Delete
```http
  DELETE /delete/${id}
```
| Parameter  | Type       | Description                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Required**. Id of the animal |
