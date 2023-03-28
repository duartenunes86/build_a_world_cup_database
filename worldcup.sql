--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(30) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 4, 2, 27, 28);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 2, 0, 29, 30);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 2, 1, 28, 30);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 1, 0, 27, 29);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 3, 2, 28, 31);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 2, 0, 30, 32);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 2, 1, 29, 33);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 2, 0, 27, 34);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 2, 1, 30, 35);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 1, 0, 32, 36);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 2, 29, 37);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 2, 0, 33, 38);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 2, 1, 28, 39);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 2, 1, 31, 40);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 2, 1, 34, 41);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 4, 3, 27, 42);
INSERT INTO public.games VALUES (17, 2014, 'Final', 1, 0, 43, 42);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 3, 0, 44, 33);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 1, 0, 42, 44);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 7, 1, 43, 33);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 1, 0, 44, 45);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 1, 0, 42, 29);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 2, 1, 33, 35);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 1, 0, 43, 27);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 2, 1, 33, 46);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 2, 0, 35, 34);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 2, 0, 27, 47);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 2, 1, 43, 48);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 2, 1, 44, 38);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 2, 1, 45, 49);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 1, 0, 42, 36);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 2, 1, 29, 50);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 27);
INSERT INTO public.teams VALUES ('Croatia', 28);
INSERT INTO public.teams VALUES ('Belgium', 29);
INSERT INTO public.teams VALUES ('England', 30);
INSERT INTO public.teams VALUES ('Russia', 31);
INSERT INTO public.teams VALUES ('Sweden', 32);
INSERT INTO public.teams VALUES ('Brazil', 33);
INSERT INTO public.teams VALUES ('Uruguay', 34);
INSERT INTO public.teams VALUES ('Colombia', 35);
INSERT INTO public.teams VALUES ('Switzerland', 36);
INSERT INTO public.teams VALUES ('Japan', 37);
INSERT INTO public.teams VALUES ('Mexico', 38);
INSERT INTO public.teams VALUES ('Denmark', 39);
INSERT INTO public.teams VALUES ('Spain', 40);
INSERT INTO public.teams VALUES ('Portugal', 41);
INSERT INTO public.teams VALUES ('Argentina', 42);
INSERT INTO public.teams VALUES ('Germany', 43);
INSERT INTO public.teams VALUES ('Netherlands', 44);
INSERT INTO public.teams VALUES ('Costa Rica', 45);
INSERT INTO public.teams VALUES ('Chile', 46);
INSERT INTO public.teams VALUES ('Nigeria', 47);
INSERT INTO public.teams VALUES ('Algeria', 48);
INSERT INTO public.teams VALUES ('Greece', 49);
INSERT INTO public.teams VALUES ('United States', 50);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 50, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_teams2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_teams2 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

