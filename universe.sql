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
-- Name: cosmic_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmic_info (
    cosmic_info_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    source_url character varying(500),
    universe_fact boolean
);


ALTER TABLE public.cosmic_info OWNER TO freecodecamp;

--
-- Name: cosmic_info_cosmic_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cosmic_info_cosmic_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cosmic_info_cosmic_info_id_seq OWNER TO freecodecamp;

--
-- Name: cosmic_info_cosmic_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cosmic_info_cosmic_info_id_seq OWNED BY public.cosmic_info.cosmic_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    galaxy_type character varying(50),
    distance_from_earth numeric
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
    name character varying(255) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    name character varying(255) NOT NULL,
    description text,
    is_spherical boolean,
    planet_type character varying(50),
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
    name character varying(255) NOT NULL,
    description text,
    age_in_millions_of_years integer,
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
-- Name: cosmic_info cosmic_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_info ALTER COLUMN cosmic_info_id SET DEFAULT nextval('public.cosmic_info_cosmic_info_id_seq'::regclass);


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
-- Data for Name: cosmic_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cosmic_info VALUES (1, 'Origen del Universo', 'El Big Bang es la teoría ampliamente aceptada sobre el origen del universo...', 'https://es.wikipedia.org/wiki/Big_Bang', true);
INSERT INTO public.cosmic_info VALUES (2, 'Agujeros Negros', 'Los agujeros negros son regiones del espacio-tiempo con una gravedad intensa...', 'https://www.nasa.gov/audience/forstudents/k-4/stories/nasa-knows/what-is-a-black-hole-k4.html', true);
INSERT INTO public.cosmic_info VALUES (3, 'La Vía Láctea', 'La Vía Láctea es nuestra galaxia, que contiene al menos 100 mil millones de estrellas...', 'https://www.nasa.gov/mission_pages/hubble/science/milky-way-bulge.html', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral galaxy', 'Spiral', 2.537);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Our home galaxy', 'Spiral', 0);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy', 'Spiral', 3.073);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical galaxy', 'Elliptical', 13.7);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral galaxy', 'Spiral', 31.4);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral galaxy', 'Spiral', 28.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lysandra', 'Luna cristalina con paisajes de hielo', 200, 150000, 8);
INSERT INTO public.moon VALUES (2, 'Zephyr', 'Luna de un planeta lejano con vientos huracanados', 500, 800000, 12);
INSERT INTO public.moon VALUES (3, 'Nyx', 'Luna oscura y enigmática', 1000, 2000000, 9);
INSERT INTO public.moon VALUES (4, 'Aether', 'Luna etérea con paisajes surrealistas', 3000, 300000, 11);
INSERT INTO public.moon VALUES (5, 'Oberon', 'Luna de Urano con formaciones geológicas únicas', 2500, 362600, 6);
INSERT INTO public.moon VALUES (6, 'Miranda', 'Luna de Urano con cañones y acantilados', 1500, 129390, 6);
INSERT INTO public.moon VALUES (7, 'Hyperion', 'Luna irregular de Saturno con superficie esponjosa', 800, 1481000, 4);
INSERT INTO public.moon VALUES (8, 'Pandora', 'Luna misteriosa con órbita errática', 400, 120000, 6);
INSERT INTO public.moon VALUES (9, 'Endor', 'Luna boscosa habitada por criaturas peludas', 2000, 200000, 10);
INSERT INTO public.moon VALUES (10, 'Calypso', 'Luna de Saturno con lagos de hidrocarburos', 1800, 1480000, 4);
INSERT INTO public.moon VALUES (11, 'Elysium', 'Luna rocosa con antiguas ruinas alienígenas', 3500, 500000, 7);
INSERT INTO public.moon VALUES (12, 'Thalassa', 'Luna de Neptuno con océanos profundos', 2800, 400000, 5);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Luna de Urano con cañones y llanuras', 2200, 362600, 6);
INSERT INTO public.moon VALUES (14, 'Tethys', 'Luna de Saturno con un gran cráter central', 2000, 1481000, 4);
INSERT INTO public.moon VALUES (15, 'Cressida', 'Luna de Urano con anillos de polvo', 3200, 362600, 6);
INSERT INTO public.moon VALUES (16, 'Despina', 'Luna irregular de Neptuno con una órbita excéntrica', 2600, 354759, 5);
INSERT INTO public.moon VALUES (17, 'Larissa', 'Luna de Neptuno con terreno fracturado', 2400, 354759, 5);
INSERT INTO public.moon VALUES (18, 'Galatea', 'Luna de Neptuno con superficie lisa', 2800, 354759, 5);
INSERT INTO public.moon VALUES (19, 'Halimede', 'Luna de Neptuno con una órbita retrógrada', 3000, 354759, 5);
INSERT INTO public.moon VALUES (20, 'Psamathe', 'Luna de Neptuno con una órbita caótica', 3100, 354759, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Third planet from the Sun', true, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (2, 'Mars', 'The Red Planet', true, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Largest planet in our solar system', true, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Known for its beautiful rings', true, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Blue ice giant', true, 'Ice Giant', 2);
INSERT INTO public.planet VALUES (6, 'Kepler-186f', 'Exoplanet in the habitable zone', true, 'Exoplanet', 3);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 'Potentially habitable exoplanet', true, 'Exoplanet', 4);
INSERT INTO public.planet VALUES (8, 'Tatooine', 'Fictional desert planet', true, 'Exoplanet', 5);
INSERT INTO public.planet VALUES (9, 'Alderaan', 'Fictional destroyed planet', true, 'Exoplanet', 5);
INSERT INTO public.planet VALUES (10, 'Pandora', 'Fictional moon in the Alpha Centauri system', true, 'Moon', 3);
INSERT INTO public.planet VALUES (11, 'Endor', 'Fictional forest moon', true, 'Moon', 5);
INSERT INTO public.planet VALUES (12, 'Titan', 'Largest moon of Saturn', true, 'Moon', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Brightest star in the night sky', 200, true, 2);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red supergiant in Orion', 10, false, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Closest star system to Earth', 6, true, 5);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Nearest known star to the Sun', 4, false, 5);
INSERT INTO public.star VALUES (5, 'Vega', 'Bright star in the constellation Lyra', 455, true, 2);
INSERT INTO public.star VALUES (6, 'Antares', 'Red supergiant in Scorpius', 12, false, 1);


--
-- Name: cosmic_info_cosmic_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmic_info_cosmic_info_id_seq', 3, true);


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
-- Name: cosmic_info cosmic_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_info
    ADD CONSTRAINT cosmic_info_name_key UNIQUE (name);


--
-- Name: cosmic_info cosmic_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_info
    ADD CONSTRAINT cosmic_info_pkey PRIMARY KEY (cosmic_info_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

