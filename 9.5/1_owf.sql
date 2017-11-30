--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.application_configuration DROP CONSTRAINT fkfc9c047e31cb353;
ALTER TABLE ONLY public.application_configuration DROP CONSTRAINT fkfc9c0477666c6d2;
ALTER TABLE ONLY public.dashboard DROP CONSTRAINT fkc18aea948656347d;
ALTER TABLE ONLY public.dashboard DROP CONSTRAINT fkc18aea947028b8db;
ALTER TABLE ONLY public.dashboard DROP CONSTRAINT fkc18aea946b3a1281;
ALTER TABLE ONLY public.dashboard DROP CONSTRAINT fkc18aea94372cc5a;
ALTER TABLE ONLY public.preference DROP CONSTRAINT fka8fcbcdb8656347d;
ALTER TABLE ONLY public.stack_groups DROP CONSTRAINT fk9584ab6b6b3a1281;
ALTER TABLE ONLY public.stack_groups DROP CONSTRAINT fk9584ab6b3b197b21;
ALTER TABLE ONLY public.widget_def_intent_data_types DROP CONSTRAINT fk8a59d92fd46c6fad;
ALTER TABLE ONLY public.widget_def_intent DROP CONSTRAINT fk8a59d92fd46c6fac;
ALTER TABLE ONLY public.widget_def_intent DROP CONSTRAINT fk8a59d92fd46c6fab;
ALTER TABLE ONLY public.intent_data_types DROP CONSTRAINT fk8a59d92fd46c6faa;
ALTER TABLE ONLY public.widget_definition_widget_types DROP CONSTRAINT fk8a59d92fd46c6f7c;
ALTER TABLE ONLY public.widget_def_intent_data_types DROP CONSTRAINT fk8a59d92fd41a6fad;
ALTER TABLE ONLY public.widget_definition_widget_types DROP CONSTRAINT fk8a59d92f293a835c;
ALTER TABLE ONLY public.intent_data_types DROP CONSTRAINT fk8a59132fd46c6faa;
ALTER TABLE ONLY public.tag_links DROP CONSTRAINT fk7c35d6d45a3b441d;
ALTER TABLE ONLY public.person_widget_definition DROP CONSTRAINT fk6f5c17c4c1f5e0b3;
ALTER TABLE ONLY public.person_widget_definition DROP CONSTRAINT fk6f5c17c4293a835c;
ALTER TABLE ONLY public.stack DROP CONSTRAINT fk68ac2888656347d;
ALTER TABLE ONLY public.stack DROP CONSTRAINT fk68ac28835014f5f;
ALTER TABLE ONLY public.owf_group_people DROP CONSTRAINT fk2811370c1f5e0b3;
ALTER TABLE ONLY public.owf_group_people DROP CONSTRAINT fk28113703b197b21;
DROP INDEX public.fkfc9c047e31cb353;
DROP INDEX public.fkfc9c0477666c6d2;
DROP INDEX public.fk68ac2888656347d;
DROP INDEX public.domain_mapping_all;
DROP INDEX public.app_config_group_name_idx;
ALTER TABLE ONLY public.widget_type DROP CONSTRAINT "widget_typePK";
ALTER TABLE ONLY public.widget_definition_widget_types DROP CONSTRAINT widget_definition_widget_types_pkey;
ALTER TABLE ONLY public.widget_definition DROP CONSTRAINT widget_definition_widget_guid_key;
ALTER TABLE ONLY public.widget_definition DROP CONSTRAINT widget_definition_pkey;
ALTER TABLE ONLY public.widget_def_intent DROP CONSTRAINT "widget_def_intentPK";
ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_name_key;
ALTER TABLE ONLY public.tag_links DROP CONSTRAINT tag_links_pkey;
ALTER TABLE ONLY public.stack DROP CONSTRAINT stack_stack_context_key;
ALTER TABLE ONLY public.stack DROP CONSTRAINT "stackPK";
ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT role_authority_key;
ALTER TABLE ONLY public.requestmap DROP CONSTRAINT requestmap_url_key;
ALTER TABLE ONLY public.requestmap DROP CONSTRAINT requestmap_pkey;
ALTER TABLE ONLY public.preference DROP CONSTRAINT preference_pkey;
ALTER TABLE ONLY public.preference DROP CONSTRAINT preference_path_namespace_user_id_key;
ALTER TABLE ONLY public.stack_groups DROP CONSTRAINT pk_stack_groups;
ALTER TABLE ONLY public.databasechangeloglock DROP CONSTRAINT pk_databasechangeloglock;
ALTER TABLE ONLY public.databasechangelog DROP CONSTRAINT pk_databasechangelog;
ALTER TABLE ONLY public.person_widget_definition DROP CONSTRAINT person_widget_definition_pkey;
ALTER TABLE ONLY public.person_widget_definition DROP CONSTRAINT person_widget_definition_person_id_widget_definition_id_key;
ALTER TABLE ONLY public.person DROP CONSTRAINT person_username_key;
ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
ALTER TABLE ONLY public.owf_group DROP CONSTRAINT owf_group_pkey;
ALTER TABLE ONLY public.owf_group_people DROP CONSTRAINT owf_group_people_pkey;
ALTER TABLE ONLY public.intent_data_type DROP CONSTRAINT "intent_data_typePK";
ALTER TABLE ONLY public.intent DROP CONSTRAINT intent_action_key;
ALTER TABLE ONLY public.intent DROP CONSTRAINT "intentPK";
ALTER TABLE ONLY public.domain_mapping DROP CONSTRAINT domain_mapping_pkey;
ALTER TABLE ONLY public.dashboard DROP CONSTRAINT dashboard_pkey;
ALTER TABLE ONLY public.dashboard DROP CONSTRAINT dashboard_guid_key;
ALTER TABLE ONLY public.application_configuration DROP CONSTRAINT application_configuration_code_key;
ALTER TABLE ONLY public.application_configuration DROP CONSTRAINT "application_configurationPK";
ALTER TABLE public.widget_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.widget_def_intent ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.stack ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.intent_data_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.intent ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.application_configuration ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.widget_type_id_seq;
DROP TABLE public.widget_type;
DROP TABLE public.widget_definition_widget_types;
DROP TABLE public.widget_definition;
DROP SEQUENCE public.widget_def_intent_id_seq;
DROP TABLE public.widget_def_intent_data_types;
DROP TABLE public.widget_def_intent;
DROP TABLE public.tags;
DROP TABLE public.tag_links;
DROP SEQUENCE public.stack_id_seq;
DROP TABLE public.stack_groups;
DROP TABLE public.stack;
DROP TABLE public.role;
DROP TABLE public.requestmap;
DROP TABLE public.preference;
DROP TABLE public.person_widget_definition;
DROP TABLE public.person_role;
DROP TABLE public.person;
DROP TABLE public.owf_group_people;
DROP TABLE public.owf_group;
DROP SEQUENCE public.intent_id_seq;
DROP TABLE public.intent_data_types;
DROP SEQUENCE public.intent_data_type_id_seq;
DROP TABLE public.intent_data_type;
DROP TABLE public.intent;
DROP TABLE public.domain_mapping;
DROP TABLE public.databasechangeloglock;
DROP TABLE public.databasechangelog;
DROP TABLE public.dashboard;
DROP SEQUENCE public.hibernate_sequence;
DROP SEQUENCE public.application_configuration_id_seq;
DROP TABLE public.application_configuration;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


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
-- Name: application_configuration; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE application_configuration (
    id bigint NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    created_by_id bigint,
    created_date date,
    edited_by_id bigint,
    edited_date date,
    code character varying(250) NOT NULL,
    value character varying(2000),
    title character varying(250) NOT NULL,
    description character varying(2000),
    type character varying(250) NOT NULL,
    group_name character varying(250) NOT NULL,
    sub_group_name character varying(250),
    mutable boolean NOT NULL,
    sub_group_order bigint,
    help character varying(2000)
);


ALTER TABLE application_configuration OWNER TO owf;

--
-- Name: application_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE application_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE application_configuration_id_seq OWNER TO owf;

--
-- Name: application_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: owf
--

ALTER SEQUENCE application_configuration_id_seq OWNED BY application_configuration.id;


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE hibernate_sequence
    START WITH 700
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO owf;

--
-- Name: dashboard; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE dashboard (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    isdefault boolean NOT NULL,
    dashboard_position integer NOT NULL,
    altered_by_admin boolean NOT NULL,
    guid character varying(255) NOT NULL,
    name character varying(200) NOT NULL,
    user_id bigint,
    description character varying(4000),
    created_by_id bigint,
    created_date timestamp with time zone,
    edited_by_id bigint,
    edited_date timestamp with time zone,
    layout_config text,
    locked boolean DEFAULT false,
    stack_id bigint,
    type character varying(255),
    icon_image_url character varying(2083),
    published_to_store boolean,
    marked_for_deletion boolean
);


ALTER TABLE dashboard OWNER TO owf;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE databasechangelog (
    id character varying(63) NOT NULL,
    author character varying(63) NOT NULL,
    filename character varying(200) NOT NULL,
    dateexecuted timestamp with time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20)
);


ALTER TABLE databasechangelog OWNER TO owf;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp with time zone,
    lockedby character varying(255)
);


ALTER TABLE databasechangeloglock OWNER TO owf;

--
-- Name: domain_mapping; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE domain_mapping (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    src_id bigint NOT NULL,
    src_type character varying(255) NOT NULL,
    relationship_type character varying(8),
    dest_id bigint NOT NULL,
    dest_type character varying(255) NOT NULL
);


ALTER TABLE domain_mapping OWNER TO owf;

--
-- Name: intent; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE intent (
    id bigint NOT NULL,
    version bigint NOT NULL,
    action character varying(255) NOT NULL
);


ALTER TABLE intent OWNER TO owf;

--
-- Name: intent_data_type; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE intent_data_type (
    id bigint NOT NULL,
    version bigint NOT NULL,
    data_type character varying(255) NOT NULL
);


ALTER TABLE intent_data_type OWNER TO owf;

--
-- Name: intent_data_type_id_seq; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE intent_data_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE intent_data_type_id_seq OWNER TO owf;

--
-- Name: intent_data_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: owf
--

ALTER SEQUENCE intent_data_type_id_seq OWNED BY intent_data_type.id;


--
-- Name: intent_data_types; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE intent_data_types (
    intent_data_type_id bigint NOT NULL,
    intent_id bigint NOT NULL
);


ALTER TABLE intent_data_types OWNER TO owf;

--
-- Name: intent_id_seq; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE intent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE intent_id_seq OWNER TO owf;

--
-- Name: intent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: owf
--

ALTER SEQUENCE intent_id_seq OWNED BY intent.id;


--
-- Name: owf_group; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE owf_group (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    status character varying(8) NOT NULL,
    email character varying(255),
    description character varying(255),
    name character varying(200) NOT NULL,
    automatic boolean NOT NULL,
    display_name character varying(200),
    stack_default boolean DEFAULT false
);


ALTER TABLE owf_group OWNER TO owf;

--
-- Name: owf_group_people; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE owf_group_people (
    group_id bigint NOT NULL,
    person_id bigint NOT NULL
);


ALTER TABLE owf_group_people OWNER TO owf;

--
-- Name: person; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE person (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    enabled boolean NOT NULL,
    user_real_name character varying(200) NOT NULL,
    username character varying(200) NOT NULL,
    last_login timestamp without time zone,
    email_show boolean NOT NULL,
    email character varying(255),
    prev_login timestamp without time zone,
    description character varying(255),
    last_notification timestamp with time zone,
    requires_sync boolean DEFAULT false
);


ALTER TABLE person OWNER TO owf;

--
-- Name: person_role; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE person_role (
    person_authorities_id bigint,
    role_id bigint
);


ALTER TABLE person_role OWNER TO owf;

--
-- Name: person_widget_definition; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE person_widget_definition (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    person_id bigint NOT NULL,
    visible boolean NOT NULL,
    pwd_position integer NOT NULL,
    widget_definition_id bigint NOT NULL,
    group_widget boolean DEFAULT false,
    favorite boolean DEFAULT false,
    display_name character varying(256),
    disabled boolean DEFAULT false,
    user_widget boolean DEFAULT false
);


ALTER TABLE person_widget_definition OWNER TO owf;

--
-- Name: preference; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE preference (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    value text NOT NULL,
    path character varying(200) NOT NULL,
    user_id bigint NOT NULL,
    namespace character varying(200) NOT NULL
);


ALTER TABLE preference OWNER TO owf;

--
-- Name: requestmap; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE requestmap (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    url character varying(255) NOT NULL,
    config_attribute character varying(255) NOT NULL
);


ALTER TABLE requestmap OWNER TO owf;

