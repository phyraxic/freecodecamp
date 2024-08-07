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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_active boolean,
    first_flight numeric(4,0)
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    stars_in_billions integer,
    fifth_column_sorry integer
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
    name character varying(40) NOT NULL,
    planet_id integer,
    description text,
    discovery_year numeric(4,0)
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
    name character varying(40) NOT NULL,
    star_id integer,
    description text,
    distance_from_earth integer,
    has_life boolean
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
    name character varying(40) NOT NULL,
    galaxy_id integer,
    description text,
    stellar_class character varying(10) NOT NULL
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


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
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Yuri Gagarin', false, 1961);
INSERT INTO public.astronaut VALUES (2, 'Alan Shepard', false, 1961);
INSERT INTO public.astronaut VALUES (3, 'Virgil Grissom', false, 1961);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', 400, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest to us', 1000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'satellite galaxy of the milky way', 20, NULL);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 'dwarf galaxy near milky way', 3, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'third largest member of the Local Group', 40, NULL);
INSERT INTO public.galaxy VALUES (6, 'Antennae Galaxies', 'a pair of interacting galaxies', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3, NULL, 0);
INSERT INTO public.moon VALUES (2, 'Io', 5, NULL, 1610);
INSERT INTO public.moon VALUES (3, 'Europa', 5, NULL, 1610);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, NULL, 1610);
INSERT INTO public.moon VALUES (5, 'Callisto', 6, NULL, 1610);
INSERT INTO public.moon VALUES (6, 'Mimas', 6, NULL, 1789);
INSERT INTO public.moon VALUES (7, 'Enceladus', 6, NULL, 1789);
INSERT INTO public.moon VALUES (8, 'Tethys', 6, NULL, 1684);
INSERT INTO public.moon VALUES (9, 'Dione', 6, NULL, 1684);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, NULL, 1672);
INSERT INTO public.moon VALUES (11, 'Titan', 6, NULL, 1655);
INSERT INTO public.moon VALUES (12, 'Iapetus', 6, NULL, 1671);
INSERT INTO public.moon VALUES (13, 'Miranda', 7, NULL, 1948);
INSERT INTO public.moon VALUES (14, 'Ariel', 7, NULL, 1851);
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, NULL, 1851);
INSERT INTO public.moon VALUES (16, 'Titania', 7, NULL, 1787);
INSERT INTO public.moon VALUES (17, 'Oberon', 7, NULL, 1787);
INSERT INTO public.moon VALUES (18, 'Triton', 8, NULL, 1846);
INSERT INTO public.moon VALUES (19, 'Charon', 9, NULL, 1978);
INSERT INTO public.moon VALUES (20, 'Nix', 9, NULL, 2005);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 1, 'god of love', NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'our planet!', NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'god of war', NULL, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'messenger god', NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'king of gods', NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'god of wealth and agriculture', NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'god of sky and heavens', NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'god of the sea', NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 'dwarf planet now', NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', 1, 'dwarf in the asteroid belt', NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Orcus', 1, 'another dwarf in asteroid belt', NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', 1, 'dwarf beyond Neptune', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'our star', 'G2V');
INSERT INTO public.star VALUES (2, 'Alpha Centuri A', 1, 'closest star to us', 'G2V');
INSERT INTO public.star VALUES (3, 'Alpha Centuri B', 1, 'closest star to us', 'K1V');
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'a star close to us', 'A1V');
INSERT INTO public.star VALUES (5, 'Eridani', 1, 'closeby star', 'K2V');
INSERT INTO public.star VALUES (6, 'Procyon', 1, 'skipped another set of twins...', 'F5IV-V');


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 3, true);


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
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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

