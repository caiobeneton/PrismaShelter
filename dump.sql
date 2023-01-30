--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-30 11:28:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16646)
-- Name: Branchs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Branchs" (
    id integer NOT NULL,
    name text NOT NULL,
    adress text NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16645)
-- Name: Branchs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Branchs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 217
-- Name: Branchs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Branchs_id_seq" OWNED BY public."Branchs".id;


--
-- TOC entry 216 (class 1259 OID 16637)
-- Name: Caregiver; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Caregiver" (
    id integer NOT NULL,
    name text NOT NULL,
    branch text NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 16636)
-- Name: Caregiver_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Caregiver_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 215
-- Name: Caregiver_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Caregiver_id_seq" OWNED BY public."Caregiver".id;


--
-- TOC entry 220 (class 1259 OID 16655)
-- Name: Guests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Guests" (
    id integer NOT NULL,
    name text NOT NULL,
    species text NOT NULL,
    "caregiverId" integer,
    "branchsId" integer
);


--
-- TOC entry 219 (class 1259 OID 16654)
-- Name: Guests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Guests_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 219
-- Name: Guests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Guests_id_seq" OWNED BY public."Guests".id;


--
-- TOC entry 214 (class 1259 OID 16625)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 3190 (class 2604 OID 16649)
-- Name: Branchs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Branchs" ALTER COLUMN id SET DEFAULT nextval('public."Branchs_id_seq"'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16640)
-- Name: Caregiver id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Caregiver" ALTER COLUMN id SET DEFAULT nextval('public."Caregiver_id_seq"'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16658)
-- Name: Guests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Guests" ALTER COLUMN id SET DEFAULT nextval('public."Guests_id_seq"'::regclass);


--
-- TOC entry 3348 (class 0 OID 16646)
-- Dependencies: 218
-- Data for Name: Branchs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Branchs" (id, name, adress) FROM stdin;
\.


--
-- TOC entry 3346 (class 0 OID 16637)
-- Dependencies: 216
-- Data for Name: Caregiver; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Caregiver" (id, name, branch) FROM stdin;
\.


--
-- TOC entry 3350 (class 0 OID 16655)
-- Dependencies: 220
-- Data for Name: Guests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Guests" (id, name, species, "caregiverId", "branchsId") FROM stdin;
1	test	test	\N	\N
2	test2	test2	\N	\N
\.


--
-- TOC entry 3344 (class 0 OID 16625)
-- Dependencies: 214
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
92708f36-6762-4f0c-9313-620046614c6b	114d00563fe27de09cffb71d16c4278087d63acc6bac81085c728ead54df9c92	2023-01-30 08:26:37.296978-03	20230130112637_base	\N	\N	2023-01-30 08:26:37.24817-03	1
\.


--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 217
-- Name: Branchs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Branchs_id_seq"', 1, false);


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 215
-- Name: Caregiver_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Caregiver_id_seq"', 1, false);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 219
-- Name: Guests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Guests_id_seq"', 2, true);


--
-- TOC entry 3197 (class 2606 OID 16653)
-- Name: Branchs Branchs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Branchs"
    ADD CONSTRAINT "Branchs_pkey" PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 16644)
-- Name: Caregiver Caregiver_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Caregiver"
    ADD CONSTRAINT "Caregiver_pkey" PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 16662)
-- Name: Guests Guests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Guests"
    ADD CONSTRAINT "Guests_pkey" PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 16633)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 16668)
-- Name: Guests Guests_branchsId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Guests"
    ADD CONSTRAINT "Guests_branchsId_fkey" FOREIGN KEY ("branchsId") REFERENCES public."Branchs"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3201 (class 2606 OID 16663)
-- Name: Guests Guests_caregiverId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Guests"
    ADD CONSTRAINT "Guests_caregiverId_fkey" FOREIGN KEY ("caregiverId") REFERENCES public."Caregiver"(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2023-01-30 11:28:49

--
-- PostgreSQL database dump complete
--

