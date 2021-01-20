--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: animales_del_zoologico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animales_del_zoologico (
    id bigint NOT NULL,
    cantidad numeric,
    id_tipo_animal integer,
    id_clase_animal integer
);


ALTER TABLE public.animales_del_zoologico OWNER TO postgres;

--
-- Name: animales_del_zoologico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animales_del_zoologico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animales_del_zoologico_id_seq OWNER TO postgres;

--
-- Name: animales_del_zoologico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animales_del_zoologico_id_seq OWNED BY public.animales_del_zoologico.id;


--
-- Name: clase_de_animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clase_de_animal (
    id bigint NOT NULL,
    clase character varying(25),
    id_tipo_animal integer
);


ALTER TABLE public.clase_de_animal OWNER TO postgres;

--
-- Name: clase_de_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clase_de_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clase_de_animal_id_seq OWNER TO postgres;

--
-- Name: clase_de_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clase_de_animal_id_seq OWNED BY public.clase_de_animal.id;


--
-- Name: registro_del_animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registro_del_animal (
    id bigint NOT NULL,
    detalle character varying(150),
    id_tipo_animal integer
);


ALTER TABLE public.registro_del_animal OWNER TO postgres;

--
-- Name: registro_del_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registro_del_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.registro_del_animal_id_seq OWNER TO postgres;

--
-- Name: registro_del_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registro_del_animal_id_seq OWNED BY public.registro_del_animal.id;


--
-- Name: tipo_de_animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_de_animal (
    id bigint NOT NULL,
    nombre character varying(25),
    tipo character varying(25)
);


ALTER TABLE public.tipo_de_animal OWNER TO postgres;

--
-- Name: tipo_de_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_de_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_de_animal_id_seq OWNER TO postgres;

--
-- Name: tipo_de_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_de_animal_id_seq OWNED BY public.tipo_de_animal.id;


--
-- Name: animales_del_zoologico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales_del_zoologico ALTER COLUMN id SET DEFAULT nextval('public.animales_del_zoologico_id_seq'::regclass);


--
-- Name: clase_de_animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clase_de_animal ALTER COLUMN id SET DEFAULT nextval('public.clase_de_animal_id_seq'::regclass);


--
-- Name: registro_del_animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro_del_animal ALTER COLUMN id SET DEFAULT nextval('public.registro_del_animal_id_seq'::regclass);


--
-- Name: tipo_de_animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_de_animal ALTER COLUMN id SET DEFAULT nextval('public.tipo_de_animal_id_seq'::regclass);


--
-- Data for Name: animales_del_zoologico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animales_del_zoologico (id, cantidad, id_tipo_animal, id_clase_animal) FROM stdin;
7	5	1	7
8	9	2	8
9	4	4	9
10	6	3	10
11	50	5	11
12	100	6	12
\.


--
-- Data for Name: clase_de_animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clase_de_animal (id, clase, id_tipo_animal) FROM stdin;
7	mamifero	1
8	mamifero	2
9	ave	4
10	mamifero	3
11	pez	5
12	pez	6
\.


--
-- Data for Name: registro_del_animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registro_del_animal (id, detalle, id_tipo_animal) FROM stdin;
8	el perro tiene 4 patas y 1 cola	1
9	el delfin tiene aletas y come peces	2
10	el condor es carro¤ero y vive en la cordillera	4
11	el leon es carnivoro y vive en africa	3
12	la truca es un pez y se encuentra en tranques y lagos	5
13	el salmon es un pez vive en oceanos de agua salada o dulce	6
\.


--
-- Data for Name: tipo_de_animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_de_animal (id, nombre, tipo) FROM stdin;
1	perro	terrestre
2	delfin	acuatico
4	condor	terrestre
3	leon	terrestre
5	trucha	acuatico
6	salmon	acuatico
\.


--
-- Name: animales_del_zoologico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animales_del_zoologico_id_seq', 12, true);


--
-- Name: clase_de_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clase_de_animal_id_seq', 12, true);


--
-- Name: registro_del_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registro_del_animal_id_seq', 13, true);


--
-- Name: tipo_de_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_de_animal_id_seq', 6, true);


--
-- Name: animales_del_zoologico pk_animales_del_zoologico; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales_del_zoologico
    ADD CONSTRAINT pk_animales_del_zoologico PRIMARY KEY (id);


--
-- Name: clase_de_animal pk_clase_de_animal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clase_de_animal
    ADD CONSTRAINT pk_clase_de_animal PRIMARY KEY (id);


--
-- Name: registro_del_animal pk_registro_del_animal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro_del_animal
    ADD CONSTRAINT pk_registro_del_animal PRIMARY KEY (id);


--
-- Name: tipo_de_animal pk_tipo_de_animal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_de_animal
    ADD CONSTRAINT pk_tipo_de_animal PRIMARY KEY (id);


--
-- Name: animales_del_zoologico fk_id_clase_animal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales_del_zoologico
    ADD CONSTRAINT fk_id_clase_animal FOREIGN KEY (id_clase_animal) REFERENCES public.clase_de_animal(id);


--
-- Name: registro_del_animal fk_id_tipo_animal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro_del_animal
    ADD CONSTRAINT fk_id_tipo_animal FOREIGN KEY (id_tipo_animal) REFERENCES public.tipo_de_animal(id);


--
-- Name: clase_de_animal fk_id_tipo_animal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clase_de_animal
    ADD CONSTRAINT fk_id_tipo_animal FOREIGN KEY (id_tipo_animal) REFERENCES public.tipo_de_animal(id);


--
-- Name: animales_del_zoologico fk_id_tipo_animal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales_del_zoologico
    ADD CONSTRAINT fk_id_tipo_animal FOREIGN KEY (id_tipo_animal) REFERENCES public.tipo_de_animal(id);


--
-- PostgreSQL database dump complete
--

