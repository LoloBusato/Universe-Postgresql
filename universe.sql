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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_square_metre integer
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    adistance_from_earth integer,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    adistance_from_earth integer,
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    adistance_from_earth integer,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    adistance_from_earth integer,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'Argentina', NULL);
INSERT INTO public.country VALUES (2, 'Chile', NULL);
INSERT INTO public.country VALUES (3, 'Uruguay', NULL);
INSERT INTO public.country VALUES (4, 'Usa', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10000, 25, 'The Andromeda Glaxy is a barred  sipral galaxy with diameter of about 46.56 kiloparsecs, thenearest large galaxy to the Milky WWay. The galaxy''s name stems form the area of Earth''s sky in which it appears, the constellation of Andromeda, which itself is named after the princess who was the wife of Perseus in Greek mythology.', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13610, 0, 'The Milky Way is the galaxy that includes our Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', true);
INSERT INTO public.galaxy VALUES (3, 'Needle Galaxy', 130, 39, 'The Needle Galaxy is an edge-on spiral falaxy 30 to 50 million light-years away in the constellation Coma Berenices. It lies close to the North Galactic Pole and has a visual magnitude of 10.', true);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 13280, 24, 'The Black Eye Galaxy also called Sleeping Beauty Galaxy, is a relatively isolated spiral galaxy 17 millin light-years away in the mildy northern constellation of Coma Berenices', true);
INSERT INTO public.galaxy VALUES (5, 'NGC 4622', 2500, 111, 'NGC 4622 is a face-on unbarred spiral galaxy with a prominent ting structure located in the constellation Centaurus', true);
INSERT INTO public.galaxy VALUES (6, 'NGC 4151', 4000, 62, 'NGC 4151 is an intermediate spiral Seyfert galaxy with weak inner ring structure located 15.8 megaparsecs from Earth in the constellation Canes Venatici', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Brasil', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 1);
INSERT INTO public.moon VALUES (2, 'Moon', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 1);
INSERT INTO public.moon VALUES (3, 'Casemiro', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 2);
INSERT INTO public.moon VALUES (4, 'iPhone', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 2);
INSERT INTO public.moon VALUES (5, 'Beta', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 3);
INSERT INTO public.moon VALUES (6, 'Alpha', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 3);
INSERT INTO public.moon VALUES (7, 'Buenos Aires', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 4);
INSERT INTO public.moon VALUES (8, 'Argentina', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 4);
INSERT INTO public.moon VALUES (9, 'Cordoba', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 5);
INSERT INTO public.moon VALUES (10, 'Mendoza', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 5);
INSERT INTO public.moon VALUES (11, 'moon11', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 6);
INSERT INTO public.moon VALUES (12, 'moon12', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 6);
INSERT INTO public.moon VALUES (13, 'moon13', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 6);
INSERT INTO public.moon VALUES (14, 'moon14', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 6);
INSERT INTO public.moon VALUES (15, 'moon15', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 6);
INSERT INTO public.moon VALUES (16, 'moon16', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 7);
INSERT INTO public.moon VALUES (17, 'moon1', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 8);
INSERT INTO public.moon VALUES (18, 'moon18', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 10);
INSERT INTO public.moon VALUES (19, 'moon19', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 10);
INSERT INTO public.moon VALUES (20, 'moon20', 3000, 500, 'Lorem ipsum lorem ipsum lorem ipsum', false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (4, 'Uranus', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (7, 'Venus', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 4000, 10, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.planet VALUES (9, 'Messi', 2000, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 2);
INSERT INTO public.planet VALUES (10, 'Cristiano', 2000, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 2);
INSERT INTO public.planet VALUES (11, 'Neymar', 2000, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 2);
INSERT INTO public.planet VALUES (12, 'Maradona', 2000, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solar System', 4568, 0, 'The Solar System is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud.', true, 2);
INSERT INTO public.star VALUES (2, 'Mizar', 370, 300, 'Mizar is a second-magnitude star in the handle of the Big Dipper asterims in the constellation of Ursa Major', true, 3);
INSERT INTO public.star VALUES (3, 'Polaris', 580, 500, 'Polaris is a star in the northern circumpolar constellation of Ursa Minor', true, 4);
INSERT INTO public.star VALUES (4, 'Capella', 580, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 5);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 580, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 1);
INSERT INTO public.star VALUES (6, 'Mintaka', 580, 1000, 'Lorem ipsum lorem ipsum lorem ipsum', true, 6);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.country_country_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: country country_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_name_key UNIQUE (name);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

