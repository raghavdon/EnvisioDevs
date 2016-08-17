--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cordinates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cordinates (
    sno integer NOT NULL,
    place text NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE cordinates OWNER TO postgres;

--
-- Name: CORDINATES_INFO_Place_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CORDINATES_INFO_Place_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "CORDINATES_INFO_Place_seq" OWNER TO postgres;

--
-- Name: CORDINATES_INFO_Place_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CORDINATES_INFO_Place_seq" OWNED BY cordinates.place;


--
-- Name: CORDINATES_INFO_Sno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CORDINATES_INFO_Sno_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "CORDINATES_INFO_Sno_seq" OWNER TO postgres;

--
-- Name: CORDINATES_INFO_Sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CORDINATES_INFO_Sno_seq" OWNED BY cordinates.sno;


--
-- Name: sno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cordinates ALTER COLUMN sno SET DEFAULT nextval('"CORDINATES_INFO_Sno_seq"'::regclass);


--
-- Name: CORDINATES_INFO_Place_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CORDINATES_INFO_Place_seq"', 1, false);


--
-- Name: CORDINATES_INFO_Sno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CORDINATES_INFO_Sno_seq"', 1, false);


--
-- Data for Name: cordinates; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cordinates VALUES (1, 'Pune Junction railway station', 73.8743999999999943, 18.5289000000000001);
INSERT INTO cordinates VALUES (2, 'Shivajinagar railway station', 73.8516999999999939, 18.5321999999999996);
INSERT INTO cordinates VALUES (3, 'Aga Khan Palace', 73.9014999999999986, 18.5522999999999989);
INSERT INTO cordinates VALUES (4, 'Shaniwar Wada', 73.855400000000003, 18.5196000000000005);
INSERT INTO cordinates VALUES (5, 'Parvati Hill', 73.8466999999999985, 18.4969000000000001);
INSERT INTO cordinates VALUES (6, 'Rajiv Gandhi Zoological Park', 73.8598999999999961, 18.4542999999999999);
INSERT INTO cordinates VALUES (7, 'Mulshi Dam', 73.4650000000000034, 18.5441000000000003);
INSERT INTO cordinates VALUES (8, 'Raja Dinkar Kelkar Museum', 73.8545000000000016, 18.5107999999999997);
INSERT INTO cordinates VALUES (9, 'Bund Garden', 73.8816000000000059, 18.5421000000000014);
INSERT INTO cordinates VALUES (10, 'Pune Airport', 73.9086999999999961, 18.5791000000000004);


--
-- Name: CORDINATES_INFO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cordinates
    ADD CONSTRAINT "CORDINATES_INFO_pkey" PRIMARY KEY (sno);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