--
-- Name: role; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE role (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    authority character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE role OWNER TO owf;

--
-- Name: stack; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE stack (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(256) NOT NULL,
    description character varying(4000),
    stack_context character varying(200) NOT NULL,
    image_url character varying(2083),
    descriptor_url character varying(2083),
    unique_widget_count bigint DEFAULT '0'::bigint,
    owner_id bigint,
    approved boolean,
    default_group_id bigint
);


ALTER TABLE stack OWNER TO owf;

--
-- Name: stack_groups; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE stack_groups (
    group_id bigint NOT NULL,
    stack_id bigint NOT NULL
);


ALTER TABLE stack_groups OWNER TO owf;

--
-- Name: stack_id_seq; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE stack_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stack_id_seq OWNER TO owf;

--
-- Name: stack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: owf
--

ALTER SEQUENCE stack_id_seq OWNED BY stack.id;


--
-- Name: tag_links; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE tag_links (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    pos bigint,
    visible boolean,
    tag_ref bigint NOT NULL,
    tag_id bigint NOT NULL,
    type character varying(255) NOT NULL,
    editable boolean
);


ALTER TABLE tag_links OWNER TO owf;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE tags (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE tags OWNER TO owf;

--
-- Name: widget_def_intent; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE widget_def_intent (
    id bigint NOT NULL,
    version bigint NOT NULL,
    receive boolean NOT NULL,
    send boolean NOT NULL,
    intent_id bigint NOT NULL,
    widget_definition_id bigint NOT NULL
);


ALTER TABLE widget_def_intent OWNER TO owf;

--
-- Name: widget_def_intent_data_types; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE widget_def_intent_data_types (
    intent_data_type_id bigint NOT NULL,
    widget_definition_intent_id bigint NOT NULL
);


ALTER TABLE widget_def_intent_data_types OWNER TO owf;

--
-- Name: widget_def_intent_id_seq; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE widget_def_intent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE widget_def_intent_id_seq OWNER TO owf;

--
-- Name: widget_def_intent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: owf
--

ALTER SEQUENCE widget_def_intent_id_seq OWNED BY widget_def_intent.id;


--
-- Name: widget_definition; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE widget_definition (
    id bigint DEFAULT nextval('hibernate_sequence'::regclass) NOT NULL,
    version bigint NOT NULL,
    visible boolean NOT NULL,
    image_url_medium character varying(2083) NOT NULL,
    image_url_small character varying(2083) NOT NULL,
    singleton boolean NOT NULL,
    width integer NOT NULL,
    widget_version character varying(2083),
    height integer NOT NULL,
    widget_url character varying(2083) NOT NULL,
    widget_guid character varying(255) NOT NULL,
    display_name character varying(256) NOT NULL,
    background boolean,
    universal_name character varying(255),
    descriptor_url character varying(2083),
    description character varying(4000) DEFAULT ''::character varying,
    mobile_ready boolean DEFAULT false NOT NULL
);


ALTER TABLE widget_definition OWNER TO owf;

--
-- Name: widget_definition_widget_types; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE widget_definition_widget_types (
    widget_definition_id bigint NOT NULL,
    widget_type_id bigint NOT NULL
);


ALTER TABLE widget_definition_widget_types OWNER TO owf;

--
-- Name: widget_type; Type: TABLE; Schema: public; Owner: owf
--

CREATE TABLE widget_type (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(256) NOT NULL
);


ALTER TABLE widget_type OWNER TO owf;

--
-- Name: widget_type_id_seq; Type: SEQUENCE; Schema: public; Owner: owf
--

CREATE SEQUENCE widget_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE widget_type_id_seq OWNER TO owf;

--
-- Name: widget_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: owf
--

ALTER SEQUENCE widget_type_id_seq OWNED BY widget_type.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: owf
--

ALTER TABLE ONLY application_configuration ALTER COLUMN id SET DEFAULT nextval('application_configuration_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent ALTER COLUMN id SET DEFAULT nextval('intent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent_data_type ALTER COLUMN id SET DEFAULT nextval('intent_data_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack ALTER COLUMN id SET DEFAULT nextval('stack_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_def_intent ALTER COLUMN id SET DEFAULT nextval('widget_def_intent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_type ALTER COLUMN id SET DEFAULT nextval('widget_type_id_seq'::regclass);


--
-- Data for Name: application_configuration; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY application_configuration (id, version, created_by_id, created_date, edited_by_id, edited_date, code, value, title, description, type, group_name, sub_group_name, mutable, sub_group_order, help) FROM stdin;
1	0	\N	\N	\N	\N	owf.enable.cef.logging	true	 	\N	Boolean	AUDITING	\N	t	1	\N
2	0	\N	\N	\N	\N	owf.enable.cef.object.access.logging	false	 	\N	Boolean	AUDITING	\N	t	2	\N
3	0	\N	\N	\N	\N	owf.enable.cef.log.sweep	true	 	\N	Boolean	AUDITING	\N	t	3	\N
4	0	\N	\N	\N	\N	owf.cef.log.location	/usr/share/tomcat6	 	\N	String	AUDITING	\N	t	4	\N
5	0	\N	\N	\N	\N	owf.cef.sweep.log.location	/var/log/cef	 	\N	String	AUDITING	\N	t	5	\N
6	0	\N	\N	\N	\N	owf.security.level	\N	 	\N	String	AUDITING	\N	t	6	\N
7	0	\N	\N	\N	\N	owf.session.control.enabled	false	 	\N	Boolean	USER_ACCOUNT_SETTINGS	Session Control	t	1	\N
8	0	\N	\N	\N	\N	owf.session.control.max.concurrent	1	 	\N	Integer	USER_ACCOUNT_SETTINGS	Session Control	t	2	\N
9	0	\N	\N	\N	\N	owf.disable.inactive.accounts	true	 	\N	Boolean	USER_ACCOUNT_SETTINGS	Inactive Accounts	t	1	\N
10	0	\N	\N	\N	\N	owf.inactivity.threshold	90	 	\N	Integer	USER_ACCOUNT_SETTINGS	Inactive Accounts	t	2	\N
11	0	\N	\N	\N	\N	owf.job.disable.accounts.start.time	23:59:59	 	\N	String	HIDDEN	\N	t	1	\N
12	0	\N	\N	\N	\N	owf.job.disable.accounts.interval	1440	 	\N	Integer	HIDDEN	\N	t	2	\N
13	0	\N	\N	\N	\N	owf.custom.background.url		 	\N	String	BRANDING	Custom Background	t	1	\N
14	0	\N	\N	\N	\N	owf.custom.header.url	\N	 	\N	String	BRANDING	Custom Header and Footer	t	1	\N
15	0	\N	\N	\N	\N	owf.custom.header.height	0	 	\N	Integer	BRANDING	Custom Header and Footer	t	2	\N
16	0	\N	\N	\N	\N	owf.custom.footer.url	\N	 	\N	String	BRANDING	Custom Header and Footer	t	3	\N
17	0	\N	\N	\N	\N	owf.custom.footer.height	0	 	\N	Integer	BRANDING	Custom Header and Footer	t	4	\N
18	0	\N	\N	\N	\N	owf.custom.css	\N	 	\N	String	BRANDING	Custom Header and Footer	t	5	\N
19	0	\N	\N	\N	\N	owf.custom.jss	\N	 	\N	String	BRANDING	Custom Header and Footer	t	6	\N
20	0	\N	\N	\N	\N	free.warning.content	\N	 	\N	String	BRANDING	\N	t	1	\N
\.


--
-- Name: application_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('application_configuration_id_seq', 28, true);


--
-- Data for Name: dashboard; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY dashboard (id, version, isdefault, dashboard_position, altered_by_admin, guid, name, user_id, description, created_by_id, created_date, edited_by_id, edited_date, layout_config, locked, stack_id, type, icon_image_url, published_to_store, marked_for_deletion) FROM stdin;
5	0	f	1	f	cbb92835-7d13-41dc-8f28-3eba59a6a6d5	Apps	\N	Administer the Apps in the system.	\N	\N	\N	\N	{"widgets":[{"universalName":"org.ozoneplatform.owf.admin.appmanagement","widgetGuid":"391dd2af-a207-41a3-8e51-2b20ec3e7241","uniqueId":"bf05736e-a52e-d4ee-7da5-4e39c6df53c8","dashboardGuid":"cbb92835-7d13-41dc-8f28-3eba59a6a6d5","paneGuid":"6ff1c292-9689-4240-7cd8-e4a251978395","intentConfig":null,"launchData":null,"name":"Apps","active":true,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":973,"width":1554}],"height":"100%","items":[],"xtype":"fitpane","flex":1,"paneType":"fitpane","defaultSettings":{}}	f	1		themes/common/images/adm-tools/Stacks64.png	t	f
6	0	f	2	f	2fc20999-01a6-4275-83f4-f7c68d03d938	App Components	\N	Administer the App Components in the system.	\N	\N	\N	\N	{"widgets":[{"universalName":"org.ozoneplatform.owf.admin.appcomponentmanagement","widgetGuid":"48edfe94-4291-4991-a648-c19a903a663b","uniqueId":"fa442c1d-d23e-51a9-3be8-39b203c7d95d","dashboardGuid":"2fc20999-01a6-4275-83f4-f7c68d03d938","paneGuid":"49762ea2-42cc-9e76-b6be-c60bd7ae9c03","intentConfig":null,"launchData":null,"name":"App Components","active":false,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":973,"width":1554}],"height":"100%","items":[],"xtype":"fitpane","flex":1,"paneType":"fitpane","defaultSettings":{}}	f	1		themes/common/images/adm-tools/Widgets64.png	t	f
7	0	f	3	f	94bf7ed8-bed9-45ad-933b-4d85584cb483	Users and Groups	\N	Administer the Users and Groups in the system.	\N	\N	\N	\N	{"xtype":"container","cls":"hbox ","layout":{"type":"hbox","align":"stretch"},"items":[{"xtype":"fitpane","cls":"left","flex":1,"htmlText":"50%","items":[],"widgets":[{"universalName":"org.ozoneplatform.owf.admin.usermanagement","widgetGuid":"38070c45-5f6a-4460-810c-6e3496495ec4","uniqueId":"53783596-8233-9e34-4f91-72e92328785d","dashboardGuid":"94bf7ed8-bed9-45ad-933b-4d85584cb483","paneGuid":"7f3657f1-b391-4ab5-f6be-e4393ea5d72d","intentConfig":null,"launchData":null,"name":"Users","active":true,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":973,"width":775}],"paneType":"fitpane","defaultSettings":{"widgetStates":{"101f119e-b56a-4e16-8219-11048c020038":{"x":94,"y":199,"height":440,"width":581,"timestamp":1377274970150}}}},{"xtype":"dashboardsplitter"},{"xtype":"fitpane","cls":"right","flex":1,"htmlText":"50%","items":[],"paneType":"fitpane","widgets":[{"universalName":"org.ozoneplatform.owf.admin.groupmanagement","widgetGuid":"53a2a879-442c-4012-9215-a17604dedff7","uniqueId":"3e0647e3-62b4-cd08-6d6b-9ece1670b10e","dashboardGuid":"94bf7ed8-bed9-45ad-933b-4d85584cb483","paneGuid":"e9746a83-a610-6b01-43c4-d543278729b4","intentConfig":null,"launchData":null,"name":"Groups","active":true,"x":779,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":973,"width":775}],"defaultSettings":{"widgetStates":{"d6ce3375-6e89-45ab-a7be-b6cf3abb0e8c":{"x":0,"y":0,"height":440,"width":581,"timestamp":1377274968504}}}}],"flex":1}	f	1		themes/common/images/adm-tools/Groups64.png	t	f
8	0	f	4	f	976cbf75-5537-410f-88a3-375c5cf970bc	Configuration	\N	Administer the system configuration.	\N	\N	\N	\N	{"widgets":[{"universalName":"org.ozoneplatform.owf.admin.configuration","widgetGuid":"af180bfc-3924-4111-93de-ad6e9bfc060e","uniqueId":"8e7d717c-cece-3d18-c060-c3946d5e7f55","dashboardGuid":"976cbf75-5537-410f-88a3-375c5cf970bc","paneGuid":"7cd8017a-f948-7728-0e20-5b5c2182a432","intentConfig":null,"launchData":null,"name":"Configuration","active":false,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":973,"width":1554}],"height":"100%","items":[],"xtype":"fitpane","flex":1,"paneType":"fitpane","defaultSettings":{}}	f	1		themes/common/images/adm-tools/Configuration64.png	t	f
726	3	f	1	f	315b0327-d5ac-4155-a16f-ec3f769abcd4	Apps	1	Administer the Apps in the system.	\N	2017-07-23 19:31:24.054-04	\N	2017-07-23 19:31:24.054-04	{"xtype":"fitpane","flex":1,"widgets":[{"universalName":"org.ozoneplatform.owf.admin.appmanagement","widgetGuid":"391dd2af-a207-41a3-8e51-2b20ec3e7241","uniqueId":"6c9e2921-fc45-454a-baeb-6ed8e9a68ccb","dashboardGuid":"315b0327-d5ac-4155-a16f-ec3f769abcd4","paneGuid":"6afc09da-6bf2-a23a-8d76-f13df507e072","intentConfig":null,"launchData":null,"name":"Apps","active":true,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":653,"width":1330}],"items":[],"paneType":"fitpane","height":"100%","defaultSettings":{}}	f	1	\N	themes/common/images/adm-tools/Stacks64.png	t	f
732	0	f	4	f	4a4a01da-1bc9-4b9f-89c1-2506a5e77048	Configuration	1	Administer the system configuration.	\N	2017-07-23 19:31:24.34-04	\N	2017-07-23 19:31:24.34-04	{"xtype":"fitpane","flex":1,"widgets":[{"pinned":false,"collapsed":false,"widgetGuid":"af180bfc-3924-4111-93de-ad6e9bfc060e","columnPos":0,"minimized":false,"floatingWidget":false,"buttonId":null,"universalName":"org.ozoneplatform.owf.admin.configuration","intentConfig":null,"zIndex":0,"height":973,"singleton":false,"maximized":false,"active":false,"statePosition":1,"dashboardGuid":"976cbf75-5537-410f-88a3-375c5cf970bc","buttonOpened":false,"paneGuid":"7cd8017a-f948-7728-0e20-5b5c2182a432","launchData":null,"name":"Configuration","x":0,"width":1554,"y":33,"region":"none","uniqueId":"255321a7-2d15-4081-88d3-6b72e379844b"}],"items":[],"paneType":"fitpane","height":"100%","defaultSettings":{}}	f	1	\N	themes/common/images/adm-tools/Configuration64.png	t	f
895	0	f	0	f	47265128-3b6e-1e6e-53cd-3905cd463124	Untitled	\N	\N	\N	2017-07-23 19:58:25.815-04	\N	2017-07-23 19:58:25.815-04	{"xtype":"container","flex":1,"items":[],"paneType":"","height":"100%"}	f	894	\N	\N	t	f
856	0	f	5	f	26f20c5f-3003-504f-d28b-3880ef3eca83	OPT	\N	\N	\N	2017-07-23 19:48:19.325-04	\N	2017-07-23 19:48:19.325-04	{"xtype":"container","flex":1,"widgets":[],"items":[],"paneType":"desktoppane","height":"100%"}	f	855	\N	\N	f	f
889	0	f	0	f	e38bc518-efc5-a526-fb30-ca983f5e09b9	Untitled	\N	\N	\N	2017-07-23 19:57:30.05-04	\N	2017-07-23 19:57:30.05-04	{"xtype":"container","flex":1,"items":[],"paneType":"","height":"100%"}	f	888	\N	\N	t	f
942	2	f	0	f	5f619561-f880-4444-b469-7423d6a5f9a4	Untitled	3	\N	\N	2017-07-23 20:02:11.49-04	\N	2017-07-23 20:02:11.49-04	{"xtype":"tabbedpane","flex":1,"items":[],"paneType":"tabbedpane","height":"100%","widgets":[],"defaultSettings":{}}	f	939	\N	\N	t	f
901	0	f	1	f	a07462c5-7b55-9285-dd4e-acb455e18ba9	OPT	\N	\N	\N	2017-07-23 19:58:33.633-04	\N	2017-07-23 19:58:33.633-04	{"xtype":"container","flex":1,"widgets":[],"items":[],"paneType":"desktoppane","height":"100%"}	f	900	\N	\N	f	f
897	2	f	0	f	a373219d-dbdb-4707-8051-d9541e225d39	Untitled	2	\N	\N	2017-07-23 19:58:25.877-04	\N	2017-07-23 19:58:25.877-04	{"xtype":"tabbedpane","flex":1,"items":[],"paneType":"tabbedpane","height":"100%","widgets":[],"defaultSettings":{}}	f	894	\N	\N	t	f
730	2	f	3	f	4324202d-2d47-4dca-8d70-d1deb96962f3	Users and Groups	1	Administer the Users and Groups in the system.	\N	2017-07-23 19:31:24.258-04	\N	2017-07-23 19:31:24.258-04	{"layout":{"type":"hbox","align":"stretch"},"xtype":"container","flex":1,"cls":"hbox ","items":[{"xtype":"fitpane","flex":1,"cls":"left","widgets":[{"universalName":"org.ozoneplatform.owf.admin.usermanagement","widgetGuid":"38070c45-5f6a-4460-810c-6e3496495ec4","uniqueId":"3eabc870-e22a-40e7-8b42-9b60f9228859","dashboardGuid":"4324202d-2d47-4dca-8d70-d1deb96962f3","paneGuid":"b414381b-949a-a0d4-0192-75501752f4e8","intentConfig":null,"launchData":null,"name":"Users","active":false,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":715,"width":664}],"items":[],"htmlText":"50%","paneType":"fitpane","defaultSettings":{"widgetStates":{"101f119e-b56a-4e16-8219-11048c020038":{"x":94,"width":581,"y":199,"height":440,"timestamp":1377274970150}}}},{"xtype":"dashboardsplitter"},{"xtype":"fitpane","flex":1,"cls":"right","widgets":[{"universalName":"org.ozoneplatform.owf.admin.groupmanagement","widgetGuid":"53a2a879-442c-4012-9215-a17604dedff7","uniqueId":"482f2be7-afd5-47e7-9500-3311dc70ee55","dashboardGuid":"4324202d-2d47-4dca-8d70-d1deb96962f3","paneGuid":"09badf51-faa6-ddb4-f7ac-239ab9b2adb0","intentConfig":null,"launchData":null,"name":"Groups","active":true,"x":667,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":715,"width":663}],"items":[],"htmlText":"50%","paneType":"fitpane","defaultSettings":{"widgetStates":{"d6ce3375-6e89-45ab-a7be-b6cf3abb0e8c":{"x":0,"width":581,"y":0,"height":440,"timestamp":1377274968504},"a9bf8e71-692d-44e3-a465-5337ce5e725e":{"x":0,"y":0,"height":440,"width":581,"timestamp":1501713522920}}}}]}	f	1	\N	themes/common/images/adm-tools/Groups64.png	t	f
728	5	f	2	f	57a6d2cb-0def-4da5-bf88-35364be5634e	App Components	1	Administer the App Components in the system.	\N	2017-07-23 19:31:24.176-04	\N	2017-07-23 19:31:24.176-04	{"xtype":"fitpane","flex":1,"widgets":[{"universalName":"org.ozoneplatform.owf.admin.appcomponentmanagement","widgetGuid":"48edfe94-4291-4991-a648-c19a903a663b","uniqueId":"0f97f449-cf3b-4ce1-bd5b-4af591687154","dashboardGuid":"57a6d2cb-0def-4da5-bf88-35364be5634e","paneGuid":"c1c040a5-7fb7-dcc8-d42e-64431e212e37","intentConfig":null,"launchData":null,"name":"App Components","active":false,"x":0,"y":33,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":1,"singleton":false,"floatingWidget":false,"height":715,"width":1330}],"items":[],"paneType":"fitpane","height":"100%","defaultSettings":{"widgetStates":{"679294b3-ccc3-4ace-a061-e3f27ed86451":{"x":0,"y":0,"height":440,"width":581,"timestamp":1500853592941}}}}	f	1	\N	themes/common/images/adm-tools/Widgets64.png	t	f
934	0	f	0	f	aeab3db5-1fee-d424-ff67-f68108dbfd83	Untitled	\N	\N	\N	2017-07-23 20:02:02.179-04	\N	2017-07-23 20:02:02.179-04	{"xtype":"container","flex":1,"items":[],"paneType":"","height":"100%"}	f	933	\N	\N	t	f
940	0	f	0	f	31491d47-0492-a023-a699-8e6a18041778	Untitled	\N	\N	\N	2017-07-23 20:02:11.459-04	\N	2017-07-23 20:02:11.459-04	{"xtype":"container","flex":1,"items":[],"paneType":"","height":"100%"}	f	939	\N	\N	t	f
946	0	f	1	f	47ec1cc3-a52c-87f9-7772-6b5113651fd7	OPT	\N	\N	\N	2017-07-23 20:02:17.152-04	\N	2017-07-23 20:02:17.152-04	{"xtype":"container","flex":1,"widgets":[],"items":[],"paneType":"desktoppane","height":"100%"}	f	945	\N	\N	f	f
948	2	t	1	f	3540c2fc-8972-484b-9a7f-353d18e85ada	OPT	3	\N	\N	2017-07-23 20:02:17.201-04	\N	2017-07-23 20:02:17.201-04	{"xtype":"desktoppane","flex":1,"widgets":[{"collapsed":undefined},{"collapsed":undefined},{"universalName":"opt.scheduler","widgetGuid":"525895bd-53f1-99f7-93c2-c826c6fdc784","uniqueId":"fda1316b-2256-7d5a-7369-df6c3699f953","dashboardGuid":"3540c2fc-8972-484b-9a7f-353d18e85ada","paneGuid":"10119e45-69da-e9aa-18e6-fdd1ff027ce3","name":"OPT Scheduler","active":false,"x":0,"y":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":3,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19000,"height":627,"width":393},{"universalName":"opt.esri.map","widgetGuid":"7ef2698d-45f8-6f58-0493-ff3aa334a183","uniqueId":"8bb3d768-7013-48cd-8d2c-48d6d9024974","dashboardGuid":"3540c2fc-8972-484b-9a7f-353d18e85ada","paneGuid":"10119e45-69da-e9aa-18e6-fdd1ff027ce3","name":"ESRI Map","active":false,"x":392,"y":-1,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":4,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19010,"height":579,"width":937},{"universalName":"opt.timeline","widgetGuid":"0f2cc273-cd17-d32a-3d18-9f0c2614f028","uniqueId":"9030aec8-074c-5f8f-2b51-e73dc6496b67","dashboardGuid":"3540c2fc-8972-484b-9a7f-353d18e85ada","paneGuid":"10119e45-69da-e9aa-18e6-fdd1ff027ce3","name":"Time Line","active":true,"x":392,"y":229,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":5,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19020,"height":400,"width":937},{"uniqueId":"51f2d53e-1677-9805-9693-bbba41cef9a0","dashboardGuid":"3540c2fc-8972-484b-9a7f-353d18e85ada","paneGuid":"10119e45-69da-e9aa-18e6-fdd1ff027ce3","widgetGuid":"d1be515b-e97a-61d6-f727-109a2f7520fa","statePosition":1,"name":"OPT Hub","active":false,"width":400,"height":400,"x":0,"y":0,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"columnOrder":"","buttonId":null,"buttonOpened":false,"region":"","singleton":true,"background":true,"mobileReady":false,"floatingWidget":false,"intentConfig":"","launchData":""},{"uniqueId":"2516f616-3529-d4c6-1924-23bae759ca03","dashboardGuid":"3540c2fc-8972-484b-9a7f-353d18e85ada","paneGuid":"10119e45-69da-e9aa-18e6-fdd1ff027ce3","widgetGuid":"c524bb67-e7d2-d7aa-970b-6684c2795397","statePosition":2,"name":"optrouter","active":false,"width":200,"height":200,"x":0,"y":0,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"columnOrder":"","buttonId":null,"buttonOpened":false,"region":"","singleton":true,"background":true,"mobileReady":false,"floatingWidget":false,"intentConfig":"","launchData":""}],"items":[],"paneType":"desktoppane","height":"100%","defaultSettings":{"widgetStates":{"525895bd-53f1-99f7-93c2-c826c6fdc784":{"x":0,"y":0,"height":627,"width":393,"timestamp":1500855702244},"7ef2698d-45f8-6f58-0493-ff3aa334a183":{"x":392,"y":-1,"height":579,"width":937,"timestamp":1500855702360},"0f2cc273-cd17-d32a-3d18-9f0c2614f028":{"x":392,"y":229,"height":400,"width":937,"timestamp":1500855702363},"f118dc77-d3a3-5dea-e045-736b88590ae7":{"x":1095,"y":3,"height":272,"width":234,"timestamp":1500854694457}}}}	f	945	\N	\N	f	f
903	10	t	1	f	613e47dc-18b0-4281-a5eb-c1e58291ac00	OPT	2	\N	\N	2017-07-23 19:58:33.709-04	\N	2017-07-23 19:58:33.709-04	{"xtype":"desktoppane","flex":1,"widgets":[{"collapsed":undefined},{"collapsed":undefined},{"universalName":"opt.scheduler","widgetGuid":"525895bd-53f1-99f7-93c2-c826c6fdc784","uniqueId":"aae7f939-d82b-2772-507f-f0ac52a5e62b","dashboardGuid":"613e47dc-18b0-4281-a5eb-c1e58291ac00","paneGuid":"b96bbc3c-cd32-f1a7-7e00-91ba7119c58d","name":"OPT Scheduler","active":false,"x":0,"y":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":3,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19000,"height":627,"width":408},{"universalName":"opt.timeline","widgetGuid":"0f2cc273-cd17-d32a-3d18-9f0c2614f028","uniqueId":"16254c37-c337-b63e-137b-1de5de3f13a9","dashboardGuid":"613e47dc-18b0-4281-a5eb-c1e58291ac00","paneGuid":"b96bbc3c-cd32-f1a7-7e00-91ba7119c58d","name":"Time Line","active":false,"x":408,"y":226,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":4,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19010,"height":400,"width":921},{"universalName":"opt.esri.map","widgetGuid":"7ef2698d-45f8-6f58-0493-ff3aa334a183","uniqueId":"39c569c3-e754-0ad4-7333-0bc91b8b02b8","dashboardGuid":"613e47dc-18b0-4281-a5eb-c1e58291ac00","paneGuid":"b96bbc3c-cd32-f1a7-7e00-91ba7119c58d","name":"ESRI Map","active":true,"x":408,"y":-1,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":5,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19020,"height":582,"width":921},{"uniqueId":"81e3bff5-40d1-01c8-d1ce-b049d363735c","dashboardGuid":"613e47dc-18b0-4281-a5eb-c1e58291ac00","paneGuid":"b96bbc3c-cd32-f1a7-7e00-91ba7119c58d","widgetGuid":"d1be515b-e97a-61d6-f727-109a2f7520fa","statePosition":1,"name":"OPT Hub","active":false,"width":400,"height":400,"x":0,"y":0,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"columnOrder":"","buttonId":null,"buttonOpened":false,"region":"","singleton":true,"background":true,"mobileReady":false,"floatingWidget":false,"intentConfig":"","launchData":""},{"uniqueId":"3c5536ed-d122-59fb-977c-4c364b36dfc8","dashboardGuid":"613e47dc-18b0-4281-a5eb-c1e58291ac00","paneGuid":"b96bbc3c-cd32-f1a7-7e00-91ba7119c58d","widgetGuid":"c524bb67-e7d2-d7aa-970b-6684c2795397","statePosition":2,"name":"optrouter","active":false,"width":200,"height":200,"x":0,"y":0,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"columnOrder":"","buttonId":null,"buttonOpened":false,"region":"","singleton":true,"background":true,"mobileReady":false,"floatingWidget":false,"intentConfig":"","launchData":""}],"items":[],"paneType":"desktoppane","height":"100%","defaultSettings":{"widgetStates":{"525895bd-53f1-99f7-93c2-c826c6fdc784":{"x":0,"y":0,"height":627,"width":408,"timestamp":1501715316135},"7ef2698d-45f8-6f58-0493-ff3aa334a183":{"x":408,"y":-1,"height":582,"width":921,"timestamp":1501715791095},"0f2cc273-cd17-d32a-3d18-9f0c2614f028":{"x":408,"y":226,"height":400,"width":921,"timestamp":1501715316166},"f118dc77-d3a3-5dea-e045-736b88590ae7":{"x":622,"y":50,"height":370,"width":214,"timestamp":1501715791089},"94b40b5c-91d3-c508-6a94-8e41dd6a3a67":{"x":0,"y":0,"height":411,"width":400,"timestamp":1501173752180},"8c66c30e-c729-aec4-f941-47a14d9d1868":{"x":90,"y":12,"height":575,"width":800,"timestamp":1501173807303},"7580fda6-f4f8-8525-9c81-8e92b2593b27":{"x":0,"y":0,"height":600,"width":600,"timestamp":1501174753474}}}}	f	900	\N	\N	f	f
858	13	t	9	f	da0938cb-20f7-4acf-ba04-4beaf1e1763a	OPT	1	\N	\N	2017-07-23 19:48:19.36-04	\N	2017-07-23 19:48:19.36-04	{"xtype":"desktoppane","flex":1,"widgets":[{"collapsed":undefined},{"collapsed":undefined},{"universalName":"opt.timeline","widgetGuid":"0f2cc273-cd17-d32a-3d18-9f0c2614f028","uniqueId":"9171d9a9-3ee4-0a1c-deb9-15c98694c607","dashboardGuid":"da0938cb-20f7-4acf-ba04-4beaf1e1763a","paneGuid":"cf891639-d3d2-b2e9-729b-0ec5339edbdd","name":"Time Line","active":false,"x":427,"y":230,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":5,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19000,"height":400,"width":891},{"universalName":"opt.esri.map","widgetGuid":"7ef2698d-45f8-6f58-0493-ff3aa334a183","uniqueId":"e3ca3bf3-6f24-2d44-fa02-e972e12c7fb4","dashboardGuid":"da0938cb-20f7-4acf-ba04-4beaf1e1763a","paneGuid":"cf891639-d3d2-b2e9-729b-0ec5339edbdd","name":"ESRI Map","active":false,"x":424,"y":-1,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":4,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19010,"height":535,"width":904},{"universalName":"opt.scheduler","widgetGuid":"525895bd-53f1-99f7-93c2-c826c6fdc784","uniqueId":"d67e438e-a125-55a8-b4b6-00f90b29c0a8","dashboardGuid":"da0938cb-20f7-4acf-ba04-4beaf1e1763a","paneGuid":"cf891639-d3d2-b2e9-729b-0ec5339edbdd","name":"OPT Scheduler","active":true,"x":0,"y":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"buttonId":null,"buttonOpened":false,"region":"none","statePosition":3,"intentConfig":null,"launchData":null,"singleton":true,"floatingWidget":false,"background":false,"mobileReady":false,"zIndex":19020,"height":627,"width":428},{"uniqueId":"fcb9b227-43ac-33c5-5802-084e4bc1d21f","dashboardGuid":"da0938cb-20f7-4acf-ba04-4beaf1e1763a","paneGuid":"cf891639-d3d2-b2e9-729b-0ec5339edbdd","widgetGuid":"d1be515b-e97a-61d6-f727-109a2f7520fa","statePosition":1,"name":"OPT Hub","active":false,"width":400,"height":400,"x":0,"y":0,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"columnOrder":"","buttonId":null,"buttonOpened":false,"region":"","singleton":true,"background":true,"mobileReady":false,"floatingWidget":false,"intentConfig":"","launchData":""},{"uniqueId":"efb3be68-fef6-eb2d-d7e5-b5747544fe0b","dashboardGuid":"da0938cb-20f7-4acf-ba04-4beaf1e1763a","paneGuid":"cf891639-d3d2-b2e9-729b-0ec5339edbdd","widgetGuid":"c524bb67-e7d2-d7aa-970b-6684c2795397","statePosition":2,"name":"optrouter","active":false,"width":200,"height":200,"x":0,"y":0,"zIndex":0,"minimized":false,"maximized":false,"pinned":false,"collapsed":false,"columnPos":0,"columnOrder":"","buttonId":null,"buttonOpened":false,"region":"","singleton":true,"background":true,"mobileReady":false,"floatingWidget":false,"intentConfig":"","launchData":""}],"items":[],"paneType":"desktoppane","height":"100%","defaultSettings":{"widgetStates":{"391dd2af-a207-41a3-8e51-2b20ec3e7241":{"x":0,"y":0,"height":440,"width":818,"timestamp":1500853802079},"72c382a3-89e7-4abf-94db-18db7779e1df":{"x":0,"y":0,"height":440,"width":581,"timestamp":1500853797521},"525895bd-53f1-99f7-93c2-c826c6fdc784":{"x":0,"y":0,"height":627,"width":428,"timestamp":1501715793015},"7ef2698d-45f8-6f58-0493-ff3aa334a183":{"x":424,"y":-1,"height":535,"width":904,"timestamp":1501715600232},"0f2cc273-cd17-d32a-3d18-9f0c2614f028":{"x":427,"y":230,"height":400,"width":891,"timestamp":1501715600228},"f118dc77-d3a3-5dea-e045-736b88590ae7":{"x":634,"y":137,"height":398,"width":325,"timestamp":1501715793008}}}}	f	855	\N	\N	f	f
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) FROM stdin;
3.7.0-1	owf	changelog_3.7.0.groovy	2017-07-23 19:28:10.059941-04	1	EXECUTED	3:a12ee34aa1e77bc2ab3176c74c3113b8	Custom SQL		\N	2.0.5
3.8.0-1	owf	changelog_3.8.0.groovy	2017-07-23 19:28:10.062166-04	2	EXECUTED	3:d66582e573cee33f424ebb952decd92d	Drop Not-Null Constraint		\N	2.0.5
3.8.0-2	owf	changelog_3.8.0.groovy	2017-07-23 19:28:10.067155-04	3	EXECUTED	3:43600e1eebd0b612def9a76758daa403	Add Column	Added description column into Dashboard Table	\N	2.0.5
3.8.0-3	owf	changelog_3.8.0.groovy	2017-07-23 19:28:10.070278-04	4	EXECUTED	3:cd0a0df59ba7079055230181279b9fe5	Add Column		\N	2.0.5
3.8.0-4	owf	changelog_3.8.0.groovy	2017-07-23 19:28:10.072113-04	5	EXECUTED	3:b98ec98220fc4669acb11cc65cba959b	Add Foreign Key Constraint		\N	2.0.5
3.8.0-5	owf	changelog_3.8.0.groovy	2017-07-23 19:28:10.089853-04	6	EXECUTED	3:30cd6eb8e32c5bb622cd48a6730e86e1	Add Foreign Key Constraint		\N	2.0.5
3.8.0-9	owf	changelog_3.8.0.groovy	2017-07-23 19:28:10.094984-04	7	EXECUTED	3:c663eb75620ae74e0f7ca517d8bd4c1b	Drop Not-Null Constraint		\N	2.0.5
4.0.0-3	owf	changelog_4.0.0.groovy	2017-07-23 19:28:10.09738-04	8	EXECUTED	3:d066b39ebec901b63dbe5b674825449d	Add Column	Added defaultSettings column into Dashboard Table	\N	2.0.5
4.0.0-4	owf	changelog_4.0.0.groovy	2017-07-23 19:28:10.100126-04	9	EXECUTED	3:c4ccbcf8a10f33b5063af97a9d15d28c	Add Column	Added background column for WidgetDefinition	\N	2.0.5
4.0.0-47	owf	changelog_4.0.0.groovy	2017-07-23 19:28:10.125854-04	10	EXECUTED	3:967a5a6cb7f1d94dfef9beb90b77e1e5	Add Column	Added showLaunchMenu column into Dashboard Table	\N	2.0.5
4.0.0-48	owf	changelog_4.0.0.groovy	2017-07-23 19:28:10.145657-04	11	EXECUTED	3:43eac589305fd819d29fe84a43414c3f	Create Table (x2), Add Primary Key, Add Foreign Key Constraint (x2)	Create widget type table and linking table	\N	2.0.5
4.0.0-51	owf	changelog_4.0.0.groovy	2017-07-23 19:28:10.148447-04	12	EXECUTED	3:dc8cf89d14b68c19d487908ef28c89b1	Insert Row (x3)	Add widget types to table	\N	2.0.5
4.0.0-56	owf	changelog_4.0.0.groovy	2017-07-23 19:28:10.149827-04	13	EXECUTED	3:7e4d6568d91e79149f8b895501eb8579	Modify data type	Updating display_name column to 256 chars	\N	2.0.5
5.0.0-1	owf	changelog_5.0.0.groovy	2017-07-23 19:28:10.151084-04	14	EXECUTED	3:42d9c4bdcdff38a4fbe40bd1ec78d9b1	Add Column	Add display name to group	\N	2.0.5
5.0.0-3	owf	changelog_5.0.0.groovy	2017-07-23 19:28:10.152216-04	15	EXECUTED	3:aa2aca168ad6eaeea8509fd642d8c17b	Insert Row	Add metric widget types to table	\N	2.0.5
6.0.0-1	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.157649-04	16	EXECUTED	3:b7a17650e4cfde415fdbbcc4f2bd1317	Add Column	Add universal_name to widgetdefinition	\N	2.0.5
6.0.0-2	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.159309-04	17	EXECUTED	3:30ea4354058c7a09bfafb6acabfd1e33	Add Column	Add layoutConfig to dashboard	\N	2.0.5
6.0.0-3	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.161552-04	18	EXECUTED	3:6ce1db42048bc63ece1be0c3f4669a52	Add Column	Add descriptor_url to widgetdefinition	\N	2.0.5
6.0.0-4	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.164154-04	19	EXECUTED	3:4e940a0bdfea36b98c62330e4b373dd3	Drop Table	Remove EventingConnections table and association with DashboardWidgetState	\N	2.0.5
6.0.0-5	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.171426-04	20	EXECUTED	3:2c40b74eb7eb29a286ac641320a97b4d	Create Table	Create intent table	\N	2.0.5
6.0.0-6	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.176708-04	21	EXECUTED	3:008f636cf428abbd60459975d28e62a1	Create Table	Create intent_data_type table	\N	2.0.5
6.0.0-7	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.178224-04	22	EXECUTED	3:b462f738ef9c30634a0a47d245d16a59	Create Table	Create intent_data_types table	\N	2.0.5
6.0.0-8	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.198388-04	23	EXECUTED	3:ee497899a41d5cc2798af5cfc277aecb	Add Foreign Key Constraint (x2)	Add foreign constraint for intent_data_type_id and intent_id in intent_data_types table	\N	2.0.5
6.0.0-9	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.22682-04	24	EXECUTED	3:8dda2a300eac867527577e37dabf3187	Create Table	Create widget_def_intent table	\N	2.0.5
6.0.0-10	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.229248-04	25	EXECUTED	3:e5d364edc24ace7b9b89d3854bb70408	Add Foreign Key Constraint	Add foreign constraint for widget_definition_id in widget_def_intent table	\N	2.0.5
6.0.0-11	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.231458-04	26	EXECUTED	3:fcf69ebd060340afd1483c2f4588f456	Add Foreign Key Constraint	Add foreign constraint for intent_id in widget_definition_intent table	\N	2.0.5
6.0.0-12	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.23439-04	27	EXECUTED	3:05c50cdf2e21818c6986e5ef2d8c9f50	Create Table	Create widget_def_intent_data_types table	\N	2.0.5
6.0.0-13	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.238579-04	28	EXECUTED	3:3250f92e3b85fec3db493d11b53445e2	Add Foreign Key Constraint (x2)	Add foreign constraint for intent_data_type_id and widget_definition_intent_id in widget_def_intent_data_types table	\N	2.0.5
6.0.0-14	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.242444-04	29	EXECUTED	3:897a5aa2802104b8f90bcde737c47002	Add Column	Add intentConfig column to dashboard table	\N	2.0.5
6.0.0-15	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.2638-04	30	EXECUTED	3:a58c7f9ab7dcc8c733d3a16c25adc558	Add Column	Added description column into Widget Definition table	\N	2.0.5
6.0.0-16	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.271776-04	31	EXECUTED	3:9624d22cdbed36b5bbce5da92bdb1bfc	Add Column	Add groupWidget property to personwidgetdefinition	\N	2.0.5
6.0.0-17	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.280483-04	32	EXECUTED	3:92a97333d2f7b5f17e0a541712847a54	Add Column	Add favorite property to personwidgetdefinition	\N	2.0.5
6.0.0-44	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.282271-04	33	EXECUTED	3:a0a7528d5494cd0f02b38b3f99b2cfe4	Drop Not-Null Constraint		\N	2.0.5
6.0.0-53	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.294946-04	34	EXECUTED	3:9f398a44008d12aee688e347940b7adf	Add Column	Add locked property to dashboard	\N	2.0.5
6.0.0-55	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.296265-04	35	EXECUTED	3:2aa790687f711ca1d930c1aa24fadd0c	Add Column	Add display name field to pwd	\N	2.0.5
6.0.0-56	owf	changelog_6.0.0.groovy	2017-07-23 19:28:10.304562-04	36	EXECUTED	3:ca86586d796b6e61467c6fc7cb0a787c	Add Column	Add disabled field to pwd	\N	2.0.5
7.0.0-1	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.306133-04	37	EXECUTED	3:9c64b0b8b8cb507555f0c02c00cb382b	Modify data type	Expand a widget definition's description field to 4000 to match Marketplace	\N	2.0.5
7.0.0-2	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.308352-04	38	EXECUTED	3:d1ab9c56671573cf7cde5a4e7c13652c	Drop Table	Remove DashboardWidgetState since it is no longer used.	\N	2.0.5
7.0.0-4	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.309833-04	39	EXECUTED	3:21b5b103a5b9e7134b2bbb0a7686e3cf	Drop Column	Remove show_launch_menu since it is no longer used.	\N	2.0.5
7.0.0-5	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.31093-04	40	EXECUTED	3:634c7ed646b89e253102d12b6818c245	Drop Column	Remove layout since it is no longer used.	\N	2.0.5
7.0.0-6	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.312005-04	41	EXECUTED	3:ef21c5e1a70b81160e2ed6989fc1afa6	Drop Column	Remove intent_config since it is no longer used.	\N	2.0.5
7.0.0-7	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.31307-04	42	EXECUTED	3:9ee1cd65b85caaca3178939bac1e0fcf	Drop Column	Remove default_settings since it is no longer used.	\N	2.0.5
7.0.0-8	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.314269-04	43	EXECUTED	3:ef688a16b0055a8024a489393bcfc987	Drop Column	Remove column_count since it is no longer used.	\N	2.0.5
7.0.0-9	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.327937-04	44	EXECUTED	3:43e9c996af93d8cface8845446b8a525	Create Table	Create stack table	\N	2.0.5
7.0.0-10	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.330316-04	45	EXECUTED	3:62f6507a0ac6b50fb383b2a47ba702a8	Create Table	Create stack_groups table	\N	2.0.5
7.0.0-12	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.332342-04	46	EXECUTED	3:7a64e2e16d79e54338e9ec959602447a	Add Primary Key	Add primary key constraint for group_id and stack_id in stack_groups table	\N	2.0.5
7.0.0-13	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.34121-04	47	EXECUTED	3:0e9ce4f940d8f89b0fd983abc89ee775	Add Foreign Key Constraint (x2)	Add foreign key constraints for group_id and stack_id in stack_groups table	\N	2.0.5
7.0.0-14	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.362549-04	48	EXECUTED	3:803b99533e3b4d760c15e2f1eca18e05	Add Column	Add stack_default field to group	\N	2.0.5
7.0.0-17	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.363978-04	49	EXECUTED	3:792a3b1d54f044047df124e8dd62d247	Custom SQL	Insert OWF stack	\N	2.0.5
7.0.0-20	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.366538-04	50	EXECUTED	3:b909f323799a063d70f9f5f1ab19b728	Custom SQL	Insert OWF stack default group	\N	2.0.5
7.0.0-21	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.368436-04	51	EXECUTED	3:32c56c09a37ffceb75742132f42ddf73	Custom SQL		\N	2.0.5
7.0.0-22	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.370392-04	52	EXECUTED	3:7146f45f54d8db1d72abb498d691cebb	Add Column	Add a reference to a host stack to dashboard records to track where user instances should appear	\N	2.0.5
7.0.0-23	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.372266-04	53	EXECUTED	3:4d6a39028c8a5cc0a85b8b37fbf1b1fc	Add Foreign Key Constraint	Add foreign key constraint for stack_id in the dashboard table	\N	2.0.5
7.0.0-24	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.397932-04	54	EXECUTED	3:f1e6830542a856459733effeca8aaa24	Add Column	Add a property to track the count of unique widgets present on the dashboards of a stack	\N	2.0.5
7.0.0-25	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.403418-04	55	EXECUTED	3:ac445082cf2ee5903046bef22276a996	Custom SQL		\N	2.0.5
7.0.0-26	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.405534-04	56	EXECUTED	3:74dc7504043a1f24e2d86d75a2dab571	Delete Data	Delete OWF Stack Group	\N	2.0.5
7.0.0-27	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.407533-04	57	EXECUTED	3:cae136582b06f1ed04a6309814236cdc	Delete Data	Delete OWF Stack	\N	2.0.5
7.0.0-28	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.417825-04	58	EXECUTED	3:f1bf16779c9d7419bc7cc94e81687786	Add Column	Add user_widget field to person_widget_definition table	\N	2.0.5
7.0.0-53	owf	changelog_7.0.0.groovy	2017-07-23 19:28:10.422281-04	59	EXECUTED	3:95913c657b14ecdbb8c9f85fc0a071b1	Modify data type	Expand a dashboard's description field to 4000 to match Marketplace	\N	2.0.5
7.2.0-1	owf	changelog_7.2.0.groovy	2017-07-23 19:28:10.424271-04	60	EXECUTED	3:69c7062f6bb536836805960380dfdb90	Insert Row	Add fullscreen widget types to table	\N	2.0.5
7.3.0-0-pg	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.446861-04	61	EXECUTED	3:4f38e9240c096801990deaee6dba750a	Custom SQL (x12)	Fixing Postgres id columns to have id generators	\N	2.0.5
7.3.0-1	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.453465-04	62	EXECUTED	3:da90c894252394662881278c5011df4f	Add Column	Add type to dashboard	\N	2.0.5
7.3.0-3	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.487867-04	63	EXECUTED	3:85d934f83517b58484131edbd73d1252	Create Table		\N	2.0.5
7.3.0-4	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.614324-04	64	EXECUTED	3:3d651aa99a57515a9d4c96f06568ad93	Create Index (x3), Add Foreign Key Constraint (x2)	Create index for application_configuration.group_name	\N	2.0.5
7.3.0-5	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.616302-04	65	EXECUTED	3:ebf4c6cfc522e45a5efc657a72cc6b8d	Add Column	Add icon image url to dashboard	\N	2.0.5
7.3.0-6	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.638897-04	66	EXECUTED	3:05b0697fb3adb15e703588ccfbdc0f7c	Add Column	Add published_to_store and marked_for_deletion columns to dashboard table	\N	2.0.5
7.3.0-7	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.680169-04	67	EXECUTED	3:e50b259c6a288dbdafc06dcd1ef34c37	Add Column, Create Index, Add Foreign Key Constraint		\N	2.0.5
7.3.0-16	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.691434-04	68	EXECUTED	3:2eb18ef95e182e90bae0a3f9caf69fc2	Add Column, Update Data (x2), Add Not-Null Constraint	Adding a column named display_name to the table widget_type so that the UI name is decoupled from the actual back-end name; The display_name will be the same as the name, except for marketplace, which will be displayed as store	\N	2.0.5
7.3.0-17	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.693474-04	69	EXECUTED	3:cc301f6f6f73cf363fe77c5e28604b25	Add Default Value		\N	2.0.5
app_config-7.3.0-1	owf	app_config_7.3.0.groovy	2017-07-23 19:28:10.720815-04	70	EXECUTED	3:7a0a54a7ceeef7780ea40164ad99822a	Insert Row (x20)		\N	2.0.5
7.3.0-18	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.722238-04	71	EXECUTED	3:e20a0daf3c5203f6a4aa2df0b27d0673	Add Column	Add isApproved to stack	\N	2.0.5
7.3.0-20	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.72354-04	72	EXECUTED	3:b6c0c14c4fdb221e141e49ba0f71b221	Insert Row	Create an OWF Admin group.	\N	2.0.5
7.3.0-21	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.726384-04	73	EXECUTED	3:8c5356773157ee7fa260d2d83900cba5	Insert Row (x3)	Create Administrator's App and its default group.	\N	2.0.5
7.3.0-22	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.727794-04	74	EXECUTED	3:5fdc73b48e8adc3314e2644e28a3f072	Insert Row	Add Administration App to the OWF Administrators group.	\N	2.0.5
7.3.0-24	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.742164-04	75	EXECUTED	3:7ed6d90e4d1899a28fb6d1e1790ae910	Insert Row (x10), Custom SQL	Add new admin components that include universal names.  These will be the primary admin components moving forward.	\N	2.0.5
7.3.0-27	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.755385-04	76	EXECUTED	3:013901f70bd73571c7ae872101df29db	Insert Row, Custom SQL, Insert Row, Custom SQL, Insert Row, Custom SQL, Insert Row, Custom SQL	Add the pages for the administrator's app.	\N	2.0.5
7.3.0-28	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.761396-04	77	EXECUTED	3:f5a487dba681fe5229c69ee043168f2f	Insert Row (x4)	Add the associations for the stack's default group to the app pages..	\N	2.0.5
7.3.0-29	owf	changelog_7.3.0.groovy	2017-07-23 19:28:10.77147-04	78	EXECUTED	3:eb228dae1ba67f1dc85a7a60397e32ae	Insert Row (x9)	Add the associations for the stack's default group to the admin components.	\N	2.0.5
7.10.0-1	owf	changelog_7.10.0.groovy	2017-07-23 19:28:10.773375-04	79	EXECUTED	3:115190a042e53f65034683e629f8cf47	Add Column		\N	2.0.5
7.10.0-2	owf	changelog_7.10.0.groovy	2017-07-23 19:28:10.787228-04	80	EXECUTED	3:41ac759cfb732888d39c704edd1aa12d	Insert Row (x8)		\N	2.0.5
7.15.1-1	owf	changelog_7.15.1.groovy	2017-07-23 19:28:10.798227-04	81	EXECUTED	3:a253a2a9c7e7571b94e59fc1767c58b3	Delete Data (x8)		\N	2.0.5
7.15.1-2	owf	changelog_7.15.1.groovy	2017-07-23 19:28:10.799613-04	82	EXECUTED	3:1234ac8c0f21a1d748e17510d1c4373c	Rename Column		\N	2.0.5
7.16.0-1	owf	changelog_7.16.0.groovy	2017-07-23 19:28:10.800854-04	83	EXECUTED	3:a5550d64efe7315b58db632c964075f3	Update Data (x2)		\N	2.0.5
7.16.0-2	owf	changelog_7.16.0.groovy	2017-07-23 19:28:10.823543-04	84	EXECUTED	3:9413ce637b7ef560903ebae7e9da84d3	Add Column		\N	2.0.5
7.16.0-3	owf	changelog_7.16.0.groovy	2017-07-23 19:28:10.877377-04	85	EXECUTED	3:7727672cc83b77a203682f2ed0f7e403	Add Column, Add Foreign Key Constraint		\N	2.0.5
7.16.0-5	owf	changelog_7.16.0.groovy	2017-07-23 19:28:10.883027-04	86	EXECUTED	3:2004c0339ed2540d43b4185bfdd594fa	Create Index		\N	2.0.5
7.16.0-6	owf	changelog_7.16.0.groovy	2017-07-23 19:28:10.92744-04	87	EXECUTED	3:1a84a71cf6605cd2706216801b85e477	Add Column		\N	2.0.5
7.16.1-1	owf	changelog_7.16.1.groovy	2017-07-23 19:28:10.979625-04	88	EXECUTED	3:ae067414a3c058b53045e311d46646cc	Insert Row (x2)		\N	2.0.5
7.16.1-2	owf	changelog_7.16.1.groovy	2017-07-23 19:28:10.981036-04	89	EXECUTED	3:8698b56979b6c82e295d3f9aec41b837	Custom SQL	Updating the hibernate_sequence to account for hard coded ids	\N	2.0.5
7.16.1-3	owf	changelog_7.16.1.groovy	2017-07-23 19:28:10.983871-04	90	EXECUTED	3:8b4c3f03d4786a6263553143cda2bde0	Create Table		\N	2.0.5
7.16.1-4	owf	changelog_7.16.1.groovy	2017-07-23 19:28:10.986528-04	91	EXECUTED	3:86e4f665a39e4de4eea6cf49696b7f32	Drop Table		\N	2.0.5
4.0.0-5	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.443667-04	1	EXECUTED	3:3b9f19a527785869ce833dfbf6466f01	Delete Data (x7)	deleting old sample data	\N	2.0.5
4.0.0-7	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.478605-04	2	EXECUTED	3:56bfda152e35ce325993eb717dc97ddd	Insert Row (x4)	insert new sample data	\N	2.0.5
4.0.0-10	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.506673-04	3	EXECUTED	3:fd66bf062e93278e617b7d168b5669ec	Insert Row (x16)	insert new sample data	\N	2.0.5
4.0.0-13	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.575787-04	4	EXECUTED	3:9afedfdceca81eb01f07082c8402076b	Insert Row (x64)	insert new sample data	\N	2.0.5
4.0.0-22-pg	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.577513-04	5	EXECUTED	3:3f68a22fde7bb355d73e1aeb37dc7f60	Insert Row (x2)	insert new sample data	\N	2.0.5
4.0.0-25	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.581067-04	6	EXECUTED	3:8a77971774b9c8e11f104b41bd7751ce	Insert Row (x4)	insert new sample data	\N	2.0.5
4.0.0-28	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.583486-04	7	EXECUTED	3:56cf365e11bb693bc75b4131efbc4556	Insert Row (x2)	insert new sample data	\N	2.0.5
4.0.0-31	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.58392-04	8	EXECUTED	3:4318d8906f61a4c4429c3af056f06c87	Insert Row (x4)	insert new sample data	\N	2.0.5
4.0.0-34	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.588297-04	9	EXECUTED	3:62011f2458c9d6a9f4884f2c3349dab8	Insert Row (x6)	insert new sample data	\N	2.0.5
4.0.0-37	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.590787-04	10	EXECUTED	3:5c360e73f9773ed7543ffa3864440de5	Insert Row (x4)	insert new sample data	\N	2.0.5
4.0.0-40	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.592687-04	11	EXECUTED	3:7c595f960a0d9cbaec670333fdbaea32	Insert Row	insert new sample data	\N	2.0.5
4.0.0-43	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.610915-04	12	EXECUTED	3:2241715a9f8abce9ffed932735763bcc	Insert Row (x19)	insert new sample data	\N	2.0.5
4.0.0-45	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.630565-04	13	EXECUTED	3:4653ac19f692092c9152eaeb1230513d	Drop Sequence, Create Sequence	set sequence to higher number that is not used	\N	2.0.5
4.0.0-46	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.634241-04	14	EXECUTED	3:5c1705f46d07fab68b80494982589ffe	Update Data		\N	2.0.5
4.0.0-53	owf	changelog_4.0.0.groovy	2017-07-23 19:28:34.636508-04	15	EXECUTED	3:1403c4465e34710942db21922684cf79	Custom SQL	Insert widget type mapping links	\N	2.0.5
5.0.0-5	owf	changelog_5.0.0.groovy	2017-07-23 19:28:34.637234-04	16	EXECUTED	3:9fe287989b0eecb53ec72dc98e0c2737	Update Data (x2)	Rename All Users and OWF Admins groups to OWF Users and OWF Administrators, then set them to automatic.	\N	2.0.5
5.0.0-6	owf	changelog_5.0.0.groovy	2017-07-23 19:28:34.638088-04	17	EXECUTED	3:96aa216a330817681aca38dc66d1129b	Custom SQL	Set default value for display_name	\N	2.0.5
5.0.0-7	owf	changelog_5.0.0.groovy	2017-07-23 19:28:34.640586-04	18	EXECUTED	3:55a215b64becd106729fc560fca74a21	Update Data (x4)	Updating Sample Widget URLs	\N	2.0.5
5.0.0-15	owf	changelog_5.0.0.groovy	2017-07-23 19:28:34.642183-04	19	EXECUTED	3:c36f95cacf07258117ef6c86d3f7cb4c	Insert Row (x2)	insert new sample data	\N	2.0.5
5.0.0-18	owf	changelog_5.0.0.groovy	2017-07-23 19:28:34.648881-04	20	EXECUTED	3:2101485c508626863f8c60d6dcb83305	Insert Row (x8)	insert new sample data	\N	2.0.5
5.0.0-23	owf	changelog_5.0.0.groovy	2017-07-23 19:28:34.650245-04	21	EXECUTED	3:77d50cef2581b1cd4a89ea3c9040b73a	Insert Row (x2)	insert new sample data	\N	2.0.5
6.0.0-19	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.652721-04	22	EXECUTED	3:8069902921131448776b655c9d970882	Insert Row (x3)	insert new sample data	\N	2.0.5
6.0.0-20	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.654925-04	23	EXECUTED	3:4b2eabcf9c66a32485f65255d22f142f	Insert Row (x3)	insert new sample data	\N	2.0.5
6.0.0-23	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.655955-04	24	EXECUTED	3:2ef3a5917ef4c44ca618a48bc22f35a2	Insert Row	Add OWF Users group	\N	2.0.5
6.0.0-25	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.658899-04	25	EXECUTED	3:4653ac19f692092c9152eaeb1230513d	Drop Sequence, Create Sequence	set sequence to higher number that is not used	\N	2.0.5
6.0.0-27	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.660518-04	26	EXECUTED	3:3fa5da9f6c183c928b5023132ad3f5e5	Insert Row (x2)	insert new sample data	\N	2.0.5
6.0.0-30	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.667645-04	27	EXECUTED	3:4390a2bef918c69968b16fbd4ee8fcbb	Insert Row (x4)	insert new sample data	\N	2.0.5
6.0.0-33	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.67834-04	28	EXECUTED	3:738a85e664c3c906cee14aff1ce53308	Insert Row (x8)	insert new sample data	\N	2.0.5
6.0.0-36	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.685246-04	29	EXECUTED	3:d526ccb1874fe44c40d2400d52f82940	Insert Row (x4)	insert new sample data	\N	2.0.5
6.0.0-39	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.688813-04	30	EXECUTED	3:ac51eb6f9c799aed93ad91a3d2896bf8	Insert Row (x4)	insert new sample data	\N	2.0.5
6.0.0-42	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.692463-04	31	EXECUTED	3:d3b657c01de77a08048bda392804e063	Insert Row (x6)	insert new sample data	\N	2.0.5
6.0.0-45	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.701567-04	32	EXECUTED	3:72d0cb8302a49259ece1210187f09264	Custom SQL	Removing Fake Widgets	\N	2.0.5
6.0.0-48	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.704183-04	33	EXECUTED	3:aca011745b5c0db4f5eb1d6a82c3394d	Insert Row (x3)	Add Intents, Sample, and Administration Dashboards	\N	2.0.5
6.0.0-51	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.705798-04	34	EXECUTED	3:9dea1a3daba3555a4b97bef0db023d9a	Insert Row (x2)	Assign Intents and Sample Dashboards to OWF Users group	\N	2.0.5
6.0.0-54	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.707317-04	35	EXECUTED	3:1030fea638ddcb2be0c8da1ad2308e80	Update Data (x2)	Rename HTML intents data type to text/html.	\N	2.0.5
6.0.0-62	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.710115-04	36	EXECUTED	3:352d26af765a6a04e28e09f3d9433e49	Drop Sequence, Create Sequence	set sequence to higher number that is not used	\N	2.0.5
6.0.0-63	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.711166-04	37	EXECUTED	3:09cb669039ed4fb2199da1cc29068b70	Custom SQL	upgrade any pwds that were pending approval to use the disabled column	\N	2.0.5
6.0.0-64	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.711918-04	38	EXECUTED	3:84741a4f5e5ac5ee47758341f3068451	Delete Data	delete any taglinks which were 'pending approval' (have editable false)	\N	2.0.5
6.0.0-65	owf	changelog_6.0.0.groovy	2017-07-23 19:28:34.720942-04	39	EXECUTED	3:7fde4b7ac6dcaf27173c6656927b351a	Update Data (x12)	Updating Sample Widget images	\N	2.0.5
7.0.0-29	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.722416-04	40	EXECUTED	3:4c00d465a1a4e23019f32ffcc4759933	Update Data	Update existing PWD records to set whether they were added to a user directly or just via a group	\N	2.0.5
7.0.0-30	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.724409-04	41	EXECUTED	3:b2da3152051ee5103b9157dcca94ee79	Delete Data (x6)	Remove the Widget Approvals widget definition and all of its user, group, intent, and widget type references	\N	2.0.5
7.0.0-32	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.728636-04	42	EXECUTED	3:ce0cf0ec0b4ef753ae0ae84ddf3a8eb2	Insert Row (x3)	insert new sample data	\N	2.0.5
7.0.0-33	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.732972-04	43	EXECUTED	3:48ce3eccb4978bf61a2b1a9b488bcea0	Insert Row (x3)	insert new sample data	\N	2.0.5
7.0.0-36	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.73874-04	44	EXECUTED	3:35bbb0ecdc7691b4626783ca41094109	Insert Row (x2)	insert new sample data	\N	2.0.5
7.0.0-39	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.74221-04	45	EXECUTED	3:06258d834bf04972b734e0caf42990a2	Insert Row (x5)	insert new sample data	\N	2.0.5
7.0.0-42	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.750092-04	46	EXECUTED	3:d87251531356a537f8481655326dde17	Insert Row (x6)	insert new sample data	\N	2.0.5
7.0.0-45	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.752026-04	47	EXECUTED	3:dc89d51f53a66b61c2ac423e5a5906a5	Insert Row (x3)	insert new sample data	\N	2.0.5
7.0.0-48	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.753219-04	48	EXECUTED	3:5eece97768f50b57d39e9d89bf107ed4	Insert Row	Add Contacts Dashboards	\N	2.0.5
7.0.0-51	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.754694-04	49	EXECUTED	3:f251113b4efe442a47c44ceec7b5cd47	Insert Row	Assign Intents and Sample Dashboards to OWF Users group	\N	2.0.5
7.0.0-54	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.757514-04	50	EXECUTED	3:8695b856d5fb059f187288744c8b4780	Custom SQL (x3)	Create Investments stack and its default group.	\N	2.0.5
7.0.0-55	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.758574-04	51	EXECUTED	3:48617f163cf4c3ec2ff4fc0e8ae060f1	Custom SQL	Add Investments stack to the OWF Users group.	\N	2.0.5
7.0.0-57	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.765383-04	52	EXECUTED	3:c1cf825bd1f6c24467b734c1e1381bb8	Custom SQL, Update Data, Custom SQL	Rename the Widget Intents dashboard to Watch List and add it to the Investments stack.	\N	2.0.5
7.0.0-59	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.767051-04	53	EXECUTED	3:1364ead069969418155f964f1f0e6018	Custom SQL, Update Data	Add the Contacts dashboard to the Investments stack.	\N	2.0.5
7.0.0-61	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.774092-04	54	EXECUTED	3:ba65d72b118d8f8112f0e8d14fa87908	Drop Sequence, Create Sequence, Custom SQL (x2), Update Data	Add Widget Intents and Contacts dashboards' widgets to Investments stack.	\N	2.0.5
7.0.0-63	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.776596-04	55	EXECUTED	3:4b6f0ce071cc1ec44a1c0fc60bd6fdc8	Update Data (x4)	Reorder the dashboards so they appear Sample dashboard, Investments stack, and then Administration dashboard.	\N	2.0.5
7.0.0-64	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.788591-04	56	EXECUTED	3:ddd62e2dd108f66e529c468e920246ab	Delete Data (x18)	Remove Preferences, Color Client, Color Server, Widget Chrome, Event Monitor, and Nearly Empty widgets.	\N	2.0.5
7.0.0-73	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.790468-04	57	EXECUTED	3:5d99754b0310d86cc5037b53efb1a660	Delete Data (x3)	Clean out some old domain mapping entries for widgets that have been removed from our sample database.	\N	2.0.5
7.0.0-74	owf	changelog_7.0.0.groovy	2017-07-23 19:28:34.795722-04	58	EXECUTED	3:289db2d701e3e83ed976dd71c78ccd7b	Custom SQL	Remove Contacts dashboard from OWF Users group and add it to the default stack.	\N	2.0.5
7.3.0-0-pg-sampleData	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.820029-04	59	EXECUTED	3:4f38e9240c096801990deaee6dba750a	Custom SQL (x12)	Fixing Postgres id columns to have id generators	\N	2.0.5
7.3.0-2	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.821118-04	60	EXECUTED	3:fe230a1ac4b1d1f7ea94cf131fcd8827	Update Data	Update existing dashboards to set type to marketplace if name is Apps Mall	\N	2.0.5
7.3.0-8	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.824607-04	61	EXECUTED	3:0ed4f5bc7205d2c13ef27bb516e27d18	Update Data (x4)	Change the name of Stack and Widget admin widgets to be Apps and App Component	\N	2.0.5
7.3.0-9	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.829905-04	62	EXECUTED	3:63dabf04f3e3d7526260fff486e719d5	Delete Data (x5)	Removing all references to Group Dashboards and renaming the Stack and Stack Editor widgets in the Admin dashboard	\N	2.0.5
7.3.0-11	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.83631-04	63	EXECUTED	3:349f40c826b0d13c6f30553e0c15854f	Insert Row (x3), Update Data (x4)	Migrating the legacy sample dashboards to the new format	\N	2.0.5
7.3.0-12	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.837593-04	64	EXECUTED	3:dcdd51227d2214ac3ffa2acae5a7ec4f	Insert Row	Adding in the domain mapping changes that need to be made for the group dashboards in the sample data	\N	2.0.5
7.3.0-13	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.84442-04	65	EXECUTED	3:21e21cd0e685aedd919d83fd38a525e4	Update Data (x11)	Updating verbiage in the sample data; changing the word widget to app component; changing the word stack to app; changing the word dashboard to page	\N	2.0.5
7.3.0-14	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.845474-04	66	EXECUTED	3:89cb2554c614c8d0c3e26fc0fd2785f1	Update Data	Updating the unique widget count for sample and admin apps that we ship with.	\N	2.0.5
7.3.0-15	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.847499-04	67	EXECUTED	3:a1d6eeff1d864a77ef76c386a13f5a59	Insert Row, Delete Data	Associate sample app with owf users group and administration app with owf admin group. Disassociate the corresponding group dashboards from their groups.	\N	2.0.5
7.3.0-19	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.852833-04	68	EXECUTED	3:9b247183ae8c8b6c5af1242a31f6406f	Update Data	Add isApproved to stack	\N	2.0.5
7.3.0-30	owf	changelog_7.3.0.groovy	2017-07-23 19:28:34.85405-04	69	EXECUTED	3:f05898c87f6dd643313c3ff6f3084025	Delete Data	Remove the old admin dashboard.	\N	2.0.5
7.16.0-4	owf	changelog_7.16.0.groovy	2017-07-23 19:28:34.859684-04	70	EXECUTED	3:fa417d61a8ef8029d99656ba7832a8d4	Update Data		\N	2.0.5
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- Data for Name: domain_mapping; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY domain_mapping (id, version, src_id, src_type, relationship_type, dest_id, dest_type) FROM stdin;
9	0	4	group	owns	5	dashboard
10	0	4	group	owns	6	dashboard
11	0	4	group	owns	7	dashboard
12	0	4	group	owns	8	dashboard
13	0	4	group	owns	193	widget_definition
14	0	4	group	owns	194	widget_definition
15	0	4	group	owns	186	widget_definition
16	0	4	group	owns	187	widget_definition
17	0	4	group	owns	192	widget_definition
18	0	4	group	owns	188	widget_definition
19	0	4	group	owns	189	widget_definition
20	0	4	group	owns	190	widget_definition
21	0	4	group	owns	191	widget_definition
317	0	192	group	owns	178	widget_definition
318	0	192	group	owns	179	widget_definition
319	0	192	group	owns	180	widget_definition
320	0	192	group	owns	16	widget_definition
321	0	192	group	owns	17	widget_definition
322	0	192	group	owns	20	widget_definition
339	0	192	group	owns	181	widget_definition
340	0	192	group	owns	182	widget_definition
341	0	192	group	owns	183	widget_definition
713	0	3	group	owns	191	widget_definition
714	0	3	group	owns	190	widget_definition
715	0	3	group	owns	187	widget_definition
716	0	3	group	owns	186	widget_definition
717	0	3	group	owns	189	widget_definition
718	0	3	group	owns	188	widget_definition
719	0	3	group	owns	195	widget_definition
720	0	3	group	owns	194	widget_definition
721	0	3	group	owns	193	widget_definition
722	0	3	group	owns	192	widget_definition
727	0	726	dashboard	cloneOf	5	dashboard
729	0	728	dashboard	cloneOf	6	dashboard
731	0	730	dashboard	cloneOf	7	dashboard
733	0	732	dashboard	cloneOf	8	dashboard
767	0	192	group	owns	763	widget_definition
772	0	192	group	owns	769	widget_definition
779	0	192	group	owns	776	widget_definition
782	0	192	group	owns	781	widget_definition
785	0	192	group	owns	784	widget_definition
788	0	192	group	owns	787	widget_definition
791	0	192	group	owns	790	widget_definition
796	0	192	group	owns	793	widget_definition
801	0	192	group	owns	798	widget_definition
806	0	192	group	owns	803	widget_definition
811	0	192	group	owns	808	widget_definition
814	0	192	group	owns	813	widget_definition
819	0	192	group	owns	816	widget_definition
824	0	192	group	owns	821	widget_definition
829	0	192	group	owns	826	widget_definition
834	0	192	group	owns	831	widget_definition
839	0	192	group	owns	836	widget_definition
844	0	192	group	owns	841	widget_definition
847	0	192	group	owns	846	widget_definition
852	0	192	group	owns	849	widget_definition
857	0	854	group	owns	856	dashboard
859	0	858	dashboard	cloneOf	856	dashboard
890	0	887	group	owns	889	dashboard
896	0	893	group	owns	895	dashboard
898	0	897	dashboard	cloneOf	895	dashboard
902	0	899	group	owns	901	dashboard
904	0	903	dashboard	cloneOf	901	dashboard
935	0	932	group	owns	934	dashboard
941	0	938	group	owns	940	dashboard
943	0	942	dashboard	cloneOf	940	dashboard
947	0	944	group	owns	946	dashboard
949	0	948	dashboard	cloneOf	946	dashboard
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('hibernate_sequence', 953, true);


--
-- Data for Name: intent; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY intent (id, version, action) FROM stdin;
302	2	View
301	2	Graph
304	2	navigate
303	3	plot
\.


--
-- Data for Name: intent_data_type; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY intent_data_type (id, version, data_type) FROM stdin;
304	2	text/html
303	2	application/vnd.owf.sample.price
305	2	application/vnd.owf.sample.addresses
306	1	application/vnd.owf.sample.address
764	30	application/vnd.owf.sample.latlon
\.


--
-- Name: intent_data_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('intent_data_type_id_seq', 1, false);


--
-- Data for Name: intent_data_types; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY intent_data_types (intent_data_type_id, intent_id) FROM stdin;
303	301
304	302
306	303
305	304
306	304
764	303
\.


--
-- Name: intent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('intent_id_seq', 1, false);


--
-- Data for Name: owf_group; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY owf_group (id, version, status, email, description, name, automatic, display_name, stack_default) FROM stdin;
3	0	active	\N	OWF Administrators	OWF Administrators	t	OWF Administrators	f
201	0	active	testgroup1@group1.com	TestGroup1	TestGroup1	f	TestGroup1	f
202	0	active	testgroup2@group2.com	TestGroup2	TestGroup2	f	TestGroup2	f
192	0	active	\N	OWF Users	OWF Users	t	OWF Users	f
4	1	active	\N		9e05a814-c1a4-4db1-a672-bccae0f0b311	f	9e05a814-c1a4-4db1-a672-bccae0f0b311	t
723	0	active	test@email.com	I am a sample Group 1 from users.properties	group1	t	group1	f
724	0	active	test2@email.com	I am a sample Group 2 from users.properties	group2	t	group2	f
725	0	active	test3@email.com	I am a sample Group 3 from users.properties	group3	t	group3	f
854	1	active	\N		fa8ad65e-d17a-41f2-a8d7-d2da11617053	f	\N	t
887	2	active	\N		260de1d2-9166-4d60-9e77-5283f173c3ea	f	\N	t
893	1	active	\N		14b41e29-6d37-4b75-8945-5f15354e7abb	f	\N	t
899	1	active	\N		96a0dcc8-89bd-4aa1-876d-e57e92445e15	f	\N	t
932	2	active	\N		ec2cded6-bd07-4dc9-9d6f-da11aae1ce4d	f	\N	t
938	1	active	\N		7c6bb141-ee3b-4740-b7f2-45fc2f879c5c	f	\N	t
944	1	active	\N		9c60bafc-c749-435f-9e40-2214c89deada	f	\N	t
\.


--
-- Data for Name: owf_group_people; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY owf_group_people (group_id, person_id) FROM stdin;
201	2
201	1
202	2
202	1
723	1
724	1
725	1
854	1
723	2
893	2
899	2
938	3
944	3
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY person (id, version, enabled, user_real_name, username, last_login, email_show, email, prev_login, description, last_notification, requires_sync) FROM stdin;
28	0	t	DEFAULT_USER	DEFAULT_USER	\N	f	\N	\N	\N	\N	t
3	7	t	Test User 2	testUser2	2017-07-23 20:21:37.809	f	testUser1@ozone3.test	2017-07-23 20:01:59.591	Test User 2	\N	f
1	33	t	Test Admin 1	testAdmin1	2017-08-02 19:08:20.992	f	testAdmin1@ozone3.test	2017-08-02 19:00:29.307	Test Administrator 1	\N	f
2	16	t	Test User 1	testUser1	2017-08-02 19:08:33.01	f	testUser1@ozone3.test	2017-08-02 19:06:07.115	Test User 1	\N	f
\.


--
-- Data for Name: person_role; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY person_role (person_authorities_id, role_id) FROM stdin;
28	26
3	26
1	27
1	26
2	26
\.


--
-- Data for Name: person_widget_definition; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY person_widget_definition (id, version, person_id, visible, pwd_position, widget_definition_id, group_widget, favorite, display_name, disabled, user_widget) FROM stdin;
740	0	1	t	14	186	t	f	\N	f	f
741	0	1	t	15	187	t	f	\N	f	f
742	0	1	t	16	188	t	f	\N	f	f
743	0	1	t	17	189	t	f	\N	f	f
744	0	1	t	18	190	t	f	\N	f	f
745	0	1	t	19	191	t	f	\N	f	f
746	0	1	t	20	192	t	f	\N	f	f
747	0	1	t	21	193	t	f	\N	f	f
748	0	1	t	22	194	t	f	\N	f	f
749	0	1	t	23	195	t	f	\N	f	f
40	1	1	t	0	17	f	f	\N	f	t
39	1	1	t	1	16	f	f	\N	f	t
43	1	1	t	2	20	f	f	\N	f	t
750	1	1	t	3	178	t	f	\N	f	f
751	1	1	t	4	179	t	f	\N	f	f
752	1	1	t	5	180	t	f	\N	f	f
753	1	1	t	6	181	t	f	\N	f	f
754	1	1	t	7	182	t	f	\N	f	f
755	1	1	t	8	183	t	f	\N	f	f
773	1	1	t	10	769	t	f	\N	f	f
789	1	1	t	13	787	t	f	\N	f	f
792	1	1	t	14	790	t	f	\N	f	f
802	1	1	t	15	798	t	f	\N	f	f
812	1	1	t	16	808	t	f	\N	f	f
807	1	1	t	18	803	t	f	\N	f	f
783	1	1	t	19	781	t	f	\N	f	f
830	1	1	t	21	826	t	f	\N	f	f
797	1	1	t	22	793	t	f	\N	f	f
825	1	1	t	24	821	t	f	\N	f	f
835	1	1	t	25	831	t	f	\N	f	f
861	1	2	t	3	178	t	f	\N	f	f
56	1	2	t	0	17	f	f	\N	f	t
87	0	28	t	10	16	f	f	\N	f	t
88	0	28	t	11	17	f	f	\N	f	t
55	1	2	t	1	16	f	f	\N	f	t
59	1	2	t	2	20	f	f	\N	f	t
868	1	2	t	8	183	t	f	\N	f	f
874	1	2	t	13	784	t	f	\N	f	f
875	1	2	t	14	787	t	f	\N	f	f
876	1	2	t	15	790	t	f	\N	f	f
864	1	2	t	18	803	t	f	\N	f	f
882	1	2	t	24	831	t	f	\N	f	f
886	1	2	t	28	849	t	f	\N	f	f
72	1	3	t	0	17	f	f	\N	f	t
71	1	3	t	1	16	f	f	\N	f	t
75	1	3	t	2	20	f	f	\N	f	t
906	1	3	t	3	178	t	f	\N	f	f
91	0	28	t	14	20	f	f	\N	f	t
768	1	1	t	9	763	t	f	\N	f	f
780	1	1	t	11	776	t	f	\N	f	f
786	1	1	t	12	784	t	f	\N	f	f
815	1	1	t	17	813	t	f	\N	f	f
848	1	1	t	20	846	t	f	\N	f	f
820	1	1	t	23	816	t	f	\N	f	f
840	1	1	t	26	836	t	f	\N	f	f
845	1	1	t	27	841	t	f	\N	f	f
853	1	1	t	28	849	t	f	\N	f	f
907	1	3	t	4	181	t	f	\N	f	f
910	1	3	t	5	182	t	f	\N	f	f
911	1	3	t	6	798	t	f	\N	f	f
912	1	3	t	7	769	t	f	\N	f	f
913	1	3	t	8	183	t	f	\N	f	f
914	1	3	t	9	179	t	f	\N	f	f
915	1	3	t	10	763	t	f	\N	f	f
916	1	3	t	11	180	t	f	\N	f	f
917	1	3	t	12	776	t	f	\N	f	f
919	1	3	t	13	784	t	f	\N	f	f
920	1	3	t	14	787	t	f	\N	f	f
921	1	3	t	15	790	t	f	\N	f	f
922	1	3	t	16	808	t	f	\N	f	f
923	1	3	t	17	813	t	f	\N	f	f
909	1	3	t	18	803	t	f	\N	f	f
926	1	3	t	19	826	t	f	\N	f	f
908	1	3	t	20	793	t	f	\N	f	f
918	1	3	t	21	781	t	f	\N	f	f
924	1	3	t	22	816	t	f	\N	f	f
925	1	3	t	23	821	t	f	\N	f	f
927	1	3	t	24	831	t	f	\N	f	f
928	1	3	t	25	836	t	f	\N	f	f
929	1	3	t	26	841	t	f	\N	f	f
930	1	3	t	27	846	t	f	\N	f	f
931	1	3	t	28	849	t	f	\N	f	f
869	2	2	t	4	179	t	f	\N	f	f
871	2	2	t	5	180	t	f	\N	f	f
862	2	2	t	6	181	t	f	\N	f	f
865	2	2	t	7	182	t	f	\N	f	f
870	2	2	t	9	763	t	f	\N	f	f
867	2	2	t	10	769	t	f	\N	f	f
872	2	2	t	11	776	t	f	\N	f	f
873	2	2	t	12	781	t	f	\N	f	f
863	2	2	t	16	793	t	f	\N	f	f
866	2	2	t	17	798	t	f	\N	f	f
877	2	2	t	19	808	t	f	\N	f	f
878	2	2	t	20	813	t	f	\N	f	f
879	2	2	t	21	816	t	f	\N	f	f
880	2	2	t	22	821	t	f	\N	f	f
881	2	2	t	23	826	t	f	\N	f	f
885	2	2	t	25	846	t	f	\N	f	f
883	2	2	t	26	836	t	f	\N	f	f
884	2	2	t	27	841	t	f	\N	f	f
\.


--
-- Data for Name: preference; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY preference (id, version, value, path, user_id, namespace) FROM stdin;
144	0	foovalue	test path entry 0	2	foo.bar.0
145	0	foovalue	test path entry 1	2	foo.bar.1
146	0	foovalue	test path entry 0	3	foo.bar.0
147	0	foovalue	test path entry 1	3	foo.bar.1
148	0	foovalue	test path entry 0	1	foo.bar.0
149	0	foovalue	test path entry 1	1	foo.bar.1
708	0	a9bf8e71-692d-44e3-a465-5337ce5e725e	guid_to_launch	1	owf.admin.UserEditCopy
709	0	679294b3-ccc3-4ace-a061-e3f27ed86451	guid_to_launch	1	owf.admin.WidgetEditCopy
710	0	dc5c2062-aaa8-452b-897f-60b4b55ab564	guid_to_launch	1	owf.admin.GroupEditCopy
711	0	2445afb9-eb3f-4b79-acf8-6b12180921c3	guid_to_launch	1	owf.admin.DashboardEditCopy
712	0	72c382a3-89e7-4abf-94db-18db7779e1df	guid_to_launch	1	owf.admin.StackEditCopy
860	0	{"pinned":false}	appcomponent-view	1	owf
905	0	{"pinned":false}	appcomponent-view	2	owf
950	0	{"pinned":false}	appcomponent-view	3	owf
951	0	{"groups":["Admin","Air Defense","Air Operations","Information Warfare","Maintenance","Multi-Mission","STRIKE","Subsurface","Surface","Training","Other"]}	User Groups	1	opt.user.groups
952	0	{"groups":["Admin","Air Defense","Air Operations","Information Warfare","Maintenance","Multi-Mission","STRIKE","Subsurface","Surface","Training","Other"]}	User Groups	2	opt.user.groups
953	0	{"groups":["Admin","Air Defense","Air Operations","Information Warfare","Maintenance","Multi-Mission","STRIKE","Subsurface","Surface","Training","Other"]}	User Groups	3	opt.user.groups
\.


--
-- Data for Name: requestmap; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY requestmap (id, version, url, config_attribute) FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY role (id, version, authority, description) FROM stdin;
26	2	ROLE_USER	User Role
27	1	ROLE_ADMIN	Admin Role
\.


--
-- Data for Name: stack; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY stack (id, version, name, description, stack_context, image_url, descriptor_url, unique_widget_count, owner_id, approved, default_group_id) FROM stdin;
1	2	Administration	This application collects the administrative components into a common set of application pages for managing system resources.  These pages can be used to create, modify, update, and delete Apps, App Components, Users and Groups, and system configuration settings.	ef8b5d6f-4b16-4743-9a57-31683c94b616	themes/common/images/admin/64x64_admin_app.png	\N	5	\N	t	4
855	0	OPT	\N	0f069227-5c8e-462f-971d-788073058134	\N	\N	0	1	f	854
888	0	Untitled	\N	fe1a3e5a-554c-4f2d-a6de-d8c63e8d8eab	\N	\N	0	2	f	887
894	0	Untitled	\N	18ccc889-0fc1-489c-9fd3-14ab16bdf203	\N	\N	0	2	f	893
900	0	OPT	\N	a63d016b-a9e1-40dc-b42f-ec375a30ce88	\N	\N	0	2	f	899
933	0	Untitled	\N	eee10225-6c9d-4715-80c3-d969bb6b6af8	\N	\N	0	3	f	932
939	0	Untitled	\N	5608edaa-1d42-4568-ad30-b773845af438	\N	\N	0	3	f	938
945	0	OPT	\N	5b7f41e8-7a21-44b2-b6b7-29f5fc256a3e	\N	\N	0	3	f	944
\.


--
-- Data for Name: stack_groups; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY stack_groups (group_id, stack_id) FROM stdin;
3	1
\.


--
-- Name: stack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('stack_id_seq', 2, true);


--
-- Data for Name: tag_links; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY tag_links (id, version, pos, visible, tag_ref, tag_id, type, editable) FROM stdin;
153	0	-1	t	151	152	widgetDefinition	t
155	0	-1	t	154	152	widgetDefinition	t
157	0	-1	t	156	152	widgetDefinition	t
159	0	-1	t	158	152	widgetDefinition	t
162	0	-1	t	160	152	widgetDefinition	t
164	0	-1	t	163	152	widgetDefinition	t
165	0	-1	t	161	152	widgetDefinition	t
169	0	-1	t	166	152	widgetDefinition	t
168	0	-1	t	167	152	widgetDefinition	t
172	0	-1	t	170	152	widgetDefinition	t
173	0	-1	t	171	152	widgetDefinition	t
176	0	-1	t	174	152	personWidgetDefinition	t
178	0	-1	t	177	152	personWidgetDefinition	t
180	0	-1	t	179	152	personWidgetDefinition	t
182	0	-1	t	181	152	personWidgetDefinition	t
184	0	-1	t	183	152	personWidgetDefinition	t
186	0	-1	t	185	152	personWidgetDefinition	t
188	0	-1	t	187	152	personWidgetDefinition	t
190	0	-1	t	189	152	personWidgetDefinition	t
313	0	-1	t	178	309	widgetDefinition	t
314	0	-1	t	179	310	widgetDefinition	t
315	0	-1	t	179	311	widgetDefinition	t
316	0	-1	t	180	312	widgetDefinition	t
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY tags (id, version, name) FROM stdin;
152	0	admin
309	0	grid
310	0	html
311	0	document_viewer
312	0	stock_chart
\.


--
-- Data for Name: widget_def_intent; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY widget_def_intent (id, version, receive, send, intent_id, widget_definition_id) FROM stdin;
756	0	f	t	301	178
757	0	f	t	302	178
758	0	t	f	302	179
759	0	t	f	301	180
760	0	f	t	304	181
761	0	t	f	304	182
762	0	t	f	303	182
765	0	f	t	303	763
766	0	t	f	303	763
774	0	f	t	303	769
775	0	t	f	303	769
777	0	f	t	303	776
778	0	t	f	303	776
794	0	f	t	303	793
795	0	t	f	303	793
799	0	f	t	303	798
800	0	t	f	303	798
804	0	f	t	303	803
805	0	t	f	303	803
809	0	f	t	303	808
810	0	t	f	303	808
817	0	f	t	303	816
818	0	t	f	303	816
822	0	f	t	303	821
823	0	t	f	303	821
827	0	f	t	303	826
828	0	t	f	303	826
832	0	f	t	303	831
833	0	t	f	303	831
837	0	f	t	303	836
838	0	t	f	303	836
842	0	f	t	303	841
843	0	t	f	303	841
850	0	f	t	303	849
851	0	t	f	303	849
\.


--
-- Data for Name: widget_def_intent_data_types; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY widget_def_intent_data_types (intent_data_type_id, widget_definition_intent_id) FROM stdin;
303	756
304	757
304	758
303	759
305	760
305	761
306	762
764	765
764	766
764	774
764	775
764	777
764	778
764	794
764	795
764	799
764	800
764	804
764	805
764	809
764	810
764	817
764	818
764	822
764	823
764	827
764	828
764	832
764	833
764	837
764	838
764	842
764	843
764	850
764	851
\.


--
-- Name: widget_def_intent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('widget_def_intent_id_seq', 1, false);


--
-- Data for Name: widget_definition; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY widget_definition (id, version, visible, image_url_medium, image_url_small, singleton, width, widget_version, height, widget_url, widget_guid, display_name, background, universal_name, descriptor_url, description, mobile_ready) FROM stdin;
186	0	f	themes/common/images/adm-tools/Widgets64.png	themes/common/images/adm-tools/Widgets24.png	f	581	1.0	440	admin/WidgetEdit.gsp	679294b3-ccc3-4ace-a061-e3f27ed86451	App Component Editor	f	org.ozoneplatform.owf.admin.appcomponentedit	\N		f
187	0	t	themes/common/images/adm-tools/Widgets64.png	themes/common/images/adm-tools/Widgets24.png	f	818	1.0	440	admin/WidgetManagement.gsp	48edfe94-4291-4991-a648-c19a903a663b	App Components	f	org.ozoneplatform.owf.admin.appcomponentmanagement	\N		f
188	0	f	themes/common/images/adm-tools/Groups64.png	themes/common/images/adm-tools/Groups24.png	f	581	1.0	440	admin/GroupEdit.gsp	dc5c2062-aaa8-452b-897f-60b4b55ab564	Group Editor	f	org.ozoneplatform.owf.admin.groupedit	\N		f
189	0	t	themes/common/images/adm-tools/Groups64.png	themes/common/images/adm-tools/Groups24.png	f	818	1.0	440	admin/GroupManagement.gsp	53a2a879-442c-4012-9215-a17604dedff7	Groups	f	org.ozoneplatform.owf.admin.groupmanagement	\N		f
190	0	f	themes/common/images/adm-tools/Users64.png	themes/common/images/adm-tools/Users24.png	f	581	1.0	440	admin/UserEdit.gsp	a9bf8e71-692d-44e3-a465-5337ce5e725e	User Editor	f	org.ozoneplatform.owf.admin.useredit	\N		f
191	0	t	themes/common/images/adm-tools/Users64.png	themes/common/images/adm-tools/Users24.png	f	818	1.0	440	admin/UserManagement.gsp	38070c45-5f6a-4460-810c-6e3496495ec4	Users	f	org.ozoneplatform.owf.admin.usermanagement	\N		f
192	0	t	themes/common/images/adm-tools/Configuration64.png	themes/common/images/adm-tools/Configuration24.png	f	900	1.0	440	admin/Configuration.gsp	af180bfc-3924-4111-93de-ad6e9bfc060e	Configuration	f	org.ozoneplatform.owf.admin.configuration	\N		f
193	0	f	themes/common/images/adm-tools/Stacks64.png	themes/common/images/adm-tools/Stacks24.png	f	581	1.0	440	admin/StackEdit.gsp	72c382a3-89e7-4abf-94db-18db7779e1df	App Editor	f	org.ozoneplatform.owf.admin.appedit	\N		f
194	0	t	themes/common/images/adm-tools/Stacks64.png	themes/common/images/adm-tools/Stacks24.png	f	818	1.0	440	admin/StackManagement.gsp	391dd2af-a207-41a3-8e51-2b20ec3e7241	Apps	f	org.ozoneplatform.owf.admin.appmanagement	\N		f
195	0	f	themes/common/images/adm-tools/Dashboards64.png	themes/common/images/adm-tools/Dashboards24.png	f	581	1.0	440	admin/DashboardEdit.gsp	2445afb9-eb3f-4b79-acf8-6b12180921c3	Page Editor	f	org.ozoneplatform.owf.admin.pageedit	\N		f
17	1	f	themes/common/images/widget-icons/ChannelListener.png	themes/common/images/widget-icons/ChannelListener.png	f	540	\N	440	examples/walkthrough/widgets/ChannelListener.gsp	ec5435cf-4021-4f2a-ba69-dde451d12551	Channel Listener	f	\N	\N	\N	f
16	1	f	themes/common/images/widget-icons/ChannelShouter.png	themes/common/images/widget-icons/ChannelShouter.png	f	295	\N	250	examples/walkthrough/widgets/ChannelShouter.gsp	eb5435cf-4021-4f2a-ba69-dde451d12551	Channel Shouter	f	\N	\N	\N	f
20	1	f	themes/common/images/widget-icons/WidgetLog.png	themes/common/images/widget-icons/WidgetLog.png	f	540	\N	440	examples/walkthrough/widgets/WidgetLog.gsp	4854fbd4-395c-442b-95c6-8b60702fd2b4	Load Time Log	f	\N	\N	\N	f
178	4	f	themes/common/images/widget-icons/NYSEStock.png	themes/common/images/widget-icons/NYSEStock.png	f	825	\N	437	examples/walkthrough/widgets/NYSE.gsp	fe137961-039d-e7a5-7050-d6eed7ac4782	NYSE App Component	f	org.owfgoss.owf.examples.NYSE	../examples/walkthrough/descriptors/NYSE_descriptor.html	This app component displays the end of day report for the New York Stock Exchange.	f
181	3	f	examples/walkthrough/widgets/directions/img/logo.png	examples/walkthrough/widgets/directions/img/logo.png	f	400	\N	400	examples/walkthrough/widgets/directions	302c35c9-9ed8-d0b6-251c-ea1ed4d0c86b	Directions	f	org.owfgoss.owf.examples.GetDirections	../examples/walkthrough/widgets/directions/descriptor/descriptor.html	This app component maps directions.	f
793	2	t	../opt/Common/owf_descriptors/geolocation.png	../opt/Common/owf_descriptors/geolocation.png	t	800	\N	400	/opt/GeoLocationManager/views/geoLocation.html	8bffb163-3b84-4919-e8e1-749102e1d641	Geo Location Manager	f	opt.geolocationmanager	/opt/Common/owf_descriptors/geolocationmanager.html	OPT Geo Location Manager	f
803	2	t	../opt/Common/owf_descriptors/librarymanager.png	../opt/Common/owf_descriptors/librarymanager.png	t	800	\N	400	/opt/LibraryManager/views/libraryManager.html	e455b3d3-4b0a-6fda-a2b4-9a1f585e493e	Library Manager	f	opt.libraryManager	/opt/Common/owf_descriptors/librarymanager.html	OPT Library Manager	f
182	4	f	examples/walkthrough/widgets/googlemaps/img/logo.png	examples/walkthrough/widgets/googlemaps/img/logo.png	f	800	\N	600	examples/walkthrough/widgets/googlemaps	d182002b-3de2-eb24-77be-95a7d08aa85b	Google Maps	f	org.owfgoss.owf.examples.GoogleMaps	../examples/walkthrough/widgets/googlemaps/descriptor/descriptor.html	This app component displays markers or directions.	f
798	2	f	../opt/Common/owf_descriptors/guidancemanager.png	../opt/Common/owf_descriptors/guidancemanager.png	t	800	\N	400	/opt/GuidanceManager/views/guidanceManager.html	505cd8e9-561d-e2f5-cbf5-5828dbae67a3	Guidance Manager	f	opt.guidance	/opt/Common/owf_descriptors/guidancemanager.html	OPT Guidance Manager	f
769	6	f	../opt/Common/owf_descriptors/form.png	../opt/Common/owf_descriptors/form.png	t	440	\N	800	/opt/DynamicForms/views/form.html	fcc14e71-c293-c181-93b7-87f7f26171ad	Form	f	opt.form	/opt/Common/owf_descriptors/form.html	Form	f
183	1	f	examples/walkthrough/widgets/contacts/img/logo.png	examples/walkthrough/widgets/contacts/img/logo.png	f	400	\N	400	examples/walkthrough/widgets/contacts	92448ba5-7f2b-982a-629e-9d621268b5e9	Contacts Manager	f	org.owfgoss.owf.examples.ContactsManager	../examples/walkthrough/widgets/contacts/descriptor/descriptor.html	This app component allows users to manage their contacts.	f
179	3	f	themes/common/images/widget-icons/HTMLViewer.png	themes/common/images/widget-icons/HTMLViewer.png	f	400	\N	600	examples/walkthrough/widgets/HTMLViewer.gsp	cd5e77f8-cb28-8574-0a8a-a535bd2c7de4	HTML Viewer	f	org.owfgoss.owf.examples.HTMLViewer	../examples/walkthrough/descriptors/HTMLViewer_descriptor.html	This app component displays HTML.	f
763	2	f	../opt/Common/owf_descriptors/assetmanager.png	../opt/Common/owf_descriptors/assetmanager.png	t	800	\N	400	/opt/AssetManager/views/assetManager.html	50f39fb0-1d13-14e6-c311-938b9603d2e5	Asset Manager	f	opt.assetmanager	/opt/Common/owf_descriptors/assetmanager.html	OPT Asset Manager	f
180	3	f	themes/common/images/widget-icons/PriceChart.png	themes/common/images/widget-icons/PriceChart.png	f	800	\N	600	examples/walkthrough/widgets/StockChart.gsp	92078ac9-6f21-2f5f-6afc-bdc8c915c66d	Stock Chart	f	org.owfgoss.owf.examples.StockChart	../examples/walkthrough/descriptors/StockChart_descriptor.html	This app component charts stock prices.	f
776	2	f	../opt/Common/owf_descriptors/table.png	../opt/Common/owf_descriptors/table.png	t	1200	\N	600	/opt/DynamicForms/views/table.html	f5861a1e-f9f3-68f3-2b1b-4903acfbe82a	Table	f	Table	/opt/Common/owf_descriptors/table.html	Table	f
781	0	t	../Common/owf_descriptors/map.png	../Common/owf_descriptors/map.png	t	1200	\N	800	/opt/esrimap/index.html	7ef2698d-45f8-6f58-0493-ff3aa334a183	ESRI Map	f	opt.esri.map	/opt/Common/owf_descriptors/esrimap.html	\N	f
784	0	f	../opt/Common/owf_descriptors/deepPicker.png	../opt/Common/owf_descriptors/deepPicker.png	t	200	\N	200	/opt/esrimap/widgets/assetBaseballCard.html	f88d46c0-9c33-3408-5b61-db63ed56d0ac	Asset Baseball Card	f	opt.asset.baseballcard	/opt/Common/owf_descriptors/assetBaseballCard.html	\N	f
787	0	f	../opt/Common/owf_descriptors/deepPicker.png	../opt/Common/owf_descriptors/deepPicker.png	f	400	\N	400	/opt/esrimap/widgets/assetBubble.html	a4b1c6bc-4de6-1e3b-7d41-681eeff693bf	Asset Bubble	f	opt.asset.bubble	/opt/Common/owf_descriptors/assetBubble.html	\N	f
790	0	f	../opt/Common/owf_descriptors/deepPicker.png	../opt/Common/owf_descriptors/deepPicker.png	f	200	\N	200	/opt/esrimap/widgets/deepPicker.html	587db749-8d91-ee93-d70f-d15a710a8a12	Map Selected Items	f	opt.mapSelectedItems	/opt/Common/owf_descriptors/deeppicker.html	\N	f
808	2	t	../opt/Common/owf_descriptors/optHub.png	../opt/Common/owf_descriptors/optHub.png	t	400	\N	400	/opt/OptHub/views/optHub.html	d1be515b-e97a-61d6-f727-109a2f7520fa	OPT Hub	t	optHub	/opt/Common/owf_descriptors/opthub.html	OPT Hub	f
813	0	t	themes/common/images/adm-tools/Widgets64.png	themes/common/images/adm-tools/Widgets24.png	t	200	\N	200	/opt/optrouter/router.html	c524bb67-e7d2-d7aa-970b-6684c2795397	optrouter	t	optrouter	/opt/Common/owf_descriptors/optrouter.html	\N	f
816	2	f	../opt/Common/owf_descriptors/relativelocation.png	../opt/Common/owf_descriptors/relativelocation.png	t	400	\N	400	/opt/RelativeLocation/relativelocation.html	beff0020-eb7e-ac72-d6e4-75b3c76dec4c	Relative Location	f	opt.relativelocation	/opt/Common/owf_descriptors/relativelocation.html	OPT Relative Location	f
821	2	t	../opt/Common/owf_descriptors/scheduler.png	../opt/Common/owf_descriptors/scheduler.png	t	200	\N	200	/opt/Scheduler/views/scheduler.html	525895bd-53f1-99f7-93c2-c826c6fdc784	OPT Scheduler	f	opt.scheduler	/opt/Common/owf_descriptors/scheduler.html	OPT Scheduler	f
826	2	t	../opt/Common/owf_descriptors/miniTaskEditor.png	../opt/Common/owf_descriptors/miniTaskEditor.png	f	400	\N	300	/opt/TaskEditor/views/miniTaskEditor.html	94b40b5c-91d3-c508-6a94-8e41dd6a3a67	Mini Task Editor	f	opt.miniTaskEditor	/opt/Common/owf_descriptors/miniTaskEditor.html	OPT Mini Task Editor	f
831	2	f	../opt/Common/owf_descriptors/taskeditor.png	../opt/Common/owf_descriptors/taskeditor.png	f	800	\N	800	/opt/TaskEditor/views/taskEditor.html	8c66c30e-c729-aec4-f941-47a14d9d1868	Task Editor	f	opt.taskeditor	/opt/Common/owf_descriptors/taskEditor.html	OPT Task Editor	f
836	2	t	../opt/Common/owf_descriptors/timeline.png	../opt/Common/owf_descriptors/timeline.png	t	800	\N	400	/opt/TimeLineOpt/timelineopt.html	0f2cc273-cd17-d32a-3d18-9f0c2614f028	Time Line	f	opt.timeline	/opt/Common/owf_descriptors/timelineopt.html	Time Line	f
841	2	f	../opt/Common/owf_descriptors/transit.png	../opt/Common/owf_descriptors/transit.png	t	600	\N	600	/opt/Transit/views/transit.html	7580fda6-f4f8-8525-9c81-8e92b2593b27	Transit Editor	f	opt.transit	/opt/Common/owf_descriptors/transit.html	OPT Transit Editor	f
846	0	t	../opt/Common/owf_descriptors/chat.png	../opt/Common/owf_descriptors/chat.png	f	200	\N	200	/opt/unity-chat/index.html	f118dc77-d3a3-5dea-e045-736b88590ae7	Unity Chat	f	opt.unity.chat	/opt/Common/owf_descriptors/chat.html	\N	f
849	2	f	../opt/Common/owf_descriptors/waypoint.png	../opt/Common/owf_descriptors/waypoint.png	f	1200	\N	800	/opt/Waypoint/views/waypointEditor.html	528bb991-127e-933f-d4a7-a7eec1f26633	Waypoints Editor	f	opt.waypointeditor	/opt/Common/owf_descriptors/waypointeditor.html	OPT Waypoints Editor	f
\.


--
-- Data for Name: widget_definition_widget_types; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY widget_definition_widget_types (widget_definition_id, widget_type_id) FROM stdin;
186	2
187	2
188	2
189	2
190	2
191	2
192	2
193	2
194	2
195	2
17	1
16	1
20	1
178	1
179	1
180	1
181	1
182	1
183	1
763	1
769	1
776	1
781	1
784	1
787	1
790	1
793	1
798	1
803	1
808	1
813	1
816	1
821	1
826	1
831	1
836	1
841	1
846	1
849	1
\.


--
-- Data for Name: widget_type; Type: TABLE DATA; Schema: public; Owner: owf
--

COPY widget_type (id, version, name, display_name) FROM stdin;
1	0	standard	standard
2	0	administration	administration
4	0	metric	metric
5	0	fullscreen	fullscreen
3	0	marketplace	store
\.


--
-- Name: widget_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: owf
--

SELECT pg_catalog.setval('widget_type_id_seq', 1, false);


--
-- Name: application_configurationPK; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY application_configuration
    ADD CONSTRAINT "application_configurationPK" PRIMARY KEY (id);


--
-- Name: application_configuration_code_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY application_configuration
    ADD CONSTRAINT application_configuration_code_key UNIQUE (code);


--
-- Name: dashboard_guid_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY dashboard
    ADD CONSTRAINT dashboard_guid_key UNIQUE (guid);


--
-- Name: dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY dashboard
    ADD CONSTRAINT dashboard_pkey PRIMARY KEY (id);


--
-- Name: domain_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY domain_mapping
    ADD CONSTRAINT domain_mapping_pkey PRIMARY KEY (id);


--
-- Name: intentPK; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent
    ADD CONSTRAINT "intentPK" PRIMARY KEY (id);


--
-- Name: intent_action_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent
    ADD CONSTRAINT intent_action_key UNIQUE (action);


--
-- Name: intent_data_typePK; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent_data_type
    ADD CONSTRAINT "intent_data_typePK" PRIMARY KEY (id);


--
-- Name: owf_group_people_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY owf_group_people
    ADD CONSTRAINT owf_group_people_pkey PRIMARY KEY (group_id, person_id);


--
-- Name: owf_group_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY owf_group
    ADD CONSTRAINT owf_group_pkey PRIMARY KEY (id);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: person_username_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_username_key UNIQUE (username);


--
-- Name: person_widget_definition_person_id_widget_definition_id_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY person_widget_definition
    ADD CONSTRAINT person_widget_definition_person_id_widget_definition_id_key UNIQUE (person_id, widget_definition_id);


--
-- Name: person_widget_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY person_widget_definition
    ADD CONSTRAINT person_widget_definition_pkey PRIMARY KEY (id);


--
-- Name: pk_databasechangelog; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY databasechangelog
    ADD CONSTRAINT pk_databasechangelog PRIMARY KEY (id, author, filename);


--
-- Name: pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


--
-- Name: pk_stack_groups; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack_groups
    ADD CONSTRAINT pk_stack_groups PRIMARY KEY (group_id, stack_id);


--
-- Name: preference_path_namespace_user_id_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY preference
    ADD CONSTRAINT preference_path_namespace_user_id_key UNIQUE (path, namespace, user_id);


--
-- Name: preference_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY preference
    ADD CONSTRAINT preference_pkey PRIMARY KEY (id);


--
-- Name: requestmap_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY requestmap
    ADD CONSTRAINT requestmap_pkey PRIMARY KEY (id);


--
-- Name: requestmap_url_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY requestmap
    ADD CONSTRAINT requestmap_url_key UNIQUE (url);


--
-- Name: role_authority_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_authority_key UNIQUE (authority);


--
-- Name: role_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: stackPK; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack
    ADD CONSTRAINT "stackPK" PRIMARY KEY (id);


--
-- Name: stack_stack_context_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack
    ADD CONSTRAINT stack_stack_context_key UNIQUE (stack_context);


--
-- Name: tag_links_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY tag_links
    ADD CONSTRAINT tag_links_pkey PRIMARY KEY (id);


--
-- Name: tags_name_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: widget_def_intentPK; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_def_intent
    ADD CONSTRAINT "widget_def_intentPK" PRIMARY KEY (id);


--
-- Name: widget_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_definition
    ADD CONSTRAINT widget_definition_pkey PRIMARY KEY (id);


--
-- Name: widget_definition_widget_guid_key; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_definition
    ADD CONSTRAINT widget_definition_widget_guid_key UNIQUE (widget_guid);


--
-- Name: widget_definition_widget_types_pkey; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_definition_widget_types
    ADD CONSTRAINT widget_definition_widget_types_pkey PRIMARY KEY (widget_definition_id, widget_type_id);


--
-- Name: widget_typePK; Type: CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_type
    ADD CONSTRAINT "widget_typePK" PRIMARY KEY (id);


--
-- Name: app_config_group_name_idx; Type: INDEX; Schema: public; Owner: owf
--

CREATE INDEX app_config_group_name_idx ON application_configuration USING btree (group_name);


--
-- Name: domain_mapping_all; Type: INDEX; Schema: public; Owner: owf
--

CREATE INDEX domain_mapping_all ON domain_mapping USING btree (src_id, src_type, relationship_type, dest_id, dest_type);


--
-- Name: fk68ac2888656347d; Type: INDEX; Schema: public; Owner: owf
--

CREATE INDEX fk68ac2888656347d ON stack USING btree (owner_id);


--
-- Name: fkfc9c0477666c6d2; Type: INDEX; Schema: public; Owner: owf
--

CREATE INDEX fkfc9c0477666c6d2 ON application_configuration USING btree (created_by_id);


--
-- Name: fkfc9c047e31cb353; Type: INDEX; Schema: public; Owner: owf
--

CREATE INDEX fkfc9c047e31cb353 ON application_configuration USING btree (edited_by_id);


--
-- Name: fk28113703b197b21; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY owf_group_people
    ADD CONSTRAINT fk28113703b197b21 FOREIGN KEY (group_id) REFERENCES owf_group(id);


--
-- Name: fk2811370c1f5e0b3; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY owf_group_people
    ADD CONSTRAINT fk2811370c1f5e0b3 FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: fk68ac28835014f5f; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack
    ADD CONSTRAINT fk68ac28835014f5f FOREIGN KEY (default_group_id) REFERENCES owf_group(id);


--
-- Name: fk68ac2888656347d; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack
    ADD CONSTRAINT fk68ac2888656347d FOREIGN KEY (owner_id) REFERENCES person(id);


--
-- Name: fk6f5c17c4293a835c; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY person_widget_definition
    ADD CONSTRAINT fk6f5c17c4293a835c FOREIGN KEY (widget_definition_id) REFERENCES widget_definition(id);


--
-- Name: fk6f5c17c4c1f5e0b3; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY person_widget_definition
    ADD CONSTRAINT fk6f5c17c4c1f5e0b3 FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: fk7c35d6d45a3b441d; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY tag_links
    ADD CONSTRAINT fk7c35d6d45a3b441d FOREIGN KEY (tag_id) REFERENCES tags(id);


--
-- Name: fk8a59132fd46c6faa; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent_data_types
    ADD CONSTRAINT fk8a59132fd46c6faa FOREIGN KEY (intent_data_type_id) REFERENCES intent_data_type(id);


--
-- Name: fk8a59d92f293a835c; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_definition_widget_types
    ADD CONSTRAINT fk8a59d92f293a835c FOREIGN KEY (widget_definition_id) REFERENCES widget_definition(id);


--
-- Name: fk8a59d92fd41a6fad; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_def_intent_data_types
    ADD CONSTRAINT fk8a59d92fd41a6fad FOREIGN KEY (intent_data_type_id) REFERENCES intent_data_type(id);


--
-- Name: fk8a59d92fd46c6f7c; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_definition_widget_types
    ADD CONSTRAINT fk8a59d92fd46c6f7c FOREIGN KEY (widget_type_id) REFERENCES widget_type(id);


--
-- Name: fk8a59d92fd46c6faa; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY intent_data_types
    ADD CONSTRAINT fk8a59d92fd46c6faa FOREIGN KEY (intent_id) REFERENCES intent(id);


--
-- Name: fk8a59d92fd46c6fab; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_def_intent
    ADD CONSTRAINT fk8a59d92fd46c6fab FOREIGN KEY (widget_definition_id) REFERENCES widget_definition(id);


--
-- Name: fk8a59d92fd46c6fac; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_def_intent
    ADD CONSTRAINT fk8a59d92fd46c6fac FOREIGN KEY (intent_id) REFERENCES intent(id);


--
-- Name: fk8a59d92fd46c6fad; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY widget_def_intent_data_types
    ADD CONSTRAINT fk8a59d92fd46c6fad FOREIGN KEY (widget_definition_intent_id) REFERENCES widget_def_intent(id);


--
-- Name: fk9584ab6b3b197b21; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack_groups
    ADD CONSTRAINT fk9584ab6b3b197b21 FOREIGN KEY (group_id) REFERENCES owf_group(id);


--
-- Name: fk9584ab6b6b3a1281; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY stack_groups
    ADD CONSTRAINT fk9584ab6b6b3a1281 FOREIGN KEY (stack_id) REFERENCES stack(id);


--
-- Name: fka8fcbcdb8656347d; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY preference
    ADD CONSTRAINT fka8fcbcdb8656347d FOREIGN KEY (user_id) REFERENCES person(id);


--
-- Name: fkc18aea94372cc5a; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY dashboard
    ADD CONSTRAINT fkc18aea94372cc5a FOREIGN KEY (created_by_id) REFERENCES person(id);


--
-- Name: fkc18aea946b3a1281; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY dashboard
    ADD CONSTRAINT fkc18aea946b3a1281 FOREIGN KEY (stack_id) REFERENCES stack(id);


--
-- Name: fkc18aea947028b8db; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY dashboard
    ADD CONSTRAINT fkc18aea947028b8db FOREIGN KEY (edited_by_id) REFERENCES person(id);


--
-- Name: fkc18aea948656347d; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY dashboard
    ADD CONSTRAINT fkc18aea948656347d FOREIGN KEY (user_id) REFERENCES person(id);


--
-- Name: fkfc9c0477666c6d2; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY application_configuration
    ADD CONSTRAINT fkfc9c0477666c6d2 FOREIGN KEY (created_by_id) REFERENCES person(id);


--
-- Name: fkfc9c047e31cb353; Type: FK CONSTRAINT; Schema: public; Owner: owf
--

ALTER TABLE ONLY application_configuration
    ADD CONSTRAINT fkfc9c047e31cb353 FOREIGN KEY (edited_by_id) REFERENCES person(id);


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

