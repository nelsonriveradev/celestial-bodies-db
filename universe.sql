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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size_in_ly_diameters integer,
    description text,
    is_far boolean
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
    name character varying(100) NOT NULL,
    size_km_in_diameter integer,
    distance text,
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
-- Name: nasa; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nasa (
    nasa_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_active boolean
);


ALTER TABLE public.nasa OWNER TO freecodecamp;

--
-- Name: nasa_nasa_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nasa_nasa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nasa_nasa_id_seq OWNER TO freecodecamp;

--
-- Name: nasa_nasa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nasa_nasa_id_seq OWNED BY public.nasa.nasa_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_in_au numeric(5,3),
    size text,
    habitable boolean,
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
    name character varying(100) NOT NULL,
    distance_ly numeric(10,3),
    size text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nasa nasa_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nasa ALTER COLUMN nasa_id SET DEFAULT nextval('public.nasa_nasa_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy(M31)', 220000, 'The Andromeda Galaxy is a spiral galaxy located in the constellation of Andromeda. It is the nearest spiral galaxy to the Milky Way and is expected to collide with our galaxy in about 4.5 billion years. It is characterized by its bright nucleus and spiral arms.', NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 100000, 'The Milky Way is the galaxy that contains our Solar System. It is a barred spiral galaxy with a prominent central bulge and spiral arms extending from the center. It is home to billions of stars, including our Sun, and numerous planetary systems.', NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy (M51)', 60000, 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy located in the constellation Canes Venatici. It is famous for its well-defined spiral arms and its interaction with its companion galaxy, NGC 5195, which can be seen as a smaller galaxy attached to one of its spiral arms.', NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy (M33)', 50000, 'The Triangulum Galaxy is a spiral galaxy located in the constellation Triangulum. It is the third-largest member of the Local Group of galaxies, after the Milky Way and Andromeda. It is notable for its relatively small size and its proximity to the Andromeda Galaxy.', NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy (M101)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy (M104)', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (17, 'Alpha Prime I', 0, '0.1', 1);
INSERT INTO public.moon VALUES (18, 'Alpha Prime II', 1, '0.3', 1);
INSERT INTO public.moon VALUES (19, 'Beta haven I', 1, '0.5', 2);
INSERT INTO public.moon VALUES (20, 'Beta Haven II', 1, '1.2', 2);
INSERT INTO public.moon VALUES (21, 'Crimsonia I', 0, '0.8', 3);
INSERT INTO public.moon VALUES (22, 'Crimsonia II', 1, '1.5', 3);
INSERT INTO public.moon VALUES (23, 'Aurelia I', 1, '1.2', 4);
INSERT INTO public.moon VALUES (24, 'Aurelia II', 0, '2.0', 4);
INSERT INTO public.moon VALUES (25, 'Phobos', 22, '9378.0', 6);
INSERT INTO public.moon VALUES (26, 'Deimos', 12, '23460.0', 6);
INSERT INTO public.moon VALUES (27, 'Arcturia I', 0, '0.2', 7);
INSERT INTO public.moon VALUES (28, 'Arcturia II', 1, '0.6', 7);
INSERT INTO public.moon VALUES (29, 'Corvus I', 1, '0.9', 8);
INSERT INTO public.moon VALUES (30, 'Corvus II', 0, '1.5', 8);
INSERT INTO public.moon VALUES (31, 'Aqua Terra I', 0, '0.1', 9);
INSERT INTO public.moon VALUES (32, 'Aqua Terra II', 0, '0.5', 9);
INSERT INTO public.moon VALUES (33, 'Chronos I', 1, '0.5', 10);
INSERT INTO public.moon VALUES (34, 'Chronos II', 1, '1.2', 10);
INSERT INTO public.moon VALUES (35, 'Zephyria I', 0, '0.3', 11);
INSERT INTO public.moon VALUES (36, 'Zephyria II', 1, '0.6', 11);
INSERT INTO public.moon VALUES (37, 'Aurora I', 1, '0.5', 12);
INSERT INTO public.moon VALUES (38, 'Aurora II', 1, '0.7', 12);
INSERT INTO public.moon VALUES (39, 'Elysium I', 0, '0.2', 13);
INSERT INTO public.moon VALUES (40, 'Elysium II', 1, '0.6', 13);
INSERT INTO public.moon VALUES (41, 'Novus I', 1, '0.4', 13);
INSERT INTO public.moon VALUES (42, 'Novus II', 1, '1.0', 14);
INSERT INTO public.moon VALUES (43, 'Aetheria I', 0, '0.3', 15);
INSERT INTO public.moon VALUES (44, 'Aetheria II', 1, '0.7', 15);
INSERT INTO public.moon VALUES (45, 'Serenia I', 1, '0.5', 16);
INSERT INTO public.moon VALUES (46, 'Serenia II', 1, '0.9', 16);


--
-- Data for Name: nasa; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nasa VALUES (1, 'The One Nasa', NULL);
INSERT INTO public.nasa VALUES (2, 'The Two Nasa', NULL);
INSERT INTO public.nasa VALUES (3, 'The Three Nasa', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Alpha Prime', 0.700, '1.2', false, 1);
INSERT INTO public.planet VALUES (2, 'Beta Haven', 2.300, '2.5', true, 1);
INSERT INTO public.planet VALUES (3, 'Crismsonia', 1.500, '0.8', false, 2);
INSERT INTO public.planet VALUES (4, 'Aurelia', 5.000, '1.5', true, 2);
INSERT INTO public.planet VALUES (5, 'Mercury', 0.400, '0.38', false, 3);
INSERT INTO public.planet VALUES (6, 'Mars', 1.500, '0.53', true, 3);
INSERT INTO public.planet VALUES (7, 'Arcturia', 0.800, '1.3', true, 4);
INSERT INTO public.planet VALUES (8, 'Corvus', 3.200, '2.0', false, 4);
INSERT INTO public.planet VALUES (9, 'Aqua Terra', 0.900, '1.5', false, 5);
INSERT INTO public.planet VALUES (10, 'Zephyria', 1.200, '2.0', false, 6);
INSERT INTO public.planet VALUES (11, 'Aurora', 4.500, '1.8', true, 6);
INSERT INTO public.planet VALUES (12, 'Elysium', 1.000, '1.4', true, 7);
INSERT INTO public.planet VALUES (13, 'Novus', 3.800, '1.6', false, 7);
INSERT INTO public.planet VALUES (14, 'Aetheria', 1.400, '2.2', false, 8);
INSERT INTO public.planet VALUES (15, 'Serenia', 5.200, '1.9', true, 8);
INSERT INTO public.planet VALUES (16, 'Chronos', 3.200, '1.2', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda Alpha (M31-A)', 2.537, 'Classified as a blue supergiant, with a diameter of approximately 20 times that of the Sun.', 1);
INSERT INTO public.star VALUES (2, 'Andromeda Beta (M31-B)', 2.537, 'Classified as a red giant, with a diameter of approximately 100 times that of the Sun.', 1);
INSERT INTO public.star VALUES (3, 'Sol (Sun)', 27000.000, 'A main sequence star (G-type main-sequence star) with a diameter of about 1.4 million kilometers.', 2);
INSERT INTO public.star VALUES (4, 'Arcturus (Alpha Bootis)', 36.700, 'Classified as an orange giant, with a diameter of approximately 25 times that of the Sun.', 2);
INSERT INTO public.star VALUES (5, 'Whirlpool Alpha (M51-A)', 23.000, 'Classified as a blue supergiant, with a diameter of approximately 30 times that of the Sun.', 3);
INSERT INTO public.star VALUES (6, 'Whirlpool Beta (M51-B)', 23.000, 'Classified as a yellow-white dwarf, with a diameter similar to that of the Sun.', 3);
INSERT INTO public.star VALUES (7, 'Triangulum Alpha (M33-A)', 2.730, 'Classified as a blue supergiant, with a diameter of approximately 25 times that of the Sun.', 4);
INSERT INTO public.star VALUES (8, 'Triangulum Beta (M33-B)', 2.730, ' Classified as a blue supergiant, with a diameter of approximately 25 times that of the Sun.', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 46, true);


--
-- Name: nasa_nasa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nasa_nasa_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: moon name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon UNIQUE (name);


--
-- Name: planet name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet UNIQUE (name);


--
-- Name: star name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star UNIQUE (name);


--
-- Name: nasa nasa_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nasa
    ADD CONSTRAINT nasa_name_key UNIQUE (name);


--
-- Name: nasa nasa_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nasa
    ADD CONSTRAINT nasa_pkey PRIMARY KEY (nasa_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: nasa unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nasa
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

