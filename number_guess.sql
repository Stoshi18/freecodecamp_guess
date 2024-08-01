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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    guesses integer,
    user_id integer,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (223, 27, 1);
INSERT INTO public.games VALUES (392, 27, 2);
INSERT INTO public.games VALUES (667, 28, 3);
INSERT INTO public.games VALUES (223, 28, 4);
INSERT INTO public.games VALUES (186, 27, 5);
INSERT INTO public.games VALUES (955, 27, 6);
INSERT INTO public.games VALUES (15, 27, 7);
INSERT INTO public.games VALUES (11, 1, 8);
INSERT INTO public.games VALUES (8, 1, 9);
INSERT INTO public.games VALUES (324, 29, 10);
INSERT INTO public.games VALUES (526, 29, 11);
INSERT INTO public.games VALUES (139, 30, 12);
INSERT INTO public.games VALUES (935, 30, 13);
INSERT INTO public.games VALUES (322, 29, 14);
INSERT INTO public.games VALUES (2, 29, 15);
INSERT INTO public.games VALUES (928, 29, 16);
INSERT INTO public.games VALUES (329, 31, 17);
INSERT INTO public.games VALUES (160, 31, 18);
INSERT INTO public.games VALUES (16, 32, 19);
INSERT INTO public.games VALUES (334, 32, 20);
INSERT INTO public.games VALUES (446, 31, 21);
INSERT INTO public.games VALUES (33, 31, 22);
INSERT INTO public.games VALUES (880, 31, 23);
INSERT INTO public.games VALUES (579, 33, 24);
INSERT INTO public.games VALUES (825, 33, 25);
INSERT INTO public.games VALUES (455, 34, 26);
INSERT INTO public.games VALUES (221, 34, 27);
INSERT INTO public.games VALUES (918, 33, 28);
INSERT INTO public.games VALUES (207, 33, 29);
INSERT INTO public.games VALUES (398, 33, 30);
INSERT INTO public.games VALUES (607, 35, 31);
INSERT INTO public.games VALUES (34, 35, 32);
INSERT INTO public.games VALUES (843, 36, 33);
INSERT INTO public.games VALUES (540, 36, 34);
INSERT INTO public.games VALUES (946, 35, 35);
INSERT INTO public.games VALUES (738, 35, 36);
INSERT INTO public.games VALUES (465, 35, 37);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'test1');
INSERT INTO public.users VALUES (2, 'user_1722484933928');
INSERT INTO public.users VALUES (3, 'user_1722484933927');
INSERT INTO public.users VALUES (4, 'user_1722488511753');
INSERT INTO public.users VALUES (5, 'user_1722488511752');
INSERT INTO public.users VALUES (6, 'user_1722489372248');
INSERT INTO public.users VALUES (7, 'user_1722489372247');
INSERT INTO public.users VALUES (8, 'user_1722489388936');
INSERT INTO public.users VALUES (9, 'user_1722489388935');
INSERT INTO public.users VALUES (10, 'test2');
INSERT INTO public.users VALUES (11, 'user_1722489584319');
INSERT INTO public.users VALUES (12, 'user_1722489584318');
INSERT INTO public.users VALUES (13, 'user_1722489974335');
INSERT INTO public.users VALUES (14, 'user_1722489974334');
INSERT INTO public.users VALUES (15, 'user_1722490066096');
INSERT INTO public.users VALUES (16, 'user_1722490066095');
INSERT INTO public.users VALUES (17, 'user_1722490211515');
INSERT INTO public.users VALUES (18, 'user_1722490211514');
INSERT INTO public.users VALUES (19, 'user_1722490220696');
INSERT INTO public.users VALUES (20, 'user_1722490220695');
INSERT INTO public.users VALUES (21, 'user_1722490365750');
INSERT INTO public.users VALUES (22, 'user_1722490365749');
INSERT INTO public.users VALUES (23, 'user_1722490434032');
INSERT INTO public.users VALUES (24, 'user_1722490434031');
INSERT INTO public.users VALUES (25, 'user_1722490607716');
INSERT INTO public.users VALUES (26, 'user_1722490607715');
INSERT INTO public.users VALUES (27, 'user_1722490641525');
INSERT INTO public.users VALUES (28, 'user_1722490641524');
INSERT INTO public.users VALUES (29, 'user_1722490899867');
INSERT INTO public.users VALUES (30, 'user_1722490899866');
INSERT INTO public.users VALUES (31, 'user_1722491150929');
INSERT INTO public.users VALUES (32, 'user_1722491150928');
INSERT INTO public.users VALUES (33, 'user_1722491233645');
INSERT INTO public.users VALUES (34, 'user_1722491233644');
INSERT INTO public.users VALUES (35, 'user_1722491339136');
INSERT INTO public.users VALUES (36, 'user_1722491339135');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

