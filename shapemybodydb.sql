--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-20 17:57:21

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
-- TOC entry 3331 (class 1262 OID 33167)
-- Name: Shapemybodydb; Type: DATABASE; Schema: -; Owner: -
--


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

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 41376)
-- Name: history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.history (
    data_id text NOT NULL,
    user_id integer,
    gender character varying(255),
    weight integer,
    height integer,
    age integer,
    activity real,
    goal character varying(255),
    desiredweight integer,
    "time" timestamp without time zone
);


--
-- TOC entry 215 (class 1259 OID 41383)
-- Name: history_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.history_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 215
-- Name: history_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.history_data_id_seq OWNED BY public.history.data_id;


--
-- TOC entry 209 (class 1259 OID 33187)
-- Name: macros; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.macros (
    user_id integer NOT NULL,
    calint real,
    calprot real,
    calfat real,
    calcarbs real
);


--
-- TOC entry 212 (class 1259 OID 41360)
-- Name: macros_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.macros_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 212
-- Name: macros_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.macros_user_id_seq OWNED BY public.macros.user_id;


--
-- TOC entry 210 (class 1259 OID 33192)
-- Name: recipes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.recipes (
    recipe_id character varying(255),
    user_id integer
);


--
-- TOC entry 211 (class 1259 OID 33195)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    hash text
);


--
-- TOC entry 213 (class 1259 OID 41361)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 213
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3180 (class 2604 OID 41384)
-- Name: history data_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.history ALTER COLUMN data_id SET DEFAULT nextval('public.history_data_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 41363)
-- Name: macros user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.macros ALTER COLUMN user_id SET DEFAULT nextval('public.macros_user_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 41364)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3186 (class 2606 OID 41382)
-- Name: history history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (data_id);


--
-- TOC entry 3182 (class 2606 OID 33191)
-- Name: macros macros_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.macros
    ADD CONSTRAINT macros_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3184 (class 2606 OID 33201)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2022-08-20 17:57:24

--
-- PostgreSQL database dump complete
--

