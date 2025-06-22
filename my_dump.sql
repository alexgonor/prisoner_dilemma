--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Ubuntu 14.18-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.18 (Ubuntu 14.18-0ubuntu0.22.04.1)

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
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO alex;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO alex;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO alex;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO alex;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO alex;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO alex;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO alex;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO alex;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO alex;

--
-- Name: calendar_images; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.calendar_images (
    id bigint NOT NULL,
    date date,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.calendar_images OWNER TO alex;

--
-- Name: calendar_images_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.calendar_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calendar_images_id_seq OWNER TO alex;

--
-- Name: calendar_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.calendar_images_id_seq OWNED BY public.calendar_images.id;


--
-- Name: competitions; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.competitions (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.competitions OWNER TO alex;

--
-- Name: competitions_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.competitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.competitions_id_seq OWNER TO alex;

--
-- Name: competitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.competitions_id_seq OWNED BY public.competitions.id;


--
-- Name: matches; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.matches (
    id bigint NOT NULL,
    competition_id integer NOT NULL,
    winner character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.matches OWNER TO alex;

--
-- Name: matches_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.matches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matches_id_seq OWNER TO alex;

--
-- Name: matches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.matches_id_seq OWNED BY public.matches.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO alex;

--
-- Name: strategies; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.strategies (
    id bigint NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    code text NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.strategies OWNER TO alex;

--
-- Name: strategies_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.strategies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strategies_id_seq OWNER TO alex;

--
-- Name: strategies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.strategies_id_seq OWNED BY public.strategies.id;


--
-- Name: strategy_matches; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE public.strategy_matches (
    id bigint NOT NULL,
    strategy_id integer NOT NULL,
    match_id integer NOT NULL,
    moves jsonb DEFAULT '[]'::jsonb NOT NULL,
    points integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.strategy_matches OWNER TO alex;

--
-- Name: strategy_matches_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE public.strategy_matches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strategy_matches_id_seq OWNER TO alex;

--
-- Name: strategy_matches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE public.strategy_matches_id_seq OWNED BY public.strategy_matches.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: calendar_images id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.calendar_images ALTER COLUMN id SET DEFAULT nextval('public.calendar_images_id_seq'::regclass);


--
-- Name: competitions id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.competitions ALTER COLUMN id SET DEFAULT nextval('public.competitions_id_seq'::regclass);


--
-- Name: matches id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.matches ALTER COLUMN id SET DEFAULT nextval('public.matches_id_seq'::regclass);


--
-- Name: strategies id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.strategies ALTER COLUMN id SET DEFAULT nextval('public.strategies_id_seq'::regclass);


--
-- Name: strategy_matches id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.strategy_matches ALTER COLUMN id SET DEFAULT nextval('public.strategy_matches_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
5	image	CalendarImage	4	5	2025-06-22 14:53:28.256263
6	image	CalendarImage	5	6	2025-06-22 14:53:28.288241
7	image	CalendarImage	6	7	2025-06-22 14:53:28.363097
8	image	CalendarImage	7	8	2025-06-22 14:53:28.382638
9	image	CalendarImage	8	9	2025-06-22 14:53:28.410697
10	image	CalendarImage	9	10	2025-06-22 14:53:28.433986
11	image	CalendarImage	10	11	2025-06-22 14:53:28.459732
12	image	CalendarImage	11	12	2025-06-22 14:53:28.476036
13	image	CalendarImage	12	13	2025-06-22 14:53:28.513489
14	image	CalendarImage	13	14	2025-06-22 14:53:28.546208
15	image	CalendarImage	14	15	2025-06-22 14:53:28.595636
16	image	CalendarImage	15	16	2025-06-22 14:53:28.624157
17	image	CalendarImage	16	17	2025-06-22 14:53:28.651279
18	image	CalendarImage	17	18	2025-06-22 14:53:28.709109
19	image	CalendarImage	18	19	2025-06-22 14:53:28.747525
20	image	CalendarImage	19	20	2025-06-22 14:53:28.796454
21	image	CalendarImage	20	21	2025-06-22 14:53:28.835482
22	image	CalendarImage	21	22	2025-06-22 14:53:28.899484
23	image	CalendarImage	22	23	2025-06-22 14:53:28.973868
24	image	CalendarImage	23	24	2025-06-22 14:53:29.054713
25	image	CalendarImage	24	25	2025-06-22 14:53:29.081468
26	image	CalendarImage	25	26	2025-06-22 14:53:29.121569
27	image	CalendarImage	26	27	2025-06-22 14:53:29.153659
28	image	CalendarImage	27	28	2025-06-22 14:53:29.194232
29	image	CalendarImage	28	29	2025-06-22 14:53:29.218291
30	image	CalendarImage	29	30	2025-06-22 14:53:29.262155
31	image	CalendarImage	30	31	2025-06-22 14:53:29.294795
32	image	CalendarImage	31	32	2025-06-22 14:53:29.313255
33	image	CalendarImage	32	33	2025-06-22 14:53:29.340722
34	image	CalendarImage	33	34	2025-06-22 14:53:29.400667
35	image	CalendarImage	34	35	2025-06-22 14:59:50.036214
36	image	CalendarImage	35	36	2025-06-22 14:59:50.067175
37	image	CalendarImage	36	37	2025-06-22 14:59:50.090937
38	image	CalendarImage	37	38	2025-06-22 14:59:50.173581
39	image	CalendarImage	38	39	2025-06-22 14:59:50.193379
40	image	CalendarImage	39	40	2025-06-22 14:59:50.248484
41	image	CalendarImage	40	41	2025-06-22 14:59:50.284964
42	image	CalendarImage	41	42	2025-06-22 14:59:50.335651
43	image	CalendarImage	42	43	2025-06-22 14:59:50.388441
44	image	CalendarImage	43	44	2025-06-22 14:59:50.426524
45	image	CalendarImage	44	45	2025-06-22 14:59:50.449705
46	image	CalendarImage	45	46	2025-06-22 14:59:50.489102
47	image	CalendarImage	46	47	2025-06-22 14:59:50.532606
48	image	CalendarImage	47	48	2025-06-22 14:59:50.554408
49	image	CalendarImage	48	49	2025-06-22 14:59:50.63927
50	image	CalendarImage	49	50	2025-06-22 14:59:50.658445
51	image	CalendarImage	50	51	2025-06-22 14:59:50.701194
52	image	CalendarImage	51	52	2025-06-22 14:59:50.729725
53	image	CalendarImage	52	53	2025-06-22 14:59:50.754384
54	image	CalendarImage	53	54	2025-06-22 14:59:50.791819
55	image	CalendarImage	54	55	2025-06-22 14:59:50.819794
56	image	CalendarImage	55	56	2025-06-22 14:59:50.842048
57	image	CalendarImage	56	57	2025-06-22 14:59:50.857061
58	image	CalendarImage	57	58	2025-06-22 14:59:50.90097
59	image	CalendarImage	58	59	2025-06-22 14:59:50.93874
60	image	CalendarImage	59	60	2025-06-22 14:59:50.980113
61	image	CalendarImage	60	61	2025-06-22 14:59:51.011343
62	image	CalendarImage	61	62	2025-06-22 14:59:51.052425
63	image	CalendarImage	62	63	2025-06-22 14:59:51.091249
64	image	CalendarImage	63	64	2025-06-22 14:59:51.126786
65	image	CalendarImage	64	65	2025-06-22 14:59:51.174896
66	image	CalendarImage	65	66	2025-06-22 16:10:26.129176
67	image	CalendarImage	66	67	2025-06-22 16:10:26.285105
68	image	CalendarImage	67	68	2025-06-22 16:10:46.062266
69	image	CalendarImage	68	69	2025-06-22 16:10:46.129161
70	image	CalendarImage	69	70	2025-06-22 16:10:46.22818
71	image	CalendarImage	70	71	2025-06-22 16:10:46.296796
72	image	CalendarImage	71	72	2025-06-22 16:10:46.40315
73	image	CalendarImage	72	73	2025-06-22 16:10:46.548175
74	image	CalendarImage	73	74	2025-06-22 16:10:46.633303
75	image	CalendarImage	74	75	2025-06-22 16:10:46.720928
76	image	CalendarImage	75	76	2025-06-22 16:10:46.792559
77	image	CalendarImage	76	77	2025-06-22 16:10:46.872722
78	image	CalendarImage	77	78	2025-06-22 16:10:46.935162
79	image	CalendarImage	78	79	2025-06-22 16:10:46.977186
80	image	CalendarImage	79	80	2025-06-22 16:10:47.01979
81	image	CalendarImage	80	81	2025-06-22 16:10:47.083333
82	image	CalendarImage	81	82	2025-06-22 16:10:47.140572
83	image	CalendarImage	82	83	2025-06-22 16:10:47.165308
84	image	CalendarImage	83	84	2025-06-22 16:10:47.192494
85	image	CalendarImage	84	85	2025-06-22 16:10:47.222
86	image	CalendarImage	85	86	2025-06-22 16:10:47.24902
87	image	CalendarImage	86	87	2025-06-22 16:10:47.275157
88	image	CalendarImage	87	88	2025-06-22 16:10:47.300504
89	image	CalendarImage	88	89	2025-06-22 16:10:47.338961
90	image	CalendarImage	89	90	2025-06-22 16:10:47.363943
91	image	CalendarImage	90	91	2025-06-22 16:10:47.388544
92	image	CalendarImage	91	92	2025-06-22 16:10:47.413477
93	image	CalendarImage	92	93	2025-06-22 16:10:47.440839
94	image	CalendarImage	93	94	2025-06-22 16:10:47.470863
95	image	CalendarImage	94	95	2025-06-22 16:10:47.516297
96	image	CalendarImage	95	96	2025-06-22 16:17:17.690462
97	image	CalendarImage	97	97	2025-06-22 16:17:20.844997
98	image	CalendarImage	98	98	2025-06-22 16:17:20.890969
99	image	CalendarImage	99	99	2025-06-22 16:17:20.934695
100	image	CalendarImage	100	100	2025-06-22 16:17:20.965332
101	image	CalendarImage	101	101	2025-06-22 16:17:20.995277
102	image	CalendarImage	102	102	2025-06-22 16:17:21.102664
105	image	CalendarImage	105	105	2025-06-22 16:17:21.185673
106	image	CalendarImage	106	106	2025-06-22 16:17:21.211247
108	image	CalendarImage	108	108	2025-06-22 16:17:21.265376
113	image	CalendarImage	113	113	2025-06-22 16:17:21.399871
117	image	CalendarImage	117	117	2025-06-22 16:17:21.493611
118	image	CalendarImage	118	118	2025-06-22 16:17:21.51756
119	image	CalendarImage	119	119	2025-06-22 16:17:21.538686
127	image	CalendarImage	127	127	2025-06-22 16:17:21.758897
103	image	CalendarImage	103	103	2025-06-22 16:17:21.139528
104	image	CalendarImage	104	104	2025-06-22 16:17:21.163142
107	image	CalendarImage	107	107	2025-06-22 16:17:21.232793
109	image	CalendarImage	109	109	2025-06-22 16:17:21.291521
110	image	CalendarImage	110	110	2025-06-22 16:17:21.312913
111	image	CalendarImage	111	111	2025-06-22 16:17:21.348941
112	image	CalendarImage	112	112	2025-06-22 16:17:21.370676
114	image	CalendarImage	114	114	2025-06-22 16:17:21.415621
115	image	CalendarImage	115	115	2025-06-22 16:17:21.443836
116	image	CalendarImage	116	116	2025-06-22 16:17:21.46638
120	image	CalendarImage	120	120	2025-06-22 16:17:21.565822
121	image	CalendarImage	121	121	2025-06-22 16:17:21.597123
122	image	CalendarImage	122	122	2025-06-22 16:17:21.621226
123	image	CalendarImage	123	123	2025-06-22 16:17:21.649917
124	image	CalendarImage	124	124	2025-06-22 16:17:21.675323
125	image	CalendarImage	125	125	2025-06-22 16:17:21.704483
126	image	CalendarImage	126	126	2025-06-22 16:17:21.726867
128	image	CalendarImage	128	128	2025-06-22 16:26:20.55361
129	image	CalendarImage	129	129	2025-06-22 16:26:20.574705
130	image	CalendarImage	130	130	2025-06-22 16:26:20.659343
131	image	CalendarImage	131	131	2025-06-22 16:26:20.683164
132	image	CalendarImage	132	132	2025-06-22 16:26:20.705255
133	image	CalendarImage	133	133	2025-06-22 16:26:20.743547
134	image	CalendarImage	134	134	2025-06-22 16:26:20.770194
135	image	CalendarImage	135	135	2025-06-22 16:26:20.825961
136	image	CalendarImage	136	136	2025-06-22 16:26:20.914954
137	image	CalendarImage	137	137	2025-06-22 16:26:20.942714
138	image	CalendarImage	138	138	2025-06-22 16:26:20.975546
139	image	CalendarImage	139	139	2025-06-22 16:26:20.996524
140	image	CalendarImage	140	140	2025-06-22 16:26:21.02475
141	image	CalendarImage	141	141	2025-06-22 16:26:21.045531
142	image	CalendarImage	142	142	2025-06-22 16:26:21.066514
143	image	CalendarImage	143	143	2025-06-22 16:26:21.095102
144	image	CalendarImage	144	144	2025-06-22 16:26:21.123917
145	image	CalendarImage	145	145	2025-06-22 16:26:21.15163
146	image	CalendarImage	146	146	2025-06-22 16:26:21.176927
147	image	CalendarImage	147	147	2025-06-22 16:26:21.200981
148	image	CalendarImage	148	148	2025-06-22 16:26:21.233073
149	image	CalendarImage	149	149	2025-06-22 16:26:21.259759
150	image	CalendarImage	150	150	2025-06-22 16:26:21.284074
151	image	CalendarImage	151	151	2025-06-22 16:26:21.300103
152	image	CalendarImage	152	152	2025-06-22 16:26:21.341148
153	image	CalendarImage	153	153	2025-06-22 16:26:21.366379
154	image	CalendarImage	154	154	2025-06-22 16:26:21.389508
155	image	CalendarImage	155	155	2025-06-22 16:26:21.412915
156	image	CalendarImage	156	156	2025-06-22 16:26:21.439102
157	image	CalendarImage	157	157	2025-06-22 16:26:21.463835
158	image	CalendarImage	158	158	2025-06-22 16:26:21.486668
159	image	CalendarImage	159	159	2025-06-22 16:27:02.269434
160	image	CalendarImage	160	160	2025-06-22 16:27:02.294645
161	image	CalendarImage	161	161	2025-06-22 16:27:02.33068
162	image	CalendarImage	162	162	2025-06-22 16:27:02.354992
163	image	CalendarImage	163	163	2025-06-22 16:27:02.367489
164	image	CalendarImage	164	164	2025-06-22 16:27:02.39404
165	image	CalendarImage	165	165	2025-06-22 16:27:02.41434
166	image	CalendarImage	166	166	2025-06-22 16:27:02.437522
167	image	CalendarImage	167	167	2025-06-22 16:27:02.466545
168	image	CalendarImage	168	168	2025-06-22 16:27:02.494607
169	image	CalendarImage	169	169	2025-06-22 16:27:02.519447
170	image	CalendarImage	170	170	2025-06-22 16:27:02.547399
171	image	CalendarImage	171	171	2025-06-22 16:27:02.577179
172	image	CalendarImage	172	172	2025-06-22 16:27:02.603849
173	image	CalendarImage	173	173	2025-06-22 16:27:02.630557
174	image	CalendarImage	174	174	2025-06-22 16:27:02.652019
175	image	CalendarImage	175	175	2025-06-22 16:27:02.678547
176	image	CalendarImage	176	176	2025-06-22 16:27:02.715616
177	image	CalendarImage	177	177	2025-06-22 16:27:02.749674
178	image	CalendarImage	178	178	2025-06-22 16:27:02.775904
179	image	CalendarImage	179	179	2025-06-22 16:27:02.813547
180	image	CalendarImage	180	180	2025-06-22 16:27:02.840285
181	image	CalendarImage	181	181	2025-06-22 16:27:02.863179
182	image	CalendarImage	182	182	2025-06-22 16:27:02.887157
183	image	CalendarImage	183	183	2025-06-22 16:27:02.914727
184	image	CalendarImage	184	184	2025-06-22 16:27:02.954395
185	image	CalendarImage	185	185	2025-06-22 16:27:02.97101
186	image	CalendarImage	186	186	2025-06-22 16:27:03.006198
187	image	CalendarImage	187	187	2025-06-22 16:27:03.040303
188	image	CalendarImage	188	188	2025-06-22 16:27:03.068382
189	image	CalendarImage	189	189	2025-06-22 16:31:26.495051
190	image	CalendarImage	190	190	2025-06-22 16:31:26.527095
191	image	CalendarImage	191	191	2025-06-22 16:31:26.561551
192	image	CalendarImage	192	192	2025-06-22 16:31:26.586096
193	image	CalendarImage	193	193	2025-06-22 16:31:26.617466
194	image	CalendarImage	194	194	2025-06-22 16:31:26.65717
195	image	CalendarImage	195	195	2025-06-22 16:31:26.742394
196	image	CalendarImage	196	196	2025-06-22 16:31:26.77928
197	image	CalendarImage	197	197	2025-06-22 16:31:26.808335
198	image	CalendarImage	198	198	2025-06-22 16:31:26.825292
199	image	CalendarImage	199	199	2025-06-22 16:31:26.858734
200	image	CalendarImage	200	200	2025-06-22 16:31:26.880905
201	image	CalendarImage	201	201	2025-06-22 16:31:26.902804
202	image	CalendarImage	202	202	2025-06-22 16:31:26.923261
203	image	CalendarImage	203	203	2025-06-22 16:31:26.954975
204	image	CalendarImage	204	204	2025-06-22 16:31:26.982994
205	image	CalendarImage	205	205	2025-06-22 16:31:27.008404
206	image	CalendarImage	206	206	2025-06-22 16:31:27.033695
207	image	CalendarImage	207	207	2025-06-22 16:31:27.059546
208	image	CalendarImage	208	208	2025-06-22 16:31:27.086368
209	image	CalendarImage	209	209	2025-06-22 16:31:27.110314
210	image	CalendarImage	210	210	2025-06-22 16:31:27.147141
211	image	CalendarImage	211	211	2025-06-22 16:31:27.192153
213	image	CalendarImage	213	213	2025-06-22 16:31:27.246325
212	image	CalendarImage	212	212	2025-06-22 16:31:27.212438
215	image	CalendarImage	215	215	2025-06-22 16:31:27.313358
216	image	CalendarImage	216	216	2025-06-22 16:31:27.329435
214	image	CalendarImage	214	214	2025-06-22 16:31:27.282891
217	image	CalendarImage	217	217	2025-06-22 16:31:27.355891
218	image	CalendarImage	218	218	2025-06-22 16:31:27.375912
219	image	CalendarImage	219	219	2025-06-22 16:31:27.418185
220	image	CalendarImage	220	220	2025-06-22 16:36:55.221254
221	image	CalendarImage	221	221	2025-06-22 16:36:55.457238
222	image	CalendarImage	222	222	2025-06-22 16:36:55.683581
223	image	CalendarImage	223	223	2025-06-22 16:36:55.865225
224	image	CalendarImage	224	224	2025-06-22 16:36:56.054512
225	image	CalendarImage	225	225	2025-06-22 16:36:56.238294
226	image	CalendarImage	226	226	2025-06-22 16:36:56.367924
227	image	CalendarImage	227	227	2025-06-22 16:36:56.427142
228	image	CalendarImage	228	228	2025-06-22 16:36:56.502489
229	image	CalendarImage	229	229	2025-06-22 16:36:56.555041
230	image	CalendarImage	230	230	2025-06-22 16:36:56.614292
231	image	CalendarImage	231	231	2025-06-22 16:36:56.664383
232	image	CalendarImage	232	232	2025-06-22 16:36:56.703322
233	image	CalendarImage	233	233	2025-06-22 16:36:56.757515
234	image	CalendarImage	234	234	2025-06-22 16:36:56.808481
235	image	CalendarImage	235	235	2025-06-22 16:36:56.857637
236	image	CalendarImage	236	236	2025-06-22 16:36:56.934299
237	image	CalendarImage	237	237	2025-06-22 16:36:56.96945
238	image	CalendarImage	238	238	2025-06-22 16:36:57.003677
239	image	CalendarImage	239	239	2025-06-22 16:36:57.036181
240	image	CalendarImage	240	240	2025-06-22 16:36:57.065503
241	image	CalendarImage	241	241	2025-06-22 16:36:57.084431
242	image	CalendarImage	242	242	2025-06-22 16:36:57.116363
243	image	CalendarImage	243	243	2025-06-22 16:36:57.140947
244	image	CalendarImage	244	244	2025-06-22 16:36:57.172375
245	image	CalendarImage	245	245	2025-06-22 16:36:57.192152
246	image	CalendarImage	246	246	2025-06-22 16:36:57.222325
247	image	CalendarImage	247	247	2025-06-22 16:36:57.254505
248	image	CalendarImage	248	248	2025-06-22 16:36:57.284402
249	image	CalendarImage	249	249	2025-06-22 16:36:57.339546
250	image	CalendarImage	250	250	2025-06-22 16:36:57.423032
251	image	CalendarImage	251	251	2025-06-22 16:40:36.934205
252	image	CalendarImage	252	252	2025-06-22 16:40:36.968305
253	image	CalendarImage	253	253	2025-06-22 16:40:36.996817
254	image	CalendarImage	254	254	2025-06-22 16:40:37.020922
255	image	CalendarImage	255	255	2025-06-22 16:40:37.046879
256	image	CalendarImage	256	256	2025-06-22 16:40:37.07615
257	image	CalendarImage	257	257	2025-06-22 16:40:37.09008
258	image	CalendarImage	258	258	2025-06-22 16:40:37.116833
259	image	CalendarImage	259	259	2025-06-22 16:40:37.141999
260	image	CalendarImage	260	260	2025-06-22 16:40:37.168138
261	image	CalendarImage	261	261	2025-06-22 16:40:37.22472
262	image	CalendarImage	262	262	2025-06-22 16:40:37.287986
263	image	CalendarImage	263	263	2025-06-22 16:40:37.314594
264	image	CalendarImage	264	264	2025-06-22 16:40:37.335318
265	image	CalendarImage	265	265	2025-06-22 16:40:37.361577
266	image	CalendarImage	266	266	2025-06-22 16:40:37.386689
267	image	CalendarImage	267	267	2025-06-22 16:40:37.409328
268	image	CalendarImage	268	268	2025-06-22 16:40:37.447148
269	image	CalendarImage	269	269	2025-06-22 16:40:37.481733
270	image	CalendarImage	270	270	2025-06-22 16:40:37.512031
271	image	CalendarImage	271	271	2025-06-22 16:40:37.536018
272	image	CalendarImage	272	272	2025-06-22 16:40:37.56378
273	image	CalendarImage	273	273	2025-06-22 16:40:37.586123
274	image	CalendarImage	274	274	2025-06-22 16:40:37.618472
275	image	CalendarImage	275	275	2025-06-22 16:40:37.642757
276	image	CalendarImage	276	276	2025-06-22 16:40:37.666148
277	image	CalendarImage	277	277	2025-06-22 16:40:37.690984
278	image	CalendarImage	278	278	2025-06-22 16:40:37.720437
279	image	CalendarImage	279	279	2025-06-22 16:40:37.74027
280	image	CalendarImage	280	280	2025-06-22 16:40:37.756392
281	image	CalendarImage	281	281	2025-06-22 17:00:27.135207
282	image	CalendarImage	282	282	2025-06-22 17:00:27.157528
283	image	CalendarImage	283	283	2025-06-22 17:00:27.178915
284	image	CalendarImage	284	284	2025-06-22 17:00:27.222498
285	image	CalendarImage	285	285	2025-06-22 17:00:27.277341
286	image	CalendarImage	286	286	2025-06-22 17:00:27.294152
287	image	CalendarImage	287	287	2025-06-22 17:00:27.323311
288	image	CalendarImage	288	288	2025-06-22 17:00:27.338013
289	image	CalendarImage	289	289	2025-06-22 17:00:27.365624
290	image	CalendarImage	290	290	2025-06-22 17:00:27.392796
291	image	CalendarImage	291	291	2025-06-22 17:00:27.413883
292	image	CalendarImage	292	292	2025-06-22 17:00:27.437779
293	image	CalendarImage	293	293	2025-06-22 17:00:27.459631
294	image	CalendarImage	294	294	2025-06-22 17:00:27.48205
295	image	CalendarImage	295	295	2025-06-22 17:00:27.508085
296	image	CalendarImage	296	296	2025-06-22 17:00:27.531684
297	image	CalendarImage	297	297	2025-06-22 17:00:27.556566
298	image	CalendarImage	298	298	2025-06-22 17:00:27.597769
299	image	CalendarImage	299	299	2025-06-22 17:00:27.642587
300	image	CalendarImage	300	300	2025-06-22 17:00:27.70621
301	image	CalendarImage	301	301	2025-06-22 17:00:27.730918
302	image	CalendarImage	302	302	2025-06-22 17:00:27.759785
303	image	CalendarImage	303	303	2025-06-22 17:00:27.785305
304	image	CalendarImage	304	304	2025-06-22 17:00:27.805886
305	image	CalendarImage	305	305	2025-06-22 17:00:27.828771
306	image	CalendarImage	306	306	2025-06-22 17:00:27.854032
307	image	CalendarImage	307	307	2025-06-22 17:00:27.880277
308	image	CalendarImage	308	308	2025-06-22 17:00:27.9013
309	image	CalendarImage	309	309	2025-06-22 17:00:27.922516
310	image	CalendarImage	310	310	2025-06-22 17:00:27.945169
311	image	CalendarImage	311	311	2025-06-22 17:00:27.966785
312	image	CalendarImage	312	312	2025-06-22 17:04:59.171988
313	image	CalendarImage	313	313	2025-06-22 17:04:59.195217
314	image	CalendarImage	314	314	2025-06-22 17:04:59.218361
315	image	CalendarImage	315	315	2025-06-22 17:04:59.253144
316	image	CalendarImage	316	316	2025-06-22 17:04:59.271051
317	image	CalendarImage	317	317	2025-06-22 17:04:59.309769
318	image	CalendarImage	318	318	2025-06-22 17:04:59.326147
319	image	CalendarImage	319	319	2025-06-22 17:04:59.3545
320	image	CalendarImage	320	320	2025-06-22 17:04:59.369914
321	image	CalendarImage	321	321	2025-06-22 17:04:59.399429
322	image	CalendarImage	322	322	2025-06-22 17:04:59.411277
323	image	CalendarImage	323	323	2025-06-22 17:04:59.443949
324	image	CalendarImage	324	324	2025-06-22 17:04:59.468776
325	image	CalendarImage	325	325	2025-06-22 17:04:59.489728
326	image	CalendarImage	326	326	2025-06-22 17:04:59.514918
327	image	CalendarImage	327	327	2025-06-22 17:04:59.545581
328	image	CalendarImage	328	328	2025-06-22 17:04:59.56979
329	image	CalendarImage	329	329	2025-06-22 17:04:59.603682
330	image	CalendarImage	330	330	2025-06-22 17:04:59.618757
331	image	CalendarImage	331	331	2025-06-22 17:04:59.64885
332	image	CalendarImage	332	332	2025-06-22 17:04:59.668489
333	image	CalendarImage	333	333	2025-06-22 17:04:59.692012
334	image	CalendarImage	334	334	2025-06-22 17:04:59.712878
335	image	CalendarImage	335	335	2025-06-22 17:04:59.739211
336	image	CalendarImage	336	336	2025-06-22 17:04:59.762843
337	image	CalendarImage	337	337	2025-06-22 17:04:59.779653
338	image	CalendarImage	338	338	2025-06-22 17:04:59.810332
339	image	CalendarImage	339	339	2025-06-22 17:04:59.831702
340	image	CalendarImage	340	340	2025-06-22 17:04:59.857811
341	image	CalendarImage	341	341	2025-06-22 17:04:59.882712
342	image	CalendarImage	342	342	2025-06-22 17:07:35.633747
343	image	CalendarImage	343	343	2025-06-22 17:07:35.662944
344	image	CalendarImage	344	344	2025-06-22 17:07:35.680755
345	image	CalendarImage	345	345	2025-06-22 17:07:35.715957
346	image	CalendarImage	346	346	2025-06-22 17:07:35.729089
347	image	CalendarImage	347	347	2025-06-22 17:07:35.758045
348	image	CalendarImage	348	348	2025-06-22 17:07:35.775291
349	image	CalendarImage	349	349	2025-06-22 17:07:35.803455
350	image	CalendarImage	350	350	2025-06-22 17:07:35.831447
351	image	CalendarImage	351	351	2025-06-22 17:07:35.855872
352	image	CalendarImage	352	352	2025-06-22 17:07:35.873457
353	image	CalendarImage	353	353	2025-06-22 17:07:35.893934
354	image	CalendarImage	354	354	2025-06-22 17:07:35.918907
355	image	CalendarImage	355	355	2025-06-22 17:07:35.939218
356	image	CalendarImage	356	356	2025-06-22 17:07:35.962903
357	image	CalendarImage	357	357	2025-06-22 17:07:35.974294
358	image	CalendarImage	358	358	2025-06-22 17:07:36.000739
359	image	CalendarImage	359	359	2025-06-22 17:07:36.023136
360	image	CalendarImage	360	360	2025-06-22 17:07:36.050825
361	image	CalendarImage	361	361	2025-06-22 17:07:36.070589
362	image	CalendarImage	362	362	2025-06-22 17:07:36.099948
363	image	CalendarImage	363	363	2025-06-22 17:07:36.131863
364	image	CalendarImage	364	364	2025-06-22 17:07:36.157357
365	image	CalendarImage	365	365	2025-06-22 17:07:36.191029
366	image	CalendarImage	366	366	2025-06-22 17:07:36.218602
367	image	CalendarImage	367	367	2025-06-22 17:07:36.251524
368	image	CalendarImage	368	368	2025-06-22 17:07:36.272618
369	image	CalendarImage	369	369	2025-06-22 17:07:36.29782
370	image	CalendarImage	370	370	2025-06-22 17:07:36.314984
371	image	CalendarImage	371	371	2025-06-22 17:07:36.3392
372	image	CalendarImage	372	372	2025-06-22 17:07:36.364537
373	image	ActiveStorage::VariantRecord	2	373	2025-06-22 17:13:13.7407
374	image	ActiveStorage::VariantRecord	3	374	2025-06-22 17:27:04.469397
375	image	ActiveStorage::VariantRecord	4	375	2025-06-22 17:29:45.158708
376	image	ActiveStorage::VariantRecord	5	376	2025-06-22 17:31:12.100674
377	image	ActiveStorage::VariantRecord	6	377	2025-06-22 17:38:56.043884
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
20	rk4nmuv9uj2ck7ch5ros96b2uzhk	24_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3306	zogmXJQ+NxdaKwH4vdmItw==	2025-06-22 14:53:28.793342
21	22djfh64nptvfmr97dpugrlz0nxy	25_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3282	6qy+RyDBikZAGgF7TavXtQ==	2025-06-22 14:53:28.830241
5	k6e00jwr6hqrgmqwysfxlz49tr22	10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3270	RpWCfMKoi/YsGHrqF7lZ5Q==	2025-06-22 14:53:28.252124
6	g0gvesqv8gd7f8l82xquam848nky	11_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3378	Hle9D4+ZaxmdyiyfBXXrUQ==	2025-06-22 14:53:28.285066
7	81otvxp7eub9bs13rd8mgtnj5hx7	12_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3350	nvao7afg2B+tVQzhy+4+qg==	2025-06-22 14:53:28.361822
8	lt8c8iauawkhijpmpravj4byc4i6	13_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3192	z8IlglZcFihtULL/JhAJvw==	2025-06-22 14:53:28.381451
9	6x2a2ztnb3q5yqxw31vmld5lurme	14_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3158	WY+IFp0JZcLAuzCPFOnZdg==	2025-06-22 14:53:28.408796
10	0w8grlp05gowgn0q973o7pfb44qi	15_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3260	Ls2wLf/jy6/UblsLG3cFbQ==	2025-06-22 14:53:28.432084
11	8t1elshtx74k9vpaywisc2cag3ql	16_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3030	WBS1v7dPKaxngvT/lVTgmw==	2025-06-22 14:53:28.456014
12	ctqloj76uoo7jkn15dewkp5gkfzc	17_a7b993a0-f266-4754-bcd1-e165bcff00c4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3266	Drx6EkVPhC2XyoJwzCqinw==	2025-06-22 14:53:28.475007
13	vh9f9e3ki3hnsvg8v8h4gd540j71	18_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3318	A9rJYxyAvo+DpR/YFyohWQ==	2025-06-22 14:53:28.505953
14	dwctn29o90upqii8s4xoel84bkhi	19_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3388	iT17+c0qJnigOJUpfP202Q==	2025-06-22 14:53:28.544067
15	3bc8e3e0qooapdc1mlmjt1j3837s	1_apr.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3278	OzboHQcP3loIo1ocsi3AhQ==	2025-06-22 14:53:28.593411
16	t3mijbpgdtwypjwmugsy4xqqepgk	20_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3174	tNJe3de6SJl6ABM1lGhXZg==	2025-06-22 14:53:28.621113
17	krgi8apwr4wq6i473gr8icatw1un	21_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3304	2OnSCBQ3QXwk1g6R3Vi8Zw==	2025-06-22 14:53:28.649007
18	3x1v9jtsmj4ynnf2b8dwldopjizh	22_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3248	EkxfgdBGjEm0ngSmBA2e7g==	2025-06-22 14:53:28.706812
19	3w1byllh0l5hxvlb7r3jbgfroobr	23_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3280	mbVJ2Kurfl8AhecFpuBDsw==	2025-06-22 14:53:28.746217
22	6qo0xad374uym44tdvn2oz8vt7k6	26_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3260	/j6kfQo/AcF5uvR/Dg0pxw==	2025-06-22 14:53:28.894999
23	90pji8ey46xn62li1rdmgh34op2p	27_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3326	hatNHAvqFUhBlKy4GPVZQg==	2025-06-22 14:53:28.970418
24	74lfow9vkjg5fkcjuu33mr2gfkkt	28_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3380	PIRTAbLvIztOcBt59N/AqA==	2025-06-22 14:53:29.050948
25	uiaghw2hxcdneh5j5fw9jqg93i8g	29_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3234	lPPb087uE0QkCX51pydz/Q==	2025-06-22 14:53:29.078967
26	tt5oiql9fyn33yo9ju3zf8vodej8	2_apr.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3414	9JKhG0V0RsfxsKIn8YUnkQ==	2025-06-22 14:53:29.119117
27	ilah6a0tc88fazcqkxdtkcegt0dg	30_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3374	DQK1SZ4q7xvC6ZbM8g9NrA==	2025-06-22 14:53:29.150342
28	2ktub6xt6kux52vxmzxmpu0l4kku	3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3270	X9EnipygBVyyAyEnzSeuXA==	2025-06-22 14:53:29.191529
29	lyummnycm9uo37mev5etuye9fl0s	4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3268	Uc8QBPaqQQxu1CNeTckykA==	2025-06-22 14:53:29.213845
30	3d0r70x6zxcbmnoy8enia2myapqz	5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3198	MGgSmIjC10JJcGAs2MDitw==	2025-06-22 14:53:29.257512
31	7x4cehq6lsqziknn6wzan3eykxlg	6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3118	QfnIFAPfrW58Uu874aIC4Q==	2025-06-22 14:53:29.293745
32	fe4iutntqob6csbrmaxdyohmh1oh	7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3238	ubageWEpJbyc+6qZgFj43Q==	2025-06-22 14:53:29.312117
33	djujhrpelpds0r4a1rqsvldgu6ks	8_007d8096-c6ba-4d2a-bd6c-f83b35c024ce_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3246	PM9dgYUzB/0dnrJxw5S25Q==	2025-06-22 14:53:29.338732
34	ug7isvzu7qc8u8olsfubah3jejk0	9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3254	ChQnIc7NWC8XIndSvvF6Ig==	2025-06-22 14:53:29.396228
35	ncynaxn9br5uzmp8keivenmmdnzg	10_5733a1d0-d2c6-4e86-8c38-ee24859a2367_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	9042	Gke7sf3Wli5bnCPxbAQFwQ==	2025-06-22 14:59:50.03532
37	r48n14qles3hnc9tj8eo8uznwawa	12_cf38e3af-dde8-499e-badc-8f32c02c5165_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8502	4TCnoYOiwVb1efh2K93GZw==	2025-06-22 14:59:50.088937
36	3y04x60gb4ly8yye1wfsjkmo8ijy	11_a1e8c1b8-9550-4ca1-9fa6-a63eec6e4aff_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8394	C9MYeguV8+IETSCnKkuq3Q==	2025-06-22 14:59:50.066178
38	l8d8bkqyfwwy3byth5p7v0ebdy2d	13_1bac12ac-7f6c-497d-b836-cb44c7033377_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	9236	DGkBfbXYh13bmEsRcqZFtg==	2025-06-22 14:59:50.171086
42	vqcm1ebf6b1okv9j6i7f47avxhsk	17_7a56b909-ac74-4380-8f3a-017f6b3792c9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7084	mDvx7iSD/QsxlcNI3XTJ6w==	2025-06-22 14:59:50.33271
39	t9se2qxpz003qgls11z7gewuibs6	14_896135a4-29a0-4743-a852-41561344c7d7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8682	a/jUa1fGA+VrLdid3UdeFA==	2025-06-22 14:59:50.192122
40	pc8i9mrab44kewrn9wsutqi0hddo	15_76aa64e5-de07-4202-aa31-9636c8d5e95d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	9266	FeFjT2cfflyYV6yecr/ujw==	2025-06-22 14:59:50.246001
41	xp56uw4juskuyfjbklpd42jec19n	16_db6a5dca-8e5a-4786-a6b6-567fcfb7fb9f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8630	cTc6w2uYiwFbToOZ/tq6Aw==	2025-06-22 14:59:50.284063
45	p34rct4oy740h2yhp7idj5i9dlyx	1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8548	YF06bILYbFsm4ys8hA+ZaA==	2025-06-22 14:59:50.446131
46	dg0z4fy8hhn489jcmji9f6t2ealu	20_34e62737-87da-4d9f-aa70-0ae0b525b768_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8484	jxnDJ/pgWthGXUAy9gAB6Q==	2025-06-22 14:59:50.485257
47	qa62tmtjvsuwr3p5p1mhd7rd72i9	21_4c3e6ede-6d22-451a-9c9d-99738faeef77_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8602	hPohrsa3gHj+Xa2E4hMxTA==	2025-06-22 14:59:50.531005
48	9611pz2ijumwphnpr7n0ya4v7xie	22_e2250330-a32f-4175-a0dd-61a6e8064b96_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7440	tfFsAN6bVXjgUfxImcZ54w==	2025-06-22 14:59:50.55345
57	gm3s566e574a6v2x39f7ccbvo441	30_9ee4c832-8853-4945-8ab0-7312d9b20393_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8502	3JCHcmVMX0KDmqaJHWE/fw==	2025-06-22 14:59:50.856046
59	hr5mpjj3jxjt432a5q7lerq3538j	3_c9edb0cb-b17a-4d9b-b7b7-4f48b0247e2b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8604	sNXiv+sDVWitWwdTPqa9Eg==	2025-06-22 14:59:50.937202
43	9tk0npbswx3y4ta64k2m52xwz9ev	18_d343d754-68dd-4833-ad85-9cca00833e33_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7792	HKaZwR1J4yr1ZX2obCXczw==	2025-06-22 14:59:50.386411
44	z7dbtndn08iof0qygohg248xk09s	19_90f287c5-c581-41d0-b0e4-b509667a9424_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8414	pYJmZbKaGKf0lf2tyBsQcA==	2025-06-22 14:59:50.425335
49	bf15vu09bkek0ltolcqspu6zpk1o	23_10e915c9-4cd1-4e73-87cb-f22b71c52a4a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7120	HckOxRdMJU9ki+xpzaVqeg==	2025-06-22 14:59:50.637707
50	xzd89ft3es510qf9sxlvdfjm7el2	24_a5856449-a30b-409c-91af-44be1d528e79_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7240	05/TpuGxcrUf7ZUKgAzo9g==	2025-06-22 14:59:50.657088
53	8fpajggsx1nui495yoxhc1cobrim	27_a81ac84d-3eb7-49b2-b512-20a6eccf796b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7728	UlCKsObcJV7wy76qCLBr3w==	2025-06-22 14:59:50.753356
54	4v22fwsepy1840u1ch1nxc7oen06	28_109f26a8-e550-45e1-9c55-8acdc0176c8d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7432	c5PPJC0ZFoQR6weq6l0oWA==	2025-06-22 14:59:50.788297
61	8nfv3haw0zjjx6ph07e4ytl6axuj	5_526de987-d54c-4707-a437-1572846a4315_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8902	ATr1IKKyMuTS1gBL7gpE/A==	2025-06-22 14:59:51.007835
62	tb92lmcl8l5h0qgrmmohh227c6yn	6_d42f0b5d-c536-41a9-b369-f8c9c27dc138_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8552	FiuPBEE4Bfo8lk8ajIr/CA==	2025-06-22 14:59:51.048579
63	0nxydt8zwz72kamejerq0oepevre	7_b515e7ad-1d99-4bc9-8d2c-9559228b219e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8952	/t+onmLqco5TXgYSi0TiHQ==	2025-06-22 14:59:51.089131
64	wfha6a6b04ytl5m930io5697o5dh	8_666a1d79-065d-4a35-b5cb-b91cff52096e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8268	4Y02uPPYCbdvJyRbcrLwaA==	2025-06-22 14:59:51.12534
51	22ukhsuxv6hce9mmx935cktzk406	25_5a222efb-171a-489e-9c62-5ee3c059adb0_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	6830	JztoBR+QW2qB97CIiyyGcA==	2025-06-22 14:59:50.699261
52	92yp0ejrqlhinm9ulu6mq006syw4	26_5a00bd6f-a455-4536-8838-8e00c554dea7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8674	dbEsNWG6oDq8ER0QeV/IKw==	2025-06-22 14:59:50.728362
55	wissx7gdqqbbcmwtrakz13b60lrn	29_ad7b8c8f-e05b-4253-86af-7de122a6277a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7960	z4IBi3fE2KMZeKc6SpPaQg==	2025-06-22 14:59:50.818099
56	fxhpoxlcmf99tw5fy0fiitnvs06i	2_b762012d-7f06-4378-bf23-b5a5a9b98027_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8558	BHokE/3Rcst9g+Vv+vDriA==	2025-06-22 14:59:50.840399
58	7tw0ensdk3my0o1lrxxthgpbrfk4	31_acd78f9e-d0e9-4dde-86d8-484c08ff99cf_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	7810	E4CEjOtHvvIs/RzuhLtDgQ==	2025-06-22 14:59:50.899861
60	xr2icoduej52no78hfq46txsmtcv	4_9acccdec-13e8-46d1-9a9f-8ba7adeaf996_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8664	ibc8JSNw6/NvMjo1Vr5D8Q==	2025-06-22 14:59:50.975613
65	7i30yamczy6ggw2krkrwowo47pnt	9_798085c6-ce03-4af5-8dfc-ce04d5b00863_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	8392	jvsGrpFAKCCQEQNUIVI3Dg==	2025-06-22 14:59:51.173331
66	yarbmfcxsdotsa2v42mu1qifbeko	feb10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3422	U0u/rjDu/usK96M79Cd3AA==	2025-06-22 16:10:26.113134
67	n6e6f5z50eri54s62sorr9rydl3k	feb11_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3294	D78JGOw4hYxH7xRE15B9sw==	2025-06-22 16:10:26.268769
68	4lyfuimvgks2sctr7n4yibo0rlbo	feb10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3422	U0u/rjDu/usK96M79Cd3AA==	2025-06-22 16:10:46.055267
69	7kydqxjmt37yf6are3xuj2cecqtn	feb11_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3294	D78JGOw4hYxH7xRE15B9sw==	2025-06-22 16:10:46.121745
71	7vakgkudxnvl3udvt0sngwn4ains	feb13_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3438	oiLmbC93UwrdlDDiSnPmgg==	2025-06-22 16:10:46.29015
70	vwuw5oyxocml7tkomcd26b940h38	feb12_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3368	qaeogWZLXYNPy7AXxvrIhw==	2025-06-22 16:10:46.222307
72	4693a370105r1j0f1ghpoinm7hpb	feb14_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3414	68repaGEb0XcccJ2rE/unQ==	2025-06-22 16:10:46.392511
73	49uol67l90ljfikik2jcd5jffl9v	feb15_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3534	7MpYDDYwuo51sS+vZeIz/g==	2025-06-22 16:10:46.540183
74	m2ia3o45l7kgbi8svrxzlxjv7alq	feb16_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3398	DGiw/tpBgVtorIQAeGVx0Q==	2025-06-22 16:10:46.624734
75	sd8g5kpknj316ipwdsqrnhofqygp	feb17_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3398	xRNzALHiyxhic4v8nojUNg==	2025-06-22 16:10:46.718198
76	9aulwgsi4zaq19ydx0o1wuriy0nh	feb18_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3470	j1chiMS1k6yO095GrApg3w==	2025-06-22 16:10:46.789193
77	7260g8odjyz63jh3za0lb4xem7u5	feb19_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3360	bPtF+PpxjWjM69Z2sE5kGw==	2025-06-22 16:10:46.861311
78	y6a8gvi488qvzoyhd6apcewolv76	feb1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3350	LPLnBH6tDy8eB04EuYdlfw==	2025-06-22 16:10:46.933616
79	y3g5t1rfh42vl4vmqfasqsfc0st5	feb20_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3434	FMaTuJyaMqyzXPJvCfgRTg==	2025-06-22 16:10:46.974233
80	nhgppyur3zzry5nm7ny569pqfb1p	feb21_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3344	OnFgNpt6DE0nTpvG2nw/HQ==	2025-06-22 16:10:47.01599
81	2dkil3oiqs88lara4r4kzuxurk65	feb22_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3514	g61Avh6bIriF2K+hxlPSmA==	2025-06-22 16:10:47.080505
82	o5gnvgqthcp4u4gmy3itpadhydga	feb23_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3314	biCRnLdmonAK5T16RtDO3w==	2025-06-22 16:10:47.136509
83	ddoluhzrapwyo2em8wpnt4da4o0x	feb24_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3546	6YHlRmeeQQRBPNrZrsKXtA==	2025-06-22 16:10:47.163956
84	372i4rxjqlrl6ntapqhgclykommn	feb25_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3314	lqYFYIttxxKEgBM19EXGJw==	2025-06-22 16:10:47.191528
85	2crzs0wo4eaxfm45tbutsq6ltw2s	feb26_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3318	wV4p5cAgH11FDrrqZA338g==	2025-06-22 16:10:47.219075
86	tloeb3ndqj5gpqdi3eyro0yb4rxf	feb27_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3494	t8W7kk0nD3YpHI7LmfaBNQ==	2025-06-22 16:10:47.247082
87	gyvaaa7tgw4riws4ipoxa577l9la	feb28_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3376	EF79s5514qvKjrwoDd/SKA==	2025-06-22 16:10:47.271423
88	mwmoi6zyjjc3futjb90ykaesxt82	feb2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3296	fslOcUa3X/5pvDyCQb3ZhA==	2025-06-22 16:10:47.2989
89	7lzzmewp75a4aehl4ibj3p4s2i3t	feb3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3236	/fPZJywqsxqY/D4Caa46hA==	2025-06-22 16:10:47.335825
90	teag42k0f47bxjixd3k9r1duiyit	feb4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3282	6Gerv+Kn4lAadT5gHkxw2Q==	2025-06-22 16:10:47.362511
91	ptnf8rf06htwuar0i7azd0qkerda	feb5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3298	KwBzCgeCmt6O7oiCYQknjQ==	2025-06-22 16:10:47.386191
92	4a9qqg3ndgh8fgbjd4c9ltj8w33d	feb6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3374	K00Gim/24VOmC5uDFPm59Q==	2025-06-22 16:10:47.410735
93	iqa0pwmkdoz4n8ddt5fkf1wg91dq	feb7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3362	Iksz7AmrNZtR9/GDDGVboA==	2025-06-22 16:10:47.43947
94	ipye6o4zyshqg7j589ootvstzryo	feb8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3478	WZEAXhRtT1EXNMsRNwacsA==	2025-06-22 16:10:47.46912
95	04y7iz5x96xg5em2zlngi6zlefdv	feb9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3300	xsa0PM0F9crCwZs30PSLjA==	2025-06-22 16:10:47.512814
96	ezu1tvic9pmvu0o8tjjj64d29iy6	10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3250	IPqVCXH0jO8TzWq4BVIpwg==	2025-06-22 16:17:17.688928
97	htirxuw8ehesb2ccmcyzn6n4kdhw	10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3250	IPqVCXH0jO8TzWq4BVIpwg==	2025-06-22 16:17:20.839259
98	d8rg8gf57wpievtby9093qubp0vy	11_2a7a8ee6-e2c8-404a-b5c3-a127e3765c90_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3356	ohL+oPo8Y2VCh6gHz82hQg==	2025-06-22 16:17:20.888462
100	wsz97nmz5wopmvias2lpslbz9qlv	13_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3420	uXmqNswkxeb4sYVtdkVIVQ==	2025-06-22 16:17:20.963726
99	11pdk5vbuzcdfmqxtwauzwulfbek	12_bd8dd75b-1c39-4aee-bc06-9af17c744e86_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3318	66OKjBqtMzZBTGCY19V6rw==	2025-06-22 16:17:20.932271
101	lol0abe3oodbml7q7waba2y8vq68	14_81d1c8fb-fbb1-41ab-82b1-8d298c14b115_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3432	Fu0JLqiIb3cVJKkc+5VpGg==	2025-06-22 16:17:20.990889
102	5gnofwpzglfbb0dj9gl6gnxbyhqx	15_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3300	xCZesnXKWbHIZQOEM75sTQ==	2025-06-22 16:17:21.098114
103	0sgrhj643kgwokulabot7hz1yjd4	16_7b189d57-1007-42c2-b949-21b632f48d28_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3338	0WgSQz2yKrHmY2AdMD8X0Q==	2025-06-22 16:17:21.137653
104	vc0z0y05dmpjjvg7srn8zvgcmxua	17_42022de4-093c-47a4-b3ff-b8d1c6ea0fa1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3322	LbHRaYVT9TSrG40zCmJERw==	2025-06-22 16:17:21.161121
105	b4ju5n8ia1gdt8xuaoth9gsey4ju	18_77258d15-6b20-4fa8-9013-d5d73ebac00c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3280	E+lGx5ixAE8UbNMQOUGGEQ==	2025-06-22 16:17:21.184236
106	rqhl59w0xa9sqc65zve4nzaj3zr6	19_80490854-e125-427a-a67f-13665d2056f5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3204	F873uAp0v4PtbR3g7z9qdQ==	2025-06-22 16:17:21.210006
107	v7ooj7cg5weiu9f05qoc4cv1rbpb	1_daf87d52-ba69-41c7-9c88-b2d6a29d9563_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3212	ziW66igWbRGSZctKuwVKHw==	2025-06-22 16:17:21.230727
108	8laokxwu8ejhpgkq8u1j3clxrkz1	20_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3250	zq8t3LzhRVs2vBvd8+RHFw==	2025-06-22 16:17:21.263049
109	asg0t9m19l4ji09p26i9k5cyr0g5	21_c9024554-ddce-4433-82fc-c4f6a6adf4e2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3348	X0c3N9ARY+hEBQpASr5ePA==	2025-06-22 16:17:21.29014
110	mhiwj20dhkp6oo5fuuy9dhd3o0bn	22_29206dc3-2511-4013-a2d3-82bb48263d0e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3272	37gx0zu77qceXaVbS/6NmA==	2025-06-22 16:17:21.311375
111	olmamdrkyobxd3pk19opjv6nfyd4	23_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3328	AbLWHmX6BQRLvY7m0PU/hA==	2025-06-22 16:17:21.347151
112	1buqhhdogsjhblquapftjtiwq1os	24_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3230	jooM3+MnsTkY5v4UEGR2MA==	2025-06-22 16:17:21.368639
113	aeuoqliv3un7kp2z9q32zyrr7p93	25_d37c4411-e4a8-4799-b229-9b915332e612_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3430	RgZNJ0yBWTX5rl3pI0SHRQ==	2025-06-22 16:17:21.39555
114	5q27ka625wqk4tzr7k4c9adkp1xw	26_e251d8e4-63d0-4276-bff7-1fbeae7fe225_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3264	tHGjjSGe21THPeePoPzQmw==	2025-06-22 16:17:21.414416
115	uj6b3h09laksw3drw3ss18sssyfs	27_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3250	cYZSwvRoiUNVsCtRuzpsuw==	2025-06-22 16:17:21.440125
116	yvma86op99h924mqjz9o2oqzm8ns	28_8776bc9f-a892-4a71-984a-6fe3567bb366_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3250	YUiPvC8Aek/PoWN/JyrcoA==	2025-06-22 16:17:21.465274
117	f2ty4yhlkgnpjfoumexjhdgiaoeq	29_7be43937-67c2-4f91-8bc1-9c77ca48694c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3198	5cyEfzRhkvGpLs3HxiFUmQ==	2025-06-22 16:17:21.48889
118	q62pw6ublhqa58yabccg1o8ehiut	2_17a698a1-fcea-411f-8da1-b4f1593b28bc_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3252	Z2HWPwz8TeNyZNqmVBgapQ==	2025-06-22 16:17:21.51516
119	trx9s8iyewtx1igcbcmp55iclajj	30_a21317c1-3f9e-47b0-bd57-42a1a0459821_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3240	vnNR11jiIiItwrTTMTGGaA==	2025-06-22 16:17:21.53772
120	i026vcwdt8hqtvuomvex9wphb3wk	31_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3294	G4IpBJm4fDcnW+8EA+JGiA==	2025-06-22 16:17:21.564623
121	6kvws01xshbf7iihl6933ix1aapc	3_acff657c-6e47-4baa-977b-42ae85ffe89f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3278	Ny9okYGURm7HLjJ+qR8QpA==	2025-06-22 16:17:21.595276
122	qr403dws4sdg1dbd9vdighmvydac	4_32160017-f020-4028-9412-f3a1bc1652ff_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3270	LnqTVa3DEfEK5T5B3amRpw==	2025-06-22 16:17:21.618396
123	s0wqcwmo6mdt94fr8x55ylewwaeh	5_e1877c3b-984c-4712-94ca-35961503153c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3430	RgZNJ0yBWTX5rl3pI0SHRQ==	2025-06-22 16:17:21.648034
124	rgu8yhai1goix893as33v6x5r3tt	6_11b468e3-beaf-4ca7-a5bd-fc5fd8502e5b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3306	BzTbkfGtaJNHHq1SHM+TYA==	2025-06-22 16:17:21.670196
125	94b44tq91qzvldgalq6k78ja7v59	7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3328	UrjivE9yc8fSiHB6V5gaog==	2025-06-22 16:17:21.701927
126	o90wntlc9l0uyyawps8u5di0gvs7	8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3316	LjxVeNIh72DvUdR21gqpeQ==	2025-06-22 16:17:21.725943
127	6seaqsn58c9lr3bzhwbqpnniabhf	9_acf49687-29f9-45e7-8bd1-f6911607ac0c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3240	vnNR11jiIiItwrTTMTGGaA==	2025-06-22 16:17:21.757276
129	8jh8w68re8ghbbl000n0brpwc6em	11_246f2e46-1ff0-42d8-95a1-5d64683ff424_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3116	JnDZeRCMdlKrbVhJ/k+IDg==	2025-06-22 16:26:20.573375
128	hoyxh5n0mo9qhxdbbfoqec8wnq4u	10_3113fff1-2129-4e4c-bdcc-62a254825036_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3080	teTIHt2XeJ56OsObUvky3w==	2025-06-22 16:26:20.552692
130	0u5t5cg351jvszlzqay7uvng9yu9	12_23e3f59c-0d68-41e3-816e-664d12044c4b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3034	/fdENdyGMwwfn9BgGTGVTw==	2025-06-22 16:26:20.658196
131	nflo0tbp1rkypxwn0bri8sa0url8	13_05df279d-c4e2-4e67-aa56-4ef0d4aff1a2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3004	tGw7NGUjacQ5TFK5x3Plaw==	2025-06-22 16:26:20.678006
132	0blpukec9yom4seqznh3pmyzid9y	14_38ee3cdc-d367-4939-a36c-19b634362703_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3126	rvSPS9mB+H/AetZhHoUKmw==	2025-06-22 16:26:20.704092
133	ypsndssbgsi7trw5dtuum1vdb7ue	15_017b9921-d97d-4830-9557-3519c72daf49_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3168	/YbI+f2W4TML2x5GFCiPhw==	2025-06-22 16:26:20.738235
134	z562mzks01dk88dhcyizrvkht6vn	16_112faf62-a424-4167-b38f-e4a2c1a20fdc_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3154	Cf7lZEA1uh3FbsWVWUBAVQ==	2025-06-22 16:26:20.768104
135	8bj55jr2rx228v2rk3jompadgdip	17_2f8798a3-a3a5-4ce7-957f-0c1e6898996a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3028	bxRkG3D8Y5OxfqmYYRLAGg==	2025-06-22 16:26:20.822814
136	0u1xgpjnuxxu48ff8gr36r8j7gac	18_bf0ed349-fa1f-493c-bfae-589fc6e9bddf_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3108	Y9cQnGp0G2u2ys2+Fu3ajg==	2025-06-22 16:26:20.913544
137	9nd1ptszu50znsqr57abui3xx9gc	19_7251d3ae-1aed-44e9-a9b5-e5540b4d92ca_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3102	YjeUNF20DSzGTTvoK9PTGw==	2025-06-22 16:26:20.940857
138	76s4j4f91v1mjuqpk6lnp1qvautr	1_0e61fb1d-1133-4442-a3a0-954949ee86c8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3164	0NIoyaui/ZwPPtWRBUe2kg==	2025-06-22 16:26:20.97418
139	6s7r2n1r2tx4al2njosu1gmd4hzw	20_dea37445-99dc-430e-a41f-4db5f090670b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3112	/a4jaEPHLb/7IbP03erVtA==	2025-06-22 16:26:20.995013
140	alngk4bagxshhcp1dfboaa8jrbvp	21_bfa18999-d6e7-4d90-9ca5-b559931f16f8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3064	4KyYNnvr2vteDL5K1upePA==	2025-06-22 16:26:21.022827
141	alf3womtcxrh248hc5azn0el9hoz	22_ead7ee9a-402b-4fab-a9e8-747d2dad3306_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3150	srapSeoWksNyN0/yf2x9Hg==	2025-06-22 16:26:21.043447
142	aadclgh6gx4yt8fz2cm3m6kd79v4	23_24623d46-6e98-434b-923c-68e07c775c6c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3222	uv1oKckrkHaxdeVEpeW6wg==	2025-06-22 16:26:21.062725
143	ey1uhkzy7plpg9vrgkep8r3kifz6	24_27b93318-bdcb-49b1-8e8a-5df92262a38d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3026	k9FX6kCwaG3JN3k/dSagmQ==	2025-06-22 16:26:21.093382
144	c1le7eobb7pferfff8ibsezsydqn	25_9fcc0ffd-f782-446e-bcef-6124b6af2320_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3096	/5IkXyauM38T5iFrMErc8g==	2025-06-22 16:26:21.119612
145	kcq3w92ujjs73ovltd6ihawbiiq6	26_aca219af-a090-47f9-ad48-f9138d56c107_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3144	m1faBfMWOtbztr2sBAdwCA==	2025-06-22 16:26:21.149032
146	4o27y5k5qdg8yl3v91zn3gs7r2e5	27_f5931cf9-f446-4172-9c92-e84502cc4c49_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3074	NCOmBIz2w9p/aIbBpc9krg==	2025-06-22 16:26:21.17551
147	1q3ydbvx7cnu9rqsec29tcifvbwg	28_3bc45f88-12e1-444f-b008-69ff2aea426a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3224	bzmVqVuMaZ4PTrCr23U8GQ==	2025-06-22 16:26:21.19986
148	z3y9jsg9mz0kt0xa7ngpv9abyf0h	29_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3036	oyktYBze6ypDHCupC9DZdA==	2025-06-22 16:26:21.229466
149	i5u4hp7dpf1pgpavpxtig1rd2yc6	2_60c9f4be-332c-48bc-a2dd-79239db3c872_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3284	jO7GqZqDUj0qOFmHbfmGGA==	2025-06-22 16:26:21.257996
150	kmvwc7jzuifuqxi5timp1a6t50jr	30_fa9947a2-9e0d-4ecf-a850-34de2e3b6607_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3260	ZWIuN3tBM7EtAKmltV0xqQ==	2025-06-22 16:26:21.282024
151	h5uar9fckfn1hxrupbb7j64nc51u	31_dec4f8a8-6df9-4fbc-9904-e6db93f57266_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3276	3Fj9xRQVlyf1REQ0iJzjBQ==	2025-06-22 16:26:21.299201
152	ibtlqd410o6k62y71z6xonc3kzu2	3_18f02eb4-e1a7-42dc-a7b1-632e74c3be30_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3096	IQ7jRZ/DiVDqaOAZy6HqCQ==	2025-06-22 16:26:21.339199
153	b13thhsrp5pp9ebr1e81s6jujpbp	4_b937fbf9-3635-44ce-984d-47e8a6e3cc70_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3262	cw2JaTnmbjp9HzRWa1KhXQ==	2025-06-22 16:26:21.364238
154	x9vr46wt62c8mkddwe8po3pg7cas	5_c236a23a-b699-40b1-b7f6-9c4627333378_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3324	gxiSE9qEfbmKD13UWEH3Bw==	2025-06-22 16:26:21.388
155	pyqubpqsd5z8448r1mia6r9duf3t	6_5c968903-06f7-47fd-a754-1cfafe06e000_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3002	jEm9upt0pwCl6sR68P86zw==	2025-06-22 16:26:21.411768
156	fwx4n40oyvmsb2y9ir8mavifa0mq	7_89627fe0-88e9-4da8-a7c2-c92207f07981_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3086	7c2PpASkS974ciDhWUVj9g==	2025-06-22 16:26:21.43738
157	xt9n49lczo2n0zqhdi6i1yablh5j	8_c236a23a-b699-40b1-b7f6-9c4627333378_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3324	gxiSE9qEfbmKD13UWEH3Bw==	2025-06-22 16:26:21.462576
158	onet1m0tzgx7a1vxpldhqwppi5gf	9_4254d280-3323-44d2-a895-81be753bb779_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3134	u/mbKFk4x79xYHkPPYKVxg==	2025-06-22 16:26:21.483484
162	5bn58f1wt4pmwje3onwhga4umj9h	13_f1593a4b-3196-48ba-8515-23f63e474536_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3612	XV9tC4Cjsx7Nc3sRCn7Uqw==	2025-06-22 16:27:02.353665
159	zgetjsa4mxnhtthzon8d7hls5q16	10_4f541b49-c608-4edb-bd70-2c34e7136282_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3658	hRRB2zsefX9LhjeRm+3DEw==	2025-06-22 16:27:02.268403
167	gab3bqf0vbgmswmozns1hhshrj10	18_31315d22-724a-4c4d-a323-f6519ecf3f84_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3622	esMa/BPBGnkmXlPvr7e1mA==	2025-06-22 16:27:02.462732
173	n0olh5v5iebwu14237j3nw2v0r6n	23_483d4a8f-8a85-4ea7-9fd1-ecaf86bcb514_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3704	6dy6KOIwmfzr4VegAyTCYQ==	2025-06-22 16:27:02.62915
179	imq199d3impf2x05hwxaohl6bvwp	29_c07ee93b-96ab-4722-9dbb-158e4d186a6b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3756	KSgPle66Qod35Cjpk+bk0A==	2025-06-22 16:27:02.812243
187	stbbi5s7kgkb4e4rg6w11pha2968	8_42ad6abf-0ae4-4595-9a43-e9ae98b77b95_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3858	gSFMOxOpjTJImJkTiCK+MQ==	2025-06-22 16:27:03.039168
188	dth7n0cwyxo644ra071d5xqbm05t	9_d0631558-63a8-4cc4-8346-edff1bc5aa34_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3696	eI/HDpPi/wz79mfJT5G3iw==	2025-06-22 16:27:03.065383
160	2o2x44o6nhli8xrlslkb2g4a7ca1	11_60ce2ba0-bb27-4bc9-8bf4-6729a443f4e9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3756	HfU23Z3JGKciFwx5FKwdtg==	2025-06-22 16:27:02.292819
161	rdwccm47xvwhh6jo0j0ktvznoi5m	12_142208b4-6c69-4a21-b251-a3658d5cb100_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3618	qOdeV1NB5VZXl4iVMnrqlg==	2025-06-22 16:27:02.327342
163	b8uxieayfigvhfbu8sxhdqu1ua7z	14_4c06d7ba-36dd-4a4f-b435-16f7e6b023a7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3682	bfYPpWN/FCDs1vZB5LnCAA==	2025-06-22 16:27:02.366371
170	mgthebzjj0kw54kiuzqrmhfhsusd	20_08b384d4-e721-403d-90eb-b39e9ffd0362_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3734	ujGeP5Lz+3454s115sNrTw==	2025-06-22 16:27:02.545642
171	4tyh86nvr8o5up2mootnqo8ti1fx	21_3139c411-79a0-412c-8c09-ccca4c0a795d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3828	AsE3UvCmsnkz9NcR8DEu1g==	2025-06-22 16:27:02.574877
180	z1969cicmxlds25yluxmohljcvhf	2_217bb135-2996-44e6-be65-3dc417312b6e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3750	bsIeVj2ctkeBg+SEPAKaEg==	2025-06-22 16:27:02.837059
181	2ys6d9m95sblradjpv7pfpa7oxpb	30_3b1b83e7-fd5d-4d40-8286-510839ca152c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3934	nFcGCR1p1fiosWSagK9Lvg==	2025-06-22 16:27:02.861778
182	p64unt0yqduw0aeap3ghpba1z83x	3_fba1d2e7-876e-4ff4-86a0-20ff84527c4e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3872	TIn0IeSqggKAYLZMvhvqYQ==	2025-06-22 16:27:02.885617
183	tly89kqz9ofgkgbnicson1mgkv1x	4_c0f55d50-c913-43dd-8676-7df35e8efe20_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3848	r+7ZOrSTzSGyLiUAhfvYHA==	2025-06-22 16:27:02.912714
184	4zkq5vcgzvh9n1ezwle30fmyaaci	5_24d07c5f-c8c2-4fe3-ac3c-fcc3670eff8b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3870	YW2Ko0KGeibAXUKKs6rIlw==	2025-06-22 16:27:02.951509
164	aww15fj1skh11sokkrahlnpz2sfm	15_6cd0250e-732e-4a43-896b-9841bcd5f760_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3668	TwHm19MUMZFvo3ArzIwomw==	2025-06-22 16:27:02.389595
165	s1rc7l1riubtsa7s1exf34em3qpx	16_428a9098-78e5-4713-9736-f1ea638a1ac2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3734	qk2EM5Y0iAGkK5nnLPfmTw==	2025-06-22 16:27:02.412494
166	ywogq1qni9ts3qwql714dx2sos7k	17_68c4ac27-77b3-40b6-9330-49a42b20c7f6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3654	MNc0oOJS6WmjSRlgBJp2Qg==	2025-06-22 16:27:02.436404
168	71mfxzx25enhx143f5aw410vyhmo	19_e07937df-83cb-42c4-80ee-6ab5857e37dd_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3702	bBPLLCXPe8jPi0ra3UkHRA==	2025-06-22 16:27:02.492928
169	tc4u6e73q0zv5kpg04hr7n56odql	1_ba9d1c86-2afc-4ad4-9578-ca2b3e51bce1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3826	K81V8E/zi9IxMF5SjOk3GQ==	2025-06-22 16:27:02.515516
172	wrzyk11xgtvwl4t6729tyxm82d3w	22_09e64b13-2546-47f3-a451-73f01d5577f6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3748	39oBfdSqjkbGCUB+qEePFw==	2025-06-22 16:27:02.602172
174	2ihskjqfsg8rj821heqnoos7s3qg	24_f86cfced-2f79-4ab9-825f-c055c3d2b756_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3638	l8ae6emLZ2iD8S+DaxVJwQ==	2025-06-22 16:27:02.648546
175	r86zrtsfj65jrlehlql9oywltg79	25_3047b43f-b0ce-414e-97f1-fdc5c4b3d151_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3776	TruWx0sCViXCD4KQfqNp+w==	2025-06-22 16:27:02.672608
176	w5zpo7r6mn2dbgrkajb3rxlcvdcy	26_3f88079a-b567-4221-b2ed-0ebb4fef7622_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3718	VTcyk6ZOOnTWH/LGxRBKwA==	2025-06-22 16:27:02.714109
177	wrjaxxcsgm34vw83eowpgfhd2niq	27_068c09da-02c8-4a70-bba5-8caa7262e4c5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3690	+AEm8ShGTHwM7rrYgrUMuw==	2025-06-22 16:27:02.748145
178	34slpduetdnkpcjomjqgxalh9gyf	28_bb356a98-a20a-4375-8ccb-7cdef3278628_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3866	lKb0xBEjF+g61Vi2hh7uRA==	2025-06-22 16:27:02.773627
185	smrku31yflyvmzbk8vmlnvcbw6ys	6_7dfe0460-cdc1-411e-b38f-2fada2289d8c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3814	ocUBDDZj0cmj9uBUoHDFfQ==	2025-06-22 16:27:02.969797
186	urvh87dnnrg5l133taad3go9xg7k	7_1987060c-6887-4dc4-9c94-6625fd114fbb_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3836	IJOA1mLNKekkMxMuJnqOHg==	2025-06-22 16:27:03.004857
189	mhzaolrnp0asphognzkum9936icp	10_f3decab7-b629-47ef-be8f-0afaffc358a6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3670	7Sb+u2rGSA5Tic8o6zJLnw==	2025-06-22 16:31:26.49381
190	rnhm7g0q0wpv5gowjvg51kfa6o41	11_32ccd018-209c-4eb5-8c29-97d9486e3d77_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3678	MRUXdQOk73rgltMuNJT9dA==	2025-06-22 16:31:26.525895
191	y3s6ntz2lbxwufekvqp6qrf85quj	12_d27b52d2-2452-4ad9-b08b-184e2e64fa9d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3640	+2wH8TQT7nN/umNc+K6wfA==	2025-06-22 16:31:26.559739
192	a7vkbwnwm0jhy1vhkpetsxyzad2b	13_32d8b5de-3d18-4404-ba4c-9f85ddc16151_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3708	vbTVFzmu0IEl+rt6DR8N+w==	2025-06-22 16:31:26.583937
193	s67bwhdp7izjs7lh3bszb99rrn1f	14_52ec64ea-b1e2-42bb-b452-8d28af73801b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3632	3YadYcCygDJDR6cNXd2waw==	2025-06-22 16:31:26.612815
194	t5tscvjln5bmemc4kk35dhk6cwfo	15_81c7c1f1-fce7-46f8-b4d0-52f5dec9fa1f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3696	+3+tMggnxCKqypwYOWEDsA==	2025-06-22 16:31:26.654508
195	514uawll4gl6gml45kbrc3sqzmv4	16_77dfc7d0-9126-4888-8995-53d78e8869cf_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3644	G/udeETJfhK2O6ZZi+NDog==	2025-06-22 16:31:26.726873
196	k7bvbla3ym0xjomudecy09ntcjum	17_270e6d70-eef4-4ae2-9cc1-6a7137388a00_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3638	V7MkVlo0eOvjs0hvkTTZYw==	2025-06-22 16:31:26.777603
197	5s5adzt9flpll3rsy8nzd4lzohl8	18_e5e7564a-68b5-4dc9-930b-edda172a61f5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3796	gUPl7rf/DDzDX3EoUdZY/A==	2025-06-22 16:31:26.805857
198	9h6y61z45zl1gkhcptx7qnht5vbv	19_1f63f72b-c29d-4954-bfc2-97b878331c4d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3590	TYykyBNjYhdJ3S9AwACuxw==	2025-06-22 16:31:26.823914
199	l6rirnsvzpzehl9fkyxa55t9zs8p	1_2249a996-35e0-4cb9-b8e5-c882bc918ea7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3736	tBtDb2rVIHWalybyOJO5rA==	2025-06-22 16:31:26.856812
200	g0j1cms7cwxakx5dxovisy80a4yh	20_06296808-9ee2-488d-8e22-3c42fbb13b77_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3608	XHxSY7gH9yg8mGHJmEHoMg==	2025-06-22 16:31:26.878258
201	qge8875opwy0b6ihs08d8kf4c7h7	21_c7127cfa-8ed9-44b1-9478-045806a2696d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3712	/CxYsEttW7OfMz7OHpYqkA==	2025-06-22 16:31:26.900651
202	o41l3uvedd1z9mks1qnhgpw874nv	22_d3dde2ea-3b1f-4a2a-aa7f-caa25ceedef5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3752	8Ejqz2bFzaD5gKl4sTTo0w==	2025-06-22 16:31:26.9204
203	shf2xq4sjz809fjro2h3e7a7cmri	23_c3245b5d-b9fd-4149-9f86-e3167645c584_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3806	o38yDjZu5KZx0ccz3RUhHA==	2025-06-22 16:31:26.952192
204	tangzft062jc1ct83zp569cs2dc7	24_6416d71f-5104-419a-a628-7b075d522853_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3692	sbcoNKNCRZDcPdCkFdIGJQ==	2025-06-22 16:31:26.981268
205	m3cf5n0tr1si6sjvmm3z3zpxrzus	25_88a4aac1-3bf0-4c89-97b4-60f99af2b926_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3758	isNdTsQvdcrKQFNGiJepWw==	2025-06-22 16:31:27.007063
206	asw923i634tvrvsxbykve9o0rnp5	26_b501e002-d745-4661-9b54-9df8b8b295c0_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3736	3YufO4eE76huvUa3oTvUVg==	2025-06-22 16:31:27.030401
208	tbxpuhm7pp6ciwbozpr80yn2xjke	28_40e2edd3-61ab-4bdc-a636-c63db071c7ae_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3628	s2JKj81zdYeyBXjPJrz7ZQ==	2025-06-22 16:31:27.084081
207	93c3joylki4c0njdi8r89pkzxldl	27_7ab72a93-0bc5-46f3-940e-f2af76a4fe1f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3672	/iHqtt5hl0ToilfKSGdlIA==	2025-06-22 16:31:27.058109
212	edhftuazizxhfuvyeid5mr1zmux3	31_4ec37be8-e718-4d01-a05c-33f2d8deeca9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3712	EbdNauU+LjvdbsKoy2XF2A==	2025-06-22 16:31:27.207907
215	ysythcctsr4p0jhiiyh9afo6qarh	5_afe679d2-c0ea-4270-8ed1-8ce24c6d9f0f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3730	i7Gjv5b5yL0xb+Ww98Q8og==	2025-06-22 16:31:27.311221
216	tvymt42bkc4pvsnqd9apq4vg1ksa	6_ff3cfe9f-f645-4451-be05-076847ffb7f7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3644	jPUVzYch4qUyPtFNIUdc4A==	2025-06-22 16:31:27.328286
209	zof69txfz04wdoffdcddqiloq8ax	29_635a88d0-72a6-4f39-a7f6-135b964fb930_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3884	orqDh5MtkBQ9YCIY/i9PjQ==	2025-06-22 16:31:27.108746
210	8q0haws07oam8xmqq1hqe89dxvcs	2_8c5309ee-b579-491f-b3bc-c3ef34a861df_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3696	JAfLyLV9P0d+WzpR+OzadQ==	2025-06-22 16:31:27.14197
211	77n70l8wycuu9pmdsde7p375h8d8	30_f1b36413-290d-4a34-b032-080335ab472c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3688	fCxYWfUGkXB8BKdMs3jxuw==	2025-06-22 16:31:27.187818
213	7tf22teuiyi1p74m7ksv5cblal67	3_bbe1f0b3-03e8-41e0-a41d-9c828586d7a3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3552	vCGEUszwqCntFQ9sftuLPg==	2025-06-22 16:31:27.242902
214	zczhegfhy3ci2ms4hb4t9csduipp	4_f4f9e5a0-df64-4a5e-a3f9-0edeea3ca714_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3708	DinIfqULidYQikoGbIbcGw==	2025-06-22 16:31:27.278922
217	n5c2m92mp979qy2amf8dijj8aix6	7_4d20f211-bbd0-4123-8892-dedec5c58af5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3636	bvE/jJwaASZ/6d4U5MOZiw==	2025-06-22 16:31:27.354218
218	jtdxn3oy97dw1mkrcgx82azrdtuo	8_b4ca038a-7a4b-4bd5-a8f7-f5ed7974bc18_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3668	xhLO32gp/uhMzI4NOk2OXQ==	2025-06-22 16:31:27.374091
219	hzsc5rih4z97yujjik1elo9k56ui	9_8be69e8b-458d-4a4b-9c19-d6458216932e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3604	o5/AeiwgIbOJtE+EXKnKlA==	2025-06-22 16:31:27.410327
220	5ct7oggge711aillm7xop7w9i9xt	10_8d75eef7-357f-4184-b37c-3a0ee26db1d3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4356	lx2YKLQaJIv3zSdZ5ksWug==	2025-06-22 16:36:55.210913
221	xhl410y8r8xr2ke6p4redm92n8bw	11_2a150f48-6b40-4d6e-bb1a-ee73db056bb1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4262	w+yn7/nZci09WKl9fzuo8w==	2025-06-22 16:36:55.432122
223	m499n3tg3y4uktkudr0usvzuvw2s	13_7c4725c3-e4b0-49bf-b7ba-00ae0f83d3af_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4052	ILATbEduVnuWs5G7CZRIwg==	2025-06-22 16:36:55.842864
222	s0xm982z6pzdppedz33pokfjcbj4	12_bc3288fb-bc0c-44d5-ad72-a8a4d60bda16_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4164	Xvbj5Al3groR7IBo9ik2Cw==	2025-06-22 16:36:55.608812
224	ta8fljzl12tb04e5ut078ck299y2	14_98175427-384e-4bb3-8ce9-8835b430b522_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4290	ZTTFxZ5MtHDymLhCEMEWOw==	2025-06-22 16:36:56.040836
225	8y21nv68ovlwh3jgvmvpz01g0x14	15_9409a464-1ea7-4b4b-aa2f-a3a0df860530_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4258	zGBLo+L5OABM7YZO+InkBA==	2025-06-22 16:36:56.231867
226	hwl17dlr9cagxl62woegq1u7icwy	16_f7e43c6f-2424-4cee-9132-ed9c580311d4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4248	p2spsQkzFOJW9IJOyJIhvA==	2025-06-22 16:36:56.365184
227	h4cf1w807pf0dk0smcnp2ky8ykm9	17_1b047ea6-5449-4234-93f4-77b9057c7e48_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4520	ol+U/udsKiyiTBM4sWIN7g==	2025-06-22 16:36:56.423295
228	b1wa1byqyqd1uqju9a74lca00u5v	18_b0436346-25d8-4d5d-96eb-2c2089470f94_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4322	g0j9tzKTDRxW6dKu3VSMvQ==	2025-06-22 16:36:56.500551
229	nc4ux8ruhfmuf2zyjy329ibym06a	19_f06d5981-a20d-427d-9288-4c3bbf77f91b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4202	ubT6oj0IaxI2oZrvOsQ/Ww==	2025-06-22 16:36:56.551247
230	ccixhw438brghlzz39z3scmpu75m	1_7f2b36c4-e5c1-4378-953c-f706d4062f08_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4328	zoj6bd2DmbYWT5kZKNoeXw==	2025-06-22 16:36:56.608651
231	u73r9f90pkr3sd76uyz7phd3eni8	20_f8717f80-d4a9-40af-8d74-a67f2add3512_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4372	f+v7Af1qkXfJHwUrYlyfnQ==	2025-06-22 16:36:56.66276
232	xahs4kylbu4fqi16g3ydmaoy505v	21_af6f4f43-bac4-44da-b4a0-2f9cfbf22660_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4250	D6dZ6AZmJj3PRfzZVuTWBA==	2025-06-22 16:36:56.699554
233	cja5oo2tbrjts6fm155y2tz3v9ti	22_6c9efe57-1ab9-40c4-8bd3-9e27d8b0ee7e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4370	WA929JMvXfOcFKeLzJLUVQ==	2025-06-22 16:36:56.753507
234	423fpml2jnhj0h8zlhgocrda6qy1	23_52f0543a-72c0-494a-b1c8-a039391b4ce2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4134	eLMhq0ym3xgxXkrSIW0U4g==	2025-06-22 16:36:56.804728
235	rjzgvy4fzcdb7ct68jl7aqqfxbj9	24_f1d47a09-7085-4d1a-8fd9-7bab21205025_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4308	yf1+IVre+8G5wS6kqPdtaQ==	2025-06-22 16:36:56.854992
236	j1m1r0s3ttaclob17vnf39i4tyn9	25_a1447291-04ed-4c41-98d3-3342f454adb7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4262	vZ2lhUvpRO+DVj8969Og8g==	2025-06-22 16:36:56.932485
237	wb4q52zonxpybh9ww1po7ncuz8ip	26_e650ff20-2bb3-48f7-b985-cfb815464acb_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4410	dixPqtCwTMr2e/xOcN537w==	2025-06-22 16:36:56.967474
238	u66ty2wp5u3f6wr4wdds18xa4jit	27_643f673e-f3a8-45fe-bd17-87ebd87fe4e9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4426	8xC+2xrg1GCiCX0cfEjjeg==	2025-06-22 16:36:57.001135
239	4wqv9xed8fjgfv8yrjm7nildb0jx	28_bfb4c278-633c-408b-b356-32df9c4cc7a6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4076	lBCbsbzm6qnPly9nLDTVcw==	2025-06-22 16:36:57.034116
240	69wpedh8jonm88u61oqzmgszepau	29_021b8477-aa4b-483a-8e8c-39aaba198f5e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4290	/bGY5fyPkWv5xSq9O0hrMA==	2025-06-22 16:36:57.063322
241	loohfmggbdhpp5mubkpgxv8o3bmw	2_e7cf32de-c56f-43ae-9f9e-d948dd67bc67_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4006	Tp8K8q+guo3sdcgceHp81w==	2025-06-22 16:36:57.082597
242	gpfp620m34kaf5bni6ur2hnn3txp	30_765d1ba9-ebec-4ce6-a8d9-d2ba2cc2f87e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4086	C9WEQdK2D8Mp8sqmmRruSQ==	2025-06-22 16:36:57.113311
243	i85239yaz9m5w4mo6xhkheyzsr1c	31_f76d0e44-4a26-41f7-92e5-3b34d801cd07_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4284	QkEVK9Miynge7sI/g9Wh2A==	2025-06-22 16:36:57.139023
244	gp9s62f1mxjurj9e2h2rgurfx5h2	3_0a2ac3fc-6103-46f9-8a72-2dcaee001415_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4236	0T0mr9dSImERbqGnkRrW4Q==	2025-06-22 16:36:57.170603
245	ekgtgom6poefxyphildkspkfurh3	4_f1736ea1-237d-46d6-b87e-21eec055503a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4510	hlmC7mMWiGFiF5SNX2Fj4Q==	2025-06-22 16:36:57.190931
246	tc007x6k8ohnd30ur03pbzmnplbq	5_b1909042-1026-465c-98fd-679987f2a604_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4302	EMpxyHE56LCoGxhtlVPdQQ==	2025-06-22 16:36:57.21607
247	wtfyzkwo62fdnv19qfge3lr6ajjt	6_3b691da2-f672-4ab7-ae26-4a93f4a03e0c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4190	Se4o8pVMDgUFDC69ob4Uog==	2025-06-22 16:36:57.251217
248	9j2h9ic31s7rm5vmdzijvnlebsfi	7_ffd0d875-11ca-4dea-8f67-ee5e6cc42d9e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3816	vJlNKrsdoG+7vy3Fo7vO2w==	2025-06-22 16:36:57.280557
249	nu4g69zr7f9x79byr6ke9ptqavzf	8_00d75ec2-ac34-4e57-9209-59d92ed3499f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4344	oZICY3OnsOGGRoGjME6f4A==	2025-06-22 16:36:57.335807
250	ycvto6jficmb58jrdyvr3p1aiy7v	9_b1a8dbae-1dab-42ac-b0cf-a12446f84cde_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	4186	ZBSI4SsmOUvAr5iHSECxYA==	2025-06-22 16:36:57.398058
251	7mjr94yny197xi6r72hsdkyhuz3f	10_14485716-0bf0-44ba-a84e-d3fcff8a58f0_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3690	z1e6AaDxEoUCWLwnxFQF0g==	2025-06-22 16:40:36.933293
252	xcn7d6h5kj2h0f4kgrnkqlmnszk4	11_2097b48f-a4f8-41af-9ab0-f92743076d1b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3462	WTEX2D71x1ECqaQ6lj48Zw==	2025-06-22 16:40:36.967088
253	o8zdaqmuda0pugfvdcpww95n2aq5	12_c887760a-26c6-4bc3-b9f5-decf3df8a2fd_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3458	BtR0Eh7n4oeFmezPCRMAAw==	2025-06-22 16:40:36.995743
254	shrxtvzpg2pm2ftzj6dlutjgffuu	13_ae4019a7-1667-454e-b338-0724b42502d2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3668	vjoW2FB2yjKOKUryPIdYEA==	2025-06-22 16:40:37.019373
255	jctos6iu867c4mlc2slb4ij6mgu3	14_498f60b4-414d-4c69-87c6-20a318f2d4fa_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3596	J0zMyqLkyW7riAMLrn7Ixw==	2025-06-22 16:40:37.045465
256	4yzminsyvo0gy8y4pq6hea0p0oi6	15_b211dbf2-f94a-496b-abdf-227aee1e0a2c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3516	VwDJKYpfLeS5SlH7QtHCJw==	2025-06-22 16:40:37.074318
257	sg1aybqp57xbr1cdso9cj9vnojmh	16_3c9553d1-031f-4ad3-90bb-cae5e57b9c40_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3484	8M3v068hYKLkHZdul2PJuQ==	2025-06-22 16:40:37.089236
258	0cmymar7nqga7edf8rqa2kzv632r	17_482eaca3-6d97-49b9-ae33-e049422951c0_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3602	rXqZGaU83JCjjam7bvWP4g==	2025-06-22 16:40:37.115105
259	bpct2ggdjqfxkc7rkzzg308she70	18_e73e27e3-de50-48dc-b046-cd8593411bc4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3484	chkuzfuYYM752EhV2I1xPg==	2025-06-22 16:40:37.140818
260	tlmevpex83qf17ijahme9lpntxvu	19_e362eba0-92bb-47dd-8373-730ea7a6e88e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3438	NensWb4dkKpbpfc4I3rHrg==	2025-06-22 16:40:37.162532
261	lsbeurxs67ee1049iflroyfq3ou9	1_3635a46e-9004-4b27-9ebf-6b8b25a36e04_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3542	ej2tcV69d3FCJmJuqQw1qQ==	2025-06-22 16:40:37.219069
262	hhh07pzz7qamce59acb9e2u938qv	20_151ff5e1-9e92-4689-948c-4ad5a3eaf363_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3600	07zn2LbrBknnvMX5l9DGug==	2025-06-22 16:40:37.280325
263	bfpyq49udtvhbh4gy67oig4mdy7l	21_973e415d-c1ff-478b-b257-069a4c3d7116_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3536	a2Z85SXhOZRn+ZnGaMycqg==	2025-06-22 16:40:37.312134
264	f8r13rrjot286op70lhugyi1uxia	22_2d46893c-fbff-4118-8d41-044bc863eb59_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3548	nxv4xdG+3xkmaSqvVL/ajw==	2025-06-22 16:40:37.334301
265	mqaxh6zp4ee989ezjj30wyt63bmv	23_405ddbc5-e52a-484c-9141-826d023916b3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3488	qiXyR7Au1olgFTNhMpzUzw==	2025-06-22 16:40:37.357582
266	mtykoqf8qjdbcdutuoo8laa5rmk7	24_0e262cc0-8f9c-4077-b2ac-2119da48b09a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3652	zcHG5qZ2A9/32xrwYAHRJQ==	2025-06-22 16:40:37.385219
267	1kcxt53e15xy101qkma695ma6dyz	25_33262dc1-754c-46e0-9524-705438741fde_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3618	XUs+MZmA1IZKnbPfBe75KQ==	2025-06-22 16:40:37.407263
268	tlpmiiynwc2fz8a4jylthveldr4r	26_5c8b1d35-da29-4a4f-b8bf-39631efaf576_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3574	3yx60cwBsssjpF7RLiUmgw==	2025-06-22 16:40:37.444151
269	4nhh85abq744msuhakn2dmyd5jma	27_73add6cc-5246-408d-b946-60d94fefeede_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3530	c6Hz5bEed9JXUwHXhpkQOw==	2025-06-22 16:40:37.480746
270	l5v765c1g5gu6zcb0lsso4izrc8p	28_0535e59e-fd43-4751-bb2d-4ac68556ada7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3574	4582N+c//FS0sjv79jI/tA==	2025-06-22 16:40:37.509263
271	siq53f7s84bzigxr1ng3qqt2h58a	29_1b052998-d48c-4c5f-9c4f-3aadf4518f18_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3504	qaydpBvCHKFtSTEoyMhUkw==	2025-06-22 16:40:37.532633
272	dgulht0f69qtyiykxmp69ghnvo6t	2_df3122bb-9ce8-441e-9fe8-25068a8b74d1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3558	Ws12sEAV1SFkCAwrUaVRjQ==	2025-06-22 16:40:37.560542
273	q657azhm640b5ikywgi4v06ls01b	30_0f178d54-cd02-45f6-a53e-a16e324dbf16_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3674	VIx2nhcYsEsf5/+tmXAJBw==	2025-06-22 16:40:37.58378
274	js9xujpfj3uy9lq07touqq08axsx	3_7fd6569c-badb-4ca2-baba-13291680a275_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3394	hcVRNJ7TWyMqglHq5S1QEw==	2025-06-22 16:40:37.617547
275	61g0ehfk15ufoc0rba9vdj4l2sf5	4_33a23793-5da8-46a6-a7b3-6252f6bfa548_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3492	x1k6YGeQrwYKuTIveELr1Q==	2025-06-22 16:40:37.640935
276	9wvqa20x2jlqdj1xs5ejzafxuhza	5_e1dacf9a-6119-42e1-94bb-e5458837b023_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3644	8iiZRDLOc4oywRVdZFCdRA==	2025-06-22 16:40:37.665218
277	9ytjpc6jreeap43r6bxa78ohtd1a	6_93c0a04c-ddca-466c-a821-db08b39d15e0_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3552	6EocorEWCr3GoREIcapWyA==	2025-06-22 16:40:37.688143
278	mcuv7b4urh58o88xmlxzk5i9e4yq	7_64845019-b55f-48dd-9705-0f68118d1a0f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3604	KHnuE0ofQfe0JJ+lO0um6A==	2025-06-22 16:40:37.719036
279	vyb23tb24zr1yv3f7ef3ggny7f2o	8_ba26c6c3-c864-486c-bf93-a02fec9381ad_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3646	N7QbGiIARjhN77N9aTf3/w==	2025-06-22 16:40:37.739284
280	fk8elfcsichuh11wxmz8acawl0jz	9_c254e80e-001f-4805-aed0-b2cbdf5c192c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3536	khQhrOjLdSG39BNN9Wpdog==	2025-06-22 16:40:37.755111
281	oqwk06sf8qp77h3kxzbn10laocss	10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3780	XbXemYembC+D9D4j8DRzyg==	2025-06-22 17:00:27.13445
282	lnwk6fherkcjteai2hxh1cx22gnv	11_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3680	aiK657HF++0KdkF38o5iDA==	2025-06-22 17:00:27.156738
283	q63szhruekrcn287pwm0i5mo6541	12_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3686	quMvHvqK173i6Nw9uUrBPA==	2025-06-22 17:00:27.175396
284	9iclx9tw43zodljde7ota69q6h4o	13_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3726	R7GlAfycIK2RieUzE9vvQw==	2025-06-22 17:00:27.220464
285	v6rxh422ym43bqv4zmx9f358262p	14_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3720	ejxE5hCZWYbeS54CBHInBA==	2025-06-22 17:00:27.272206
286	wtn3cfo5qe41r8ybqhzgx13qjaiy	15_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3528	xuMb+dpM3XFQPN+6BTuI2A==	2025-06-22 17:00:27.293338
287	teovzgi89mld076s37lg5kp73zje	16_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3482	qVlgxotOQDGf3v2Blf0WSA==	2025-06-22 17:00:27.321691
288	p7w6h6b7x00q8yheszcawdk5pp2q	17_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3586	AzXMNUoaQXVazvbkonL01g==	2025-06-22 17:00:27.336894
289	1kiz8p9ma2xr8hxknsfkauy4l3ty	18_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3652	KP6BphLQ3QU6Q08ABSMpRA==	2025-06-22 17:00:27.360166
290	uz27k9j2bg5xc8zcqyu16kxu0as7	19_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3708	tWJt2cMRpdwdgE/WbY2/bg==	2025-06-22 17:00:27.392075
291	row1emhoaswt78voxcznu8dq7r3k	1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3702	DyPJ0+MdQrkcaDNkX2T71Q==	2025-06-22 17:00:27.412306
292	yrlkbyblkibp8aqge3pvfccbb3ds	20_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3642	rJyOcFrISuiLPnrmMKXQPQ==	2025-06-22 17:00:27.435579
293	f80v0m3zi95vil05whp7o444xch6	21_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3568	j+2Xl83QRWBZQOh3nHGIvA==	2025-06-22 17:00:27.456556
294	7h0m03ixo5delwzu3w78cu28iodb	22_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3638	Ge/qvpHNXZdjZcxi4YZVAg==	2025-06-22 17:00:27.479189
295	a4jdxsf0aa6ip0t9zs1veh96ae86	23_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3622	zvPkIBiMfC62ZyXL2V1zrA==	2025-06-22 17:00:27.503394
296	d2a76m04a9ixjhy0w7q6oymx8zdh	24_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3686	eX3PrI1sFsUjjTqFD8auZg==	2025-06-22 17:00:27.530423
297	qphwc0u8zrhc1q14o64e5ftbx5et	25_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3616	bMcvkiMS4Q+liRBFvxcEYw==	2025-06-22 17:00:27.554955
298	bpmqazluxxix8ezjiw9fkjmcfmup	26_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3716	gNRLhYGxXdOFUwybWVMNww==	2025-06-22 17:00:27.596072
299	xwkkqfa2nvtbporkeau6r6up8ua5	27_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3618	5DhFUlwNGdN0GBkIA8UFxA==	2025-06-22 17:00:27.637822
300	shej5ekbk6yyjwcq7xgdmvc6wi2o	28_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3748	UPSoPJjp/iYrJ38o3rrCIA==	2025-06-22 17:00:27.704776
301	5e2ixzh4rkbhygjuvh21cso9bey0	29_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3684	lgNQn1MXpGL+LqoX2XoRmQ==	2025-06-22 17:00:27.728217
302	1ozxh1bhd9gl5rnbnhlzbwt2qdi0	2_date_fdb9aa65-fed3-4f87-8c5b-d0ccee178f53_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3584	0Kr9pyyaGFSDdFKAoa2B+A==	2025-06-22 17:00:27.758161
303	4lc9hj21uy0dmqitsrbwbs32qod3	30_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3756	YVReMVmiMTLfB4zXNs21dw==	2025-06-22 17:00:27.783612
304	mg145lxics0rd0apdfcsg10zhqds	31_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3694	sAbaNr1LdQVxll+PFFqGpA==	2025-06-22 17:00:27.805026
305	sjogw8vht5xi671qewtksi6qrkx8	3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3668	ZBkCMYWyDRCvNWfYcn/bog==	2025-06-22 17:00:27.827244
306	314giu6jtr9coaxqb447e6j80vj2	4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3658	fGAbPVqYnTSgod/XXdrRxg==	2025-06-22 17:00:27.852869
307	i9rl357pnro91d3s554izd5u9qo4	5_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3648	nGuoOOmV8HVT49buwWU9oA==	2025-06-22 17:00:27.87865
308	wfwvb2681k59dth9htdvjw8qmmn2	6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3694	9U9FmhPAKL0qneYInacHdg==	2025-06-22 17:00:27.900055
309	pbmhvufmdm9xsm6mpb76pvwvhyaw	7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3542	l/opWKYJPpb4F0sTxyzD/w==	2025-06-22 17:00:27.921329
310	cn658m4vzuoq0acvugfabuv8282l	8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3636	OtEsTfFSj+41WbC+bDV68w==	2025-06-22 17:00:27.943768
311	20kvu58vgq0c5y5148ep8yl03ov7	9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3748	XusCd8QU4HXWJGd5i7/Vtw==	2025-06-22 17:00:27.96146
312	ua5js9rg4158soqmlmgsuyynurq4	10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3728	wKNmZ12o0sM7eldHgpU79g==	2025-06-22 17:04:59.16801
313	x08d71ocf1dzqwu6buqhnpf8h7pd	11_6de33eee-8bd2-45dd-9e33-6cf9817fdc0f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3620	ZZ+U37wg7ksivuLV0rmtpQ==	2025-06-22 17:04:59.19427
314	v6mpylbq4gz8yp7k9sp643zx5gu4	12_a3c44ad4-5eb9-45c6-a601-207245818127_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3686	isWPHsMxagR5R34iUTpwPg==	2025-06-22 17:04:59.216593
315	cilnrouxgffk819bpors7a6dm5s3	13_4b1fab33-bf42-432a-bf83-bcff53368f68_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3544	R00CElvBvCYRWnzgBvFt+g==	2025-06-22 17:04:59.251711
316	i7h757brw0eoh3qjb7d7t5pf3hak	14_8507038c-fddf-468b-9f21-fb5af1c3108b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3666	Sqtv3cPJW4eSTPHddS77Cg==	2025-06-22 17:04:59.269934
318	zr6e4081o3maefztxuaeuhx8p1dm	16_40c54201-b19f-457e-a08e-a2f6bd72094a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3692	fVLxc8ZJDfw3DCIVRCCaew==	2025-06-22 17:04:59.324503
334	iptgxgl1jv90o6kaczqocne87vjr	30_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3516	IwutI1oBwi/8JPykrnxj7Q==	2025-06-22 17:04:59.711449
336	ib9itdv0vniv5qbso0m67g08brcy	4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3618	cL5rjN9USG0NLHyqIPH0Yw==	2025-06-22 17:04:59.761735
339	jmorbmm40lu83v3myfimbhp6pgsy	7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3606	XSRP5Ewxz0vzVE5/TKXV2g==	2025-06-22 17:04:59.830001
340	fs5h4k6uiho1w8u9nsqra7yheyv6	8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3708	D23qvrJx4YuXHfsg7KetTw==	2025-06-22 17:04:59.854531
341	e7s9tvunfb51f5i62ar6cgnacce2	9_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3694	hwguFJSfsj4zpb/lzewhgw==	2025-06-22 17:04:59.878464
344	wlzb9ur91hlcp8tg8dxonupxiwaq	12_80bbabb8-f9ef-4883-aefc-352f056f29d3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3630	fJ4OcYvRMnyZ3Gjy5h7ZTw==	2025-06-22 17:07:35.679708
351	dyya3jzb410nernts4um0nn1l3uz	19_0ec0d732-c1da-4f81-88cd-1dbeaa5cf1ed_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3696	Kt6aWwtMPMkCY5qmRuLBYA==	2025-06-22 17:07:35.854764
353	funlzrrdtv5z9gviqen3uiuwo1kw	20_a37e3866-0412-4782-8dba-567a6ee41b0b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3616	XIss7xR7/gwKXrj60Ai2Rg==	2025-06-22 17:07:35.889203
362	9eow0m8ydq80idzkxz7ras52ylwq	29_f7db79b0-e581-4404-afd9-3157e671d104_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3714	6cpeh97w7qGogqb42QOU7A==	2025-06-22 17:07:36.098161
367	tz3tn7xnj7tsld18mobriogh3t3v	4_4d47a9cf-310d-43ae-bccc-77f5eaaddc7e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3680	XY4V/fcNuYTMhLrHYvW1Gw==	2025-06-22 17:07:36.249176
368	x5xtbwr6vv3mqad19kc0q0tmq3nk	5_6545020b-75b8-42d7-a6df-bfcebbad21d4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3726	Qa7r+JHQoHz54DQe3emrbg==	2025-06-22 17:07:36.271417
370	n3bnh9n64h6mfpczhoa2blr7994h	7_66961f26-ec29-4452-9fba-17b15a6b9402_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3662	baAUEvPLjSUWix+mWx0Awg==	2025-06-22 17:07:36.313884
372	ofigrrqn1wbr66g5r6kruzl7i4m1	9_b2b67173-37bb-435b-9d3f-cb43b9358ff7_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3706	NvLwSV7Jm30JwOaSMKtWEQ==	2025-06-22 17:07:36.363286
317	m3kiquastxhiqu5dt8xaytlclcww	15_82c7512a-91c2-43cc-8f50-e8da28292937_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3692	a7TYowGCCRkWsx948Deh9w==	2025-06-22 17:04:59.307669
319	jibc8v2cc4wn8lal2nc3e2o16kr6	17_e3b42ea8-a9eb-46d8-a68a-cab908ecf329_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3676	jMQDfi0YppjiQpy7myEXWA==	2025-06-22 17:04:59.350303
320	v2d387i76wkjmcyzsfp5qqcz2b7c	18_0ce847ac-b22b-4da9-8aa4-4824cb757c0f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3706	lkIw7PUH3UZn3+peRIFRYA==	2025-06-22 17:04:59.368684
321	b2guha9oab4wpxcmon6madbq51xk	19_22b7f99d-c67f-4555-9c30-5e641e03abc8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3626	iSniqFDp+L2tzdQKPuo7QA==	2025-06-22 17:04:59.397903
322	kt8msjcl86msc25sl3nc8al4mzl3	1_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3698	WG/I/nIi7QHvT30U5BjqGw==	2025-06-22 17:04:59.410568
323	qksol5h1lj4pskb26gyn01q69x5j	20_072cfd38-22db-412c-8199-8876761ac96f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3644	61am4WsUNBvhAyK42EwFpA==	2025-06-22 17:04:59.44187
324	jckkfbz1s5ca5mgzutrqbuye8xyo	21_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3648	LPcfmHgwqUlOzOJDrLrvuA==	2025-06-22 17:04:59.467687
325	sch2qw60csae08e19yt9nzsqxgfw	22_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3554	zLGbBYHLFessjIlEAK1Q9g==	2025-06-22 17:04:59.488215
326	5i1f8nhto4rc8umwpk979edvo5hy	23_3e6ce5be-bca8-4901-b48a-9ce93ac571cb_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3726	oLfxvt0TpxJm8UaxIOtNMQ==	2025-06-22 17:04:59.51359
327	tfv4g08s7mqe2dsacf36pit5mug9	24_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3616	PbC1N4Wtbtly//pZMUu/Cw==	2025-06-22 17:04:59.542714
328	llofqc62e2k0qbisdf3gx1qn2sfq	25_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3712	oDRjWTBqyJn96M7BqzDyGg==	2025-06-22 17:04:59.568095
329	j4pgsapq30dez686fm39s1diuxbw	26_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3716	10/646Z4ByxoekVQ7uTk2g==	2025-06-22 17:04:59.600972
330	4mfhmzbl4o0xx7j66xnvwz7t4dkc	27_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3510	AfARabCsTaNBCIoFHHsOHQ==	2025-06-22 17:04:59.618063
331	bg52ms7fb2abxzdqgraw09xorhiy	28_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3678	tYLD3DQXjbkjXqKXi2/3sA==	2025-06-22 17:04:59.646713
332	3cp60zcwqbeykg341l1gpzlpfjuy	29_46f0b665-d3b8-4f98-b4ba-2076f8271ddc_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3644	WzpYsk+TCvTyq1sZJKwURA==	2025-06-22 17:04:59.666911
333	4kfniazvj1yu7577z9sy4o61gh2a	2_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3640	eA2xMFlWc0uVK/RuLMA3gw==	2025-06-22 17:04:59.6894
335	z09bv3y7rn626gjme9l3vidzw50v	3_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3620	9NHuythxvUHQKGsyaz6aHw==	2025-06-22 17:04:59.73286
337	vfrujdz6mku2so5vkkxsfosoorl1	5_ae9e1b07-0cd0-4be3-a5de-8b62de92d85d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3568	rdoDTr9/7xo0TF13LFkfvQ==	2025-06-22 17:04:59.776878
338	v2ip2je0u5nx5goq4f2cke3dve6b	6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3622	IxjbDZKx7j9gA4bdnKIUmw==	2025-06-22 17:04:59.80863
342	tve6izx54tqxl06whsoq5d2seg6z	10_80baca3c-9fa4-4844-aa26-c45cf948ab9d_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3710	jMtjEpUd+lD3plwkyOuAuw==	2025-06-22 17:07:35.630537
343	yneo5jjfsumxhfex48axf1lyj5ul	11_af522c78-e898-4031-a52c-c8793867d382_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3724	/aDH6eV9j+C+iIODFxr+XA==	2025-06-22 17:07:35.661799
345	6yge8qwo1a2ewfxseo40ujgmx0rf	13_99418780-830a-4270-9d5b-977ed0e3d448_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3726	BZT2LMeryKSLryDtS44ztA==	2025-06-22 17:07:35.714443
346	03izemjkalp8nkizih7wx2ql15a1	14_b766bb66-4978-45b8-a2e1-ff96ed49486b_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3580	Fv91xF9M4Phz2ntBvBlC7g==	2025-06-22 17:07:35.72826
347	8g15axz7vdgozjyclkgg2xwa4ehp	15_db3539ac-bcc7-46c1-95e3-108fe7e101bb_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3750	zrwUk3WR0s+KUYogp0qLcA==	2025-06-22 17:07:35.755485
348	iolc4hecseldqraw7n53n1d7son8	16_7ec8a548-0b3b-4ba4-a97c-81ab6bf87143_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3632	/rZB15/Q4gtT0AeoU4yHgA==	2025-06-22 17:07:35.774521
349	p8uft195pw6y00k7nm9yt3kq4sec	17_2309b515-686e-42dc-a069-eaa1c5ce3594_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3620	gI7OfeQ8f6YetxhsjQKDOw==	2025-06-22 17:07:35.801978
350	9tbsqyg17k7ibxntxzih7rtx5i2s	18_044dc378-fa66-4d27-8e1c-9c188a6ff1ab_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3726	Zad8Vjs2R/lguTUJqdUNTg==	2025-06-22 17:07:35.830148
352	g669gdgyca88gki5svomf713kjms	1_c1602a9e-e3d6-4e89-b7ac-6d0b81fb0742_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3648	1HVYTzLyXmz3G1E88DYFRQ==	2025-06-22 17:07:35.872707
354	g4pe2muv1a41g5ywwy8iruo0ildz	21_b0af25fa-6cd0-4ae8-89c1-8a975f90799e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3776	peK5sEIvrVNmN0yML5O48Q==	2025-06-22 17:07:35.916966
355	fuzhzxsn9x159ys4luc4l153emx0	22_38f5c0a5-e74e-4a9e-8837-0570237f054f_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3638	L2ntK2RQ0y1x/FEm7KOH5w==	2025-06-22 17:07:35.935821
356	65ircje87have8uadbjbkgphh3cr	23_bcea1e3a-c0f0-4d51-ac4b-97662451de2c_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3682	upDmNeFCO7ihLTIZhuWU7Q==	2025-06-22 17:07:35.960711
357	l39mllzr8gb9a7zd6dhrany8tp4k	24_9a5598d8-d027-4c67-98e0-32e178aeb964_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3648	MG+GvfJlaM+XJLJjQ4NdpQ==	2025-06-22 17:07:35.973086
358	4rkhvsz67xpj68f74py095wt2agg	25_deb6e8b9-1f10-4e2f-9eb9-d089139af2e8_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3774	N2bGnqtDCI//pvAnznmcFQ==	2025-06-22 17:07:35.993484
359	baaceq0yl7ixy4f6fmlcik4sdv7z	26_3fd5c314-0d08-4ad9-bf11-722366b3e942_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3746	N+GndDWs55Mqde3WEK0DiA==	2025-06-22 17:07:36.021164
360	a22raxib8ws8d0ofk6v3u0vqnyr0	27_e3786674-3b8a-44af-8359-7b13aa432336_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3598	PWCCAuB1+IMZOZcJrJ1R1A==	2025-06-22 17:07:36.049619
363	ewfm0lzm4popi4n2sbwq6ru91a1b	2_fd942ed8-39d7-48bb-b67b-61a1ab8a1e66_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3702	WOeJUKA0ABlY81Uapgp6+A==	2025-06-22 17:07:36.128089
364	k4hk6r93c2qiij8rcg4j06m6sj60	30_44ef3ea6-a177-4a6d-800a-9dadab414f0e_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3738	z9CsIsd7YGPY1iLUnOTsCg==	2025-06-22 17:07:36.155754
365	fqnaiwjsb81ymgebp1c0p4zmjdon	31_aeb20518-12bc-4a0b-b9d0-745e12bc24cc_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3650	jNthfKkHHYF3nBTd5aEGcQ==	2025-06-22 17:07:36.189164
366	n62cwipfx7r60jebsls95dtntmm0	3_e0a8f1c6-c06d-4a6b-b8f9-950a695d50d4_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3686	ZBmSlScPB9I2AjzO6B7mxQ==	2025-06-22 17:07:36.214654
369	abro0qmwdbgtncitsxeg0nrzcpkz	6_ee9b8d43-8684-474e-8095-110d08a2d9bc_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3726	8+HW0gDQvK28SY11i/2mog==	2025-06-22 17:07:36.29528
361	z2k26i82udi0zy4mk8xikueg3pp8	28_795c8f3d-4165-44c4-af4b-78f9a9fb3f90_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3640	p6psClttrEseX9vYxdT+8Q==	2025-06-22 17:07:36.067322
371	44luj3vwxvce3gpdmisx776vpgv8	8_c9e0844a-f8ca-4451-bf8d-555aa6f50362_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3722	BgPP39HikF6juOUeSvE7Bg==	2025-06-22 17:07:36.338126
373	350twn30h0ywxrlgwfy31osbrat1	10_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	2710	hl1J80Yigl1Im3x3mBQrfQ==	2025-06-22 17:13:13.727161
374	7g3zxjta1nuxnnxfmbz1igoxt08r	12_bc3288fb-bc0c-44d5-ad72-a8a4d60bda16_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3060	y8k9/oYQQA3ErKfKsvx2xw==	2025-06-22 17:27:04.4576
375	fjul5mffztfrjy1vtt1g52fimgk9	22_09e64b13-2546-47f3-a451-73f01d5577f6_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	2892	+RODYH9qBPmwJjxXRI63NA==	2025-06-22 17:29:45.15363
376	thcf6dew9k3qnrl3jznjwy3sec1j	15_9409a464-1ea7-4b4b-aa2f-a3a0df860530_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	3132	Jru4/2v0Rz6PQytQtJMKZw==	2025-06-22 17:31:12.093854
377	zzwgvrbptu6zt170uf83ozkcm6l7	17_2f8798a3-a3a5-4ce7-957f-0c1e6898996a_480x480.webp	image/webp	{"identified":true,"width":480,"height":270,"analyzed":true}	local	2572	dhTlbD/A8ueJrGhr2zOqaA==	2025-06-22 17:38:56.031685
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
2	5	R6P4TLQRWnNPR9Ka7tsYqVcIfkA=
3	222	R6P4TLQRWnNPR9Ka7tsYqVcIfkA=
4	172	R6P4TLQRWnNPR9Ka7tsYqVcIfkA=
5	225	R6P4TLQRWnNPR9Ka7tsYqVcIfkA=
6	135	R6P4TLQRWnNPR9Ka7tsYqVcIfkA=
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-08-30 09:50:50.070732	2024-08-30 09:50:50.070736
\.


--
-- Data for Name: calendar_images; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.calendar_images (id, date, created_at, updated_at) FROM stdin;
63	2025-01-08	2025-06-22 14:59:51.117043	2025-06-22 14:59:51.177762
64	2025-01-09	2025-06-22 14:59:51.155375	2025-06-22 14:59:51.19555
34	2025-01-10	2025-06-22 14:59:49.992532	2025-06-22 14:59:50.138522
36	2025-01-12	2025-06-22 14:59:50.075507	2025-06-22 14:59:50.141492
35	2025-01-11	2025-06-22 14:59:50.060044	2025-06-22 14:59:50.172175
82	2025-02-24	2025-06-22 16:10:47.154489	2025-06-22 16:10:47.19532
4	2025-04-10	2025-06-22 14:53:28.235785	2025-06-22 14:53:28.330585
5	2025-04-11	2025-06-22 14:53:28.277481	2025-06-22 14:53:28.337907
6	2025-04-12	2025-06-22 14:53:28.308412	2025-06-22 14:53:28.387227
7	2025-04-13	2025-06-22 14:53:28.373803	2025-06-22 14:53:28.412507
37	2025-01-13	2025-06-22 14:59:50.116901	2025-06-22 14:59:50.239424
8	2025-04-14	2025-06-22 14:53:28.399768	2025-06-22 14:53:28.437103
9	2025-04-15	2025-06-22 14:53:28.427168	2025-06-22 14:53:28.458459
38	2025-01-14	2025-06-22 14:59:50.188398	2025-06-22 14:59:50.271326
10	2025-04-16	2025-06-22 14:53:28.448486	2025-06-22 14:53:28.484691
11	2025-04-17	2025-06-22 14:53:28.469548	2025-06-22 14:53:28.521025
65	2025-02-10	2025-06-22 16:10:26.029836	2025-06-22 16:10:26.762778
12	2025-04-18	2025-06-22 14:53:28.492189	2025-06-22 14:53:28.557732
39	2025-01-15	2025-06-22 14:59:50.235343	2025-06-22 14:59:50.307689
13	2025-04-19	2025-06-22 14:53:28.533935	2025-06-22 14:53:28.599255
14	2025-04-01	2025-06-22 14:53:28.570633	2025-06-22 14:53:28.632342
66	2025-02-11	2025-06-22 16:10:26.217481	2025-06-22 16:10:26.995486
15	2025-04-20	2025-06-22 14:53:28.605124	2025-06-22 14:53:28.695382
40	2025-01-16	2025-06-22 14:59:50.277693	2025-06-22 14:59:50.349718
16	2025-04-21	2025-06-22 14:53:28.642512	2025-06-22 14:53:28.714982
17	2025-04-22	2025-06-22 14:53:28.689082	2025-06-22 14:53:28.754142
18	2025-04-23	2025-06-22 14:53:28.72858	2025-06-22 14:53:28.794396
41	2025-01-17	2025-06-22 14:59:50.310902	2025-06-22 14:59:50.389865
19	2025-04-24	2025-06-22 14:53:28.777178	2025-06-22 14:53:28.850707
20	2025-04-25	2025-06-22 14:53:28.813544	2025-06-22 14:53:28.910673
95	2025-03-10	2025-06-22 16:17:17.672797	2025-06-22 16:17:17.981
21	2025-04-26	2025-06-22 14:53:28.877955	2025-06-22 14:53:28.99699
42	2025-01-18	2025-06-22 14:59:50.369858	2025-06-22 14:59:50.432026
22	2025-04-27	2025-06-22 14:53:28.935997	2025-06-22 14:53:29.064876
23	2025-04-28	2025-06-22 14:53:29.032761	2025-06-22 14:53:29.094256
24	2025-04-29	2025-06-22 14:53:29.074802	2025-06-22 14:53:29.129731
43	2025-01-19	2025-06-22 14:59:50.415685	2025-06-22 14:59:50.454263
25	2025-04-02	2025-06-22 14:53:29.100917	2025-06-22 14:53:29.186432
26	2025-04-30	2025-06-22 14:53:29.139601	2025-06-22 14:53:29.198059
83	2025-02-25	2025-06-22 16:10:47.184506	2025-06-22 16:10:47.237731
27	2025-04-03	2025-06-22 14:53:29.180332	2025-06-22 14:53:29.244748
44	2025-01-01	2025-06-22 14:59:50.438516	2025-06-22 14:59:50.513928
28	2025-04-04	2025-06-22 14:53:29.20685	2025-06-22 14:53:29.27395
29	2025-04-05	2025-06-22 14:53:29.245477	2025-06-22 14:53:29.304664
30	2025-04-06	2025-06-22 14:53:29.279579	2025-06-22 14:53:29.343347
45	2025-01-20	2025-06-22 14:59:50.475059	2025-06-22 14:59:50.538831
31	2025-04-07	2025-06-22 14:53:29.306637	2025-06-22 14:53:29.366131
32	2025-04-08	2025-06-22 14:53:29.328039	2025-06-22 14:53:29.40583
33	2025-04-09	2025-06-22 14:53:29.369713	2025-06-22 14:53:29.428741
46	2025-01-21	2025-06-22 14:59:50.512561	2025-06-22 14:59:50.602987
47	2025-01-22	2025-06-22 14:59:50.5482	2025-06-22 14:59:50.644313
48	2025-01-23	2025-06-22 14:59:50.584319	2025-06-22 14:59:50.693459
67	2025-02-10	2025-06-22 16:10:46.012758	2025-06-22 16:10:46.354094
49	2025-01-24	2025-06-22 14:59:50.651523	2025-06-22 14:59:50.707034
50	2025-01-25	2025-06-22 14:59:50.68165	2025-06-22 14:59:50.732172
51	2025-01-26	2025-06-22 14:59:50.719027	2025-06-22 14:59:50.774171
68	2025-02-11	2025-06-22 16:10:46.094082	2025-06-22 16:10:46.446183
52	2025-01-27	2025-06-22 14:59:50.74692	2025-06-22 14:59:50.795568
53	2025-01-28	2025-06-22 14:59:50.777514	2025-06-22 14:59:50.818904
70	2025-02-13	2025-06-22 16:10:46.252093	2025-06-22 16:10:46.552069
54	2025-01-29	2025-06-22 14:59:50.807358	2025-06-22 14:59:50.845077
84	2025-02-26	2025-06-22 16:10:47.204485	2025-06-22 16:10:47.267914
55	2025-01-02	2025-06-22 14:59:50.827666	2025-06-22 14:59:50.882051
69	2025-02-12	2025-06-22 16:10:46.163868	2025-06-22 16:10:46.569695
56	2025-01-30	2025-06-22 14:59:50.851389	2025-06-22 14:59:50.907501
57	2025-01-31	2025-06-22 14:59:50.880388	2025-06-22 14:59:50.955107
112	2025-03-24	2025-06-22 16:17:21.358646	2025-06-22 16:17:21.404625
58	2025-01-03	2025-06-22 14:59:50.924817	2025-06-22 14:59:50.998584
71	2025-02-14	2025-06-22 16:10:46.347592	2025-06-22 16:10:46.641696
59	2025-01-04	2025-06-22 14:59:50.967931	2025-06-22 14:59:51.021605
60	2025-01-05	2025-06-22 14:59:50.994121	2025-06-22 14:59:51.063215
72	2025-02-15	2025-06-22 16:10:46.477378	2025-06-22 16:10:46.727481
61	2025-01-06	2025-06-22 14:59:51.034686	2025-06-22 14:59:51.102527
85	2025-02-27	2025-06-22 16:10:47.23959	2025-06-22 16:10:47.287461
62	2025-01-07	2025-06-22 14:59:51.064962	2025-06-22 14:59:51.161548
73	2025-02-16	2025-06-22 16:10:46.595718	2025-06-22 16:10:46.753878
74	2025-02-17	2025-06-22 16:10:46.682542	2025-06-22 16:10:46.852775
86	2025-02-28	2025-06-22 16:10:47.263178	2025-06-22 16:10:47.329521
75	2025-02-18	2025-06-22 16:10:46.767362	2025-06-22 16:10:46.931447
104	2025-03-17	2025-06-22 16:17:21.153663	2025-06-22 16:17:21.20184
76	2025-02-19	2025-06-22 16:10:46.833888	2025-06-22 16:10:46.975954
87	2025-02-02	2025-06-22 16:10:47.288194	2025-06-22 16:10:47.34358
77	2025-02-01	2025-06-22 16:10:46.917535	2025-06-22 16:10:46.985397
78	2025-02-20	2025-06-22 16:10:46.958089	2025-06-22 16:10:47.032137
97	2025-03-10	2025-06-22 16:17:20.80293	2025-06-22 16:17:20.900402
79	2025-02-21	2025-06-22 16:10:46.999022	2025-06-22 16:10:47.100226
80	2025-02-22	2025-06-22 16:10:47.04155	2025-06-22 16:10:47.139303
88	2025-02-03	2025-06-22 16:10:47.317427	2025-06-22 16:10:47.36957
81	2025-02-23	2025-06-22 16:10:47.124846	2025-06-22 16:10:47.174123
98	2025-03-11	2025-06-22 16:17:20.876015	2025-06-22 16:17:20.948919
89	2025-02-04	2025-06-22 16:10:47.354612	2025-06-22 16:10:47.398902
90	2025-02-05	2025-06-22 16:10:47.377881	2025-06-22 16:10:47.421395
109	2025-03-21	2025-06-22 16:17:21.280531	2025-06-22 16:17:21.327393
91	2025-02-06	2025-06-22 16:10:47.404699	2025-06-22 16:10:47.447864
92	2025-02-07	2025-06-22 16:10:47.428857	2025-06-22 16:10:47.476765
93	2025-02-08	2025-06-22 16:10:47.459794	2025-06-22 16:10:47.518465
94	2025-02-09	2025-06-22 16:10:47.490589	2025-06-22 16:10:47.637024
105	2025-03-18	2025-06-22 16:17:21.17234	2025-06-22 16:17:21.231522
100	2025-03-13	2025-06-22 16:17:20.953277	2025-06-22 16:17:21.032045
99	2025-03-12	2025-06-22 16:17:20.923246	2025-06-22 16:17:21.11681
101	2025-03-14	2025-06-22 16:17:20.974257	2025-06-22 16:17:21.123262
102	2025-03-15	2025-06-22 16:17:21.032877	2025-06-22 16:17:21.144893
110	2025-03-22	2025-06-22 16:17:21.300521	2025-06-22 16:17:21.343946
103	2025-03-16	2025-06-22 16:17:21.124033	2025-06-22 16:17:21.165589
106	2025-03-19	2025-06-22 16:17:21.203752	2025-06-22 16:17:21.260599
107	2025-03-01	2025-06-22 16:17:21.22358	2025-06-22 16:17:21.271455
115	2025-03-27	2025-06-22 16:17:21.428962	2025-06-22 16:17:21.481241
108	2025-03-20	2025-06-22 16:17:21.249719	2025-06-22 16:17:21.294545
114	2025-03-26	2025-06-22 16:17:21.409827	2025-06-22 16:17:21.460439
111	2025-03-23	2025-06-22 16:17:21.340526	2025-06-22 16:17:21.375295
113	2025-03-25	2025-06-22 16:17:21.381852	2025-06-22 16:17:21.432636
116	2025-03-28	2025-06-22 16:17:21.45918	2025-06-22 16:17:21.506471
127	2025-03-09	2025-06-22 16:17:21.747128	2025-06-22 16:17:21.787451
120	2025-03-31	2025-06-22 16:17:21.556428	2025-06-22 16:17:21.597691
117	2025-03-29	2025-06-22 16:17:21.477159	2025-06-22 16:17:21.533372
118	2025-03-02	2025-06-22 16:17:21.508	2025-06-22 16:17:21.557025
119	2025-03-30	2025-06-22 16:17:21.532402	2025-06-22 16:17:21.569311
124	2025-03-06	2025-06-22 16:17:21.666621	2025-06-22 16:17:21.703483
121	2025-03-03	2025-06-22 16:17:21.58114	2025-06-22 16:17:21.624499
122	2025-03-04	2025-06-22 16:17:21.60792	2025-06-22 16:17:21.656957
123	2025-03-05	2025-06-22 16:17:21.633582	2025-06-22 16:17:21.68351
125	2025-03-07	2025-06-22 16:17:21.692413	2025-06-22 16:17:21.756133
126	2025-03-08	2025-06-22 16:17:21.721198	2025-06-22 16:17:21.764233
128	2025-05-10	2025-06-22 16:26:20.494823	2025-06-22 16:26:20.646787
129	2025-05-11	2025-06-22 16:26:20.567941	2025-06-22 16:26:20.609646
130	2025-05-12	2025-06-22 16:26:20.598149	2025-06-22 16:26:20.692486
131	2025-05-13	2025-06-22 16:26:20.669553	2025-06-22 16:26:20.724937
132	2025-05-14	2025-06-22 16:26:20.699949	2025-06-22 16:26:20.755028
133	2025-05-15	2025-06-22 16:26:20.721114	2025-06-22 16:26:20.774494
134	2025-05-16	2025-06-22 16:26:20.756372	2025-06-22 16:26:20.838637
135	2025-05-17	2025-06-22 16:26:20.782988	2025-06-22 16:26:20.92974
148	2025-05-29	2025-06-22 16:26:21.220958	2025-06-22 16:26:21.261921
149	2025-05-02	2025-06-22 16:26:21.247814	2025-06-22 16:26:21.286115
150	2025-05-30	2025-06-22 16:26:21.274188	2025-06-22 16:26:21.33329
151	2025-05-31	2025-06-22 16:26:21.295477	2025-06-22 16:26:21.34585
153	2025-05-04	2025-06-22 16:26:21.355073	2025-06-22 16:26:21.391584
154	2025-05-05	2025-06-22 16:26:21.380546	2025-06-22 16:26:21.421467
156	2025-05-07	2025-06-22 16:26:21.43083	2025-06-22 16:26:21.467852
158	2025-05-09	2025-06-22 16:26:21.477466	2025-06-22 16:26:21.536553
184	2025-06-05	2025-06-22 16:27:02.932116	2025-06-22 16:27:02.995106
136	2025-05-18	2025-06-22 16:26:20.869036	2025-06-22 16:26:20.966566
137	2025-05-19	2025-06-22 16:26:20.932027	2025-06-22 16:26:20.980908
210	2025-07-02	2025-06-22 16:31:27.134884	2025-06-22 16:31:27.19745
138	2025-05-01	2025-06-22 16:26:20.960194	2025-06-22 16:26:21.000686
139	2025-05-20	2025-06-22 16:26:20.985201	2025-06-22 16:26:21.025325
185	2025-06-06	2025-06-22 16:27:02.965124	2025-06-22 16:27:03.022246
140	2025-05-21	2025-06-22 16:26:21.010586	2025-06-22 16:26:21.048522
141	2025-05-22	2025-06-22 16:26:21.036841	2025-06-22 16:26:21.079969
186	2025-06-07	2025-06-22 16:27:02.994397	2025-06-22 16:27:03.043745
142	2025-05-23	2025-06-22 16:26:21.055789	2025-06-22 16:26:21.099487
143	2025-05-24	2025-06-22 16:26:21.080921	2025-06-22 16:26:21.150371
249	2025-08-08	2025-06-22 16:36:57.312032	2025-06-22 16:36:57.521376
144	2025-05-25	2025-06-22 16:26:21.10689	2025-06-22 16:26:21.157091
187	2025-06-08	2025-06-22 16:27:03.023929	2025-06-22 16:27:03.08904
145	2025-05-26	2025-06-22 16:26:21.141442	2025-06-22 16:26:21.183084
188	2025-06-09	2025-06-22 16:27:03.050655	2025-06-22 16:27:03.100152
146	2025-05-27	2025-06-22 16:26:21.164094	2025-06-22 16:26:21.224221
147	2025-05-28	2025-06-22 16:26:21.193386	2025-06-22 16:26:21.246197
152	2025-05-03	2025-06-22 16:26:21.325356	2025-06-22 16:26:21.364857
211	2025-07-30	2025-06-22 16:31:27.176181	2025-06-22 16:31:27.221598
155	2025-05-06	2025-06-22 16:26:21.401302	2025-06-22 16:26:21.441735
157	2025-05-08	2025-06-22 16:26:21.454574	2025-06-22 16:26:21.495704
189	2025-07-10	2025-06-22 16:31:26.488331	2025-06-22 16:31:26.529835
159	2025-06-10	2025-06-22 16:27:02.263853	2025-06-22 16:27:02.312816
160	2025-06-11	2025-06-22 16:27:02.287228	2025-06-22 16:27:02.343031
227	2025-08-17	2025-06-22 16:36:56.407511	2025-06-22 16:36:56.511839
161	2025-06-12	2025-06-22 16:27:02.310117	2025-06-22 16:27:02.358798
190	2025-07-11	2025-06-22 16:31:26.514235	2025-06-22 16:31:26.56518
162	2025-06-13	2025-06-22 16:27:02.341973	2025-06-22 16:27:02.388636
163	2025-06-14	2025-06-22 16:27:02.363453	2025-06-22 16:27:02.398627
212	2025-07-31	2025-06-22 16:31:27.203096	2025-06-22 16:31:27.253436
164	2025-06-15	2025-06-22 16:27:02.380133	2025-06-22 16:27:02.423488
165	2025-06-16	2025-06-22 16:27:02.404657	2025-06-22 16:27:02.44301
191	2025-07-12	2025-06-22 16:31:26.546677	2025-06-22 16:31:26.609928
166	2025-06-17	2025-06-22 16:27:02.427089	2025-06-22 16:27:02.474687
167	2025-06-18	2025-06-22 16:27:02.454574	2025-06-22 16:27:02.495359
192	2025-07-13	2025-06-22 16:31:26.576092	2025-06-22 16:31:26.621863
168	2025-06-19	2025-06-22 16:27:02.485527	2025-06-22 16:27:02.52643
169	2025-06-01	2025-06-22 16:27:02.506676	2025-06-22 16:27:02.568652
170	2025-06-20	2025-06-22 16:27:02.539039	2025-06-22 16:27:02.584012
171	2025-06-21	2025-06-22 16:27:02.557679	2025-06-22 16:27:02.602934
193	2025-07-14	2025-06-22 16:31:26.599702	2025-06-22 16:31:26.668721
172	2025-06-22	2025-06-22 16:27:02.594568	2025-06-22 16:27:02.634919
213	2025-07-03	2025-06-22 16:31:27.23321	2025-06-22 16:31:27.287739
173	2025-06-23	2025-06-22 16:27:02.619665	2025-06-22 16:27:02.666515
194	2025-07-15	2025-06-22 16:31:26.637615	2025-06-22 16:31:26.756046
174	2025-06-24	2025-06-22 16:27:02.641257	2025-06-22 16:27:02.690159
175	2025-06-25	2025-06-22 16:27:02.66737	2025-06-22 16:27:02.718012
176	2025-06-26	2025-06-22 16:27:02.698555	2025-06-22 16:27:02.760073
195	2025-07-16	2025-06-22 16:31:26.695799	2025-06-22 16:31:26.786268
177	2025-06-27	2025-06-22 16:27:02.736969	2025-06-22 16:27:02.78192
178	2025-06-28	2025-06-22 16:27:02.763391	2025-06-22 16:27:02.816838
179	2025-06-29	2025-06-22 16:27:02.800947	2025-06-22 16:27:02.841475
196	2025-07-17	2025-06-22 16:31:26.772115	2025-06-22 16:31:26.806613
238	2025-08-27	2025-06-22 16:36:56.990353	2025-06-22 16:36:57.048725
180	2025-06-02	2025-06-22 16:27:02.826326	2025-06-22 16:27:02.86582
181	2025-06-30	2025-06-22 16:27:02.853042	2025-06-22 16:27:02.893158
182	2025-06-03	2025-06-22 16:27:02.875643	2025-06-22 16:27:02.920815
214	2025-07-04	2025-06-22 16:31:27.264213	2025-06-22 16:31:27.319428
183	2025-06-04	2025-06-22 16:27:02.902726	2025-06-22 16:27:02.959216
228	2025-08-18	2025-06-22 16:36:56.459543	2025-06-22 16:36:56.570873
197	2025-07-18	2025-06-22 16:31:26.79519	2025-06-22 16:31:26.842904
215	2025-07-05	2025-06-22 16:31:27.301983	2025-06-22 16:31:27.346608
198	2025-07-19	2025-06-22 16:31:26.819773	2025-06-22 16:31:26.864815
199	2025-07-01	2025-06-22 16:31:26.842164	2025-06-22 16:31:26.885536
200	2025-07-20	2025-06-22 16:31:26.869256	2025-06-22 16:31:26.903729
216	2025-07-06	2025-06-22 16:31:27.324581	2025-06-22 16:31:27.363516
201	2025-07-21	2025-06-22 16:31:26.893575	2025-06-22 16:31:26.941592
202	2025-07-22	2025-06-22 16:31:26.913777	2025-06-22 16:31:26.95593
203	2025-07-23	2025-06-22 16:31:26.942732	2025-06-22 16:31:27.000587
217	2025-07-07	2025-06-22 16:31:27.343494	2025-06-22 16:31:27.39154
204	2025-07-24	2025-06-22 16:31:26.969123	2025-06-22 16:31:27.031328
205	2025-07-25	2025-06-22 16:31:27.001223	2025-06-22 16:31:27.034412
229	2025-08-19	2025-06-22 16:36:56.526191	2025-06-22 16:36:56.639682
206	2025-07-26	2025-06-22 16:31:27.021402	2025-06-22 16:31:27.070789
218	2025-07-08	2025-06-22 16:31:27.368348	2025-06-22 16:31:27.433809
207	2025-07-27	2025-06-22 16:31:27.049667	2025-06-22 16:31:27.092931
219	2025-07-09	2025-06-22 16:31:27.396141	2025-06-22 16:31:27.444648
208	2025-07-28	2025-06-22 16:31:27.074274	2025-06-22 16:31:27.135725
209	2025-07-29	2025-06-22 16:31:27.101299	2025-06-22 16:31:27.174962
245	2025-08-04	2025-06-22 16:36:57.186782	2025-06-22 16:36:57.232659
230	2025-08-01	2025-06-22 16:36:56.591274	2025-06-22 16:36:56.701804
239	2025-08-28	2025-06-22 16:36:57.027239	2025-06-22 16:36:57.068223
231	2025-08-20	2025-06-22 16:36:56.649262	2025-06-22 16:36:56.71861
220	2025-08-10	2025-06-22 16:36:55.132833	2025-06-22 16:36:55.889553
221	2025-08-11	2025-06-22 16:36:55.358787	2025-06-22 16:36:56.102893
223	2025-08-13	2025-06-22 16:36:55.782129	2025-06-22 16:36:56.126307
222	2025-08-12	2025-06-22 16:36:55.546255	2025-06-22 16:36:56.219692
224	2025-08-14	2025-06-22 16:36:55.954319	2025-06-22 16:36:56.257982
232	2025-08-21	2025-06-22 16:36:56.683519	2025-06-22 16:36:56.762491
225	2025-08-15	2025-06-22 16:36:56.150527	2025-06-22 16:36:56.396836
226	2025-08-16	2025-06-22 16:36:56.281132	2025-06-22 16:36:56.458212
240	2025-08-29	2025-06-22 16:36:57.054975	2025-06-22 16:36:57.09476
233	2025-08-22	2025-06-22 16:36:56.721078	2025-06-22 16:36:56.826012
234	2025-08-23	2025-06-22 16:36:56.782498	2025-06-22 16:36:56.914789
250	2025-08-09	2025-06-22 16:36:57.389364	2025-06-22 16:36:57.542488
235	2025-08-24	2025-06-22 16:36:56.828169	2025-06-22 16:36:56.941934
241	2025-08-02	2025-06-22 16:36:57.078331	2025-06-22 16:36:57.127586
236	2025-08-25	2025-06-22 16:36:56.90915	2025-06-22 16:36:56.986569
246	2025-08-05	2025-06-22 16:36:57.208612	2025-06-22 16:36:57.264862
237	2025-08-26	2025-06-22 16:36:56.956764	2025-06-22 16:36:57.021762
242	2025-08-30	2025-06-22 16:36:57.100297	2025-06-22 16:36:57.143755
243	2025-08-31	2025-06-22 16:36:57.132349	2025-06-22 16:36:57.17539
252	2025-09-11	2025-06-22 16:40:36.959531	2025-06-22 16:40:37.003355
244	2025-08-03	2025-06-22 16:36:57.158005	2025-06-22 16:36:57.210664
247	2025-08-06	2025-06-22 16:36:57.244215	2025-06-22 16:36:57.289352
248	2025-08-07	2025-06-22 16:36:57.26797	2025-06-22 16:36:57.340274
255	2025-09-14	2025-06-22 16:40:37.03404	2025-06-22 16:40:37.079692
264	2025-09-22	2025-06-22 16:40:37.326453	2025-06-22 16:40:37.362317
251	2025-09-10	2025-06-22 16:40:36.929482	2025-06-22 16:40:36.9701
253	2025-09-12	2025-06-22 16:40:36.983912	2025-06-22 16:40:37.025352
254	2025-09-13	2025-06-22 16:40:37.010013	2025-06-22 16:40:37.048208
265	2025-09-23	2025-06-22 16:40:37.344238	2025-06-22 16:40:37.385889
256	2025-09-15	2025-06-22 16:40:37.062578	2025-06-22 16:40:37.104638
257	2025-09-16	2025-06-22 16:40:37.085683	2025-06-22 16:40:37.130683
258	2025-09-17	2025-06-22 16:40:37.105461	2025-06-22 16:40:37.144517
259	2025-09-18	2025-06-22 16:40:37.129902	2025-06-22 16:40:37.190823
260	2025-09-19	2025-06-22 16:40:37.153447	2025-06-22 16:40:37.232822
261	2025-09-01	2025-06-22 16:40:37.194203	2025-06-22 16:40:37.298147
262	2025-09-20	2025-06-22 16:40:37.256804	2025-06-22 16:40:37.319902
263	2025-09-21	2025-06-22 16:40:37.298853	2025-06-22 16:40:37.350068
266	2025-09-24	2025-06-22 16:40:37.376047	2025-06-22 16:40:37.435561
267	2025-09-25	2025-06-22 16:40:37.39934	2025-06-22 16:40:37.470625
268	2025-09-26	2025-06-22 16:40:37.434689	2025-06-22 16:40:37.510114
272	2025-09-02	2025-06-22 16:40:37.553335	2025-06-22 16:40:37.603063
270	2025-09-28	2025-06-22 16:40:37.496113	2025-06-22 16:40:37.548002
276	2025-09-05	2025-06-22 16:40:37.65949	2025-06-22 16:40:37.69609
280	2025-09-09	2025-06-22 16:40:37.751846	2025-06-22 16:40:37.78868
269	2025-09-27	2025-06-22 16:40:37.471996	2025-06-22 16:40:37.517909
271	2025-09-29	2025-06-22 16:40:37.525883	2025-06-22 16:40:37.568457
273	2025-09-30	2025-06-22 16:40:37.576365	2025-06-22 16:40:37.625423
274	2025-09-03	2025-06-22 16:40:37.605904	2025-06-22 16:40:37.646946
275	2025-09-04	2025-06-22 16:40:37.632931	2025-06-22 16:40:37.682355
278	2025-09-07	2025-06-22 16:40:37.709504	2025-06-22 16:40:37.744533
279	2025-09-08	2025-06-22 16:40:37.728726	2025-06-22 16:40:37.782275
277	2025-09-06	2025-06-22 16:40:37.681647	2025-06-22 16:40:37.717598
320	2025-11-18	2025-06-22 17:04:59.365754	2025-06-22 17:04:59.403547
321	2025-11-19	2025-06-22 17:04:59.38003	2025-06-22 17:04:59.4287
281	2025-10-10	2025-06-22 17:00:27.077604	2025-06-22 17:00:27.250836
282	2025-10-11	2025-06-22 17:00:27.1532	2025-06-22 17:00:27.262923
283	2025-10-12	2025-06-22 17:00:27.164914	2025-06-22 17:00:27.282108
284	2025-10-13	2025-06-22 17:00:27.210144	2025-06-22 17:00:27.284006
346	2025-12-14	2025-06-22 17:07:35.725371	2025-06-22 17:07:35.765159
285	2025-10-14	2025-06-22 17:00:27.24902	2025-06-22 17:00:27.312035
322	2025-11-01	2025-06-22 17:04:59.408294	2025-06-22 17:04:59.451074
286	2025-10-15	2025-06-22 17:00:27.289199	2025-06-22 17:00:27.32656
287	2025-10-16	2025-06-22 17:00:27.313874	2025-06-22 17:00:27.351687
288	2025-10-17	2025-06-22 17:00:27.333704	2025-06-22 17:00:27.36871
289	2025-10-18	2025-06-22 17:00:27.346727	2025-06-22 17:00:27.39134
323	2025-11-20	2025-06-22 17:04:59.420019	2025-06-22 17:04:59.471103
290	2025-10-19	2025-06-22 17:00:27.380917	2025-06-22 17:00:27.412878
363	2025-12-02	2025-06-22 17:07:36.118202	2025-06-22 17:07:36.16908
291	2025-10-01	2025-06-22 17:00:27.406998	2025-06-22 17:00:27.440265
324	2025-11-21	2025-06-22 17:04:59.457435	2025-06-22 17:04:59.500223
292	2025-10-20	2025-06-22 17:00:27.427474	2025-06-22 17:00:27.461541
293	2025-10-21	2025-06-22 17:00:27.44432	2025-06-22 17:00:27.486696
347	2025-12-15	2025-06-22 17:07:35.74252	2025-06-22 17:07:35.792284
294	2025-10-22	2025-06-22 17:00:27.470164	2025-06-22 17:00:27.523788
325	2025-11-22	2025-06-22 17:04:59.480167	2025-06-22 17:04:59.520146
295	2025-10-23	2025-06-22 17:00:27.497403	2025-06-22 17:00:27.535512
296	2025-10-24	2025-06-22 17:00:27.520098	2025-06-22 17:00:27.560872
297	2025-10-25	2025-06-22 17:00:27.545263	2025-06-22 17:00:27.605147
326	2025-11-23	2025-06-22 17:04:59.504466	2025-06-22 17:04:59.552278
298	2025-10-26	2025-06-22 17:00:27.581491	2025-06-22 17:00:27.652855
299	2025-10-27	2025-06-22 17:00:27.621329	2025-06-22 17:00:27.709139
300	2025-10-28	2025-06-22 17:00:27.699322	2025-06-22 17:00:27.741464
327	2025-11-24	2025-06-22 17:04:59.527751	2025-06-22 17:04:59.587486
301	2025-10-29	2025-06-22 17:00:27.71743	2025-06-22 17:00:27.763127
302	2025-10-02	2025-06-22 17:00:27.747898	2025-06-22 17:00:27.78966
348	2025-12-16	2025-06-22 17:07:35.770495	2025-06-22 17:07:35.813147
303	2025-10-30	2025-06-22 17:00:27.774431	2025-06-22 17:00:27.80933
304	2025-10-31	2025-06-22 17:00:27.797642	2025-06-22 17:00:27.829281
328	2025-11-25	2025-06-22 17:04:59.564007	2025-06-22 17:04:59.607278
305	2025-10-03	2025-06-22 17:00:27.815643	2025-06-22 17:00:27.861055
306	2025-10-04	2025-06-22 17:00:27.843915	2025-06-22 17:00:27.883998
307	2025-10-05	2025-06-22 17:00:27.868778	2025-06-22 17:00:27.904087
329	2025-11-26	2025-06-22 17:04:59.589834	2025-06-22 17:04:59.644734
308	2025-10-06	2025-06-22 17:00:27.891788	2025-06-22 17:00:27.925644
309	2025-10-07	2025-06-22 17:00:27.913909	2025-06-22 17:00:27.945839
330	2025-11-27	2025-06-22 17:04:59.61278	2025-06-22 17:04:59.651882
310	2025-10-08	2025-06-22 17:00:27.936188	2025-06-22 17:00:27.970316
311	2025-10-09	2025-06-22 17:00:27.957076	2025-06-22 17:00:27.990969
331	2025-11-28	2025-06-22 17:04:59.638134	2025-06-22 17:04:59.668986
312	2025-11-10	2025-06-22 17:04:59.154343	2025-06-22 17:04:59.207805
349	2025-12-17	2025-06-22 17:07:35.791143	2025-06-22 17:07:35.844557
313	2025-11-11	2025-06-22 17:04:59.189949	2025-06-22 17:04:59.239585
314	2025-11-12	2025-06-22 17:04:59.205794	2025-06-22 17:04:59.263845
315	2025-11-13	2025-06-22 17:04:59.238826	2025-06-22 17:04:59.298018
332	2025-11-29	2025-06-22 17:04:59.663013	2025-06-22 17:04:59.695524
316	2025-11-14	2025-06-22 17:04:59.264285	2025-06-22 17:04:59.312723
317	2025-11-15	2025-06-22 17:04:59.293749	2025-06-22 17:04:59.353389
364	2025-12-30	2025-06-22 17:07:36.147566	2025-06-22 17:07:36.204965
318	2025-11-16	2025-06-22 17:04:59.318153	2025-06-22 17:04:59.360879
350	2025-12-18	2025-06-22 17:07:35.825257	2025-06-22 17:07:35.860887
319	2025-11-17	2025-06-22 17:04:59.342589	2025-06-22 17:04:59.3878
333	2025-11-02	2025-06-22 17:04:59.684226	2025-06-22 17:04:59.717455
334	2025-11-30	2025-06-22 17:04:59.705606	2025-06-22 17:04:59.744995
335	2025-11-03	2025-06-22 17:04:59.725321	2025-06-22 17:04:59.766604
351	2025-12-19	2025-06-22 17:07:35.846001	2025-06-22 17:07:35.883895
336	2025-11-04	2025-06-22 17:04:59.750678	2025-06-22 17:04:59.801387
337	2025-11-05	2025-06-22 17:04:59.771911	2025-06-22 17:04:59.812928
352	2025-12-01	2025-06-22 17:07:35.868656	2025-06-22 17:07:35.903269
338	2025-11-06	2025-06-22 17:04:59.798002	2025-06-22 17:04:59.853425
339	2025-11-07	2025-06-22 17:04:59.819828	2025-06-22 17:04:59.871911
353	2025-12-20	2025-06-22 17:07:35.882359	2025-06-22 17:07:35.919452
340	2025-11-08	2025-06-22 17:04:59.841533	2025-06-22 17:04:59.889222
341	2025-11-09	2025-06-22 17:04:59.869737	2025-06-22 17:04:59.915463
365	2025-12-31	2025-06-22 17:07:36.171285	2025-06-22 17:07:36.228644
342	2025-12-10	2025-06-22 17:07:35.615275	2025-06-22 17:07:35.67476
354	2025-12-21	2025-06-22 17:07:35.907491	2025-06-22 17:07:35.938026
343	2025-12-11	2025-06-22 17:07:35.65146	2025-06-22 17:07:35.704143
344	2025-12-12	2025-06-22 17:07:35.673927	2025-06-22 17:07:35.719383
345	2025-12-13	2025-06-22 17:07:35.703304	2025-06-22 17:07:35.743638
355	2025-12-22	2025-06-22 17:07:35.930906	2025-06-22 17:07:35.962164
366	2025-12-03	2025-06-22 17:07:36.207881	2025-06-22 17:07:36.262191
356	2025-12-23	2025-06-22 17:07:35.951982	2025-06-22 17:07:35.989235
357	2025-12-24	2025-06-22 17:07:35.969544	2025-06-22 17:07:36.005107
367	2025-12-04	2025-06-22 17:07:36.237426	2025-06-22 17:07:36.277652
358	2025-12-25	2025-06-22 17:07:35.982018	2025-06-22 17:07:36.03726
359	2025-12-26	2025-06-22 17:07:36.014842	2025-06-22 17:07:36.055706
360	2025-12-27	2025-06-22 17:07:36.040274	2025-06-22 17:07:36.076226
368	2025-12-05	2025-06-22 17:07:36.263728	2025-06-22 17:07:36.303155
361	2025-12-28	2025-06-22 17:07:36.060738	2025-06-22 17:07:36.106158
362	2025-12-29	2025-06-22 17:07:36.08721	2025-06-22 17:07:36.142761
369	2025-12-06	2025-06-22 17:07:36.288355	2025-06-22 17:07:36.337262
370	2025-12-07	2025-06-22 17:07:36.309746	2025-06-22 17:07:36.343312
371	2025-12-08	2025-06-22 17:07:36.329244	2025-06-22 17:07:36.36497
372	2025-12-09	2025-06-22 17:07:36.358869	2025-06-22 17:07:36.391836
\.


--
-- Data for Name: competitions; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.competitions (id, created_at, updated_at) FROM stdin;
1	2024-09-02 13:35:45.912663	2024-09-02 13:35:45.912663
2	2024-09-02 16:55:02.017398	2024-09-02 16:55:02.017398
3	2024-09-02 16:55:50.844435	2024-09-02 16:55:50.844435
4	2024-09-02 16:56:18.032907	2024-09-02 16:56:18.032907
5	2024-09-02 17:08:32.564	2024-09-02 17:08:32.564
6	2024-09-02 17:09:22.360217	2024-09-02 17:09:22.360217
7	2024-09-02 18:09:42.126939	2024-09-02 18:09:42.126939
8	2024-09-02 18:19:02.230119	2024-09-02 18:19:02.230119
11	2024-09-02 18:27:59.721902	2024-09-02 18:27:59.721902
12	2024-09-02 18:34:34.293715	2024-09-02 18:34:34.293715
13	2024-09-02 18:35:14.860483	2024-09-02 18:35:14.860483
14	2024-09-02 18:37:12.673913	2024-09-02 18:37:12.673913
15	2024-09-02 18:38:04.645978	2024-09-02 18:38:04.645978
16	2024-09-02 18:38:29.987914	2024-09-02 18:38:29.987914
17	2024-09-02 18:40:33.683892	2024-09-02 18:40:33.683892
18	2024-09-02 18:41:21.044368	2024-09-02 18:41:21.044368
19	2024-09-02 18:42:10.631649	2024-09-02 18:42:10.631649
20	2024-09-02 18:43:08.481165	2024-09-02 18:43:08.481165
21	2024-09-02 18:54:07.1177	2024-09-02 18:54:07.1177
22	2024-09-02 18:58:18.869146	2024-09-02 18:58:18.869146
23	2024-09-03 10:19:16.943681	2024-09-03 10:19:16.943681
24	2024-09-03 10:19:52.583951	2024-09-03 10:19:52.583951
25	2024-09-03 10:20:31.864552	2024-09-03 10:20:31.864552
26	2024-09-03 10:34:06.386668	2024-09-03 10:34:06.386668
27	2024-09-03 10:41:16.375169	2024-09-03 10:41:16.375169
28	2024-09-03 10:41:51.7059	2024-09-03 10:41:51.7059
29	2024-09-03 10:42:05.044615	2024-09-03 10:42:05.044615
30	2024-09-03 10:47:10.157381	2024-09-03 10:47:10.157381
31	2024-09-03 10:50:54.621889	2024-09-03 10:50:54.621889
32	2024-09-03 10:52:57.860514	2024-09-03 10:52:57.860514
33	2024-09-03 10:56:31.18929	2024-09-03 10:56:31.18929
34	2024-09-04 11:10:20.32044	2024-09-04 11:10:20.32044
\.


--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.matches (id, competition_id, winner, created_at, updated_at) FROM stdin;
1	1	draw	2024-09-02 13:37:20.714682	2024-09-02 13:37:20.714682
2	6	title_2	2024-09-02 17:21:40.222007	2024-09-02 17:21:40.222007
3	7	title	2024-09-02 18:09:42.203127	2024-09-02 18:09:42.203127
4	8	title_2	2024-09-02 18:19:02.277449	2024-09-02 18:19:02.277449
5	8	draw	2024-09-02 18:19:02.324155	2024-09-02 18:19:02.324155
6	8	draw	2024-09-02 18:19:02.327145	2024-09-02 18:19:02.327145
7	11	title	2024-09-02 18:27:59.784267	2024-09-02 18:27:59.784267
8	11	title	2024-09-02 18:27:59.812484	2024-09-02 18:27:59.812484
9	11	title_2	2024-09-02 18:27:59.814667	2024-09-02 18:27:59.814667
10	12	title_2	2024-09-02 18:34:34.36509	2024-09-02 18:34:34.36509
11	12	title	2024-09-02 18:34:34.459315	2024-09-02 18:34:34.459315
12	12	title_3	2024-09-02 18:34:34.464645	2024-09-02 18:34:34.464645
13	13	title	2024-09-02 18:35:14.928766	2024-09-02 18:35:14.928766
14	13	title	2024-09-02 18:35:14.935031	2024-09-02 18:35:14.935031
15	13	title_3	2024-09-02 18:35:14.939486	2024-09-02 18:35:14.939486
16	14	title_2	2024-09-02 18:37:12.753773	2024-09-02 18:37:12.753773
17	14	title_3	2024-09-02 18:37:12.878581	2024-09-02 18:37:12.878581
18	14	title_3	2024-09-02 18:37:12.88176	2024-09-02 18:37:12.88176
19	15	title_2	2024-09-02 18:38:04.72052	2024-09-02 18:38:04.72052
20	15	title_3	2024-09-02 18:38:04.817066	2024-09-02 18:38:04.817066
21	15	title_3	2024-09-02 18:38:04.828356	2024-09-02 18:38:04.828356
22	16	title	2024-09-02 18:38:30.055646	2024-09-02 18:38:30.055646
23	16	title_3	2024-09-02 18:38:30.059736	2024-09-02 18:38:30.059736
24	16	title_2	2024-09-02 18:38:30.064011	2024-09-02 18:38:30.064011
25	17	draw	2024-09-02 18:40:33.774206	2024-09-02 18:40:33.774206
26	17	title	2024-09-02 18:40:33.881298	2024-09-02 18:40:33.881298
27	17	title_2	2024-09-02 18:40:33.886358	2024-09-02 18:40:33.886358
28	18	title_2	2024-09-02 18:41:21.133835	2024-09-02 18:41:21.133835
29	18	draw	2024-09-02 18:41:21.245724	2024-09-02 18:41:21.245724
30	18	title	2024-09-02 18:41:21.254205	2024-09-02 18:41:21.254205
31	19	title_2	2024-09-02 18:42:10.75958	2024-09-02 18:42:10.75958
32	19	title_3	2024-09-02 18:42:10.876103	2024-09-02 18:42:10.876103
33	19	draw	2024-09-02 18:42:10.879998	2024-09-02 18:42:10.879998
34	20	title_2	2024-09-02 18:43:08.595593	2024-09-02 18:43:08.595593
35	20	title_3	2024-09-02 18:43:08.601424	2024-09-02 18:43:08.601424
36	20	title_3	2024-09-02 18:43:08.60718	2024-09-02 18:43:08.60718
37	21	title	2024-09-02 18:54:07.2177	2024-09-02 18:54:07.2177
38	21	draw	2024-09-02 18:54:07.331915	2024-09-02 18:54:07.331915
39	21	title_3	2024-09-02 18:54:07.335208	2024-09-02 18:54:07.335208
40	22	title_1	2024-09-02 18:58:18.935528	2024-09-02 18:58:18.935528
41	22	draw	2024-09-02 18:58:18.940556	2024-09-02 18:58:18.940556
42	22	draw	2024-09-02 18:58:18.942127	2024-09-02 18:58:18.942127
43	23	draw	2024-09-03 10:19:17.011632	2024-09-03 10:19:17.011632
44	24	draw	2024-09-03 10:19:52.679963	2024-09-03 10:19:52.679963
45	26	Traitor	2024-09-03 10:34:06.473335	2024-09-03 10:34:06.473335
46	27	Traitor	2024-09-03 10:41:16.463365	2024-09-03 10:41:16.463365
47	28	Traitor	2024-09-03 10:41:51.761888	2024-09-03 10:41:51.761888
48	29	Traitor	2024-09-03 10:42:05.0926	2024-09-03 10:42:05.0926
49	29	Traitor	2024-09-03 10:42:05.141959	2024-09-03 10:42:05.141959
50	29	Random	2024-09-03 10:42:05.143179	2024-09-03 10:42:05.143179
51	30	draw	2024-09-03 10:47:10.206348	2024-09-03 10:47:10.206348
52	31	Traitor	2024-09-03 10:50:54.684281	2024-09-03 10:50:54.684281
53	32	Traitor	2024-09-03 10:52:57.884098	2024-09-03 10:52:57.884098
54	33	draw	2024-09-03 10:56:31.222384	2024-09-03 10:56:31.222384
55	33	Traitor	2024-09-03 10:56:31.269187	2024-09-03 10:56:31.269187
56	33	Eye for an eye	2024-09-03 10:56:31.268428	2024-09-03 10:56:31.268428
57	34	Betray	2024-09-04 11:10:20.39909	2024-09-04 11:10:20.39909
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.schema_migrations (version) FROM stdin;
20240902130955
20240902131040
20240902131408
20240902131614
20250622105504
20250622105525
20250622110015
\.


--
-- Data for Name: strategies; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.strategies (id, title, description, code, created_at, updated_at) FROM stdin;
6	Betray	Strategy betrayed until opponent starts cooperate, and from this moment it also cooperate to the end of the game	moves_{{my_number}}.empty? ? false : moves_{{opponent_number}}.last == true	2024-09-03 09:58:22.902534	2024-09-03 09:58:22.902534
11	Random	Strategy randomly decide cooperate or betray	[rand(2)] == [1]	2024-09-03 10:16:40.468623	2024-09-03 10:16:40.468623
12	Eye for two eyes	Strategy always cooperate and can betray if opponent betrayed two tome in a row	moves_{{my_number}}.length <= 1 || (moves_{{opponent_number}}[-2] == false && moves_{{opponent_number}}[-1] == false) ? false : true	2024-09-03 10:17:54.602336	2024-09-03 10:17:54.602336
13	Traitor	Always betray	false	2024-09-03 10:33:02.617744	2024-09-03 10:33:02.617744
14	Saint	Always cooperate	true	2024-09-03 10:33:57.890945	2024-09-03 10:33:57.890945
15	Tester	Starts with betray but continue play with cooperation	moves_{{my_number}}.empty? ? false : true	2024-09-03 10:46:23.582627	2024-09-03 10:46:23.582627
16	Eye for an eye	Always cooperate and if opponent betrayed it also betrayed	moves_{{my_number}}.empty? ? true : !moves_{{opponent_number}}.last	2024-09-03 10:52:37.138595	2024-09-03 10:52:37.138595
17	Custom strategy	strategy every three turns check if opponent betray in previous turn, and if so betray him back 	moves_{{my_number}}.last != moves_{{opponent_number}}[-2] || moves_{{my_number}}.size % 3 == 0	2024-09-17 11:37:49.583529	2024-09-17 11:37:49.583529
\.


--
-- Data for Name: strategy_matches; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.strategy_matches (id, strategy_id, match_id, moves, points, created_at, updated_at) FROM stdin;
1	1	1	[true, false]	10	2024-09-02 13:48:13.784632	2024-09-02 13:48:13.784632
2	2	1	[true, false]	20	2024-09-02 13:51:59.479467	2024-09-02 13:51:59.479467
3	1	3	[false, false, false, false, false]	17	2024-09-02 18:09:42.23337	2024-09-02 18:09:42.23337
4	2	3	[true, false, false, true, true]	2	2024-09-02 18:09:42.251415	2024-09-02 18:09:42.251415
5	1	4	[false, true, true, false, false]	3	2024-09-02 18:19:02.290599	2024-09-02 18:19:02.290599
6	2	4	[false, false, false, false, false]	13	2024-09-02 18:19:02.30533	2024-09-02 18:19:02.30533
7	2	5	[false, false, false, true, true]	11	2024-09-02 18:19:02.333086	2024-09-02 18:19:02.333086
8	1	6	[true, false, true, false, false]	11	2024-09-02 18:19:02.341901	2024-09-02 18:19:02.341901
9	3	5	[true, false, true, false, false]	11	2024-09-02 18:19:02.346124	2024-09-02 18:19:02.346124
10	3	6	[false, true, false, true, false]	11	2024-09-02 18:19:02.348774	2024-09-02 18:19:02.348774
11	2	9	[false, false, true, true, false]	13	2024-09-02 18:27:59.860369	2024-09-02 18:27:59.860369
12	1	7	[true, false, true, true, false]	16	2024-09-02 18:27:59.873412	2024-09-02 18:27:59.873412
13	1	8	[false, false, true, false, false]	16	2024-09-02 18:27:59.876041	2024-09-02 18:27:59.876041
14	3	9	[true, false, true, true, false]	8	2024-09-02 18:27:59.892861	2024-09-02 18:27:59.892861
15	2	7	[true, true, false, true, true]	11	2024-09-02 18:27:59.900357	2024-09-02 18:27:59.900357
16	3	8	[true, true, false, false, true]	6	2024-09-02 18:27:59.904877	2024-09-02 18:27:59.904877
17	1	10	[true, false, true, true, true]	11	2024-09-02 18:34:34.400055	2024-09-02 18:34:34.400055
18	2	10	[false, true, true, true, false]	16	2024-09-02 18:34:34.426159	2024-09-02 18:34:34.426159
19	1	11	[false, true, true, true, false]	16	2024-09-02 18:34:34.475804	2024-09-02 18:34:34.475804
20	2	12	[true, false, true, false, false]	7	2024-09-02 18:34:34.482505	2024-09-02 18:34:34.482505
21	3	11	[true, true, true, false, true]	11	2024-09-02 18:34:34.497639	2024-09-02 18:34:34.497639
22	3	12	[false, false, false, true, false]	12	2024-09-02 18:34:34.502431	2024-09-02 18:34:34.502431
23	1	13	[true, false, false, true, false]	18	2024-09-02 18:35:14.965285	2024-09-02 18:35:14.965285
24	2	15	[true, true, true, true, false]	4	2024-09-02 18:35:14.974342	2024-09-02 18:35:14.974342
25	1	14	[true, true, true, false, false]	19	2024-09-02 18:35:14.975735	2024-09-02 18:35:14.975735
26	3	13	[true, true, true, false, true]	8	2024-09-02 18:35:14.98818	2024-09-02 18:35:14.98818
27	3	15	[false, false, false, true, false]	19	2024-09-02 18:35:14.991164	2024-09-02 18:35:14.991164
28	2	14	[true, true, true, true, true]	9	2024-09-02 18:35:14.996736	2024-09-02 18:35:14.996736
29	1	16	[true, true, true, true, true]	6	2024-09-02 18:37:12.7956	2024-09-02 18:37:12.7956
30	2	16	[false, true, true, false, false]	21	2024-09-02 18:37:12.835098	2024-09-02 18:37:12.835098
31	2	17	[true, true, true, true, false]	7	2024-09-02 18:37:12.896499	2024-09-02 18:37:12.896499
32	1	18	[false, true, false, false, false]	4	2024-09-02 18:37:12.905	2024-09-02 18:37:12.905
33	3	17	[false, true, false, true, false]	17	2024-09-02 18:37:12.92019	2024-09-02 18:37:12.92019
34	3	18	[false, false, false, false, false]	9	2024-09-02 18:37:12.925399	2024-09-02 18:37:12.925399
35	1	19	[true, false, false, true, false]	6	2024-09-02 18:38:04.761859	2024-09-02 18:38:04.761859
36	2	19	[true, false, false, false, false]	11	2024-09-02 18:38:04.788576	2024-09-02 18:38:04.788576
37	1	20	[true, true, false, false, true]	9	2024-09-02 18:38:04.834466	2024-09-02 18:38:04.834466
38	2	21	[false, false, true, false, true]	6	2024-09-02 18:38:04.846535	2024-09-02 18:38:04.846535
39	3	20	[false, true, false, true, false]	14	2024-09-02 18:38:04.8569	2024-09-02 18:38:04.8569
40	3	21	[false, false, false, false, true]	11	2024-09-02 18:38:04.867274	2024-09-02 18:38:04.867274
41	1	22	[true, true, false, false, false]	14	2024-09-02 18:38:30.073646	2024-09-02 18:38:30.073646
42	1	23	[false, false, true, false, true]	7	2024-09-02 18:38:30.082453	2024-09-02 18:38:30.082453
43	2	24	[false, false, false, true, false]	15	2024-09-02 18:38:30.083275	2024-09-02 18:38:30.083275
44	2	22	[false, true, true, true, false]	9	2024-09-02 18:38:30.091047	2024-09-02 18:38:30.091047
45	3	23	[true, false, false, false, false]	12	2024-09-02 18:38:30.093276	2024-09-02 18:38:30.093276
46	3	24	[false, false, true, true, true]	5	2024-09-02 18:38:30.099642	2024-09-02 18:38:30.099642
47	1	25	[false, true, true, false, false]	10	2024-09-02 18:40:33.813911	2024-09-02 18:40:33.813911
48	2	25	[false, true, false, true, false]	10	2024-09-02 18:40:33.846036	2024-09-02 18:40:33.846036
49	1	26	[false, false, false, true, false]	11	2024-09-02 18:40:33.900978	2024-09-02 18:40:33.900978
50	2	27	[false, true, false, false, false]	11	2024-09-02 18:40:33.908185	2024-09-02 18:40:33.908185
51	3	26	[true, false, false, true, false]	6	2024-09-02 18:40:33.925734	2024-09-02 18:40:33.925734
52	3	27	[false, true, false, true, false]	6	2024-09-02 18:40:33.930661	2024-09-02 18:40:33.930661
53	1	28	[false, true, true, false, true]	5	2024-09-02 18:41:21.177744	2024-09-02 18:41:21.177744
54	2	28	[false, false, false, false, true]	15	2024-09-02 18:41:21.215705	2024-09-02 18:41:21.215705
55	2	29	[false, true, true, true, true]	14	2024-09-02 18:41:21.267964	2024-09-02 18:41:21.267964
56	1	30	[true, false, true, false, false]	21	2024-09-02 18:41:21.275532	2024-09-02 18:41:21.275532
57	3	29	[true, true, true, true, false]	14	2024-09-02 18:41:21.292413	2024-09-02 18:41:21.292413
58	3	30	[true, true, true, true, true]	6	2024-09-02 18:41:21.299111	2024-09-02 18:41:21.299111
59	1	31	[false, false, true, true, true]	9	2024-09-02 18:42:10.807602	2024-09-02 18:42:10.807602
60	2	31	[false, true, false, false, true]	14	2024-09-02 18:42:10.844772	2024-09-02 18:42:10.844772
61	2	32	[true, true, false, true, false]	9	2024-09-02 18:42:10.896021	2024-09-02 18:42:10.896021
62	1	33	[true, false, true, false, false]	11	2024-09-02 18:42:10.902893	2024-09-02 18:42:10.902893
63	3	32	[false, true, false, false, true]	14	2024-09-02 18:42:10.918264	2024-09-02 18:42:10.918264
64	3	33	[false, false, false, true, true]	11	2024-09-02 18:42:10.923738	2024-09-02 18:42:10.923738
65	2	36	[true, false, false, true, true]	2	2024-09-02 18:43:08.641043	2024-09-02 18:43:08.641043
66	1	35	[true, true, true, false, false]	9	2024-09-02 18:43:08.65002	2024-09-02 18:43:08.65002
67	1	34	[true, true, true, false, true]	7	2024-09-02 18:43:08.650747	2024-09-02 18:43:08.650747
68	3	36	[false, false, false, false, false]	17	2024-09-02 18:43:08.662676	2024-09-02 18:43:08.662676
69	3	35	[true, false, false, false, true]	14	2024-09-02 18:43:08.665995	2024-09-02 18:43:08.665995
70	2	34	[true, true, false, false, false]	17	2024-09-02 18:43:08.672001	2024-09-02 18:43:08.672001
71	1	37	[false, false, false, false, true]	15	2024-09-02 18:54:07.2599	2024-09-02 18:54:07.2599
72	2	37	[true, false, false, true, true]	5	2024-09-02 18:54:07.288273	2024-09-02 18:54:07.288273
73	1	38	[false, false, false, false, true]	8	2024-09-02 18:54:07.348303	2024-09-02 18:54:07.348303
74	2	39	[false, true, false, true, true]	8	2024-09-02 18:54:07.355744	2024-09-02 18:54:07.355744
75	3	38	[true, false, false, false, false]	8	2024-09-02 18:54:07.370872	2024-09-02 18:54:07.370872
76	3	39	[false, true, false, false, true]	13	2024-09-02 18:54:07.378475	2024-09-02 18:54:07.378475
77	2	41	[true, false, true, true, false]	12	2024-09-02 18:58:18.97465	2024-09-02 18:58:18.97465
78	1	42	[true, false, true, true, true]	14	2024-09-02 18:58:18.983045	2024-09-02 18:58:18.983045
79	1	40	[false, false, true, false, false]	11	2024-09-02 18:58:18.986823	2024-09-02 18:58:18.986823
80	3	41	[false, true, true, true, false]	12	2024-09-02 18:58:18.999487	2024-09-02 18:58:18.999487
81	2	42	[true, true, true, false, true]	14	2024-09-02 18:58:19.002694	2024-09-02 18:58:19.002694
82	3	40	[false, false, true, true, false]	6	2024-09-02 18:58:19.00875	2024-09-02 18:58:19.00875
83	9	43	[]	5	2024-09-03 10:19:17.04999	2024-09-03 10:19:17.04999
84	12	43	[]	5	2024-09-03 10:19:17.063601	2024-09-03 10:19:17.063601
85	9	44	[]	10	2024-09-03 10:19:52.701949	2024-09-03 10:19:52.701949
86	10	44	[]	10	2024-09-03 10:19:52.714712	2024-09-03 10:19:52.714712
87	13	45	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:34:06.509161	2024-09-03 10:34:06.509161
88	14	45	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:34:06.529095	2024-09-03 10:34:06.529095
89	13	46	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:41:16.474549	2024-09-03 10:41:16.474549
90	14	46	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:41:16.480484	2024-09-03 10:41:16.480484
91	13	47	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:41:51.783341	2024-09-03 10:41:51.783341
92	14	47	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:41:51.795691	2024-09-03 10:41:51.795691
93	11	48	[true, true, false, false, false, true, false, true, true, false]	5	2024-09-03 10:42:05.101678	2024-09-03 10:42:05.101678
94	13	48	[false, false, false, false, false, false, false, false, false, false]	30	2024-09-03 10:42:05.107338	2024-09-03 10:42:05.107338
95	13	49	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:42:05.151332	2024-09-03 10:42:05.151332
96	11	50	[true, true, false, true, true, true, true, true, true, true]	32	2024-09-03 10:42:05.153261	2024-09-03 10:42:05.153261
97	14	49	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:42:05.159079	2024-09-03 10:42:05.159079
98	14	50	[true, true, true, true, true, true, true, true, true, true]	27	2024-09-03 10:42:05.165665	2024-09-03 10:42:05.165665
99	12	51	[false, false, false, false, false, false, false, false, false, false]	10	2024-09-03 10:47:10.227231	2024-09-03 10:47:10.227231
100	13	51	[false, false, false, false, false, false, false, false, false, false]	10	2024-09-03 10:47:10.23236	2024-09-03 10:47:10.23236
101	7	52	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:50:54.695499	2024-09-03 10:50:54.695499
102	13	52	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:50:54.70128	2024-09-03 10:50:54.70128
103	13	53	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:52:57.889464	2024-09-03 10:52:57.889464
104	16	53	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:52:57.89353	2024-09-03 10:52:57.89353
105	12	54	[false, false, false, false, false, false, false, false, false, false]	10	2024-09-03 10:56:31.235136	2024-09-03 10:56:31.235136
106	13	54	[false, false, false, false, false, false, false, false, false, false]	10	2024-09-03 10:56:31.242446	2024-09-03 10:56:31.242446
107	13	55	[false, false, false, false, false, false, false, false, false, false]	50	2024-09-03 10:56:31.274528	2024-09-03 10:56:31.274528
108	12	56	[false, false, true, true, true, false, false, true, true, true]	22	2024-09-03 10:56:31.275517	2024-09-03 10:56:31.275517
109	16	55	[true, true, true, true, true, true, true, true, true, true]	0	2024-09-03 10:56:31.282778	2024-09-03 10:56:31.282778
110	16	56	[true, true, true, false, false, false, true, true, false, false]	27	2024-09-03 10:56:31.284433	2024-09-03 10:56:31.284433
111	6	57	[false, true, true, false, false, true, true, false, false, true]	26	2024-09-04 11:10:20.438321	2024-09-04 11:10:20.438321
112	16	57	[true, true, false, false, true, true, false, false, true, true]	21	2024-09-04 11:10:20.470971	2024-09-04 11:10:20.470971
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 377, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 377, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 6, true);


--
-- Name: calendar_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.calendar_images_id_seq', 372, true);


--
-- Name: competitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.competitions_id_seq', 34, true);


--
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.matches_id_seq', 57, true);


--
-- Name: strategies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.strategies_id_seq', 17, true);


--
-- Name: strategy_matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.strategy_matches_id_seq', 112, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: calendar_images calendar_images_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.calendar_images
    ADD CONSTRAINT calendar_images_pkey PRIMARY KEY (id);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (id);


--
-- Name: matches matches_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: strategies strategies_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.strategies
    ADD CONSTRAINT strategies_pkey PRIMARY KEY (id);


--
-- Name: strategy_matches strategy_matches_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.strategy_matches
    ADD CONSTRAINT strategy_matches_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: alex
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: alex
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: alex
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: alex
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: alex
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_matches_on_competition_id; Type: INDEX; Schema: public; Owner: alex
--

CREATE INDEX index_matches_on_competition_id ON public.matches USING btree (competition_id);


--
-- Name: index_strategy_matches_on_match_id; Type: INDEX; Schema: public; Owner: alex
--

CREATE INDEX index_strategy_matches_on_match_id ON public.strategy_matches USING btree (match_id);


--
-- Name: index_strategy_matches_on_strategy_id; Type: INDEX; Schema: public; Owner: alex
--

CREATE INDEX index_strategy_matches_on_strategy_id ON public.strategy_matches USING btree (strategy_id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

