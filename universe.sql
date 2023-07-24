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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fictional_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fictional_planet (
    fictional_planet_id integer NOT NULL,
    name character varying(30),
    fictional_world character varying(30),
    habitable boolean NOT NULL
);


ALTER TABLE public.fictional_planet OWNER TO freecodecamp;

--
-- Name: fictional_planet_fictional_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fictional_planet_fictional_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fictional_planet_fictional_planet_id_seq OWNER TO freecodecamp;

--
-- Name: fictional_planet_fictional_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fictional_planet_fictional_planet_id_seq OWNED BY public.fictional_planet.fictional_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    max_temperature_in_kelvin integer,
    min_temperature_in_kelvin integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_index_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_index_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_index_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    min_temperature_in_kelvin integer,
    max_temperature_in_kelvin integer,
    habitable boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_index_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_index_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_index_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    min_temperature_in_kelvin integer,
    max_temperature_in_kelvin integer,
    habitable boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_plante_index_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_plante_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_plante_index_seq OWNER TO freecodecamp;

--
-- Name: planet_plante_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_plante_index_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    max_temperature_in_kelvin integer,
    min_temperature_in_kelvin integer,
    evolutionary_stage text,
    rotation_period_in_days numeric(8,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_index_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_index_seq OWNER TO freecodecamp;

--
-- Name: star_star_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_index_seq OWNED BY public.star.star_id;


--
-- Name: fictional_planet fictional_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet ALTER COLUMN fictional_planet_id SET DEFAULT nextval('public.fictional_planet_fictional_planet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_index_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_index_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_plante_index_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_index_seq'::regclass);


--
-- Data for Name: fictional_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fictional_planet VALUES (1, 'Alderaan', 'Star Wars', true);
INSERT INTO public.fictional_planet VALUES (2, 'Corusant', 'Star Wars', true);
INSERT INTO public.fictional_planet VALUES (3, 'Dagobah', 'Star Wars', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'closest big galaxy to the Milky Way', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterly Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mimas', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (2, 'Enceladus', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (3, 'Tethys', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (4, 'Dione', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (5, 'Rheo', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (6, 'Titan', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (7, 'Iapetus', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (8, 'Pan', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (9, 'Atlas', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (10, 'Prometheus', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (11, 'Pandora', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (12, 'Janus', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (13, 'Calypso', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (14, 'Helene', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (15, 'Hyperion', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (16, 'Kivuiuq', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (17, 'Phoebe', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (18, 'Polydeuces', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (19, 'Paaliaq', NULL, NULL, NULL, false, 13);
INSERT INTO public.moon VALUES (20, 'Skathi', NULL, NULL, NULL, false, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'Earth', NULL, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptun', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'Haumea', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'Makemake', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (13, 'Saturn', NULL, NULL, NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Canopus', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Arcturus', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Capella', NULL, NULL, NULL, NULL, NULL, 1);


--
-- Name: fictional_planet_fictional_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fictional_planet_fictional_planet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_index_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_index_seq', 6, true);


--
-- Name: moon_moon_index_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_index_seq', 20, true);


--
-- Name: planet_plante_index_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_plante_index_seq', 13, true);


--
-- Name: star_star_index_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_index_seq', 6, true);


--
-- Name: fictional_planet fictional_planet_fictional_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet
    ADD CONSTRAINT fictional_planet_fictional_planet_id_key UNIQUE (fictional_planet_id);


--
-- Name: fictional_planet fictional_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet
    ADD CONSTRAINT fictional_planet_pkey PRIMARY KEY (fictional_planet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_index_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_index_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

