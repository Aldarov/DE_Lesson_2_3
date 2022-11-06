--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

--
-- Name: de_lesson_2_3; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE de_lesson_2_3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


\connect de_lesson_2_3

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

SET default_table_access_method = heap;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    name character(100) NOT NULL
);


--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: employee_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employee_levels (
    id integer NOT NULL,
    name character(100) NOT NULL
);


--
-- Name: employee_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employee_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employee_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employee_levels_id_seq OWNED BY public.employee_levels.id;


--
-- Name: employee_marks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employee_marks (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    mark_id integer NOT NULL
);


--
-- Name: employee_marks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employee_marks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employee_marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employee_marks_id_seq OWNED BY public.employee_marks.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    person_id integer NOT NULL,
    post_id integer NOT NULL,
    department_id integer NOT NULL,
    employee_level_id integer,
    start_date date,
    salary numeric
);


--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: marks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.marks (
    id integer NOT NULL,
    name character(2) NOT NULL,
    coefficient numeric
);


--
-- Name: marks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.marks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.marks_id_seq OWNED BY public.marks.id;


--
-- Name: persons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.persons (
    id integer NOT NULL,
    surname character(100) NOT NULL,
    name character(100) NOT NULL,
    patronymic character(100) NOT NULL,
    birth_date date NOT NULL,
    has_driving_license boolean
);


--
-- Name: persons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.persons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.persons_id_seq OWNED BY public.persons.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    name character(100) NOT NULL
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: employee_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_levels ALTER COLUMN id SET DEFAULT nextval('public.employee_levels_id_seq'::regclass);


--
-- Name: employee_marks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_marks ALTER COLUMN id SET DEFAULT nextval('public.employee_marks_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: marks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marks ALTER COLUMN id SET DEFAULT nextval('public.marks_id_seq'::regclass);


--
-- Name: persons id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.persons ALTER COLUMN id SET DEFAULT nextval('public.persons_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.departments (id, name) VALUES (1, 'Бухгалтерия                                                                                         ');
INSERT INTO public.departments (id, name) VALUES (2, 'IT отдел                                                                                            ');
INSERT INTO public.departments (id, name) VALUES (3, 'Отдел интеллектуального анализа данных                                                              ');


--
-- Data for Name: employee_levels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.employee_levels (id, name) VALUES (1, 'jun                                                                                                 ');
INSERT INTO public.employee_levels (id, name) VALUES (2, 'middle                                                                                              ');
INSERT INTO public.employee_levels (id, name) VALUES (3, 'senior                                                                                              ');
INSERT INTO public.employee_levels (id, name) VALUES (4, 'lead                                                                                                ');


--
-- Data for Name: employee_marks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (1, 1, 2022, 1, 1);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (2, 1, 2022, 2, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (3, 1, 2022, 3, 1);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (4, 2, 2022, 1, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (5, 2, 2022, 2, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (6, 2, 2022, 3, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (7, 3, 2022, 1, 1);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (8, 3, 2022, 2, 1);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (9, 3, 2022, 3, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (10, 4, 2022, 1, 3);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (11, 4, 2022, 2, 4);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (12, 4, 2022, 3, 3);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (13, 5, 2022, 1, 4);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (14, 5, 2022, 2, 4);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (15, 5, 2022, 3, 4);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (16, 6, 2022, 1, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (17, 6, 2022, 2, 1);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (18, 6, 2022, 3, 3);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (19, 7, 2022, 1, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (20, 7, 2022, 2, 2);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (21, 7, 2022, 3, 4);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (22, 8, 2022, 1, 5);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (23, 8, 2022, 2, 4);
INSERT INTO public.employee_marks (id, employee_id, year, quarter, mark_id) VALUES (24, 8, 2022, 3, 2);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (2, 1, 1, 1, 4, '2000-06-02', 200000);
INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (3, 2, 1, 2, 4, '2000-04-03', 230000);
INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (4, 3, 1, 3, 4, '2000-06-05', 250000);
INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (5, 4, 2, 1, 2, '2005-01-01', 100000);
INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (6, 5, 2, 2, 2, '2010-06-20', 130000);
INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (7, 6, 2, 3, 3, '2015-07-20', 150000);
INSERT INTO public.employees (id, person_id, post_id, department_id, employee_level_id, start_date, salary) VALUES (8, 7, 2, 3, 3, '2019-05-04', 150000);


--
-- Data for Name: marks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.marks (id, name, coefficient) VALUES (1, 'A ', 0.2);
INSERT INTO public.marks (id, name, coefficient) VALUES (2, 'B ', 0.1);
INSERT INTO public.marks (id, name, coefficient) VALUES (3, 'C ', 0);
INSERT INTO public.marks (id, name, coefficient) VALUES (4, 'D ', -0.1);
INSERT INTO public.marks (id, name, coefficient) VALUES (5, 'E ', -0.2);


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (1, 'Иванов                                                                                              ', 'Иван                                                                                                ', 'Иванович                                                                                            ', '1990-02-01', true);
INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (2, 'Петров                                                                                              ', 'Роман                                                                                               ', 'Юрьевич                                                                                             ', '1987-06-05', true);
INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (3, 'Семенов                                                                                             ', 'Сергей                                                                                              ', 'Владимирович                                                                                        ', '1984-07-09', false);
INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (4, 'Баширов                                                                                             ', 'Александр                                                                                           ', 'Михайлович                                                                                          ', '2000-09-05', NULL);
INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (5, 'Павлов                                                                                              ', 'Николай                                                                                             ', 'Петрович                                                                                            ', '1980-07-23', NULL);
INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (6, 'Орлов                                                                                               ', 'Вадим                                                                                               ', 'Александрович                                                                                       ', '1997-06-06', true);
INSERT INTO public.persons (id, surname, name, patronymic, birth_date, has_driving_license) VALUES (7, 'Камов                                                                                               ', 'Михаил                                                                                              ', 'Александрович                                                                                       ', '2004-04-04', false);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.posts (id, name) VALUES (1, 'Руководитель                                                                                        ');
INSERT INTO public.posts (id, name) VALUES (2, 'Специалист                                                                                          ');


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.departments_id_seq', 3, true);


--
-- Name: employee_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employee_levels_id_seq', 4, true);


--
-- Name: employee_marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employee_marks_id_seq', 24, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employees_id_seq', 8, true);


--
-- Name: marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.marks_id_seq', 5, true);


--
-- Name: persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.persons_id_seq', 7, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 2, true);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: employee_levels employee_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_levels
    ADD CONSTRAINT employee_levels_pkey PRIMARY KEY (id);


--
-- Name: employee_marks employee_marks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_marks
    ADD CONSTRAINT employee_marks_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: marks marks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT marks_pkey PRIMARY KEY (id);


--
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: employees employees_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id) ON UPDATE CASCADE NOT VALID;


--
-- Name: employees employees_employee_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_employee_level_id_fkey FOREIGN KEY (employee_level_id) REFERENCES public.employee_levels(id) ON UPDATE CASCADE NOT VALID;


--
-- Name: employees employees_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE CASCADE NOT VALID;


--
-- Name: employees employees_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE NOT VALID;


--
-- PostgreSQL database dump complete
--

