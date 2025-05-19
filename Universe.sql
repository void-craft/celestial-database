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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20),
    area integer,
    volume integer,
    temp numeric,
    nickname text,
    life boolean,
    water boolean,
    favt_no integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    temp numeric,
    nickname text NOT NULL,
    life boolean,
    water boolean,
    dob date
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
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    temp numeric,
    nickname text NOT NULL,
    life boolean,
    water boolean,
    galaxy_id integer,
    planet_id integer,
    dob date
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
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    temp numeric,
    nickname text NOT NULL,
    life boolean,
    water boolean,
    star_id integer,
    dob date
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
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    temp numeric,
    nickname text NOT NULL,
    life boolean,
    water boolean,
    galaxy_id integer,
    dob date
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 284, 434, 168.0, 'Dwarf Planet', false, true, 101);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 80, 26, 188.0, 'Bright One', false, false, 102);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 70, 22, 164.0, 'Wisdom Rock', false, false, 103);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 43, 13, 164.0, 'Health Stone', false, false, 104);
INSERT INTO public.asteroid VALUES (5, 'Eros', 0, 0, 150.0, 'Love Rock', false, false, 105);
INSERT INTO public.asteroid VALUES (6, 'Davida', 35, 10, 160.0, 'Giant Pebble', false, false, 106);
INSERT INTO public.asteroid VALUES (7, 'Juno', 12, 3, 163.0, 'Queen Stone', false, false, 107);
INSERT INTO public.asteroid VALUES (8, 'Psyche', 60, 18, 280.0, 'Metal World', false, false, 108);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 500000, 3.5, 'Home Galaxy', true, true, '2023-01-01');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 550000, 3.6, 'M31', false, false, '2023-01-02');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 250000, 3.2, 'M33', NULL, NULL, '2023-01-03');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 80000, 400000, 3.4, 'M104', NULL, false, '2023-01-04');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 70000, 350000, 3.3, 'M51', NULL, NULL, '2023-01-05');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 90000, 450000, 3.7, 'M101', NULL, true, '2023-01-06');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 38, 22, 250.0, 'The Moon', false, true, 1, 1, '2023-03-01');
INSERT INTO public.moon VALUES (2, 'Phobos', 0, 0, 233.0, 'Fear', false, false, 1, 2, '2023-03-02');
INSERT INTO public.moon VALUES (3, 'Deimos', 0, 0, 233.0, 'Dread', false, false, 1, 2, '2023-03-03');
INSERT INTO public.moon VALUES (4, 'Io', 42, 25, 130.0, 'Volcanic', false, false, 1, 3, '2023-03-04');
INSERT INTO public.moon VALUES (5, 'Europa', 31, 16, 102.0, 'Ice World', NULL, true, 1, 3, '2023-03-05');
INSERT INTO public.moon VALUES (6, 'Ganymede', 87, 76, 110.0, 'Giant Moon', false, true, 1, 3, '2023-03-06');
INSERT INTO public.moon VALUES (7, 'Callisto', 73, 58, 134.0, 'Cratered', false, false, 1, 3, '2023-03-07');
INSERT INTO public.moon VALUES (8, 'Titan', 83, 71, 94.0, 'Thick Air', NULL, true, 1, 4, '2023-03-08');
INSERT INTO public.moon VALUES (9, 'Rhea', 8, 2, 53.0, 'Bright', false, false, 1, 4, '2023-03-09');
INSERT INTO public.moon VALUES (10, 'Iapetus', 7, 2, 113.0, 'Two-Face', false, false, 1, 4, '2023-03-10');
INSERT INTO public.moon VALUES (11, 'Miranda', 1, 0, 60.0, 'Craggy', false, false, 1, 5, '2023-03-11');
INSERT INTO public.moon VALUES (12, 'Triton', 23, 10, 38.0, 'Backwards', false, true, 1, 6, '2023-03-12');
INSERT INTO public.moon VALUES (13, 'Charon', 4, 1, 53.0, 'Pluto Twin', false, false, 1, 7, '2023-03-13');
INSERT INTO public.moon VALUES (14, 'Enceladus', 8, 1, 75.0, 'Geysers', NULL, true, 1, 4, '2023-03-14');
INSERT INTO public.moon VALUES (15, 'Tethys', 16, 2, 86.0, 'Water Ice', false, false, 1, 4, '2023-03-15');
INSERT INTO public.moon VALUES (16, 'Oberon', 7, 1, 70.0, 'Dark Moon', false, false, 2, 8, '2023-03-16');
INSERT INTO public.moon VALUES (17, 'Titania', 8, 2, 60.0, 'Uranian Giant', false, false, 2, 8, '2023-03-17');
INSERT INTO public.moon VALUES (18, 'Proteus', 1, 0, 51.0, 'Neptunian', false, false, 3, 9, '2023-03-18');
INSERT INTO public.moon VALUES (19, 'Mimas', 4, 0, 64.0, 'Death Star', false, false, 1, 4, '2023-03-19');
INSERT INTO public.moon VALUES (20, 'Hyperion', 2, 0, 93.0, 'Spongy', false, false, 1, 4, '2023-03-20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 510, 1083, 287.0, 'Blue Marble', true, true, 1, '2023-02-01');
INSERT INTO public.planet VALUES (2, 'Mars', 144, 163, 210.0, 'Red Planet', false, true, 1, '2023-02-02');
INSERT INTO public.planet VALUES (3, 'Jupiter', 61420, 143128, 165.0, 'Gas Giant', false, false, 1, '2023-02-03');
INSERT INTO public.planet VALUES (4, 'Saturn', 42700, 82713, 134.0, 'Ringed Planet', false, false, 1, '2023-02-04');
INSERT INTO public.planet VALUES (5, 'Venus', 460, 928, 737.0, 'Morning Star', false, false, 1, '2023-02-05');
INSERT INTO public.planet VALUES (6, 'Mercury', 74, 60, 440.0, 'Swift Planet', false, false, 1, '2023-02-06');
INSERT INTO public.planet VALUES (7, 'Proxima b', 650, 1400, 234.0, 'Next Earth', NULL, true, 6, '2023-02-07');
INSERT INTO public.planet VALUES (8, 'Kepler-22b', 2500, 7500, 295.0, 'Super Earth', true, true, 2, '2023-02-08');
INSERT INTO public.planet VALUES (9, 'HD 209458 b', 120000, 300000, 1130.0, 'Osiris', false, false, 3, '2023-02-09');
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 380, 900, 251.0, 'Goldilocks', true, true, 4, '2023-02-10');
INSERT INTO public.planet VALUES (11, '55 Cancri e', 1800, 4000, 2400.0, 'Diamond World', false, false, 5, '2023-02-11');
INSERT INTO public.planet VALUES (12, 'Gliese 581 c', 1200, 3000, 290.0, 'Red Dwarf', NULL, true, 7, '2023-02-12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1000, 5000, 5778.0, 'Sol', true, false, 1, '2023-01-10');
INSERT INTO public.star VALUES (2, 'Sirius', 2000, 10000, 9940.0, 'Dog Star', false, false, 1, '2023-01-11');
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1500, 7500, 5790.0, 'Rigil Kent', NULL, NULL, 1, '2023-01-12');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 50000, 250000, 3500.0, 'Alpha Ori', false, false, 2, '2023-01-13');
INSERT INTO public.star VALUES (5, 'Vega', 3000, 15000, 9602.0, 'Alpha Lyr', NULL, NULL, 2, '2023-01-14');
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 500, 2500, 3042.0, 'Alpha Cen C', NULL, true, 1, '2023-01-15');
INSERT INTO public.star VALUES (7, 'Polaris', 4000, 20000, 6015.0, 'North Star', false, false, 3, '2023-01-16');
INSERT INTO public.star VALUES (8, 'Arcturus', 4500, 22500, 4286.0, 'Alpha Boo', NULL, NULL, 4, '2023-01-17');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 8, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: asteroid asteroid_favt_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_favt_no_key UNIQUE (favt_no);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_dob_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_dob_key UNIQUE (dob);


--
-- Name: galaxy galaxy_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nickname_key UNIQUE (nickname);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_dob_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_dob_key UNIQUE (dob);


--
-- Name: moon moon_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nickname_key UNIQUE (nickname);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_dob_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dob_key UNIQUE (dob);


--
-- Name: planet planet_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nickname_key UNIQUE (nickname);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_dob_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_dob_key UNIQUE (dob);


--
-- Name: star star_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nickname_key UNIQUE (nickname);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

