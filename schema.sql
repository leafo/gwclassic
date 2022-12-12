--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

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
-- Name: gwtemp; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA gwtemp;


ALTER SCHEMA gwtemp OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: articles; Type: TABLE; Schema: gwtemp; Owner: postgres
--

CREATE TABLE gwtemp.articles (
    id bigint NOT NULL,
    title character varying(50) DEFAULT NULL::character varying,
    summary text,
    body text,
    author bigint,
    date bigint,
    topic_id bigint,
    feature character varying(10) DEFAULT ''::character varying NOT NULL,
    views bigint DEFAULT '0'::bigint NOT NULL,
    series_id bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE gwtemp.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: gwtemp; Owner: postgres
--

CREATE SEQUENCE gwtemp.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gwtemp.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: gwtemp; Owner: postgres
--

ALTER SEQUENCE gwtemp.articles_id_seq OWNED BY gwtemp.articles.id;


--
-- Name: gw_topics; Type: TABLE; Schema: gwtemp; Owner: postgres
--

CREATE TABLE gwtemp.gw_topics (
    id bigint NOT NULL,
    title character varying(99) DEFAULT ''::character varying NOT NULL,
    summary text NOT NULL,
    category character varying(99) DEFAULT ''::character varying NOT NULL,
    unixname character varying(20) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE gwtemp.gw_topics OWNER TO postgres;

--
-- Name: gw_topics_id_seq; Type: SEQUENCE; Schema: gwtemp; Owner: postgres
--

CREATE SEQUENCE gwtemp.gw_topics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gwtemp.gw_topics_id_seq OWNER TO postgres;

--
-- Name: gw_topics_id_seq; Type: SEQUENCE OWNED BY; Schema: gwtemp; Owner: postgres
--

ALTER SEQUENCE gwtemp.gw_topics_id_seq OWNED BY gwtemp.gw_topics.id;


--
-- Name: ivbmembers; Type: TABLE; Schema: gwtemp; Owner: postgres
--

CREATE TABLE gwtemp.ivbmembers (
    id integer DEFAULT 0 NOT NULL,
    name character varying(50) DEFAULT ''::character varying NOT NULL,
    mgroup smallint DEFAULT '0'::smallint NOT NULL,
    password character varying(32) DEFAULT ''::character varying NOT NULL,
    email character varying(60) DEFAULT ''::character varying NOT NULL,
    joined bigint DEFAULT '0'::bigint NOT NULL,
    ip_address character varying(16) DEFAULT ''::character varying NOT NULL,
    avatar character varying(128) DEFAULT NULL::character varying,
    avatar_size character varying(9) DEFAULT NULL::character varying,
    posts integer DEFAULT 0,
    aim_name character varying(40) DEFAULT NULL::character varying,
    icq_number character varying(40) DEFAULT NULL::character varying,
    location character varying(128) DEFAULT NULL::character varying,
    signature text,
    website character varying(70) DEFAULT NULL::character varying,
    yahoo character varying(32) DEFAULT NULL::character varying,
    title character varying(99) DEFAULT NULL::character varying,
    allow_admin_mails boolean,
    time_offset character varying(10) DEFAULT NULL::character varying,
    interests text,
    hide_email character varying(8) DEFAULT NULL::character varying,
    email_pm boolean,
    email_full boolean,
    skin smallint,
    warn_level bigint,
    warn_lastwarn bigint DEFAULT '0'::bigint NOT NULL,
    language character varying(32) DEFAULT NULL::character varying,
    msnname character varying(64) DEFAULT NULL::character varying,
    last_post bigint,
    restrict_post character varying(100) DEFAULT '0'::character varying NOT NULL,
    view_sigs boolean DEFAULT true,
    view_img boolean DEFAULT true,
    view_avs boolean DEFAULT true,
    view_pop boolean DEFAULT true,
    bday_day integer,
    bday_month integer,
    bday_year integer,
    new_msg smallint,
    msg_from_id integer,
    msg_msg_id bigint,
    msg_total smallint,
    vdirs text,
    show_popup boolean,
    misc character varying(128) DEFAULT NULL::character varying,
    last_visit bigint DEFAULT '0'::bigint,
    last_activity bigint DEFAULT '0'::bigint,
    dst_in_use boolean DEFAULT false,
    show_prefs character varying(19) DEFAULT '0;0;0;0;0;0;0;0;0;0'::character varying NOT NULL,
    view_prefs character varying(64) DEFAULT '-1&-1'::character varying,
    coppa_user boolean DEFAULT false,
    mod_posts character varying(100) DEFAULT '0'::character varying NOT NULL,
    auto_track boolean DEFAULT false,
    ignore_list bytea,
    phstate character varying(20) DEFAULT ''::character varying NOT NULL,
    org_supmod boolean DEFAULT false,
    org_perm_id character varying(255) DEFAULT ''::character varying,
    temp_ban character varying(100) DEFAULT NULL::character varying,
    integ_msg character varying(250) DEFAULT ''::character varying,
    avatar_mini character varying(20) DEFAULT ''::character varying NOT NULL,
    ban_reason character varying(90) DEFAULT ''::character varying NOT NULL,
    title_locked character varying(5) DEFAULT ''::character varying NOT NULL,
    peoplemember character varying(5) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE gwtemp.ivbmembers OWNER TO postgres;

--
-- Name: tutorials; Type: TABLE; Schema: gwtemp; Owner: postgres
--

CREATE TABLE gwtemp.tutorials (
    id bigint NOT NULL,
    title character varying(50) DEFAULT NULL::character varying,
    summary text,
    body text,
    username character varying(50) DEFAULT NULL::character varying,
    topic_id bigint DEFAULT '0'::bigint NOT NULL,
    views bigint DEFAULT '0'::bigint NOT NULL,
    writer_id bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE gwtemp.tutorials OWNER TO postgres;

--
-- Name: tutorials_id_seq; Type: SEQUENCE; Schema: gwtemp; Owner: postgres
--

CREATE SEQUENCE gwtemp.tutorials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gwtemp.tutorials_id_seq OWNER TO postgres;

--
-- Name: tutorials_id_seq; Type: SEQUENCE OWNED BY; Schema: gwtemp; Owner: postgres
--

ALTER SEQUENCE gwtemp.tutorials_id_seq OWNED BY gwtemp.tutorials.id;


--
-- Name: articles id; Type: DEFAULT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.articles ALTER COLUMN id SET DEFAULT nextval('gwtemp.articles_id_seq'::regclass);


--
-- Name: gw_topics id; Type: DEFAULT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.gw_topics ALTER COLUMN id SET DEFAULT nextval('gwtemp.gw_topics_id_seq'::regclass);


--
-- Name: tutorials id; Type: DEFAULT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.tutorials ALTER COLUMN id SET DEFAULT nextval('gwtemp.tutorials_id_seq'::regclass);


--
-- Name: articles idx_19268566_primary; Type: CONSTRAINT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.articles
    ADD CONSTRAINT idx_19268566_primary PRIMARY KEY (id);


--
-- Name: gw_topics idx_19268577_primary; Type: CONSTRAINT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.gw_topics
    ADD CONSTRAINT idx_19268577_primary PRIMARY KEY (id);


--
-- Name: ivbmembers idx_19268586_primary; Type: CONSTRAINT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.ivbmembers
    ADD CONSTRAINT idx_19268586_primary PRIMARY KEY (id);


--
-- Name: tutorials idx_19268636_primary; Type: CONSTRAINT; Schema: gwtemp; Owner: postgres
--

ALTER TABLE ONLY gwtemp.tutorials
    ADD CONSTRAINT idx_19268636_primary PRIMARY KEY (id);


--
-- Name: idx_19268566_id; Type: INDEX; Schema: gwtemp; Owner: postgres
--

CREATE INDEX idx_19268566_id ON gwtemp.articles USING btree (id);


--
-- Name: idx_19268586_bday_day; Type: INDEX; Schema: gwtemp; Owner: postgres
--

CREATE INDEX idx_19268586_bday_day ON gwtemp.ivbmembers USING btree (bday_day);


--
-- Name: idx_19268586_bday_month; Type: INDEX; Schema: gwtemp; Owner: postgres
--

CREATE INDEX idx_19268586_bday_month ON gwtemp.ivbmembers USING btree (bday_month);


--
-- Name: idx_19268586_mgroup; Type: INDEX; Schema: gwtemp; Owner: postgres
--

CREATE INDEX idx_19268586_mgroup ON gwtemp.ivbmembers USING btree (mgroup);


--
-- Name: idx_19268586_name; Type: INDEX; Schema: gwtemp; Owner: postgres
--

CREATE INDEX idx_19268586_name ON gwtemp.ivbmembers USING btree (name);


--
-- PostgreSQL database dump complete
--

