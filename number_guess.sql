--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1738658399062', 2, 244);
INSERT INTO public.users VALUES (1, 'user_1738658399063', 5, 177);
INSERT INTO public.users VALUES (18, 'user_1738663357766', 2, 155);
INSERT INTO public.users VALUES (4, 'user_1738659364942', 2, 939);
INSERT INTO public.users VALUES (17, 'user_1738663357767', 5, 344);
INSERT INTO public.users VALUES (3, 'user_1738659364943', 5, 164);
INSERT INTO public.users VALUES (6, 'user_1738660128171', 2, 718);
INSERT INTO public.users VALUES (20, 'user_1738663707037', 2, 164);
INSERT INTO public.users VALUES (5, 'user_1738660128172', 5, 371);
INSERT INTO public.users VALUES (19, 'user_1738663707038', 5, 24);
INSERT INTO public.users VALUES (8, 'user_1738661028083', 2, 981);
INSERT INTO public.users VALUES (7, 'user_1738661028084', 5, 85);
INSERT INTO public.users VALUES (10, 'user_1738661613788', 2, 7);
INSERT INTO public.users VALUES (22, 'user_1738663723739', 2, 505);
INSERT INTO public.users VALUES (9, 'user_1738661613789', 5, 436);
INSERT INTO public.users VALUES (21, 'user_1738663723740', 5, 43);
INSERT INTO public.users VALUES (12, 'user_1738662303093', 2, 82);
INSERT INTO public.users VALUES (11, 'user_1738662303094', 5, 110);
INSERT INTO public.users VALUES (24, 'user_1738663828032', 2, 130);
INSERT INTO public.users VALUES (14, 'user_1738662576460', 2, 374);
INSERT INTO public.users VALUES (13, 'user_1738662576461', 5, 48);
INSERT INTO public.users VALUES (23, 'user_1738663828033', 5, 310);
INSERT INTO public.users VALUES (16, 'user_1738662833359', 2, 443);
INSERT INTO public.users VALUES (15, 'user_1738662833360', 5, 166);
INSERT INTO public.users VALUES (26, 'user_1738663871701', 2, 472);
INSERT INTO public.users VALUES (25, 'user_1738663871702', 5, 87);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

