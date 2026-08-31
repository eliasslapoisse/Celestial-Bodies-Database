--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(10,3),
    distance_from_earth_ly bigint,
    galaxy_types_id integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(18,6),
    distance_from_earth_ly numeric(20,10),
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL
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
    age_in_millions_of_years numeric(18,6),
    distance_from_earth_ly numeric(18,6),
    has_life boolean,
    is_spherical boolean,
    radius_in_km bigint,
    galaxy_id integer NOT NULL,
    star_id integer,
    planet_types_id integer NOT NULL
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(18,6),
    distance_from_earth_ly numeric(18,6),
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600.000, 0, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy (M31)', 10000.000, 2500000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy (M33)', 15000.000, 2800000, 1);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud (LMC)', 13000.000, 163000, 4);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy (M82)', 10000.000, 12000000, 4);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A (NGC 5128)', 12000.000, 12000000, 2);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel Galaxy (M101)', 12500.000, 21000000, 1);
INSERT INTO public.galaxy VALUES (8, 'Black Eye Galaxy (M64)', 10000.000, 24000000, 1);
INSERT INTO public.galaxy VALUES (9, 'Whirlpool Galaxy (M51a)', 10000.000, 31000000, 1);
INSERT INTO public.galaxy VALUES (10, 'Sombrero Galaxy (M104)', 13000.000, 31100000, 3);
INSERT INTO public.galaxy VALUES (11, 'Cartwheel Galaxy (ESO 350-40)', 10000.000, 500000000, 3);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'A spiral galaxy typically has a rotating disc with spiral ‘arms’ that curve out from a dense central region.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Elliptical galaxies have an even, ellipsoidal shape. They typically contain a much greater proportion of older stars than spiral galaxies do.');
INSERT INTO public.galaxy_types VALUES (3, 'Lenticular', 'A lenticular galaxy is a lens-shaped disc system that sits between an elliptical and a spiral galaxy in shape and traits.');
INSERT INTO public.galaxy_types VALUES (4, 'Irregular', 'Irregular galaxies have unusual shapes, They range from dwarf irregular galaxies with 100 million times the Sun’s mass to large ones weighing 10 billion solar masses.');
INSERT INTO public.galaxy_types VALUES (5, 'Active', 'An active galaxy is a galaxy with an extremely bright center that produces a huge amount of energy from a non-stellar power source.');
INSERT INTO public.galaxy_types VALUES (6, 'Seyfert', 'Seyfert galaxies are a major class of spiral galaxies that feature extremely bright, compact centers powered by supermassive black holes.');
INSERT INTO public.galaxy_types VALUES (7, 'Quasar', 'A quasar is an extremely luminous active galactic nucleus powered by a supermassive black hole at the center of a distant galaxy.');
INSERT INTO public.galaxy_types VALUES (8, 'Blazar', 'A blazar is an active galaxy with a supermassive black hole at its center that points one of its powerful, near-light-speed particle jets directly at Earth.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4510.000000, 0.0000000041, true, 1, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500.000000, 0.0000082000, false, 1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500.000000, 0.0000082000, false, 1, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4500.000000, 0.0000660000, true, 1, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4500.000000, 0.0000660000, true, 1, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500.000000, 0.0000660000, true, 1, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500.000000, 0.0000660000, true, 1, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 4500.000000, 0.0000660000, false, 1, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 4500.000000, 0.0001360000, true, 1, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4500.000000, 0.0001360000, true, 1, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 4500.000000, 0.0001360000, true, 1, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 4500.000000, 0.0001360000, true, 1, 6);
INSERT INTO public.moon VALUES (13, 'Iapetus', 4500.000000, 0.0001360000, true, 1, 6);
INSERT INTO public.moon VALUES (14, 'Titania', 4500.000000, 0.0002870000, true, 1, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 4500.000000, 0.0002870000, true, 1, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 4500.000000, 0.0004550000, true, 1, 8);
INSERT INTO public.moon VALUES (20, 'SN2023ixf-b-I', 15.000000, 21000000.0000000000, false, 7, 20);
INSERT INTO public.moon VALUES (17, 'R136a1-b-I', 1.500000, 163000.0000000000, true, 4, 15);
INSERT INTO public.moon VALUES (18, 'Romano-b-I', 4.000000, 2730000.0000000000, false, 3, 17);
INSERT INTO public.moon VALUES (19, 'M31-V1-b-I', 30.000000, 2500000.0000000000, true, 2, 18);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500.000000, 0.000010, false, true, 2440, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500.000000, 0.000004, false, true, 6052, 1, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4540.000000, 0.000000, true, true, 6371, 1, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500.000000, 0.000008, false, true, 3390, 1, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4600.000000, 0.000066, false, true, 69911, 1, 1, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500.000000, 0.000136, false, true, 58232, 1, 1, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500.000000, 0.000287, false, true, 25362, 1, 1, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500.000000, 0.000455, false, true, 24622, 1, 1, 3);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4850.000000, 4.240000, false, true, 6594, 1, 2, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 4850.000000, 4.240000, false, true, 7000, 1, 2, 1);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', 4850.000000, 4.240000, false, true, 1600, 1, 2, 4);
INSERT INTO public.planet VALUES (12, 'Sirius b-1', 260.000000, 8.600000, false, true, 5500, 1, 3, 1);
INSERT INTO public.planet VALUES (13, 'Vega b', 455.000000, 25.000000, false, true, 14000, 1, 4, 2);
INSERT INTO public.planet VALUES (14, 'Betelgeuse b', 9.000000, 595.000000, false, true, 45000, 1, 5, 2);
INSERT INTO public.planet VALUES (15, 'R136a1-b', 1.500000, 163000.000000, false, true, 80000, 4, 7, 2);
INSERT INTO public.planet VALUES (16, 'S Doradus-b', 4.000000, 169000.000000, false, true, 35000, 4, 8, 2);
INSERT INTO public.planet VALUES (17, 'Romano-b', 4.000000, 2730000.000000, false, true, 42000, 3, 9, 2);
INSERT INTO public.planet VALUES (18, 'M31-V1 b', 30.000000, 2500000.000000, false, true, 50000, 2, 10, 2);
INSERT INTO public.planet VALUES (19, 'M31-V1 c', 30.000000, 2500000.000000, false, true, 28000, 2, 10, 3);
INSERT INTO public.planet VALUES (20, 'SN 2023ixf-b', 15.000000, 21000000.000000, false, true, 60000, 7, 11, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Terrestrial planets (Earth sized and smaller) are rocky worlds, composed of rock, silicate, water and/or carbon.');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'A gas giant is a large planet mostly composed of helium and/or hydrogen.');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'An ice giant is a large planet composed mostly of heavier elements like oxygen, carbon, nitrogen, and sulfur, rather than hydrogen and helium.');
INSERT INTO public.planet_types VALUES (4, 'Dwarf', 'A celestial body orbiting the Sun that has enough mass to form a round shape, but has not cleared the debris along its orbital path.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun (Sol)', 4600.000000, 0.000016, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4850.000000, 4.240000, 1);
INSERT INTO public.star VALUES (3, 'Sirius A', 260.000000, 8.600000, 1);
INSERT INTO public.star VALUES (4, 'Vega', 455.000000, 25.000000, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 9.000000, 595.000000, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 8.000000, 860.000000, 1);
INSERT INTO public.star VALUES (7, 'UY Scuti', 20.000000, 9500.000000, 1);
INSERT INTO public.star VALUES (8, 'R136a1', 1.500000, 163000.000000, 4);
INSERT INTO public.star VALUES (9, 'S Doradus', 4.000000, 169000.000000, 4);
INSERT INTO public.star VALUES (10, 'Romanos Star (M33-V532)', 4.000000, 2730000.000000, 3);
INSERT INTO public.star VALUES (11, 'M31-V1 (Hubble V1)', 30.000000, 2500000.000000, 2);
INSERT INTO public.star VALUES (12, 'SN 2023ixf Progenitor', 15.000000, 21000000.000000, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_types_id_key UNIQUE (planet_types_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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