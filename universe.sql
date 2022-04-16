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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer,
    mass_in_kg integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer,
    mass_in_kg integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer,
    mass_in_kg integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_valid boolean
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer,
    mass_in_kg integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'In mythology, Andromeda is the daughter of the kings of Ethiopia and is said to be more beautiful than the Nereids. She becomes queen of Greece when she marries Perseus.', false, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Circinus', 'Latin for compass. Named after the constellation of the same name.', false, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', ' Our own galaxy. It is said to look like a band of light', true, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Looks like a sombrero', false, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Named because it looks like a whirlpool', false, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', 'It has a long tail, like a tadpole', false, 1, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Euanthe', 'a', false, 1, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Eukelade', 'b', false, 2, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Euporie', 'c', false, 3, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Hegemone', 'd', false, 4, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Himalia', 'e', false, 5, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Kore', 'f', false, 6, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Leda', 'g', false, 7, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Lysithea', 'h', false, 8, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Metis', 'i', false, 9, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Sponde', 'j', false, 10, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Taygete', 'k', false, 11, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Thebe', 'l', false, 12, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Thelxinoe', 'm', false, 13, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Thyone', 'n', false, 14, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Bebhionn', 'o', false, 15, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Bergelmir', 'p', false, 16, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Bestla', 'q', false, 17, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Calypso', 'r', false, 18, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Daphnis', 's', false, 19, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Erriapo', 't', false, 20, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Milky Way', false, 10, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Milky Way', false, 10, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Milky Way', true, 10, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Milky Way', false, 10, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Milky Way', false, 10, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Milky Way', false, 10, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Milky Way', false, 10, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Milky Way', false, 10, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Luna', 'Dwarf Planet', false, 10, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Dwarf Planet', false, 10, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Pluto', 'Dwarf Planet', false, 10, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Eris', 'Dwarf Planet', false, 10, NULL, NULL, 6);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Giant planet', true);
INSERT INTO public.planet_type VALUES (2, 'Ice Giant', true);
INSERT INTO public.planet_type VALUES (3, 'Mesoplanet', true);
INSERT INTO public.planet_type VALUES (4, 'Mini-Neptune', true);
INSERT INTO public.planet_type VALUES (5, 'Planetar', true);
INSERT INTO public.planet_type VALUES (6, 'Super-Earth', true);
INSERT INTO public.planet_type VALUES (7, 'Super-Jupiter', true);
INSERT INTO public.planet_type VALUES (8, 'Sub-Earth', true);
INSERT INTO public.planet_type VALUES (9, 'Dwarf', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acamar', 'Eridanus', false, 100, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Ain', 'Taurus', true, 100, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Arneb', 'Lepus', false, 100, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Electra', 'Pleadies', true, 100, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Kuma', 'Draco', false, 100, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Pherkab', 'Ursa Minor ', true, 100, NULL, NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 33, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 33, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 9, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 33, true);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

