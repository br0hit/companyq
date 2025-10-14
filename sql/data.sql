--
-- PostgreSQL database dump
--

\restrict TDlhZhYAhnEUaNccKw4sy3VT2jGIvQYHW9BQ3yBttgBf6swEwRF4wdR9UE1J8Vk

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: company_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_questions (
    id integer NOT NULL,
    company_id integer,
    question_id integer,
    time_period character varying,
    frequency double precision
);


ALTER TABLE public.company_questions OWNER TO postgres;

--
-- Name: company_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.company_questions_id_seq OWNER TO postgres;

--
-- Name: company_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_questions_id_seq OWNED BY public.company_questions.id;


--
-- Name: question_topics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_topics (
    question_id integer,
    topic_id integer
);


ALTER TABLE public.question_topics OWNER TO postgres;

--
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    title character varying NOT NULL,
    difficulty character varying,
    acceptance_rate double precision,
    link character varying
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: topics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topics (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.topics OWNER TO postgres;

--
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.topics_id_seq OWNER TO postgres;

--
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: company_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_questions ALTER COLUMN id SET DEFAULT nextval('public.company_questions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: topics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (id, name) FROM stdin;
1	Accenture
2	Accolite
3	Acko
4	Activision
5	Adobe
6	Affirm
7	Agoda
8	Airbnb
9	Airbus SE
10	Airtel
11	Airwallex
12	Akamai
13	Akuna Capital
14	Alibaba
15	Altimetrik
16	Amadeus
17	Amazon
18	AMD
19	Amdocs
20	American Express
21	Analytics quotient
22	Anduril
23	Aon
24	Apollo.io
25	AppDynamics
26	AppFolio
27	Apple
28	Applied Intuition
29	AQR Capital Management
30	Arcesium
31	Arista Networks
32	Asana
33	athenahealth
34	Atlassian
35	Attentive
36	Audible
37	Aurora
38	Autodesk
39	Avalara
40	Avito
41	Axon
42	Baidu
43	Bank of America
44	Barclays
45	Bentley Systems
46	BharatPe
47	BILL Holdings
48	BitGo
49	BlackRock
50	BlackStone
51	blinkit
52	Blizzard
53	Block
54	Bloomberg
55	BNY Mellon
56	Bolt
57	Booking.com
58	Bosch
59	Box
60	BP
61	Braze
62	Brex
63	Bridgewater Associates
64	ByteDance
65	Cadence
66	Canonical
67	Capgemini
68	Capital One
69	Careem
70	CARS24
71	carwale
72	Cashfree
73	CEDCOSS
74	Celigo
75	Chewy
76	Chime
77	ciena
78	Circle
79	Cisco
80	Citadel
81	Citigroup
82	Citrix
83	Clari
84	Cleartrip
85	Cloudera
86	Cloudflare
87	CME Group
88	Coforge
89	Cognizant
90	Cohesity
91	Coinbase
92	Comcast
93	Commvault
94	Compass
95	Confluent
96	ConsultAdd
97	Coupang
98	Coursera
99	Coveo
100	CRED
101	Credit Karma
102	Criteo
103	CrowdStrike
104	Cruise
105	CTC
106	CureFit
107	CVENT
108	Darwinbox
109	Databricks
110	Datadog
111	Dataminr
112	DE Shaw
113	Delhivery
114	Deliveroo
115	Dell
116	Deloitte
117	DeltaX
118	Deutsche Bank
119	DevRev
120	Devsinc
121	Devtron
122	Directi
123	Disney
124	Docusign
125	DoorDash
126	DP world
127	Dream11
128	Dropbox
129	Druva
130	DRW
131	Dunzo
132	Duolingo
133	DXC Technology
134	EarnIn
135	eBay
136	Edelweiss Group
137	Electronic Arts
138	EPAM Systems
139	Epic Systems
140	Expedia
141	EY
142	FactSet
143	Faire
144	Fastenal
145	Fidelity
146	Fiverr
147	Flexera
148	Flexport
149	Flipkart
150	Fortinet
151	fourkites
152	FPT
153	Freecharge
154	FreshWorks
155	Gameskraft
156	Garmin
157	GE Digital
158	GE Healthcare
159	Geico
160	General Motors
161	Genpact
162	GoDaddy
163	Gojek
164	Goldman Sachs
165	Google
166	Grab
167	Grammarly
168	Graviton
169	Groupon
170	Groww
171	Grubhub
172	GSA Capital
173	GSN Games
174	Guidewire
175	Gusto
176	Harness
177	HashedIn
178	HCL
179	Hertz
180	Highspot
181	HiLabs
182	Hive
183	Hiver
184	Honeywell
185	Hotstar
186	Houzz
187	HP
188	HPE
189	HSBC
190	Huawei
191	Hubspot
192	Hudson River Trading
193	Hulu
194	IBM
195	IIT Bombay
196	IMC
197	Indeed
198	INDmoney
199	Info Edge
200	Informatica
201	Infosys
202	InMobi
203	instabase
204	Instacart
205	Intel
206	Intuit
207	IVP
208	IXL
209	J.P. Morgan
210	Jane Street
211	jio
212	josh technology
213	Jump Trading
214	Juniper Networks
215	Juspay
216	Kakao
217	Karat
218	KLA
219	Komprise
220	Larsen & Toubro
221	Lendingkart Technologies
222	Lenskart
223	Licious
224	Liftoff
225	LINE
226	LinkedIn
227	LiveRamp
228	Lowe's
229	LTI
230	Lucid
231	Luxoft
232	Lyft
233	Machine Zone
234	MakeMyTrip
235	Mapbox
236	MAQ Software
237	Mastercard
238	MathWorks
239	McKinsey
240	Media.net
241	Meesho
242	Mercari
243	Meta
244	Microsoft
245	Microstrategy
246	Millennium
247	Mindtickle
248	MindTree
249	Miro
250	Mitsogo
251	Mixpanel
252	Mobileye
253	Moengage
254	Moloco
255	MongoDB
256	Morgan Stanley
257	Mountblue
258	Moveworks
259	MSCI
260	Myntra
261	Nagarro
262	National Instruments
263	National Payments Corporation of India
264	Navan
265	Navi
266	NCR
267	NetApp
268	NetEase
269	Netflix
270	Netskope
271	Netsuite
272	Nextdoor
273	Niantic
274	Nielsen
275	Nike
276	NinjaCart
277	Nokia
278	Nordstrom
279	Notion
280	Nuro
281	Nutanix
282	Nvidia
283	Nykaa
284	Odoo
285	Okta
286	OKX
287	Ola Cabs
288	OpenAI
289	Opendoor
290	opentext
291	Optiver
292	Optum
293	Oracle
294	Otter.ai
295	oyo
296	Ozon
297	Palantir Technologies
298	Palo Alto Networks
299	Patreon
300	Paycom
301	PayPal
302	PayPay
303	Paytm
304	PayU
305	peak6
306	Peloton
307	persistent systems
308	PhonePe
309	Pinterest
310	Pocket Gems
311	Point72
312	Pony.ai
313	PornHub
314	Poshmark
315	Postmates
316	Publicis Sapient
317	PubMatic
318	Pure Storage
319	Pwc
320	QBurst
321	Qualcomm
322	Qualtrics
323	Quora
324	Rakuten
325	razorpay
326	RBC
327	redbus
328	Reddit
329	Remitly
330	Revolut
331	Riot Games
332	Ripple
333	Rippling
334	Rivian
335	Robinhood
336	Roblox
337	Roche
338	Rokt
339	Roku
340	Rubrik
341	Salesforce
342	Samsara
343	Samsung
344	SAP
345	Scale AI
346	Sentry
347	ServiceNow
348	ShareChat
349	Shopee
350	Shopify
351	Siemens
352	SIG
353	Sigmoid
354	Slice
355	smartnews
356	Smartsheet
357	Snap
358	Snapdeal
359	Snowflake
360	Societe Generale
361	SoFi
362	Softwire
363	Sony
364	SOTI
365	SoundHound
366	Splunk
367	Spotify
368	Sprinklr
369	Squarepoint Capital
370	Squarespace
371	StackAdapt
372	Stackline
373	Stripe
374	Sumo Logic
375	Swiggy
376	Synopsys
377	Tanium
378	Target
379	tcs
380	Tech Mahindra
381	Tejas Networks
382	Tekion
383	Tencent
384	Teradata
385	Tesco
386	Tesla
387	Texas Instruments
388	The Trade Desk
389	Thomson Reuters
390	thoughtspot
391	ThoughtWorks
392	ThousandEyes
393	Tiger Analytics
394	TikTok
395	Tinder
396	Tinkoff
397	Toast
398	Toptal
399	Tower Research Capital
400	Trexquant
401	Trilogy
402	Tripadvisor
403	Turing
404	Turo
405	Turvo
406	TuSimple
407	Twilio
408	Twitch
409	Two Sigma
410	Uber
411	UBS
412	UiPath
413	UKG
414	Unity
415	Upstart
416	Urban Company
417	USAA
418	Valve
419	Vanguard
420	Veeva Systems
421	Verily
422	Veritas
423	Verkada
424	Vimeo
425	Virtu Financial
426	Virtusa
427	Visa
428	VK
429	VMware
430	Walmart Labs
431	Warnermedia
432	WatchGuard
433	Wayfair
434	Waymo
435	Wealthfront
436	Wells Fargo
437	WeRide
438	Western Digital
439	Whatnot
440	WinZO
441	Wipro
442	Wise
443	Wish
444	Wissen Technology
445	Wix
446	Workday
447	Works Applications
448	WorldQuant
449	X
450	Yahoo
451	Yandex
452	Yelp
453	Yext
454	Zalando
455	Zendesk
456	Zenefits
457	Zepto
458	Zeta
459	zeta suite
460	Zillow
461	ZipRecruiter
462	Zluri
463	Zoho
464	Zomato
465	Zoom
466	Zoox
467	Zopsmart
468	ZS Associates
469	ZScaler
470	Zynga
\.


--
-- Data for Name: company_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_questions (id, company_id, question_id, time_period, frequency) FROM stdin;
1	1	1	2. Three Months	100
2	1	2	3. Six Months	100
3	1	3	3. Six Months	100
4	1	4	3. Six Months	87.1
5	1	5	3. Six Months	87.1
6	1	6	3. Six Months	87.1
7	1	7	3. Six Months	87.1
8	1	8	3. Six Months	87.1
9	1	9	3. Six Months	87.1
10	1	10	3. Six Months	87.1
11	1	1	3. Six Months	87.1
12	1	11	4. More Than Six Months	100
13	1	12	4. More Than Six Months	98
14	1	13	4. More Than Six Months	94.7
15	1	10	4. More Than Six Months	89.3
16	1	1	4. More Than Six Months	89.3
17	1	14	4. More Than Six Months	86.1
18	1	15	4. More Than Six Months	84.3
19	1	16	4. More Than Six Months	80.3
20	1	17	4. More Than Six Months	78.1
21	1	18	4. More Than Six Months	75.5
22	1	19	4. More Than Six Months	75.5
23	1	20	4. More Than Six Months	72.7
24	1	21	4. More Than Six Months	72.7
25	1	2	4. More Than Six Months	72.7
26	1	22	4. More Than Six Months	72.7
27	1	23	4. More Than Six Months	72.7
28	1	24	4. More Than Six Months	69.5
29	1	25	4. More Than Six Months	69.5
30	1	26	4. More Than Six Months	69.5
31	1	27	4. More Than Six Months	69.5
32	1	28	4. More Than Six Months	65.8
33	1	29	4. More Than Six Months	65.8
34	1	30	4. More Than Six Months	65.8
35	1	31	4. More Than Six Months	65.8
36	1	7	4. More Than Six Months	61.5
37	1	32	4. More Than Six Months	61.5
38	1	33	4. More Than Six Months	61.5
39	1	34	4. More Than Six Months	61.5
40	1	35	4. More Than Six Months	61.5
41	1	36	4. More Than Six Months	61.5
42	1	37	4. More Than Six Months	61.5
43	1	38	4. More Than Six Months	61.5
44	1	39	4. More Than Six Months	56.2
45	1	40	4. More Than Six Months	56.2
46	1	41	4. More Than Six Months	56.2
47	1	42	4. More Than Six Months	56.2
48	1	43	4. More Than Six Months	56.2
49	1	44	4. More Than Six Months	49.4
50	1	45	4. More Than Six Months	49.4
51	1	46	4. More Than Six Months	49.4
52	1	47	4. More Than Six Months	49.4
53	1	48	4. More Than Six Months	49.4
54	1	6	4. More Than Six Months	49.4
55	1	49	4. More Than Six Months	49.4
56	1	50	4. More Than Six Months	49.4
57	1	51	4. More Than Six Months	49.4
58	1	52	4. More Than Six Months	49.4
59	1	53	4. More Than Six Months	49.4
60	1	54	4. More Than Six Months	49.4
61	1	55	4. More Than Six Months	49.4
62	1	56	4. More Than Six Months	49.4
63	1	57	4. More Than Six Months	49.4
64	1	58	4. More Than Six Months	49.4
65	1	59	4. More Than Six Months	49.4
66	1	60	4. More Than Six Months	49.4
67	1	61	4. More Than Six Months	49.4
68	1	62	4. More Than Six Months	49.4
69	1	63	4. More Than Six Months	49.4
70	1	64	4. More Than Six Months	39.9
71	1	65	4. More Than Six Months	39.9
72	1	66	4. More Than Six Months	39.9
73	1	67	4. More Than Six Months	39.9
74	1	68	4. More Than Six Months	39.9
75	1	69	4. More Than Six Months	39.9
76	1	70	4. More Than Six Months	39.9
77	1	71	4. More Than Six Months	39.9
78	1	72	4. More Than Six Months	39.9
79	1	73	4. More Than Six Months	39.9
80	1	74	4. More Than Six Months	39.9
81	1	75	4. More Than Six Months	39.9
82	1	76	4. More Than Six Months	39.9
83	1	77	4. More Than Six Months	39.9
84	1	78	4. More Than Six Months	39.9
85	1	79	4. More Than Six Months	39.9
86	1	9	4. More Than Six Months	39.9
87	1	80	4. More Than Six Months	39.9
88	1	81	4. More Than Six Months	39.9
89	1	82	4. More Than Six Months	39.9
90	1	83	4. More Than Six Months	39.9
91	1	84	4. More Than Six Months	39.9
92	1	85	4. More Than Six Months	39.9
93	1	86	4. More Than Six Months	39.9
94	1	87	4. More Than Six Months	39.9
95	1	88	4. More Than Six Months	39.9
96	1	89	4. More Than Six Months	39.9
97	1	90	4. More Than Six Months	39.9
98	1	91	4. More Than Six Months	39.9
99	1	92	4. More Than Six Months	39.9
100	1	93	4. More Than Six Months	39.9
101	1	94	4. More Than Six Months	39.9
102	1	95	4. More Than Six Months	39.9
103	1	96	4. More Than Six Months	39.9
104	1	97	4. More Than Six Months	39.9
105	1	3	4. More Than Six Months	39.9
106	1	98	4. More Than Six Months	39.9
107	1	99	4. More Than Six Months	39.9
108	1	100	4. More Than Six Months	39.9
109	1	101	4. More Than Six Months	39.9
110	1	102	4. More Than Six Months	39.9
111	1	103	4. More Than Six Months	39.9
112	1	11	5. All	100
113	1	12	5. All	99
114	1	13	5. All	95.7
115	1	10	5. All	92
116	1	1	5. All	92
117	1	14	5. All	85.8
118	1	15	5. All	84
119	1	17	5. All	79.9
120	1	2	5. All	79.9
121	1	16	5. All	79.9
122	1	82	5. All	77.6
123	1	83	5. All	77.6
124	1	100	5. All	77.6
125	1	99	5. All	77.6
126	1	101	5. All	77.6
127	1	84	5. All	77.6
128	1	98	5. All	77.6
129	1	20	5. All	75
130	1	19	5. All	75
131	1	21	5. All	75
132	1	23	5. All	75
133	1	18	5. All	75
134	1	22	5. All	72.1
135	1	104	5. All	68.9
136	1	24	5. All	68.9
137	1	7	5. All	68.9
138	1	30	5. All	68.9
139	1	28	5. All	68.9
140	1	26	5. All	68.9
141	1	27	5. All	68.9
142	1	25	5. All	68.9
143	1	29	5. All	65.1
144	1	38	5. All	65.1
145	1	31	5. All	65.1
146	1	36	5. All	60.7
147	1	32	5. All	60.7
148	1	35	5. All	60.7
149	1	6	5. All	60.7
150	1	37	5. All	60.7
151	1	34	5. All	60.7
152	1	41	5. All	55.3
153	1	43	5. All	55.3
154	1	40	5. All	55.3
155	1	49	5. All	55.3
156	1	59	5. All	55.3
157	1	45	5. All	55.3
158	1	42	5. All	55.3
159	1	61	5. All	55.3
160	1	47	5. All	55.3
161	1	58	5. All	55.3
162	1	9	5. All	55.3
163	1	39	5. All	55.3
164	1	54	5. All	48.3
165	1	56	5. All	48.3
166	1	46	5. All	48.3
167	1	55	5. All	48.3
168	1	51	5. All	48.3
169	1	60	5. All	48.3
170	1	50	5. All	48.3
171	1	87	5. All	48.3
172	1	53	5. All	48.3
173	1	57	5. All	48.3
174	1	66	5. All	48.3
175	1	91	5. All	48.3
176	1	63	5. All	48.3
177	1	44	5. All	48.3
178	1	48	5. All	48.3
179	1	79	5. All	48.3
180	1	62	5. All	48.3
181	1	52	5. All	48.3
182	1	105	5. All	38.7
183	1	78	5. All	38.7
184	1	106	5. All	38.7
185	1	90	5. All	38.7
186	1	107	5. All	38.7
187	1	74	5. All	38.7
188	1	76	5. All	38.7
189	1	108	5. All	38.7
190	1	64	5. All	38.7
191	1	86	5. All	38.7
192	1	93	5. All	38.7
193	1	92	5. All	38.7
194	1	96	5. All	38.7
195	1	109	5. All	38.7
196	1	67	5. All	38.7
197	1	69	5. All	38.7
198	1	110	5. All	38.7
199	1	94	5. All	38.7
200	1	73	5. All	38.7
201	1	95	5. All	38.7
202	1	81	5. All	38.7
203	1	65	5. All	38.7
204	1	89	5. All	38.7
205	1	88	5. All	38.7
206	1	85	5. All	38.7
207	1	102	5. All	38.7
208	1	77	5. All	38.7
209	1	103	5. All	38.7
210	1	97	5. All	38.7
211	1	111	5. All	38.7
212	2	112	1. Thirty Days	100
213	2	112	2. Three Months	100
214	2	13	2. Three Months	90.2
215	2	112	3. Six Months	100
216	2	13	3. Six Months	83.2
217	2	112	4. More Than Six Months	100
218	2	10	4. More Than Six Months	95.2
219	2	13	4. More Than Six Months	81.7
220	2	31	4. More Than Six Months	81.7
221	2	19	4. More Than Six Months	81.7
222	2	30	4. More Than Six Months	70.9
223	2	18	4. More Than Six Months	70.9
224	2	113	4. More Than Six Months	70.9
225	2	114	4. More Than Six Months	70.9
226	2	40	4. More Than Six Months	70.9
227	2	115	4. More Than Six Months	70.9
228	2	116	4. More Than Six Months	70.9
229	2	117	4. More Than Six Months	70.9
230	2	118	4. More Than Six Months	70.9
231	2	1	4. More Than Six Months	70.9
232	2	112	5. All	100
233	2	115	5. All	87.5
234	2	13	5. All	72.8
235	2	10	5. All	72.8
236	2	30	5. All	62
237	2	114	5. All	62
238	2	31	5. All	62
239	2	19	5. All	62
240	2	113	5. All	53.4
241	2	18	5. All	53.4
242	2	40	5. All	53.4
243	2	117	5. All	53.4
244	2	116	5. All	53.4
245	2	118	5. All	53.4
246	2	35	5. All	53.4
247	2	119	5. All	53.4
248	2	1	5. All	53.4
249	3	120	3. Six Months	100
250	3	121	4. More Than Six Months	100
251	3	122	4. More Than Six Months	89.6
252	3	123	4. More Than Six Months	89.6
253	3	121	5. All	100
254	3	120	5. All	100
255	3	122	5. All	89.3
256	3	123	5. All	89.3
257	4	124	3. Six Months	100
258	4	125	4. More Than Six Months	100
259	4	125	5. All	100
260	4	126	5. All	65.9
261	4	124	5. All	65.9
262	5	127	2. Three Months	100
263	5	128	2. Three Months	92
264	5	75	2. Three Months	92
265	5	129	2. Three Months	80.8
266	5	130	2. Three Months	80.8
267	5	131	2. Three Months	80.8
268	5	132	2. Three Months	80.8
269	5	127	3. Six Months	100
270	5	75	3. Six Months	91.1
271	5	128	3. Six Months	91.1
272	5	132	3. Six Months	91.1
273	5	130	3. Six Months	91.1
274	5	106	3. Six Months	78.7
275	5	133	3. Six Months	78.7
276	5	134	3. Six Months	78.7
277	5	135	3. Six Months	78.7
278	5	129	3. Six Months	78.7
279	5	32	3. Six Months	78.7
280	5	1	3. Six Months	78.7
281	5	131	3. Six Months	78.7
282	5	7	3. Six Months	78.7
283	5	136	3. Six Months	78.7
284	5	13	4. More Than Six Months	100
285	5	18	4. More Than Six Months	80.1
286	5	28	4. More Than Six Months	75.8
287	5	20	4. More Than Six Months	74.8
288	5	77	4. More Than Six Months	74.3
289	5	113	4. More Than Six Months	73.2
290	5	23	4. More Than Six Months	72.7
291	5	30	4. More Than Six Months	72.1
292	5	14	4. More Than Six Months	69.6
293	5	65	4. More Than Six Months	69
294	5	31	4. More Than Six Months	67.6
295	5	34	4. More Than Six Months	66.1
296	5	35	4. More Than Six Months	65.3
297	5	10	4. More Than Six Months	65.3
298	5	37	4. More Than Six Months	64.4
299	5	19	4. More Than Six Months	64.4
300	5	87	4. More Than Six Months	64.4
301	5	57	4. More Than Six Months	64.4
302	5	22	4. More Than Six Months	62.7
303	5	17	4. More Than Six Months	62.7
304	5	137	4. More Than Six Months	61.7
305	5	138	4. More Than Six Months	60.7
306	5	139	4. More Than Six Months	58.5
307	5	68	4. More Than Six Months	57.3
308	5	36	4. More Than Six Months	57.3
309	5	33	4. More Than Six Months	56.1
310	5	54	4. More Than Six Months	56.1
311	5	58	4. More Than Six Months	53.3
312	5	49	4. More Than Six Months	53.3
313	5	140	4. More Than Six Months	53.3
314	5	118	4. More Than Six Months	51.7
315	5	106	4. More Than Six Months	51.7
316	5	67	4. More Than Six Months	51.7
317	5	79	4. More Than Six Months	50
318	5	141	4. More Than Six Months	50
319	5	142	4. More Than Six Months	50
320	5	143	4. More Than Six Months	50
321	5	2	4. More Than Six Months	50
322	5	144	4. More Than Six Months	50
323	5	145	4. More Than Six Months	50
324	5	146	4. More Than Six Months	48.2
325	5	147	4. More Than Six Months	46.1
326	5	73	4. More Than Six Months	46.1
327	5	148	4. More Than Six Months	46.1
328	5	149	4. More Than Six Months	46.1
329	5	150	4. More Than Six Months	46.1
330	5	117	4. More Than Six Months	46.1
331	5	63	4. More Than Six Months	43.8
332	5	151	4. More Than Six Months	43.8
333	5	152	4. More Than Six Months	43.8
334	5	153	4. More Than Six Months	43.8
335	5	154	4. More Than Six Months	43.8
336	5	155	4. More Than Six Months	43.8
337	5	156	4. More Than Six Months	41.2
338	5	157	4. More Than Six Months	41.2
339	5	158	4. More Than Six Months	41.2
340	5	159	4. More Than Six Months	41.2
341	5	160	4. More Than Six Months	41.2
342	5	161	4. More Than Six Months	41.2
343	5	134	4. More Than Six Months	38.3
344	5	162	4. More Than Six Months	38.3
345	5	163	4. More Than Six Months	38.3
346	5	164	4. More Than Six Months	38.3
347	5	165	4. More Than Six Months	38.3
348	5	166	4. More Than Six Months	38.3
349	5	167	4. More Than Six Months	38.3
350	5	168	4. More Than Six Months	34.8
351	5	169	4. More Than Six Months	34.8
352	5	170	4. More Than Six Months	34.8
353	5	171	4. More Than Six Months	34.8
354	5	172	4. More Than Six Months	34.8
355	5	173	4. More Than Six Months	34.8
356	5	174	4. More Than Six Months	30.6
357	5	175	4. More Than Six Months	30.6
358	5	176	4. More Than Six Months	30.6
359	5	177	4. More Than Six Months	30.6
360	5	178	4. More Than Six Months	30.6
361	5	179	4. More Than Six Months	30.6
362	5	66	4. More Than Six Months	30.6
363	5	92	4. More Than Six Months	30.6
364	5	180	4. More Than Six Months	30.6
365	5	50	4. More Than Six Months	30.6
366	5	181	4. More Than Six Months	30.6
367	5	74	4. More Than Six Months	30.6
368	5	182	4. More Than Six Months	25.2
369	5	136	4. More Than Six Months	25.2
370	5	183	4. More Than Six Months	25.2
371	5	184	4. More Than Six Months	25.2
372	5	185	4. More Than Six Months	25.2
373	5	186	4. More Than Six Months	18.2
374	5	187	4. More Than Six Months	18.2
375	5	188	4. More Than Six Months	18.2
376	5	189	4. More Than Six Months	18.2
377	5	190	4. More Than Six Months	18.2
378	5	191	4. More Than Six Months	18.2
379	5	192	4. More Than Six Months	18.2
380	5	193	4. More Than Six Months	18.2
381	5	194	4. More Than Six Months	18.2
382	5	195	4. More Than Six Months	18.2
383	5	196	4. More Than Six Months	18.2
384	5	13	5. All	100
385	5	18	5. All	79
386	5	28	5. All	78.6
387	5	77	5. All	77
388	5	30	5. All	75.7
389	5	20	5. All	74.3
390	5	113	5. All	72.2
391	5	23	5. All	71.6
392	5	34	5. All	70.5
393	5	10	5. All	69.9
394	5	65	5. All	68.6
395	5	14	5. All	68.6
396	5	31	5. All	66.6
397	5	37	5. All	64.3
398	5	35	5. All	64.3
399	5	19	5. All	64.3
400	5	87	5. All	63.4
401	5	57	5. All	63.4
402	5	17	5. All	62.6
403	5	22	5. All	62.6
404	5	137	5. All	61.7
405	5	138	5. All	59.7
406	5	139	5. All	57.5
407	5	36	5. All	57.5
408	5	68	5. All	56.3
409	5	33	5. All	55.1
410	5	54	5. All	55.1
411	5	106	5. All	53.7
412	5	58	5. All	52.3
413	5	140	5. All	52.3
414	5	49	5. All	52.3
415	5	118	5. All	50.7
416	5	143	5. All	50.7
417	5	67	5. All	50.7
418	5	142	5. All	49
419	5	141	5. All	49
420	5	79	5. All	49
421	5	146	5. All	49
422	5	2	5. All	49
423	5	144	5. All	49
424	5	145	5. All	49
425	5	117	5. All	47.2
426	5	73	5. All	47.2
427	5	63	5. All	45.2
428	5	150	5. All	45.2
429	5	147	5. All	45.2
430	5	148	5. All	45.2
431	5	149	5. All	45.2
432	5	158	5. All	42.9
433	5	154	5. All	42.9
434	5	155	5. All	42.9
435	5	159	5. All	42.9
436	5	152	5. All	42.9
437	5	151	5. All	42.9
438	5	134	5. All	42.9
439	5	153	5. All	42.9
440	5	161	5. All	40.3
441	5	156	5. All	40.3
442	5	157	5. All	40.3
443	5	160	5. All	40.3
444	5	164	5. All	40.3
445	5	162	5. All	40.3
446	5	165	5. All	37.3
447	5	166	5. All	37.3
448	5	163	5. All	37.3
449	5	167	5. All	37.3
450	5	168	5. All	33.9
451	5	172	5. All	33.9
452	5	136	5. All	33.9
453	5	171	5. All	33.9
454	5	170	5. All	33.9
455	5	169	5. All	33.9
456	5	173	5. All	33.9
457	5	74	5. All	33.9
458	5	66	5. All	29.7
459	5	180	5. All	29.7
460	5	92	5. All	29.7
461	5	178	5. All	29.7
462	5	174	5. All	29.7
463	5	50	5. All	29.7
464	5	181	5. All	29.7
465	5	179	5. All	29.7
466	5	177	5. All	29.7
467	5	176	5. All	29.7
468	5	175	5. All	29.7
469	5	190	5. All	24.4
470	5	185	5. All	24.4
471	5	186	5. All	24.4
472	5	184	5. All	24.4
473	5	191	5. All	24.4
474	5	183	5. All	24.4
475	5	194	5. All	17.4
476	5	193	5. All	17.4
477	5	196	5. All	17.4
478	5	197	5. All	17.4
479	5	188	5. All	17.4
480	5	187	5. All	17.4
481	5	189	5. All	17.4
482	5	192	5. All	17.4
483	5	195	5. All	17.4
484	6	198	2. Three Months	100
485	6	199	2. Three Months	90.4
486	6	198	3. Six Months	100
487	6	200	3. Six Months	81.4
488	6	201	3. Six Months	71.4
489	6	199	3. Six Months	71.4
490	6	202	3. Six Months	63.5
491	6	198	4. More Than Six Months	100
492	6	65	4. More Than Six Months	83.1
493	6	200	4. More Than Six Months	79.3
494	6	199	4. More Than Six Months	74.5
495	6	38	4. More Than Six Months	71.6
496	6	201	4. More Than Six Months	68.2
497	6	202	4. More Than Six Months	68.2
498	6	45	4. More Than Six Months	58.6
499	6	203	4. More Than Six Months	50.9
500	6	204	4. More Than Six Months	50.9
501	6	198	5. All	100
502	6	200	5. All	81
503	6	65	5. All	76.6
504	6	204	5. All	74.9
505	6	199	5. All	73
506	6	201	5. All	70.9
507	6	202	5. All	68.4
508	6	38	5. All	65.6
509	6	45	5. All	58.3
510	6	203	5. All	45.8
511	6	205	5. All	45.8
512	7	1	1. Thirty Days	100
513	7	206	2. Three Months	100
514	7	107	2. Three Months	100
515	7	28	2. Three Months	100
516	7	1	2. Three Months	100
517	7	1	3. Six Months	100
518	7	207	3. Six Months	94.4
519	7	107	3. Six Months	94.4
520	7	181	3. Six Months	76.9
521	7	206	3. Six Months	76.9
522	7	28	3. Six Months	76.9
523	7	208	3. Six Months	76.9
524	7	28	4. More Than Six Months	100
525	7	209	4. More Than Six Months	97.4
526	7	30	4. More Than Six Months	94.4
527	7	1	4. More Than Six Months	82.7
528	7	181	4. More Than Six Months	77.1
529	7	43	4. More Than Six Months	77.1
530	7	134	4. More Than Six Months	70
531	7	45	4. More Than Six Months	70
532	7	210	4. More Than Six Months	70
533	7	211	4. More Than Six Months	70
534	7	212	4. More Than Six Months	59.9
535	7	213	4. More Than Six Months	59.9
536	7	207	4. More Than Six Months	59.9
537	7	58	4. More Than Six Months	59.9
538	7	107	4. More Than Six Months	59.9
539	7	214	4. More Than Six Months	59.9
540	7	198	4. More Than Six Months	59.9
541	7	215	4. More Than Six Months	59.9
542	7	106	4. More Than Six Months	59.9
543	7	126	4. More Than Six Months	59.9
544	7	13	4. More Than Six Months	59.9
545	7	216	4. More Than Six Months	59.9
546	7	217	4. More Than Six Months	59.9
547	7	3	4. More Than Six Months	59.9
548	7	46	4. More Than Six Months	59.9
549	7	218	4. More Than Six Months	59.9
550	7	19	4. More Than Six Months	59.9
551	7	219	4. More Than Six Months	59.9
552	7	31	4. More Than Six Months	59.9
553	7	143	4. More Than Six Months	59.9
554	7	220	4. More Than Six Months	59.9
555	7	36	4. More Than Six Months	59.9
556	7	65	4. More Than Six Months	59.9
557	7	51	4. More Than Six Months	59.9
558	7	28	5. All	100
559	7	218	5. All	95.5
560	7	1	5. All	95.5
561	7	209	5. All	92.9
562	7	30	5. All	90
563	7	181	5. All	82.9
564	7	207	5. All	82.9
565	7	107	5. All	82.9
566	7	43	5. All	72.9
567	7	134	5. All	65.8
568	7	45	5. All	65.8
569	7	210	5. All	65.8
570	7	206	5. All	65.8
571	7	211	5. All	65.8
572	7	208	5. All	65.8
573	7	106	5. All	65.8
574	7	13	5. All	55.9
575	7	198	5. All	55.9
576	7	221	5. All	55.9
577	7	23	5. All	55.9
578	7	58	5. All	55.9
579	7	222	5. All	55.9
580	7	214	5. All	55.9
581	7	212	5. All	55.9
582	7	51	5. All	55.9
583	7	213	5. All	55.9
584	7	215	5. All	55.9
585	7	19	5. All	55.9
586	7	126	5. All	55.9
587	7	217	5. All	55.9
588	7	143	5. All	55.9
589	7	3	5. All	55.9
590	7	46	5. All	55.9
591	7	216	5. All	55.9
592	7	220	5. All	55.9
593	7	219	5. All	55.9
594	7	36	5. All	55.9
595	7	65	5. All	55.9
596	7	31	5. All	55.9
597	7	223	5. All	55.9
598	8	224	1. Thirty Days	100
599	8	168	2. Three Months	100
600	8	225	2. Three Months	74.9
601	8	224	2. Three Months	70.7
602	8	226	2. Three Months	57.6
603	8	227	2. Three Months	57.6
604	8	168	3. Six Months	100
605	8	225	3. Six Months	91.2
606	8	226	3. Six Months	80.3
607	8	228	3. Six Months	71.1
608	8	221	3. Six Months	71.1
609	8	224	3. Six Months	66.8
610	8	196	3. Six Months	61.2
611	8	229	3. Six Months	61.2
612	8	200	3. Six Months	61.2
613	8	230	3. Six Months	53.3
614	8	227	3. Six Months	53.3
615	8	231	3. Six Months	53.3
616	8	216	3. Six Months	53.3
617	8	230	4. More Than Six Months	100
618	8	196	4. More Than Six Months	97.8
619	8	225	4. More Than Six Months	95.3
620	8	134	4. More Than Six Months	87.5
621	8	228	4. More Than Six Months	87.5
622	8	232	4. More Than Six Months	85.5
623	8	168	4. More Than Six Months	83.4
624	8	227	4. More Than Six Months	81
625	8	233	4. More Than Six Months	78.4
626	8	234	4. More Than Six Months	78.4
627	8	231	4. More Than Six Months	78.4
628	8	113	4. More Than Six Months	75.4
629	8	235	4. More Than Six Months	75.4
630	8	236	4. More Than Six Months	62.9
631	8	226	4. More Than Six Months	62.9
632	8	237	4. More Than Six Months	56.5
633	8	238	4. More Than Six Months	56.5
634	8	239	4. More Than Six Months	56.5
635	8	229	4. More Than Six Months	56.5
636	8	13	4. More Than Six Months	56.5
637	8	34	4. More Than Six Months	56.5
638	8	81	4. More Than Six Months	56.5
639	8	94	4. More Than Six Months	56.5
640	8	240	4. More Than Six Months	47.5
641	8	241	4. More Than Six Months	47.5
642	8	242	4. More Than Six Months	47.5
643	8	243	4. More Than Six Months	47.5
644	8	244	4. More Than Six Months	47.5
645	8	245	4. More Than Six Months	47.5
646	8	194	4. More Than Six Months	47.5
647	8	246	4. More Than Six Months	47.5
648	8	247	4. More Than Six Months	47.5
649	8	248	4. More Than Six Months	47.5
650	8	249	4. More Than Six Months	47.5
651	8	250	4. More Than Six Months	47.5
652	8	62	4. More Than Six Months	47.5
653	8	31	4. More Than Six Months	47.5
654	8	12	4. More Than Six Months	47.5
655	8	43	4. More Than Six Months	47.5
656	8	45	4. More Than Six Months	47.5
657	8	251	4. More Than Six Months	47.5
658	8	58	4. More Than Six Months	47.5
659	8	200	4. More Than Six Months	47.5
660	8	252	4. More Than Six Months	47.5
661	8	253	4. More Than Six Months	47.5
662	8	254	4. More Than Six Months	47.5
663	8	255	4. More Than Six Months	47.5
664	8	256	4. More Than Six Months	47.5
665	8	145	4. More Than Six Months	47.5
666	8	257	4. More Than Six Months	47.5
667	8	258	4. More Than Six Months	47.5
668	8	259	4. More Than Six Months	47.5
669	8	260	4. More Than Six Months	47.5
670	8	261	4. More Than Six Months	47.5
671	8	262	4. More Than Six Months	47.5
672	8	168	5. All	100
673	8	230	5. All	94.5
674	8	225	5. All	94.5
675	8	228	5. All	89.9
676	8	196	5. All	87.2
677	8	227	5. All	84.1
678	8	231	5. All	82.9
679	8	234	5. All	80.4
680	8	113	5. All	80.4
681	8	233	5. All	80.4
682	8	235	5. All	79
683	8	226	5. All	74.3
684	8	232	5. All	74.3
685	8	134	5. All	74.3
686	8	236	5. All	74.3
687	8	34	5. All	72.4
688	8	239	5. All	72.4
689	8	256	5. All	72.4
690	8	94	5. All	72.4
691	8	237	5. All	72.4
692	8	13	5. All	72.4
693	8	81	5. All	72.4
694	8	62	5. All	70.4
695	8	252	5. All	70.4
696	8	255	5. All	70.4
697	8	31	5. All	70.4
698	8	246	5. All	70.4
699	8	145	5. All	70.4
700	8	251	5. All	70.4
701	8	259	5. All	70.4
702	8	247	5. All	70.4
703	8	242	5. All	70.4
704	8	258	5. All	70.4
705	8	257	5. All	70.4
706	8	253	5. All	70.4
707	8	245	5. All	70.4
708	8	12	5. All	70.4
709	8	260	5. All	70.4
710	8	243	5. All	70.4
711	8	194	5. All	70.4
712	8	254	5. All	70.4
713	8	261	5. All	70.4
714	8	43	5. All	70.4
715	8	240	5. All	70.4
716	8	241	5. All	70.4
717	8	229	5. All	59.5
718	8	221	5. All	55.6
719	8	200	5. All	55.6
720	8	224	5. All	50.8
721	8	238	5. All	44.8
722	8	58	5. All	36.3
723	8	248	5. All	36.3
724	8	250	5. All	36.3
725	8	262	5. All	36.3
726	8	249	5. All	36.3
727	8	244	5. All	36.3
728	8	216	5. All	36.3
729	8	45	5. All	36.3
730	9	18	4. More Than Six Months	100
731	9	263	4. More Than Six Months	100
732	9	264	4. More Than Six Months	100
733	9	265	4. More Than Six Months	100
734	9	264	5. All	100
735	9	265	5. All	100
736	9	263	5. All	100
737	9	18	5. All	65.7
738	9	13	5. All	65.7
739	10	49	3. Six Months	100
740	10	30	4. More Than Six Months	100
741	10	266	4. More Than Six Months	92.3
742	10	68	4. More Than Six Months	81.6
743	10	267	4. More Than Six Months	81.6
744	10	1	4. More Than Six Months	81.6
745	10	266	5. All	100
746	10	267	5. All	97.9
747	10	30	5. All	77.8
748	10	68	5. All	62.5
749	10	1	5. All	62.5
750	10	49	5. All	62.5
751	11	107	4. More Than Six Months	100
752	11	107	5. All	100
753	12	13	4. More Than Six Months	100
754	12	1	4. More Than Six Months	100
755	12	77	4. More Than Six Months	100
756	12	268	4. More Than Six Months	100
757	12	268	5. All	100
758	12	1	5. All	72.2
759	12	13	5. All	62.9
760	12	77	5. All	62.9
761	12	269	5. All	62.9
762	12	270	5. All	62.9
763	12	271	5. All	62.9
764	13	272	2. Three Months	100
765	13	272	3. Six Months	100
766	13	185	4. More Than Six Months	100
767	13	273	4. More Than Six Months	79
768	13	274	4. More Than Six Months	79
769	13	16	4. More Than Six Months	79
770	13	275	4. More Than Six Months	79
771	13	276	4. More Than Six Months	69
772	13	46	4. More Than Six Months	69
773	13	277	4. More Than Six Months	69
774	13	278	4. More Than Six Months	69
775	13	279	4. More Than Six Months	69
776	13	280	4. More Than Six Months	69
777	13	281	4. More Than Six Months	69
778	13	282	4. More Than Six Months	69
779	13	283	4. More Than Six Months	69
780	13	284	4. More Than Six Months	69
781	13	285	4. More Than Six Months	69
782	13	286	4. More Than Six Months	69
783	13	287	4. More Than Six Months	69
784	13	4	4. More Than Six Months	69
785	13	288	4. More Than Six Months	69
786	13	289	4. More Than Six Months	69
787	13	225	4. More Than Six Months	69
788	13	16	5. All	100
789	13	274	5. All	100
790	13	277	5. All	97.6
791	13	285	5. All	97.6
792	13	284	5. All	97.6
793	13	287	5. All	97.6
794	13	282	5. All	97.6
795	13	276	5. All	97.6
796	13	280	5. All	97.6
797	13	286	5. All	97.6
798	13	283	5. All	97.6
799	13	279	5. All	97.6
800	13	281	5. All	97.6
801	13	278	5. All	97.6
802	13	185	5. All	88.8
803	13	275	5. All	67.7
804	13	4	5. All	67.7
805	13	273	5. All	67.7
806	13	288	5. All	57.7
807	13	289	5. All	57.7
808	13	46	5. All	57.7
809	13	225	5. All	57.7
810	13	272	5. All	57.7
811	14	290	4. More Than Six Months	100
812	14	291	4. More Than Six Months	100
813	14	292	4. More Than Six Months	100
814	14	293	4. More Than Six Months	100
815	14	30	4. More Than Six Months	100
816	14	292	5. All	100
817	14	291	5. All	100
818	14	290	5. All	100
819	14	293	5. All	100
820	14	30	5. All	63.7
821	15	13	4. More Than Six Months	100
822	15	28	4. More Than Six Months	100
823	15	294	4. More Than Six Months	89
824	15	295	4. More Than Six Months	89
825	15	294	5. All	100
826	15	13	5. All	80.4
827	15	28	5. All	74.3
828	15	295	5. All	65.6
829	16	296	4. More Than Six Months	100
830	16	13	4. More Than Six Months	80.5
831	16	297	4. More Than Six Months	71.1
832	16	298	4. More Than Six Months	71.1
833	16	296	5. All	100
834	16	13	5. All	87
835	16	297	5. All	70.8
836	16	298	5. All	70.8
837	17	13	1. Thirty Days	100
838	17	1	1. Thirty Days	92.5
839	17	130	1. Thirty Days	92.5
840	17	4	1. Thirty Days	92.5
841	17	299	1. Thirty Days	92.5
842	17	300	1. Thirty Days	88.8
843	17	19	1. Thirty Days	86.7
844	17	34	1. Thirty Days	79.2
845	17	9	1. Thirty Days	79.2
846	17	30	1. Thirty Days	79.2
847	17	49	1. Thirty Days	79.2
848	17	113	1. Thirty Days	79.2
849	17	128	1. Thirty Days	76.2
850	17	145	1. Thirty Days	72.7
851	17	143	1. Thirty Days	72.7
852	17	58	1. Thirty Days	72.7
853	17	65	1. Thirty Days	72.7
854	17	301	1. Thirty Days	72.7
855	17	131	1. Thirty Days	72.7
856	17	61	1. Thirty Days	68.7
857	17	302	1. Thirty Days	68.7
858	17	31	1. Thirty Days	68.7
859	17	134	1. Thirty Days	68.7
860	17	43	1. Thirty Days	68.7
861	17	77	1. Thirty Days	68.7
862	17	303	1. Thirty Days	64
863	17	54	1. Thirty Days	64
864	17	222	1. Thirty Days	64
865	17	304	1. Thirty Days	64
866	17	68	1. Thirty Days	64
867	17	74	1. Thirty Days	64
868	17	45	1. Thirty Days	64
869	17	79	1. Thirty Days	64
870	17	305	1. Thirty Days	64
871	17	117	1. Thirty Days	64
872	17	87	1. Thirty Days	64
873	17	135	1. Thirty Days	64
874	17	198	1. Thirty Days	64
875	17	289	1. Thirty Days	64
876	17	306	1. Thirty Days	64
877	17	127	1. Thirty Days	58.2
878	17	106	1. Thirty Days	58.2
879	17	307	1. Thirty Days	58.2
880	17	3	1. Thirty Days	58.2
881	17	308	1. Thirty Days	58.2
882	17	309	1. Thirty Days	58.2
883	17	158	1. Thirty Days	58.2
884	17	209	1. Thirty Days	58.2
885	17	17	1. Thirty Days	58.2
886	17	14	1. Thirty Days	58.2
887	17	2	1. Thirty Days	58.2
888	17	173	1. Thirty Days	58.2
889	17	50	1. Thirty Days	58.2
890	17	108	1. Thirty Days	58.2
891	17	310	1. Thirty Days	50.9
892	17	7	1. Thirty Days	50.9
893	17	225	1. Thirty Days	50.9
894	17	62	1. Thirty Days	50.9
895	17	32	1. Thirty Days	50.9
896	17	196	1. Thirty Days	50.9
897	17	35	1. Thirty Days	50.9
898	17	311	1. Thirty Days	50.9
899	17	20	1. Thirty Days	50.9
900	17	254	1. Thirty Days	50.9
901	17	39	1. Thirty Days	50.9
902	17	85	1. Thirty Days	50.9
903	17	239	1. Thirty Days	50.9
904	17	51	1. Thirty Days	50.9
905	17	312	1. Thirty Days	50.9
906	17	313	1. Thirty Days	50.9
907	17	133	1. Thirty Days	50.9
908	17	144	1. Thirty Days	50.9
909	17	314	1. Thirty Days	50.9
910	17	315	1. Thirty Days	50.9
911	17	316	1. Thirty Days	50.9
912	17	139	1. Thirty Days	50.9
913	17	180	1. Thirty Days	50.9
914	17	167	1. Thirty Days	50.9
915	17	317	1. Thirty Days	50.9
916	17	202	1. Thirty Days	50.9
917	17	318	1. Thirty Days	50.9
918	17	319	1. Thirty Days	50.9
919	17	22	1. Thirty Days	40.6
920	17	320	1. Thirty Days	40.6
921	17	12	1. Thirty Days	40.6
922	17	194	1. Thirty Days	40.6
923	17	321	1. Thirty Days	40.6
924	17	322	1. Thirty Days	40.6
925	17	174	1. Thirty Days	40.6
926	17	323	1. Thirty Days	40.6
927	17	324	1. Thirty Days	40.6
928	17	179	1. Thirty Days	40.6
929	17	153	1. Thirty Days	40.6
930	17	325	1. Thirty Days	40.6
931	17	126	1. Thirty Days	40.6
932	17	197	1. Thirty Days	40.6
933	17	326	1. Thirty Days	40.6
934	17	327	1. Thirty Days	40.6
935	17	328	1. Thirty Days	40.6
936	17	329	1. Thirty Days	40.6
937	17	13	2. Three Months	100
938	17	130	2. Three Months	92.3
939	17	299	2. Three Months	91.3
940	17	4	2. Three Months	86.3
941	17	1	2. Three Months	84.1
942	17	113	2. Three Months	83.6
943	17	30	2. Three Months	79.8
944	17	58	2. Three Months	78
945	17	31	2. Three Months	75.3
946	17	34	2. Three Months	73.8
947	17	145	2. Three Months	73
948	17	2	2. Three Months	73
949	17	77	2. Three Months	71.3
950	17	128	2. Three Months	71.3
951	17	318	2. Three Months	71.3
952	17	65	2. Three Months	70.4
953	17	9	2. Three Months	70.4
954	17	330	2. Three Months	68.5
955	17	19	2. Three Months	68.5
956	17	315	2. Three Months	68.5
957	17	68	2. Three Months	66.4
958	17	331	2. Three Months	66.4
959	17	32	2. Three Months	66.4
960	17	43	2. Three Months	66.4
961	17	28	2. Three Months	65.3
962	17	301	2. Three Months	65.3
963	17	302	2. Three Months	65.3
964	17	10	2. Three Months	62.8
965	17	133	2. Three Months	62.8
966	17	304	2. Three Months	61.5
967	17	35	2. Three Months	61.5
968	17	198	2. Three Months	61.5
969	17	173	2. Three Months	61.5
970	17	117	2. Three Months	61.5
971	17	220	2. Three Months	60
972	17	14	2. Three Months	60
973	17	23	2. Three Months	60
974	17	305	2. Three Months	60
975	17	332	2. Three Months	58.5
976	17	137	2. Three Months	58.5
977	17	45	2. Three Months	58.5
978	17	54	2. Three Months	56.8
979	17	143	2. Three Months	56.8
980	17	131	2. Three Months	56.8
981	17	108	2. Three Months	55
982	17	222	2. Three Months	55
983	17	239	2. Three Months	55
984	17	20	2. Three Months	55
985	17	79	2. Three Months	55
986	17	326	2. Three Months	55
987	17	144	2. Three Months	53
988	17	22	2. Three Months	53
989	17	308	2. Three Months	53
990	17	87	2. Three Months	53
991	17	7	2. Three Months	53
992	17	139	2. Three Months	50.8
993	17	333	2. Three Months	50.8
994	17	18	2. Three Months	50.8
995	17	313	2. Three Months	50.8
996	17	334	2. Three Months	50.8
997	17	335	2. Three Months	50.8
998	17	106	2. Three Months	50.8
999	17	336	2. Three Months	50.8
1000	17	159	2. Three Months	50.8
1001	17	119	2. Three Months	50.8
1002	17	314	2. Three Months	48.4
1003	17	38	2. Three Months	48.4
1004	17	3	2. Three Months	48.4
1005	17	254	2. Three Months	48.4
1006	17	51	2. Three Months	48.4
1007	17	70	2. Three Months	48.4
1008	17	311	2. Three Months	45.6
1009	17	255	2. Three Months	45.6
1010	17	328	2. Three Months	45.6
1011	17	17	2. Three Months	45.6
1012	17	154	2. Three Months	45.6
1013	17	306	2. Three Months	42.4
1014	17	36	2. Three Months	42.4
1015	17	142	2. Three Months	42.4
1016	17	107	2. Three Months	42.4
1017	17	153	2. Three Months	42.4
1018	17	197	2. Three Months	42.4
1019	17	73	2. Three Months	42.4
1020	17	156	2. Three Months	42.4
1021	17	39	2. Three Months	38.6
1022	17	37	2. Three Months	38.6
1023	17	337	2. Three Months	38.6
1024	17	338	2. Three Months	38.6
1025	17	75	2. Three Months	38.6
1026	17	150	2. Three Months	34.1
1027	17	33	2. Three Months	34.1
1028	17	67	2. Three Months	34.1
1029	17	15	2. Three Months	34.1
1030	17	126	2. Three Months	34.1
1031	17	339	2. Three Months	34.1
1032	17	94	2. Three Months	34.1
1033	17	340	2. Three Months	28.4
1034	17	60	2. Three Months	28.4
1035	17	341	2. Three Months	28.4
1036	17	163	2. Three Months	20.7
1037	17	13	3. Six Months	100
1038	17	113	3. Six Months	87.4
1039	17	1	3. Six Months	83.5
1040	17	30	3. Six Months	82.5
1041	17	58	3. Six Months	80.5
1042	17	65	3. Six Months	79.9
1043	17	34	3. Six Months	77.7
1044	17	145	3. Six Months	77.3
1045	17	28	3. Six Months	74
1046	17	31	3. Six Months	73.6
1047	17	117	3. Six Months	73.1
1048	17	2	3. Six Months	73.1
1049	17	330	3. Six Months	71.8
1050	17	133	3. Six Months	71.8
1051	17	19	3. Six Months	70.4
1052	17	173	3. Six Months	69.9
1053	17	23	3. Six Months	69.9
1054	17	139	3. Six Months	69.4
1055	17	10	3. Six Months	68.9
1056	17	68	3. Six Months	68.4
1057	17	332	3. Six Months	66.1
1058	17	18	3. Six Months	64.8
1059	17	35	3. Six Months	63.5
1060	17	331	3. Six Months	62.1
1061	17	37	3. Six Months	61.3
1062	17	137	3. Six Months	60.5
1063	17	143	3. Six Months	60.5
1064	17	22	3. Six Months	60.5
1065	17	49	3. Six Months	60.5
1066	17	79	3. Six Months	59.7
1067	17	14	3. Six Months	58.9
1068	17	54	3. Six Months	58.9
1069	17	20	3. Six Months	58.9
1070	17	146	3. Six Months	58
1071	17	144	3. Six Months	58
1072	17	222	3. Six Months	58
1073	17	87	3. Six Months	57
1074	17	150	3. Six Months	56.1
1075	17	342	3. Six Months	56.1
1076	17	61	3. Six Months	56.1
1077	17	134	3. Six Months	56.1
1078	17	197	3. Six Months	55.1
1079	17	33	3. Six Months	55.1
1080	17	142	3. Six Months	55.1
1081	17	73	3. Six Months	54
1082	17	159	3. Six Months	54
1083	17	153	3. Six Months	52.8
1084	17	156	3. Six Months	52.8
1085	17	106	3. Six Months	51.6
1086	17	154	3. Six Months	50.3
1087	17	140	3. Six Months	50.3
1088	17	138	3. Six Months	50.3
1089	17	196	3. Six Months	49
1090	17	39	3. Six Months	49
1091	17	184	3. Six Months	49
1092	17	171	3. Six Months	49
1093	17	254	3. Six Months	49
1094	17	17	3. Six Months	49
1095	17	183	3. Six Months	49
1096	17	339	3. Six Months	49
1097	17	343	3. Six Months	47.5
1098	17	161	3. Six Months	47.5
1099	17	63	3. Six Months	47.5
1100	17	344	3. Six Months	45.9
1101	17	180	3. Six Months	45.9
1102	17	255	3. Six Months	45.9
1103	17	158	3. Six Months	44.2
1104	17	74	3. Six Months	44.2
1105	17	36	3. Six Months	44.2
1106	17	345	3. Six Months	42.3
1107	17	118	3. Six Months	42.3
1108	17	164	3. Six Months	42.3
1109	17	346	3. Six Months	42.3
1110	17	57	3. Six Months	42.3
1111	17	163	3. Six Months	42.3
1112	17	60	3. Six Months	40.2
1113	17	347	3. Six Months	40.2
1114	17	167	3. Six Months	40.2
1115	17	148	3. Six Months	40.2
1116	17	179	3. Six Months	37.9
1117	17	155	3. Six Months	37.9
1118	17	348	3. Six Months	37.9
1119	17	136	3. Six Months	35.3
1120	17	92	3. Six Months	35.3
1121	17	149	3. Six Months	35.3
1122	17	162	3. Six Months	32.4
1123	17	187	3. Six Months	32.4
1124	17	168	3. Six Months	32.4
1125	17	151	3. Six Months	32.4
1126	17	349	3. Six Months	28.9
1127	17	170	3. Six Months	28.9
1128	17	350	3. Six Months	24.7
1129	17	160	3. Six Months	24.7
1130	17	182	3. Six Months	24.7
1131	17	147	3. Six Months	24.7
1132	17	157	3. Six Months	19.6
1133	17	210	3. Six Months	19.6
1134	17	141	3. Six Months	19.6
1135	17	178	3. Six Months	13.1
1136	17	351	3. Six Months	13.1
1137	17	13	4. More Than Six Months	100
1138	17	113	4. More Than Six Months	84.5
1139	17	23	4. More Than Six Months	82.8
1140	17	30	4. More Than Six Months	81.3
1141	17	31	4. More Than Six Months	77.1
1142	17	19	4. More Than Six Months	76.9
1143	17	65	4. More Than Six Months	76.9
1144	17	35	4. More Than Six Months	76.4
1145	17	34	4. More Than Six Months	76.3
1146	17	28	4. More Than Six Months	75.6
1147	17	77	4. More Than Six Months	74.8
1148	17	58	4. More Than Six Months	73.2
1149	17	18	4. More Than Six Months	70.9
1150	17	2	4. More Than Six Months	69.1
1151	17	10	4. More Than Six Months	68.8
1152	17	139	4. More Than Six Months	68.5
1153	17	33	4. More Than Six Months	68.3
1154	17	17	4. More Than Six Months	67.8
1155	17	14	4. More Than Six Months	67.4
1156	17	22	4. More Than Six Months	67.4
1157	17	68	4. More Than Six Months	67.2
1158	17	145	4. More Than Six Months	66.5
1159	17	20	4. More Than Six Months	65.3
1160	17	137	4. More Than Six Months	64.3
1161	17	87	4. More Than Six Months	63.1
1162	17	117	4. More Than Six Months	63.1
1163	17	54	4. More Than Six Months	61.8
1164	17	153	4. More Than Six Months	61.8
1165	17	37	4. More Than Six Months	61.5
1166	17	144	4. More Than Six Months	60.1
1167	17	49	4. More Than Six Months	59.3
1168	17	173	4. More Than Six Months	59.1
1169	17	146	4. More Than Six Months	57.4
1170	17	154	4. More Than Six Months	57.1
1171	17	74	4. More Than Six Months	56.8
1172	17	156	4. More Than Six Months	56.8
1173	17	138	4. More Than Six Months	56.5
1174	17	255	4. More Than Six Months	56.5
1175	17	143	4. More Than Six Months	56.5
1176	17	73	4. More Than Six Months	56.2
1177	17	164	4. More Than Six Months	55.6
1178	17	150	4. More Than Six Months	55.2
1179	17	142	4. More Than Six Months	54.5
1180	17	79	4. More Than Six Months	53.5
1181	17	57	4. More Than Six Months	53.1
1182	17	184	4. More Than Six Months	52.7
1183	17	63	4. More Than Six Months	51.9
1184	17	134	4. More Than Six Months	51.9
1185	17	161	4. More Than Six Months	51.9
1186	17	196	4. More Than Six Months	51.5
1187	17	67	4. More Than Six Months	51.1
1188	17	147	4. More Than Six Months	51.1
1189	17	36	4. More Than Six Months	50.7
1190	17	180	4. More Than Six Months	50.7
1191	17	106	4. More Than Six Months	49.8
1192	17	140	4. More Than Six Months	47.9
1193	17	155	4. More Than Six Months	46.3
1194	17	151	4. More Than Six Months	46.3
1195	17	141	4. More Than Six Months	45.8
1196	17	171	4. More Than Six Months	45.8
1197	17	149	4. More Than Six Months	45.8
1198	17	172	4. More Than Six Months	45.8
1199	17	136	4. More Than Six Months	45.2
1200	17	157	4. More Than Six Months	44.6
1201	17	187	4. More Than Six Months	43.9
1202	17	170	4. More Than Six Months	43.9
1203	17	166	4. More Than Six Months	42.6
1204	17	179	4. More Than Six Months	42.6
1205	17	160	4. More Than Six Months	42.6
1206	17	152	4. More Than Six Months	42.6
1207	17	118	4. More Than Six Months	41.9
1208	17	345	4. More Than Six Months	41.9
1209	17	178	4. More Than Six Months	41.9
1210	17	66	4. More Than Six Months	41.2
1211	17	183	4. More Than Six Months	40.4
1212	17	167	4. More Than Six Months	40.4
1213	17	185	4. More Than Six Months	38.8
1214	17	165	4. More Than Six Months	38.8
1215	17	158	4. More Than Six Months	38.8
1216	17	50	4. More Than Six Months	38.8
1217	17	192	4. More Than Six Months	37.9
1218	17	352	4. More Than Six Months	37
1219	17	168	4. More Than Six Months	35
1220	17	177	4. More Than Six Months	33.9
1221	17	174	4. More Than Six Months	32.7
1222	17	162	4. More Than Six Months	32.7
1223	17	189	4. More Than Six Months	31.5
1224	17	181	4. More Than Six Months	30.1
1225	17	175	4. More Than Six Months	28.7
1226	17	353	4. More Than Six Months	25.4
1227	17	186	4. More Than Six Months	25.4
1228	17	191	4. More Than Six Months	25.4
1229	17	188	4. More Than Six Months	23.5
1230	17	354	4. More Than Six Months	23.5
1231	17	190	4. More Than Six Months	23.5
1232	17	176	4. More Than Six Months	18.9
1233	17	355	4. More Than Six Months	16.2
1234	17	356	4. More Than Six Months	16.2
1235	17	357	4. More Than Six Months	13.1
1236	17	358	4. More Than Six Months	9.5
1237	17	13	5. All	100
1238	17	113	5. All	85.9
1239	17	30	5. All	82.6
1240	17	23	5. All	81.4
1241	17	65	5. All	78.9
1242	17	34	5. All	77.9
1243	17	31	5. All	77.7
1244	17	19	5. All	77.1
1245	17	28	5. All	76.7
1246	17	58	5. All	75.8
1247	17	77	5. All	75.3
1248	17	35	5. All	75.1
1249	17	145	5. All	71.4
1250	17	2	5. All	71.1
1251	17	18	5. All	70.8
1252	17	10	5. All	69.8
1253	17	139	5. All	69.8
1254	17	68	5. All	68.6
1255	17	33	5. All	68.2
1256	17	22	5. All	67.2
1257	17	117	5. All	67.1
1258	17	14	5. All	66.9
1259	17	17	5. All	66.1
1260	17	137	5. All	66
1261	17	20	5. All	65.3
1262	17	54	5. All	63.9
1263	17	173	5. All	63.6
1264	17	87	5. All	63.2
1265	17	37	5. All	62.9
1266	17	153	5. All	61.5
1267	17	144	5. All	61.1
1268	17	49	5. All	61.1
1269	17	146	5. All	59.1
1270	17	143	5. All	59.1
1271	17	150	5. All	58.9
1272	17	138	5. All	58.7
1273	17	156	5. All	57.6
1274	17	154	5. All	57.3
1275	17	73	5. All	57.3
1276	17	79	5. All	56.9
1277	17	142	5. All	56.4
1278	17	74	5. All	56.1
1279	17	255	5. All	56.1
1280	17	134	5. All	54.8
1281	17	164	5. All	54.8
1282	17	180	5. All	54
1283	17	184	5. All	53.7
1284	17	161	5. All	52.8
1285	17	196	5. All	52.8
1286	17	57	5. All	52.8
1287	17	63	5. All	52.8
1288	17	106	5. All	52.2
1289	17	67	5. All	51.2
1290	17	36	5. All	51.2
1291	17	140	5. All	50.2
1292	17	147	5. All	49.1
1293	17	171	5. All	48.7
1294	17	155	5. All	46.6
1295	17	158	5. All	46.6
1296	17	50	5. All	45.7
1297	17	172	5. All	45.7
1298	17	149	5. All	45.7
1299	17	151	5. All	45.7
1300	17	183	5. All	45.3
1301	17	136	5. All	45.3
1302	17	345	5. All	44.3
1303	17	118	5. All	44.3
1304	17	179	5. All	43.8
1305	17	187	5. All	43.8
1306	17	141	5. All	43.8
1307	17	170	5. All	43.2
1308	17	152	5. All	43.2
1309	17	157	5. All	42.7
1310	17	167	5. All	42.7
1311	17	166	5. All	42.7
1312	17	160	5. All	41.6
1313	17	185	5. All	40.4
1314	17	178	5. All	39.7
1315	17	66	5. All	39.1
1316	17	165	5. All	37.6
1317	17	192	5. All	37.6
1318	17	168	5. All	36.9
1319	17	189	5. All	36.1
1320	17	352	5. All	35.3
1321	17	162	5. All	35.3
1322	17	181	5. All	35.3
1323	17	177	5. All	34.4
1324	17	175	5. All	32.6
1325	17	174	5. All	31.5
1326	17	353	5. All	30.5
1327	17	354	5. All	28.1
1328	17	191	5. All	28.1
1329	17	357	5. All	26.8
1330	17	188	5. All	26.8
1331	17	176	5. All	23.8
1332	17	186	5. All	23.8
1333	17	190	5. All	22.1
1334	17	356	5. All	20.3
1335	17	355	5. All	16
1336	17	358	5. All	13.4
1337	18	22	4. More Than Six Months	100
1338	18	54	4. More Than Six Months	100
1339	18	359	4. More Than Six Months	88
1340	18	10	4. More Than Six Months	88
1341	18	13	4. More Than Six Months	88
1342	18	30	4. More Than Six Months	88
1343	18	28	4. More Than Six Months	88
1344	18	108	4. More Than Six Months	88
1345	18	54	5. All	100
1346	18	22	5. All	100
1347	18	359	5. All	100
1348	18	13	5. All	100
1349	18	30	5. All	87.5
1350	18	10	5. All	87.5
1351	18	108	5. All	87.5
1352	18	326	5. All	87.5
1353	18	17	5. All	87.5
1354	18	58	5. All	87.5
1355	18	28	5. All	87.5
1356	19	360	3. Six Months	100
1357	19	206	4. More Than Six Months	100
1358	19	109	4. More Than Six Months	100
1359	19	361	4. More Than Six Months	100
1360	19	68	4. More Than Six Months	100
1361	19	362	4. More Than Six Months	100
1362	19	362	5. All	100
1363	19	360	5. All	100
1364	19	206	5. All	63.4
1365	19	109	5. All	63.4
1366	19	361	5. All	63.4
1367	19	68	5. All	63.4
1368	19	363	5. All	63.4
1369	20	15	3. Six Months	100
1370	20	13	3. Six Months	100
1371	20	1	3. Six Months	100
1372	20	364	4. More Than Six Months	100
1373	20	13	4. More Than Six Months	78.1
1374	20	365	4. More Than Six Months	78.1
1375	20	60	4. More Than Six Months	71.2
1376	20	366	4. More Than Six Months	71.2
1377	20	38	4. More Than Six Months	71.2
1378	20	28	4. More Than Six Months	71.2
1379	20	367	4. More Than Six Months	71.2
1380	20	368	4. More Than Six Months	71.2
1381	20	369	4. More Than Six Months	61.6
1382	20	370	4. More Than Six Months	61.6
1383	20	371	4. More Than Six Months	61.6
1384	20	372	4. More Than Six Months	61.6
1385	20	373	4. More Than Six Months	61.6
1386	20	374	4. More Than Six Months	61.6
1387	20	375	4. More Than Six Months	61.6
1388	20	376	4. More Than Six Months	61.6
1389	20	113	4. More Than Six Months	61.6
1390	20	377	4. More Than Six Months	61.6
1391	20	30	4. More Than Six Months	61.6
1392	20	365	5. All	100
1393	20	367	5. All	97.9
1394	20	371	5. All	95.5
1395	20	364	5. All	95.5
1396	20	374	5. All	95.5
1397	20	375	5. All	95.5
1398	20	373	5. All	95.5
1399	20	372	5. All	95.5
1400	20	370	5. All	95.5
1401	20	376	5. All	95.5
1402	20	369	5. All	95.5
1403	20	13	5. All	82.9
1404	20	28	5. All	72.9
1405	20	38	5. All	72.9
1406	20	368	5. All	65.8
1407	20	366	5. All	65.8
1408	20	60	5. All	65.8
1409	20	15	5. All	65.8
1410	20	1	5. All	65.8
1411	20	377	5. All	55.9
1412	20	113	5. All	55.9
1413	20	30	5. All	55.9
1414	20	140	5. All	55.9
1415	21	378	4. More Than Six Months	100
1416	21	379	4. More Than Six Months	100
1417	21	378	5. All	100
1418	21	379	5. All	100
1419	22	262	2. Three Months	100
1420	22	4	2. Three Months	92.5
1421	22	318	2. Three Months	92.5
1422	22	380	2. Three Months	81.9
1423	22	220	2. Three Months	81.9
1424	22	381	2. Three Months	81.9
1425	22	315	2. Three Months	81.9
1426	22	145	2. Three Months	81.9
1427	22	382	2. Three Months	81.9
1428	22	383	3. Six Months	100
1429	22	4	3. Six Months	89.9
1430	22	315	3. Six Months	77.4
1431	22	262	3. Six Months	77.4
1432	22	318	3. Six Months	71
1433	22	380	3. Six Months	71
1434	22	220	3. Six Months	61.9
1435	22	248	3. Six Months	61.9
1436	22	384	3. Six Months	61.9
1437	22	22	3. Six Months	61.9
1438	22	385	3. Six Months	61.9
1439	22	58	3. Six Months	61.9
1440	22	145	3. Six Months	61.9
1441	22	381	3. Six Months	61.9
1442	22	382	3. Six Months	61.9
1443	22	386	3. Six Months	61.9
1444	22	380	4. More Than Six Months	100
1445	22	65	4. More Than Six Months	100
1446	22	4	4. More Than Six Months	100
1447	22	387	4. More Than Six Months	92.8
1448	22	107	4. More Than Six Months	92.8
1449	22	386	4. More Than Six Months	92.8
1450	22	318	4. More Than Six Months	88.3
1451	22	220	4. More Than Six Months	82.8
1452	22	388	4. More Than Six Months	75.6
1453	22	384	4. More Than Six Months	75.6
1454	22	58	4. More Than Six Months	65.6
1455	22	389	4. More Than Six Months	65.6
1456	22	315	4. More Than Six Months	65.6
1457	22	3	4. More Than Six Months	65.6
1458	22	117	4. More Than Six Months	65.6
1459	22	390	4. More Than Six Months	65.6
1460	22	391	4. More Than Six Months	65.6
1461	22	308	4. More Than Six Months	65.6
1462	22	392	4. More Than Six Months	65.6
1463	22	94	4. More Than Six Months	65.6
1464	22	317	4. More Than Six Months	65.6
1465	22	4	5. All	100
1466	22	380	5. All	92.9
1467	22	383	5. All	92.9
1468	22	65	5. All	88.3
1469	22	318	5. All	85.6
1470	22	386	5. All	85.6
1471	22	387	5. All	82.5
1472	22	107	5. All	82.5
1473	22	315	5. All	79
1474	22	220	5. All	79
1475	22	384	5. All	74.8
1476	22	262	5. All	69.7
1477	22	58	5. All	69.7
1478	22	390	5. All	63.2
1479	22	391	5. All	63.2
1480	22	94	5. All	63.2
1481	22	388	5. All	63.2
1482	22	145	5. All	63.2
1483	22	31	5. All	53.9
1484	22	381	5. All	53.9
1485	22	135	5. All	53.9
1486	22	385	5. All	53.9
1487	22	3	5. All	53.9
1488	22	22	5. All	53.9
1489	22	248	5. All	53.9
1490	22	393	5. All	53.9
1491	22	317	5. All	53.9
1492	22	389	5. All	53.9
1493	22	117	5. All	53.9
1494	22	392	5. All	53.9
1495	22	308	5. All	53.9
1496	22	382	5. All	53.9
1497	23	394	4. More Than Six Months	100
1498	23	395	4. More Than Six Months	100
1499	23	396	4. More Than Six Months	100
1500	23	397	4. More Than Six Months	100
1501	23	396	5. All	100
1502	23	397	5. All	100
1503	23	394	5. All	88.5
1504	23	395	5. All	88.5
1505	24	134	4. More Than Six Months	100
1506	24	398	4. More Than Six Months	100
1507	24	326	4. More Than Six Months	83.9
1508	24	337	4. More Than Six Months	83.9
1509	24	398	5. All	100
1510	24	134	5. All	100
1511	24	326	5. All	93.2
1512	24	337	5. All	93.2
1513	25	399	4. More Than Six Months	100
1514	25	400	4. More Than Six Months	100
1515	25	400	5. All	100
1516	25	399	5. All	100
1517	26	198	4. More Than Six Months	100
1518	26	401	4. More Than Six Months	100
1519	26	198	5. All	100
1520	26	401	5. All	100
1521	26	402	5. All	100
1522	26	130	5. All	100
1523	27	130	1. Thirty Days	100
1524	27	1	1. Thirty Days	92.9
1525	27	128	1. Thirty Days	88.4
1526	27	222	1. Thirty Days	82.9
1527	27	18	1. Thirty Days	75.9
1528	27	2	1. Thirty Days	65.9
1529	27	403	1. Thirty Days	65.9
1530	27	108	1. Thirty Days	65.9
1531	27	145	1. Thirty Days	65.9
1532	27	4	1. Thirty Days	65.9
1533	27	54	1. Thirty Days	65.9
1534	27	404	1. Thirty Days	65.9
1535	27	58	1. Thirty Days	65.9
1536	27	31	1. Thirty Days	65.9
1537	27	130	2. Three Months	100
1538	27	1	2. Three Months	94.5
1539	27	405	2. Three Months	85.1
1540	27	406	2. Three Months	85.1
1541	27	222	2. Three Months	82.7
1542	27	58	2. Three Months	82.7
1543	27	18	2. Three Months	79.9
1544	27	128	2. Three Months	73.3
1545	27	407	2. Three Months	73.3
1546	27	303	2. Three Months	73.3
1547	27	4	2. Three Months	73.3
1548	27	199	2. Three Months	69
1549	27	2	2. Three Months	63.9
1550	27	248	2. Three Months	63.9
1551	27	408	2. Three Months	63.9
1552	27	13	2. Three Months	63.9
1553	27	60	2. Three Months	63.9
1554	27	108	2. Three Months	63.9
1555	27	144	2. Three Months	57.2
1556	27	403	2. Three Months	57.2
1557	27	289	2. Three Months	57.2
1558	27	113	2. Three Months	57.2
1559	27	409	2. Three Months	57.2
1560	27	49	2. Three Months	57.2
1561	27	23	2. Three Months	57.2
1562	27	166	2. Three Months	57.2
1563	27	53	2. Three Months	57.2
1564	27	229	2. Three Months	57.2
1565	27	315	2. Three Months	57.2
1566	27	333	2. Three Months	57.2
1567	27	410	2. Three Months	57.2
1568	27	3	2. Three Months	57.2
1569	27	402	2. Three Months	47.9
1570	27	318	2. Three Months	47.9
1571	27	137	2. Three Months	47.9
1572	27	63	2. Three Months	47.9
1573	27	145	2. Three Months	47.9
1574	27	336	2. Three Months	47.9
1575	27	301	2. Three Months	47.9
1576	27	27	2. Three Months	47.9
1577	27	22	2. Three Months	47.9
1578	27	32	2. Three Months	47.9
1579	27	133	2. Three Months	47.9
1580	27	54	2. Three Months	47.9
1581	27	404	2. Three Months	47.9
1582	27	140	2. Three Months	47.9
1583	27	411	2. Three Months	47.9
1584	27	19	2. Three Months	47.9
1585	27	20	2. Three Months	47.9
1586	27	221	2. Three Months	47.9
1587	27	332	2. Three Months	47.9
1588	27	33	2. Three Months	47.9
1589	27	302	2. Three Months	47.9
1590	27	249	2. Three Months	47.9
1591	27	6	2. Three Months	47.9
1592	27	412	2. Three Months	47.9
1593	27	43	2. Three Months	47.9
1594	27	413	2. Three Months	47.9
1595	27	94	2. Three Months	47.9
1596	27	12	2. Three Months	47.9
1597	27	202	2. Three Months	47.9
1598	27	31	2. Three Months	47.9
1599	27	130	3. Six Months	100
1600	27	1	3. Six Months	88.4
1601	27	128	3. Six Months	81.7
1602	27	335	3. Six Months	78.3
1603	27	13	3. Six Months	74.2
1604	27	58	3. Six Months	74.2
1605	27	405	3. Six Months	74.2
1606	27	303	3. Six Months	74.2
1607	27	144	3. Six Months	74.2
1608	27	406	3. Six Months	74.2
1609	27	65	3. Six Months	71.9
1610	27	15	3. Six Months	71.9
1611	27	4	3. Six Months	71.9
1612	27	222	3. Six Months	71.9
1613	27	60	3. Six Months	71.9
1614	27	18	3. Six Months	71.9
1615	27	22	3. Six Months	69.3
1616	27	108	3. Six Months	69.3
1617	27	338	3. Six Months	69.3
1618	27	412	3. Six Months	66.3
1619	27	23	3. Six Months	66.3
1620	27	407	3. Six Months	66.3
1621	27	326	3. Six Months	66.3
1622	27	199	3. Six Months	62.9
1623	27	3	3. Six Months	62.9
1624	27	49	3. Six Months	58.9
1625	27	30	3. Six Months	58.9
1626	27	414	3. Six Months	58.9
1627	27	229	3. Six Months	58.9
1628	27	27	3. Six Months	58.9
1629	27	2	3. Six Months	58.9
1630	27	408	3. Six Months	58.9
1631	27	53	3. Six Months	58.9
1632	27	315	3. Six Months	58.9
1633	27	133	3. Six Months	54
1634	27	248	3. Six Months	54
1635	27	415	3. Six Months	54
1636	27	249	3. Six Months	54
1637	27	333	3. Six Months	54
1638	27	31	3. Six Months	54
1639	27	202	3. Six Months	54
1640	27	113	3. Six Months	54
1641	27	410	3. Six Months	47.7
1642	27	332	3. Six Months	47.7
1643	27	289	3. Six Months	47.7
1644	27	416	3. Six Months	47.7
1645	27	417	3. Six Months	47.7
1646	27	32	3. Six Months	47.7
1647	27	140	3. Six Months	47.7
1648	27	12	3. Six Months	47.7
1649	27	411	3. Six Months	47.7
1650	27	33	3. Six Months	47.7
1651	27	409	3. Six Months	47.7
1652	27	318	3. Six Months	47.7
1653	27	166	3. Six Months	47.7
1654	27	145	3. Six Months	47.7
1655	27	19	3. Six Months	47.7
1656	27	158	3. Six Months	47.7
1657	27	28	3. Six Months	47.7
1658	27	81	3. Six Months	47.7
1659	27	302	3. Six Months	47.7
1660	27	6	3. Six Months	47.7
1661	27	242	3. Six Months	47.7
1662	27	301	3. Six Months	47.7
1663	27	17	3. Six Months	47.7
1664	27	220	3. Six Months	47.7
1665	27	403	3. Six Months	47.7
1666	27	314	3. Six Months	47.7
1667	27	126	3. Six Months	47.7
1668	27	68	3. Six Months	47.7
1669	27	63	3. Six Months	38.9
1670	27	404	3. Six Months	38.9
1671	27	54	3. Six Months	38.9
1672	27	221	3. Six Months	38.9
1673	27	37	3. Six Months	38.9
1674	27	418	3. Six Months	38.9
1675	27	336	3. Six Months	38.9
1676	27	117	3. Six Months	38.9
1677	27	419	3. Six Months	38.9
1678	27	137	3. Six Months	38.9
1679	27	420	3. Six Months	38.9
1680	27	170	3. Six Months	38.9
1681	27	43	3. Six Months	38.9
1682	27	34	3. Six Months	38.9
1683	27	421	3. Six Months	38.9
1684	27	94	3. Six Months	38.9
1685	27	234	3. Six Months	38.9
1686	27	255	3. Six Months	38.9
1687	27	168	3. Six Months	38.9
1688	27	422	3. Six Months	38.9
1689	27	340	3. Six Months	38.9
1690	27	20	3. Six Months	38.9
1691	27	423	3. Six Months	38.9
1692	27	346	3. Six Months	38.9
1693	27	337	3. Six Months	38.9
1694	27	424	3. Six Months	38.9
1695	27	413	3. Six Months	38.9
1696	27	402	3. Six Months	38.9
1697	27	425	3. Six Months	38.9
1698	27	13	4. More Than Six Months	100
1699	27	30	4. More Than Six Months	78.6
1700	27	31	4. More Than Six Months	77.5
1701	27	18	4. More Than Six Months	76.3
1702	27	77	4. More Than Six Months	74.1
1703	27	23	4. More Than Six Months	72.6
1704	27	65	4. More Than Six Months	72.1
1705	27	58	4. More Than Six Months	71.6
1706	27	14	4. More Than Six Months	70
1707	27	19	4. More Than Six Months	68.8
1708	27	113	4. More Than Six Months	68.8
1709	27	20	4. More Than Six Months	68.2
1710	27	10	4. More Than Six Months	67.5
1711	27	34	4. More Than Six Months	67.5
1712	27	28	4. More Than Six Months	66.9
1713	27	17	4. More Than Six Months	66.2
1714	27	37	4. More Than Six Months	66.2
1715	27	117	4. More Than Six Months	64.7
1716	27	22	4. More Than Six Months	64
1717	27	35	4. More Than Six Months	62.3
1718	27	54	4. More Than Six Months	62.3
1719	27	39	4. More Than Six Months	62.3
1720	27	144	4. More Than Six Months	62.3
1721	27	2	4. More Than Six Months	61.5
1722	27	68	4. More Than Six Months	60.6
1723	27	145	4. More Than Six Months	60.6
1724	27	67	4. More Than Six Months	58.6
1725	27	57	4. More Than Six Months	58.6
1726	27	147	4. More Than Six Months	57.6
1727	27	137	4. More Than Six Months	55.3
1728	27	172	4. More Than Six Months	54
1729	27	164	4. More Than Six Months	54
1730	27	33	4. More Than Six Months	54
1731	27	153	4. More Than Six Months	54
1732	27	87	4. More Than Six Months	52.7
1733	27	255	4. More Than Six Months	52.7
1734	27	166	4. More Than Six Months	49.7
1735	27	140	4. More Than Six Months	49.7
1736	27	139	4. More Than Six Months	49.7
1737	27	163	4. More Than Six Months	48
1738	27	142	4. More Than Six Months	48
1739	27	196	4. More Than Six Months	48
1740	27	156	4. More Than Six Months	48
1741	27	63	4. More Than Six Months	48
1742	27	49	4. More Than Six Months	46.2
1743	27	354	4. More Than Six Months	46.2
1744	27	180	4. More Than Six Months	46.2
1745	27	36	4. More Than Six Months	46.2
1746	27	146	4. More Than Six Months	46.2
1747	27	143	4. More Than Six Months	46.2
1748	27	73	4. More Than Six Months	46.2
1749	27	155	4. More Than Six Months	44.2
1750	27	160	4. More Than Six Months	44.2
1751	27	165	4. More Than Six Months	44.2
1752	27	149	4. More Than Six Months	44.2
1753	27	185	4. More Than Six Months	41.9
1754	27	158	4. More Than Six Months	41.9
1755	27	173	4. More Than Six Months	41.9
1756	27	74	4. More Than Six Months	41.9
1757	27	169	4. More Than Six Months	41.9
1758	27	151	4. More Than Six Months	39.3
1759	27	183	4. More Than Six Months	39.3
1760	27	138	4. More Than Six Months	39.3
1761	27	134	4. More Than Six Months	39.3
1762	27	92	4. More Than Six Months	39.3
1763	27	150	4. More Than Six Months	39.3
1764	27	184	4. More Than Six Months	39.3
1765	27	66	4. More Than Six Months	39.3
1766	27	161	4. More Than Six Months	36.4
1767	27	106	4. More Than Six Months	36.4
1768	27	345	4. More Than Six Months	36.4
1769	27	197	4. More Than Six Months	36.4
1770	27	179	4. More Than Six Months	36.4
1771	27	136	4. More Than Six Months	36.4
1772	27	194	4. More Than Six Months	32.9
1773	27	162	4. More Than Six Months	32.9
1774	27	174	4. More Than Six Months	32.9
1775	27	168	4. More Than Six Months	32.9
1776	27	154	4. More Than Six Months	32.9
1777	27	167	4. More Than Six Months	28.8
1778	27	152	4. More Than Six Months	28.8
1779	27	352	4. More Than Six Months	28.8
1780	27	190	4. More Than Six Months	28.8
1781	27	189	4. More Than Six Months	23.6
1782	27	175	4. More Than Six Months	23.6
1783	27	148	4. More Than Six Months	23.6
1784	27	79	4. More Than Six Months	23.6
1785	27	210	4. More Than Six Months	23.6
1786	27	157	4. More Than Six Months	23.6
1787	27	50	4. More Than Six Months	23.6
1788	27	186	4. More Than Six Months	23.6
1789	27	192	4. More Than Six Months	23.6
1790	27	170	4. More Than Six Months	16.7
1791	27	356	4. More Than Six Months	16.7
1792	27	188	4. More Than Six Months	16.7
1793	27	118	4. More Than Six Months	16.7
1794	27	390	4. More Than Six Months	16.7
1795	27	426	4. More Than Six Months	16.7
1796	27	178	4. More Than Six Months	16.7
1797	27	353	4. More Than Six Months	16.7
1798	27	13	5. All	100
1799	27	30	5. All	78.3
1800	27	18	5. All	77.6
1801	27	31	5. All	76.9
1802	27	77	5. All	75.8
1803	27	58	5. All	74.2
1804	27	65	5. All	74.2
1805	27	23	5. All	73.8
1806	27	113	5. All	73
1807	27	20	5. All	71.6
1808	27	144	5. All	71.6
1809	27	10	5. All	70.1
1810	27	19	5. All	68.5
1811	27	14	5. All	68
1812	27	54	5. All	67.4
1813	27	22	5. All	67.4
1814	27	34	5. All	66.8
1815	27	28	5. All	66.8
1816	27	17	5. All	66.2
1817	27	37	5. All	65.5
1818	27	117	5. All	64.2
1819	27	67	5. All	63.5
1820	27	2	5. All	63.5
1821	27	137	5. All	62.7
1822	27	68	5. All	61.2
1823	27	145	5. All	61.2
1824	27	35	5. All	60.4
1825	27	63	5. All	58.6
1826	27	57	5. All	56.7
1827	27	147	5. All	55.6
1828	27	33	5. All	55.6
1829	27	255	5. All	53.3
1830	27	164	5. All	53.3
1831	27	166	5. All	52.1
1832	27	153	5. All	52.1
1833	27	172	5. All	52.1
1834	27	140	5. All	52.1
1835	27	92	5. All	52.1
1836	27	197	5. All	52.1
1837	27	49	5. All	52.1
1838	27	87	5. All	50.8
1839	27	196	5. All	47.8
1840	27	142	5. All	47.8
1841	27	139	5. All	47.8
1842	27	156	5. All	46.1
1843	27	163	5. All	46.1
1844	27	158	5. All	46.1
1845	27	180	5. All	46.1
1846	27	146	5. All	46.1
1847	27	73	5. All	44.3
1848	27	36	5. All	44.3
1849	27	354	5. All	44.3
1850	27	143	5. All	44.3
1851	27	173	5. All	42.2
1852	27	74	5. All	42.2
1853	27	155	5. All	42.2
1854	27	149	5. All	42.2
1855	27	165	5. All	42.2
1856	27	160	5. All	42.2
1857	27	169	5. All	40
1858	27	138	5. All	40
1859	27	185	5. All	40
1860	27	66	5. All	37.4
1861	27	184	5. All	37.4
1862	27	151	5. All	37.4
1863	27	168	5. All	37.4
1864	27	183	5. All	37.4
1865	27	150	5. All	37.4
1866	27	134	5. All	37.4
1867	27	161	5. All	34.5
1868	27	136	5. All	34.5
1869	27	345	5. All	34.5
1870	27	106	5. All	34.5
1871	27	154	5. All	34.5
1872	27	179	5. All	34.5
1873	27	162	5. All	31.1
1874	27	194	5. All	31.1
1875	27	174	5. All	31.1
1876	27	50	5. All	27
1877	27	167	5. All	27
1878	27	170	5. All	27
1879	27	190	5. All	27
1880	27	152	5. All	27
1881	27	186	5. All	27
1882	27	352	5. All	27
1883	27	189	5. All	21.9
1884	27	148	5. All	21.9
1885	27	192	5. All	21.9
1886	27	191	5. All	21.9
1887	27	157	5. All	21.9
1888	27	79	5. All	21.9
1889	27	356	5. All	21.9
1890	27	175	5. All	21.9
1891	27	118	5. All	15.2
1892	27	178	5. All	15.2
1893	27	181	5. All	15.2
1894	27	353	5. All	15.2
1895	27	188	5. All	15.2
1896	27	187	5. All	15.2
1897	27	390	5. All	15.2
1898	28	427	1. Thirty Days	100
1899	28	428	2. Three Months	100
1900	28	427	2. Three Months	95
1901	28	49	2. Three Months	88.5
1902	28	429	2. Three Months	79.3
1903	28	428	3. Six Months	100
1904	28	429	3. Six Months	95.8
1905	28	427	3. Six Months	95.8
1906	28	49	3. Six Months	84
1907	28	58	4. More Than Six Months	100
1908	28	385	4. More Than Six Months	96.6
1909	28	430	4. More Than Six Months	92.5
1910	28	431	4. More Than Six Months	72.1
1911	28	58	5. All	100
1912	28	385	5. All	96.9
1913	28	428	5. All	93.3
1914	28	430	5. All	89
1915	28	429	5. All	89
1916	28	427	5. All	89
1917	28	49	5. All	77
1918	28	431	5. All	67.5
1919	28	412	5. All	67.5
1920	28	432	5. All	67.5
1921	28	380	5. All	67.5
1922	28	411	5. All	67.5
1923	29	433	4. More Than Six Months	100
1924	29	336	4. More Than Six Months	89
1925	29	433	5. All	100
1926	29	336	5. All	63.1
1927	29	1	5. All	63.1
1928	30	434	4. More Than Six Months	100
1929	30	43	4. More Than Six Months	87.8
1930	30	117	4. More Than Six Months	82
1931	30	435	4. More Than Six Months	82
1932	30	436	4. More Than Six Months	82
1933	30	87	4. More Than Six Months	74.6
1934	30	437	4. More Than Six Months	74.6
1935	30	342	4. More Than Six Months	74.6
1936	30	438	4. More Than Six Months	74.6
1937	30	439	4. More Than Six Months	74.6
1938	30	440	4. More Than Six Months	64.1
1939	30	75	4. More Than Six Months	64.1
1940	30	50	4. More Than Six Months	64.1
1941	30	441	4. More Than Six Months	64.1
1942	30	442	4. More Than Six Months	64.1
1943	30	443	4. More Than Six Months	64.1
1944	30	444	4. More Than Six Months	64.1
1945	30	404	4. More Than Six Months	64.1
1946	30	142	4. More Than Six Months	64.1
1947	30	439	5. All	100
1948	30	437	5. All	100
1949	30	443	5. All	97.6
1950	30	442	5. All	97.6
1951	30	441	5. All	97.6
1952	30	434	5. All	95
1953	30	43	5. All	80.5
1954	30	117	5. All	74.9
1955	30	436	5. All	74.9
1956	30	435	5. All	74.9
1957	30	342	5. All	67.8
1958	30	438	5. All	67.8
1959	30	87	5. All	67.8
1960	30	404	5. All	57.8
1961	30	444	5. All	57.8
1962	30	50	5. All	57.8
1963	30	75	5. All	57.8
1964	30	440	5. All	57.8
1965	30	142	5. All	57.8
1966	30	73	5. All	57.8
1967	31	117	2. Three Months	100
1968	31	117	3. Six Months	100
1969	31	92	3. Six Months	88.2
1970	31	344	3. Six Months	88.2
1971	31	173	3. Six Months	88.2
1972	31	186	4. More Than Six Months	100
1973	31	154	4. More Than Six Months	94.5
1974	31	155	4. More Than Six Months	94.5
1975	31	344	4. More Than Six Months	82.9
1976	31	237	4. More Than Six Months	82.9
1977	31	445	4. More Than Six Months	82.9
1978	31	446	4. More Than Six Months	77.4
1979	31	447	4. More Than Six Months	77.4
1980	31	137	4. More Than Six Months	70.3
1981	31	130	4. More Than Six Months	70.3
1982	31	448	4. More Than Six Months	70.3
1983	31	449	4. More Than Six Months	70.3
1984	31	450	4. More Than Six Months	70.3
1985	31	451	4. More Than Six Months	70.3
1986	31	452	4. More Than Six Months	70.3
1987	31	336	4. More Than Six Months	70.3
1988	31	414	4. More Than Six Months	60.3
1989	31	342	4. More Than Six Months	60.3
1990	31	453	4. More Than Six Months	60.3
1991	31	1	4. More Than Six Months	60.3
1992	31	454	4. More Than Six Months	60.3
1993	31	455	4. More Than Six Months	60.3
1994	31	55	4. More Than Six Months	60.3
1995	31	180	4. More Than Six Months	60.3
1996	31	88	4. More Than Six Months	60.3
1997	31	456	4. More Than Six Months	60.3
1998	31	74	4. More Than Six Months	60.3
1999	31	315	4. More Than Six Months	60.3
2000	31	457	4. More Than Six Months	60.3
2001	31	351	4. More Than Six Months	60.3
2002	31	186	5. All	100
2003	31	450	5. All	100
2004	31	454	5. All	97.6
2005	31	154	5. All	94.9
2006	31	155	5. All	94.9
2007	31	344	5. All	88.6
2008	31	237	5. All	80.2
2009	31	445	5. All	80.2
2010	31	447	5. All	80.2
2011	31	449	5. All	74.5
2012	31	446	5. All	74.5
2013	31	117	5. All	74.5
2014	31	130	5. All	74.5
2015	31	92	5. All	67.3
2016	31	342	5. All	67.3
2017	31	452	5. All	67.3
2018	31	137	5. All	67.3
2019	31	451	5. All	67.3
2020	31	448	5. All	67.3
2021	31	315	5. All	67.3
2022	31	336	5. All	67.3
2023	31	74	5. All	57.2
2024	31	351	5. All	57.2
2025	31	457	5. All	57.2
2026	31	106	5. All	57.2
2027	31	128	5. All	57.2
2028	31	116	5. All	57.2
2029	31	458	5. All	57.2
2030	31	455	5. All	57.2
2031	31	62	5. All	57.2
2032	31	180	5. All	57.2
2033	31	88	5. All	57.2
2034	31	55	5. All	57.2
2035	31	453	5. All	57.2
2036	31	456	5. All	57.2
2037	31	414	5. All	57.2
2038	31	1	5. All	57.2
2039	31	173	5. All	57.2
2040	32	32	3. Six Months	100
2041	32	32	4. More Than Six Months	100
2042	32	328	4. More Than Six Months	81.2
2285	38	501	3. Six Months	100
2043	32	459	4. More Than Six Months	56.4
2044	32	32	5. All	100
2045	32	459	5. All	83.5
2046	32	328	5. All	79.5
2047	33	58	2. Three Months	100
2048	33	58	3. Six Months	100
2049	33	1	4. More Than Six Months	100
2050	33	65	4. More Than Six Months	100
2051	33	181	4. More Than Six Months	88.5
2052	33	23	4. More Than Six Months	88.5
2053	33	13	4. More Than Six Months	88.5
2054	33	460	4. More Than Six Months	88.5
2055	33	146	4. More Than Six Months	88.5
2056	33	30	4. More Than Six Months	88.5
2057	33	460	5. All	100
2058	33	65	5. All	79.6
2059	33	1	5. All	73.2
2060	33	58	5. All	73.2
2061	33	13	5. All	64.2
2062	33	181	5. All	64.2
2063	33	23	5. All	64.2
2064	33	146	5. All	64.2
2065	33	30	5. All	64.2
2066	33	19	5. All	64.2
2067	33	461	5. All	64.2
2068	34	462	1. Thirty Days	100
2069	34	302	1. Thirty Days	93.8
2070	34	238	1. Thirty Days	85
2071	34	463	1. Thirty Days	78.7
2072	34	464	1. Thirty Days	78.7
2073	34	301	1. Thirty Days	69.9
2074	34	9	1. Thirty Days	69.9
2075	34	462	2. Three Months	100
2076	34	238	2. Three Months	82.6
2077	34	302	2. Three Months	82.6
2078	34	301	2. Three Months	79.9
2079	34	463	2. Three Months	73.1
2080	34	168	2. Three Months	62.8
2081	34	216	2. Three Months	62.8
2082	34	464	2. Three Months	62.8
2083	34	49	2. Three Months	54.6
2084	34	128	2. Three Months	54.6
2085	34	58	2. Three Months	54.6
2086	34	9	2. Three Months	54.6
2087	34	465	2. Three Months	54.6
2088	34	466	2. Three Months	54.6
2089	34	466	3. Six Months	100
2090	34	462	3. Six Months	96.9
2091	34	238	3. Six Months	80
2092	34	463	3. Six Months	80
2093	34	467	3. Six Months	73.6
2094	34	302	3. Six Months	69.4
2095	34	301	3. Six Months	69.4
2096	34	464	3. Six Months	60.5
2097	34	168	3. Six Months	60.5
2098	34	468	3. Six Months	60.5
2099	34	216	3. Six Months	56.2
2100	34	469	3. Six Months	56.2
2101	34	470	3. Six Months	50.8
2102	34	9	3. Six Months	50.8
2103	34	58	3. Six Months	50.8
2104	34	471	3. Six Months	43.1
2105	34	295	3. Six Months	43.1
2106	34	1	3. Six Months	43.1
2107	34	472	3. Six Months	43.1
2108	34	128	3. Six Months	43.1
2109	34	49	3. Six Months	43.1
2110	34	473	3. Six Months	43.1
2111	34	173	3. Six Months	43.1
2112	34	402	3. Six Months	43.1
2113	34	465	3. Six Months	43.1
2114	34	466	4. More Than Six Months	100
2115	34	463	4. More Than Six Months	91.7
2116	34	402	4. More Than Six Months	77.5
2117	34	238	4. More Than Six Months	72.7
2118	34	462	4. More Than Six Months	71.3
2119	34	474	4. More Than Six Months	66.3
2120	34	100	4. More Than Six Months	66.3
2121	34	282	4. More Than Six Months	66.3
2122	34	58	4. More Than Six Months	64.3
2123	34	475	4. More Than Six Months	64.3
2124	34	65	4. More Than Six Months	64.3
2125	34	243	4. More Than Six Months	62.1
2126	34	59	4. More Than Six Months	59.6
2127	34	464	4. More Than Six Months	59.6
2128	34	52	4. More Than Six Months	59.6
2129	34	476	4. More Than Six Months	53.2
2130	34	477	4. More Than Six Months	53.2
2131	34	1	4. More Than Six Months	49
2132	34	168	4. More Than Six Months	49
2133	34	106	4. More Than Six Months	43.6
2134	34	478	4. More Than Six Months	43.6
2135	34	13	4. More Than Six Months	43.6
2136	34	332	4. More Than Six Months	43.6
2137	34	479	4. More Than Six Months	43.6
2138	34	480	4. More Than Six Months	43.6
2139	34	481	4. More Than Six Months	43.6
2140	34	229	4. More Than Six Months	43.6
2141	34	30	4. More Than Six Months	43.6
2142	34	128	4. More Than Six Months	43.6
2143	34	23	4. More Than Six Months	43.6
2144	34	9	4. More Than Six Months	43.6
2145	34	38	4. More Than Six Months	36
2146	34	482	4. More Than Six Months	36
2147	34	483	4. More Than Six Months	36
2148	34	484	4. More Than Six Months	36
2149	34	35	4. More Than Six Months	36
2150	34	384	4. More Than Six Months	36
2151	34	485	4. More Than Six Months	36
2152	34	199	4. More Than Six Months	36
2153	34	173	4. More Than Six Months	36
2154	34	271	4. More Than Six Months	36
2155	34	408	4. More Than Six Months	36
2156	34	486	4. More Than Six Months	36
2157	34	453	4. More Than Six Months	36
2158	34	487	4. More Than Six Months	36
2159	34	488	4. More Than Six Months	36
2160	34	489	4. More Than Six Months	36
2161	34	490	4. More Than Six Months	36
2162	34	491	4. More Than Six Months	36
2163	34	302	4. More Than Six Months	36
2164	34	41	4. More Than Six Months	36
2165	34	492	4. More Than Six Months	36
2166	34	45	4. More Than Six Months	36
2167	34	493	4. More Than Six Months	36
2168	34	494	4. More Than Six Months	36
2169	34	181	4. More Than Six Months	36
2170	34	113	4. More Than Six Months	36
2171	34	28	4. More Than Six Months	36
2172	34	143	4. More Than Six Months	36
2173	34	466	5. All	100
2174	34	463	5. All	88.4
2175	34	462	5. All	86.6
2176	34	238	5. All	77.2
2177	34	464	5. All	71.2
2178	34	402	5. All	71.2
2179	34	58	5. All	61.9
2180	34	490	5. All	58.7
2181	34	489	5. All	58.7
2182	34	487	5. All	58.7
2183	34	474	5. All	58.7
2184	34	302	5. All	58.7
2185	34	100	5. All	58.7
2186	34	485	5. All	58.7
2187	34	484	5. All	58.7
2188	34	282	5. All	58.7
2189	34	488	5. All	58.7
2190	34	486	5. All	58.7
2191	34	483	5. All	58.7
2192	34	467	5. All	58.7
2193	34	65	5. All	56.8
2194	34	168	5. All	56.8
2195	34	243	5. All	56.8
2196	34	475	5. All	56.8
2197	34	59	5. All	54.6
2198	34	301	5. All	54.6
2199	34	52	5. All	52.2
2200	34	9	5. All	49.5
2201	34	1	5. All	49.5
2202	34	216	5. All	46.2
2203	34	477	5. All	46.2
2204	34	476	5. All	46.2
2205	34	468	5. All	46.2
2206	34	128	5. All	46.2
2207	34	173	5. All	42.2
2208	34	332	5. All	42.2
2209	34	469	5. All	42.2
2210	34	13	5. All	42.2
2211	34	30	5. All	42.2
2212	34	479	5. All	37.1
2213	34	106	5. All	37.1
2214	34	470	5. All	37.1
2215	34	271	5. All	37.1
2216	34	23	5. All	37.1
2217	34	478	5. All	37.1
2218	34	143	5. All	37.1
2219	34	481	5. All	37.1
2220	34	229	5. All	37.1
2221	34	480	5. All	37.1
2222	34	384	5. All	30
2223	34	453	5. All	30
2224	34	295	5. All	30
2225	34	2	5. All	30
2226	34	471	5. All	30
2227	34	49	5. All	30
2228	34	495	5. All	30
2229	34	473	5. All	30
2230	34	35	5. All	30
2231	34	472	5. All	30
2232	34	41	5. All	30
2233	34	28	5. All	30
2234	34	113	5. All	30
2235	34	199	5. All	30
2236	34	181	5. All	30
2237	34	494	5. All	30
2238	34	482	5. All	30
2239	34	492	5. All	30
2240	34	408	5. All	30
2241	34	493	5. All	30
2242	34	38	5. All	30
2243	34	491	5. All	30
2244	34	45	5. All	30
2245	34	465	5. All	30
2246	35	496	2. Three Months	100
2247	35	204	2. Three Months	79.3
2248	35	496	3. Six Months	100
2249	35	204	3. Six Months	92.2
2250	35	208	3. Six Months	69.2
2251	35	496	4. More Than Six Months	100
2252	35	204	4. More Than Six Months	94.9
2253	35	497	4. More Than Six Months	94.9
2254	35	144	4. More Than Six Months	78.9
2255	35	314	4. More Than Six Months	78.9
2256	35	496	5. All	100
2257	35	204	5. All	93.2
2258	35	497	5. All	73.6
2259	35	208	5. All	63.9
2260	35	144	5. All	56.2
2261	35	314	5. All	56.2
2262	35	337	5. All	56.2
2263	35	127	5. All	56.2
2264	35	49	5. All	56.2
2265	36	207	4. More Than Six Months	100
2266	36	498	4. More Than Six Months	100
2267	36	499	4. More Than Six Months	100
2268	36	498	5. All	100
2269	36	207	5. All	100
2270	36	499	5. All	100
2271	37	130	1. Thirty Days	100
2272	37	130	2. Three Months	100
2273	37	130	3. Six Months	100
2274	37	381	4. More Than Six Months	100
2275	37	340	4. More Than Six Months	100
2276	37	130	5. All	100
2277	37	381	5. All	74.6
2278	37	340	5. All	74.6
2279	37	239	5. All	74.6
2280	38	500	2. Three Months	100
2281	38	7	3. Six Months	100
2282	38	9	3. Six Months	100
2283	38	138	3. Six Months	100
2284	38	77	3. Six Months	100
2286	38	500	3. Six Months	100
2287	38	142	3. Six Months	100
2288	38	2	3. Six Months	100
2289	38	65	4. More Than Six Months	100
2290	38	313	4. More Than Six Months	100
2291	38	196	4. More Than Six Months	91.6
2292	38	502	4. More Than Six Months	91.6
2293	38	503	4. More Than Six Months	79.7
2294	38	31	4. More Than Six Months	79.7
2295	38	59	4. More Than Six Months	79.7
2296	38	349	4. More Than Six Months	79.7
2297	38	154	4. More Than Six Months	79.7
2298	38	186	4. More Than Six Months	79.7
2299	38	32	4. More Than Six Months	79.7
2300	38	504	4. More Than Six Months	79.7
2301	38	505	4. More Than Six Months	79.7
2302	38	506	4. More Than Six Months	79.7
2303	38	507	4. More Than Six Months	79.7
2304	38	500	4. More Than Six Months	79.7
2305	38	144	4. More Than Six Months	79.7
2306	38	508	4. More Than Six Months	79.7
2307	38	117	4. More Than Six Months	79.7
2308	38	500	5. All	100
2309	38	502	5. All	97.9
2310	38	504	5. All	95.5
2311	38	505	5. All	95.5
2312	38	503	5. All	95.5
2313	38	507	5. All	95.5
2314	38	506	5. All	95.5
2315	38	65	5. All	73.1
2316	38	313	5. All	73.1
2317	38	117	5. All	66.1
2318	38	2	5. All	66.1
2319	38	31	5. All	66.1
2320	38	196	5. All	66.1
2321	38	154	5. All	56.3
2322	38	77	5. All	56.3
2323	38	59	5. All	56.3
2324	38	349	5. All	56.3
2325	38	142	5. All	56.3
2326	38	33	5. All	56.3
2327	38	19	5. All	56.3
2328	38	28	5. All	56.3
2329	38	501	5. All	56.3
2330	38	138	5. All	56.3
2331	38	144	5. All	56.3
2332	38	509	5. All	56.3
2333	38	9	5. All	56.3
2334	38	7	5. All	56.3
2335	38	186	5. All	56.3
2336	38	508	5. All	56.3
2337	38	32	5. All	56.3
2338	38	130	5. All	56.3
2339	39	510	4. More Than Six Months	100
2340	39	314	4. More Than Six Months	100
2341	39	510	5. All	100
2342	39	314	5. All	67
2343	40	23	3. Six Months	100
2344	40	511	3. Six Months	100
2345	40	128	4. More Than Six Months	100
2346	40	34	4. More Than Six Months	83.8
2347	40	258	4. More Than Six Months	76
2348	40	68	4. More Than Six Months	62.7
2349	40	512	4. More Than Six Months	55
2350	40	13	4. More Than Six Months	55
2351	40	108	4. More Than Six Months	55
2352	40	128	5. All	100
2353	40	34	5. All	82.8
2354	40	258	5. All	75
2355	40	68	5. All	61.6
2356	40	23	5. All	61.6
2357	40	512	5. All	53.8
2358	40	13	5. All	53.8
2359	40	511	5. All	53.8
2360	40	108	5. All	53.8
2361	41	248	1. Thirty Days	100
2362	41	248	2. Three Months	100
2363	41	198	2. Three Months	82.1
2364	41	328	2. Three Months	73.5
2365	41	60	2. Three Months	73.5
2366	41	248	3. Six Months	100
2367	41	198	3. Six Months	87.7
2368	41	328	3. Six Months	68.6
2369	41	60	3. Six Months	68.6
2370	41	4	4. More Than Six Months	100
2371	41	198	4. More Than Six Months	100
2372	41	248	4. More Than Six Months	100
2373	41	248	5. All	100
2374	41	198	5. All	91.4
2375	41	4	5. All	70.6
2376	41	60	5. All	70.6
2377	41	17	5. All	62
2378	41	50	5. All	62
2379	41	328	5. All	62
2380	42	513	4. More Than Six Months	100
2381	42	514	4. More Than Six Months	89.2
2382	42	515	4. More Than Six Months	89.2
2383	42	516	4. More Than Six Months	89.2
2384	42	517	4. More Than Six Months	89.2
2385	42	325	4. More Than Six Months	89.2
2386	42	518	4. More Than Six Months	89.2
2387	42	519	4. More Than Six Months	89.2
2388	42	342	4. More Than Six Months	89.2
2389	42	520	4. More Than Six Months	89.2
2390	42	513	5. All	100
2391	42	342	5. All	97.8
2392	42	517	5. All	97.8
2393	42	518	5. All	97.8
2394	42	519	5. All	97.8
2395	42	520	5. All	97.8
2396	42	515	5. All	97.8
2397	42	514	5. All	97.8
2398	42	325	5. All	97.8
2399	42	516	5. All	97.8
2400	43	1	3. Six Months	100
2401	43	31	4. More Than Six Months	100
2402	43	60	4. More Than Six Months	89.1
2403	43	31	5. All	100
2404	43	1	5. All	100
2405	43	60	5. All	88.8
2406	44	4	3. Six Months	100
2407	44	13	4. More Than Six Months	100
2408	44	521	4. More Than Six Months	100
2409	44	28	4. More Than Six Months	100
2410	44	522	4. More Than Six Months	100
2411	44	523	4. More Than Six Months	100
2412	44	524	4. More Than Six Months	87.3
2413	44	23	4. More Than Six Months	87.3
2414	44	2	4. More Than Six Months	87.3
2415	44	140	4. More Than Six Months	87.3
2416	44	10	4. More Than Six Months	87.3
2417	44	525	4. More Than Six Months	87.3
2418	44	526	4. More Than Six Months	87.3
2419	44	527	4. More Than Six Months	87.3
2420	44	528	4. More Than Six Months	87.3
2421	44	529	4. More Than Six Months	87.3
2422	44	530	4. More Than Six Months	87.3
2423	44	31	4. More Than Six Months	87.3
2424	44	528	5. All	100
2425	44	527	5. All	100
2426	44	525	5. All	100
2427	44	526	5. All	100
2428	44	522	5. All	77.9
2429	44	524	5. All	71
2430	44	4	5. All	71
2431	44	31	5. All	71
2432	44	13	5. All	71
2433	44	523	5. All	71
2434	44	28	5. All	71
2435	44	521	5. All	71
2436	44	23	5. All	61.2
2437	44	2	5. All	61.2
2438	44	530	5. All	61.2
2439	44	529	5. All	61.2
2440	44	140	5. All	61.2
2441	44	10	5. All	61.2
2442	45	531	4. More Than Six Months	100
2443	45	1	4. More Than Six Months	100
2444	45	531	5. All	100
2445	45	1	5. All	100
2446	46	241	4. More Than Six Months	100
2447	46	532	4. More Than Six Months	93.4
2448	46	241	5. All	100
2449	46	532	5. All	93.4
2450	47	4	4. More Than Six Months	100
2451	47	4	5. All	100
2452	48	301	1. Thirty Days	100
2453	48	130	2. Three Months	100
2454	48	301	2. Three Months	100
2455	48	346	3. Six Months	100
2456	48	4	3. Six Months	100
2457	48	113	3. Six Months	100
2458	48	533	3. Six Months	100
2459	48	130	3. Six Months	100
2460	48	301	3. Six Months	100
2461	48	346	4. More Than Six Months	100
2462	48	161	4. More Than Six Months	92.5
2463	48	399	4. More Than Six Months	92.5
2464	48	534	4. More Than Six Months	81.9
2465	48	392	4. More Than Six Months	81.9
2466	48	4	4. More Than Six Months	81.9
2467	48	534	5. All	100
2468	48	346	5. All	88.6
2469	48	4	5. All	79.6
2470	48	161	5. All	73.2
2471	48	399	5. All	73.2
2472	48	533	5. All	73.2
2473	48	130	5. All	73.2
2474	48	392	5. All	64.1
2475	48	113	5. All	64.1
2476	48	301	5. All	64.1
2477	49	12	2. Three Months	100
2478	49	12	3. Six Months	100
2479	49	12	4. More Than Six Months	100
2480	49	31	4. More Than Six Months	95.9
2481	49	329	4. More Than Six Months	84.5
2482	49	535	4. More Than Six Months	73.5
2483	49	536	4. More Than Six Months	73.5
2484	49	271	4. More Than Six Months	71.5
2485	49	1	4. More Than Six Months	60.4
2486	49	65	4. More Than Six Months	56.3
2487	49	537	4. More Than Six Months	50.9
2488	49	538	4. More Than Six Months	43.3
2489	49	38	4. More Than Six Months	43.3
2490	49	539	4. More Than Six Months	43.3
2491	49	45	4. More Than Six Months	43.3
2492	49	68	4. More Than Six Months	43.3
2493	49	19	4. More Than Six Months	43.3
2494	49	540	4. More Than Six Months	43.3
2495	49	4	4. More Than Six Months	43.3
2496	49	12	5. All	100
2497	49	31	5. All	94
2498	49	329	5. All	82.3
2499	49	536	5. All	73.2
2500	49	271	5. All	71.4
2501	49	535	5. All	71.4
2502	49	65	5. All	58.6
2503	49	1	5. All	58.6
2504	49	537	5. All	49.2
2505	49	540	5. All	49.2
2506	49	4	5. All	41.7
2507	49	38	5. All	41.7
2508	49	45	5. All	41.7
2509	49	68	5. All	41.7
2510	49	538	5. All	41.7
2511	49	539	5. All	41.7
2512	49	19	5. All	41.7
2513	50	13	4. More Than Six Months	100
2514	50	97	4. More Than Six Months	100
2515	50	13	5. All	100
2516	50	97	5. All	100
2517	51	541	4. More Than Six Months	100
2518	51	491	4. More Than Six Months	100
2519	51	541	5. All	100
2520	51	491	5. All	100
2521	52	293	4. More Than Six Months	100
2522	52	1	4. More Than Six Months	100
2523	52	293	5. All	100
2524	52	1	5. All	100
2525	53	542	4. More Than Six Months	100
2526	53	414	4. More Than Six Months	92.3
2527	53	314	4. More Than Six Months	81.4
2528	53	543	4. More Than Six Months	81.4
2529	53	544	4. More Than Six Months	81.4
2530	53	545	4. More Than Six Months	81.4
2531	53	546	4. More Than Six Months	81.4
2532	53	335	4. More Than Six Months	81.4
2533	53	547	4. More Than Six Months	81.4
2534	53	548	4. More Than Six Months	81.4
2535	53	549	4. More Than Six Months	81.4
2536	53	550	4. More Than Six Months	81.4
2537	53	551	4. More Than Six Months	81.4
2538	53	239	4. More Than Six Months	81.4
2539	53	549	5. All	100
2540	53	548	5. All	97.8
2541	53	551	5. All	97.8
2542	53	544	5. All	97.8
2543	53	335	5. All	97.8
2544	53	550	5. All	97.8
2545	53	546	5. All	97.8
2546	53	545	5. All	97.8
2547	53	547	5. All	97.8
2548	53	542	5. All	76.2
2549	53	414	5. All	69.5
2550	53	314	5. All	60
2551	53	543	5. All	60
2552	53	239	5. All	60
2553	54	13	1. Thirty Days	100
2554	54	30	1. Thirty Days	96.3
2555	54	35	1. Thirty Days	86.9
2556	54	126	1. Thirty Days	86.9
2557	54	38	1. Thirty Days	86.9
2558	54	62	1. Thirty Days	80.7
2559	54	456	1. Thirty Days	80.7
2560	54	173	1. Thirty Days	72.7
2561	54	54	1. Thirty Days	72.7
2562	54	31	1. Thirty Days	72.7
2563	54	18	1. Thirty Days	72.7
2564	54	113	1. Thirty Days	72.7
2565	54	150	1. Thirty Days	72.7
2566	54	58	1. Thirty Days	61.5
2567	54	552	1. Thirty Days	61.5
2568	54	553	1. Thirty Days	61.5
2569	54	554	1. Thirty Days	61.5
2570	54	156	1. Thirty Days	61.5
2571	54	6	1. Thirty Days	61.5
2572	54	19	1. Thirty Days	61.5
2573	54	48	1. Thirty Days	61.5
2574	54	555	1. Thirty Days	61.5
2575	54	556	1. Thirty Days	61.5
2576	54	198	1. Thirty Days	61.5
2577	54	172	1. Thirty Days	61.5
2578	54	557	1. Thirty Days	61.5
2579	54	343	1. Thirty Days	61.5
2580	54	1	1. Thirty Days	61.5
2581	54	74	1. Thirty Days	61.5
2582	54	23	1. Thirty Days	61.5
2583	54	68	1. Thirty Days	61.5
2584	54	32	1. Thirty Days	61.5
2585	54	558	1. Thirty Days	61.5
2586	54	13	2. Three Months	100
2587	54	4	2. Three Months	94.8
2588	54	30	2. Three Months	86.6
2589	54	31	2. Three Months	83.1
2590	54	456	2. Three Months	81.1
2591	54	173	2. Three Months	81.1
2592	54	126	2. Three Months	79
2593	54	58	2. Three Months	74.1
2594	54	38	2. Three Months	74.1
2595	54	34	2. Three Months	71.3
2596	54	150	2. Three Months	68
2597	54	346	2. Three Months	68
2598	54	156	2. Three Months	68
2599	54	87	2. Three Months	68
2600	54	198	2. Three Months	68
2601	54	62	2. Three Months	68
2602	54	77	2. Three Months	68
2603	54	113	2. Three Months	68
2604	54	23	2. Three Months	68
2605	54	1	2. Three Months	68
2606	54	130	2. Three Months	64.3
2607	54	326	2. Three Months	64.3
2608	54	559	2. Three Months	64.3
2609	54	560	2. Three Months	64.3
2610	54	7	2. Three Months	64.3
2611	54	556	2. Three Months	64.3
2612	54	2	2. Three Months	59.9
2613	54	131	2. Three Months	59.9
2614	54	137	2. Three Months	59.9
2615	54	65	2. Three Months	59.9
2616	54	139	2. Three Months	59.9
2617	54	18	2. Three Months	59.9
2618	54	19	2. Three Months	59.9
2619	54	68	2. Three Months	59.9
2620	54	26	2. Three Months	59.9
2621	54	49	2. Three Months	59.9
2622	54	51	2. Three Months	54.5
2623	54	172	2. Three Months	54.5
2624	54	303	2. Three Months	54.5
2625	54	561	2. Three Months	54.5
2626	54	562	2. Three Months	54.5
2627	54	20	2. Three Months	54.5
2628	54	563	2. Three Months	54.5
2629	54	332	2. Three Months	54.5
2630	54	138	2. Three Months	54.5
2631	54	17	2. Three Months	54.5
2632	54	302	2. Three Months	54.5
2633	54	197	2. Three Months	54.5
2634	54	61	2. Three Months	47.6
2635	54	564	2. Three Months	47.6
2636	54	530	2. Three Months	47.6
2637	54	171	2. Three Months	47.6
2638	54	519	2. Three Months	47.6
2639	54	366	2. Three Months	47.6
2640	54	74	2. Three Months	47.6
2641	54	565	2. Three Months	47.6
2642	54	521	2. Three Months	47.6
2643	54	511	2. Three Months	47.6
2644	54	36	2. Three Months	47.6
2645	54	566	2. Three Months	47.6
2646	54	205	2. Three Months	47.6
2647	54	28	2. Three Months	47.6
2648	54	37	2. Three Months	47.6
2649	54	567	2. Three Months	47.6
2650	54	70	2. Three Months	47.6
2651	54	117	2. Three Months	47.6
2652	54	331	2. Three Months	47.6
2653	54	53	2. Three Months	47.6
2654	54	158	2. Three Months	47.6
2655	54	568	2. Three Months	47.6
2656	54	57	2. Three Months	47.6
2657	54	509	2. Three Months	47.6
2658	54	60	2. Three Months	47.6
2659	54	32	2. Three Months	47.6
2660	54	569	2. Three Months	38
2661	54	14	2. Three Months	38
2662	54	22	2. Three Months	38
2663	54	79	2. Three Months	38
2664	54	570	2. Three Months	38
2665	54	27	2. Three Months	38
2666	54	329	2. Three Months	38
2667	54	571	2. Three Months	38
2668	54	390	2. Three Months	38
2669	54	572	2. Three Months	38
2670	54	421	2. Three Months	38
2671	54	128	2. Three Months	38
2672	54	179	2. Three Months	38
2673	54	573	2. Three Months	38
2674	54	315	2. Three Months	38
2675	54	387	2. Three Months	38
2676	54	574	2. Three Months	38
2677	54	10	2. Three Months	38
2678	54	575	2. Three Months	38
2679	54	576	2. Three Months	38
2680	54	577	2. Three Months	38
2681	54	45	2. Three Months	38
2682	54	578	2. Three Months	38
2683	54	149	2. Three Months	38
2684	54	579	2. Three Months	38
2685	54	580	2. Three Months	38
2686	54	13	3. Six Months	100
2687	54	58	3. Six Months	90.7
2688	54	30	3. Six Months	84.9
2689	54	456	3. Six Months	84.1
2690	54	31	3. Six Months	83.2
2691	54	198	3. Six Months	82.3
2692	54	34	3. Six Months	81.4
2693	54	173	3. Six Months	79.4
2694	54	1	3. Six Months	79.4
2695	54	23	3. Six Months	77.2
2696	54	113	3. Six Months	77.2
2697	54	38	3. Six Months	74.8
2698	54	77	3. Six Months	72.1
2699	54	556	3. Six Months	72.1
2700	54	87	3. Six Months	70.6
2701	54	19	3. Six Months	70.6
2702	54	126	3. Six Months	70.6
2703	54	150	3. Six Months	70.6
2704	54	130	3. Six Months	70.6
2705	54	18	3. Six Months	69
2706	54	332	3. Six Months	69
2707	54	49	3. Six Months	67.3
2708	54	62	3. Six Months	67.3
2709	54	68	3. Six Months	67.3
2710	54	326	3. Six Months	67.3
2711	54	137	3. Six Months	65.5
2712	54	70	3. Six Months	65.5
2713	54	17	3. Six Months	65.5
2714	54	2	3. Six Months	65.5
2715	54	559	3. Six Months	65.5
2716	54	28	3. Six Months	65.5
2717	54	197	3. Six Months	65.5
2718	54	156	3. Six Months	65.5
2719	54	7	3. Six Months	63.5
2720	54	53	3. Six Months	63.5
2721	54	39	3. Six Months	63.5
2722	54	573	3. Six Months	63.5
2723	54	26	3. Six Months	63.5
2724	54	35	3. Six Months	61.3
2725	54	567	3. Six Months	61.3
2726	54	20	3. Six Months	61.3
2727	54	37	3. Six Months	61.3
2728	54	54	3. Six Months	61.3
2729	54	117	3. Six Months	61.3
2730	54	303	3. Six Months	61.3
2731	54	14	3. Six Months	58.9
2732	54	302	3. Six Months	58.9
2733	54	57	3. Six Months	58.9
2734	54	346	3. Six Months	58.9
2735	54	139	3. Six Months	58.9
2736	54	563	3. Six Months	58.9
2737	54	566	3. Six Months	58.9
2738	54	560	3. Six Months	56.2
2739	54	158	3. Six Months	56.2
2740	54	330	3. Six Months	53.2
2741	54	138	3. Six Months	53.2
2742	54	154	3. Six Months	53.2
2743	54	65	3. Six Months	53.2
2744	54	32	3. Six Months	53.2
2745	54	10	3. Six Months	53.2
2746	54	568	3. Six Months	53.2
2747	54	15	3. Six Months	49.7
2748	54	79	3. Six Months	49.7
2749	54	574	3. Six Months	49.7
2750	54	22	3. Six Months	49.7
2751	54	222	3. Six Months	49.7
2752	54	107	3. Six Months	45.6
2753	54	581	3. Six Months	45.6
2754	54	128	3. Six Months	45.6
2755	54	205	3. Six Months	45.6
2756	54	3	3. Six Months	45.6
2757	54	145	3. Six Months	45.6
2758	54	530	3. Six Months	45.6
2759	54	63	3. Six Months	45.6
2760	54	147	3. Six Months	45.6
2761	54	144	3. Six Months	45.6
2762	54	153	3. Six Months	45.6
2763	54	67	3. Six Months	45.6
2764	54	172	3. Six Months	45.6
2765	54	157	3. Six Months	40.6
2766	54	349	3. Six Months	40.6
2767	54	338	3. Six Months	40.6
2768	54	521	3. Six Months	40.6
2769	54	140	3. Six Months	40.6
2770	54	108	3. Six Months	40.6
2771	54	343	3. Six Months	40.6
2772	54	73	3. Six Months	40.6
2773	54	160	3. Six Months	34.2
2774	54	114	3. Six Months	34.2
2775	54	170	3. Six Months	34.2
2776	54	27	3. Six Months	34.2
2777	54	44	3. Six Months	34.2
2778	54	141	3. Six Months	34.2
2779	54	582	3. Six Months	34.2
2780	54	161	3. Six Months	34.2
2781	54	335	3. Six Months	25.6
2782	54	583	3. Six Months	25.6
2783	54	81	3. Six Months	25.6
2784	54	202	3. Six Months	25.6
2785	54	336	3. Six Months	25.6
2786	54	13	4. More Than Six Months	100
2787	54	34	4. More Than Six Months	84.9
2788	54	58	4. More Than Six Months	82
2789	54	30	4. More Than Six Months	81.2
2790	54	31	4. More Than Six Months	80.7
2791	54	23	4. More Than Six Months	79.8
2792	54	28	4. More Than Six Months	78.6
2793	54	77	4. More Than Six Months	78
2794	54	14	4. More Than Six Months	76.7
2795	54	113	4. More Than Six Months	76.4
2796	54	18	4. More Than Six Months	75.3
2797	54	19	4. More Than Six Months	75.3
2798	54	37	4. More Than Six Months	74.2
2799	54	2	4. More Than Six Months	73.4
2800	54	17	4. More Than Six Months	71.3
2801	54	20	4. More Than Six Months	70.9
2802	54	35	4. More Than Six Months	69.9
2803	54	137	4. More Than Six Months	69.5
2804	54	173	4. More Than Six Months	67.9
2805	54	117	4. More Than Six Months	67.9
2806	54	87	4. More Than Six Months	65.7
2807	54	180	4. More Than Six Months	65.7
2808	54	10	4. More Than Six Months	65.1
2809	54	68	4. More Than Six Months	65.1
2810	54	54	4. More Than Six Months	65.1
2811	54	150	4. More Than Six Months	63.9
2812	54	65	4. More Than Six Months	63.9
2813	54	57	4. More Than Six Months	63.2
2814	54	73	4. More Than Six Months	62.6
2815	54	63	4. More Than Six Months	61.1
2816	54	139	4. More Than Six Months	61.1
2817	54	145	4. More Than Six Months	61.1
2818	54	22	4. More Than Six Months	58
2819	54	67	4. More Than Six Months	57.1
2820	54	138	4. More Than Six Months	56.1
2821	54	140	4. More Than Six Months	54.2
2822	54	147	4. More Than Six Months	54.2
2823	54	49	4. More Than Six Months	54.2
2824	54	143	4. More Than Six Months	53.1
2825	54	79	4. More Than Six Months	53.1
2826	54	196	4. More Than Six Months	52
2827	54	142	4. More Than Six Months	52
2828	54	66	4. More Than Six Months	52
2829	54	172	4. More Than Six Months	50.8
2830	54	33	4. More Than Six Months	50.8
2831	54	156	4. More Than Six Months	50.8
2832	54	74	4. More Than Six Months	50.8
2833	54	161	4. More Than Six Months	50.8
2834	54	118	4. More Than Six Months	49.5
2835	54	146	4. More Than Six Months	49.5
2836	54	106	4. More Than Six Months	48.1
2837	54	255	4. More Than Six Months	48.1
2838	54	197	4. More Than Six Months	48.1
2839	54	151	4. More Than Six Months	48.1
2840	54	154	4. More Than Six Months	48.1
2841	54	36	4. More Than Six Months	46.6
2842	54	92	4. More Than Six Months	46.6
2843	54	144	4. More Than Six Months	46.6
2844	54	141	4. More Than Six Months	46.6
2845	54	157	4. More Than Six Months	46.6
2846	54	164	4. More Than Six Months	46.6
2847	54	158	4. More Than Six Months	45.1
2848	54	179	4. More Than Six Months	45.1
2849	54	153	4. More Than Six Months	45.1
2850	54	152	4. More Than Six Months	45.1
2851	54	148	4. More Than Six Months	43.4
2852	54	187	4. More Than Six Months	43.4
2853	54	160	4. More Than Six Months	43.4
2854	54	50	4. More Than Six Months	43.4
2855	54	149	4. More Than Six Months	43.4
2856	54	167	4. More Than Six Months	43.4
2857	54	184	4. More Than Six Months	41.5
2858	54	190	4. More Than Six Months	41.5
2859	54	159	4. More Than Six Months	41.5
2860	54	166	4. More Than Six Months	39.4
2861	54	170	4. More Than Six Months	39.4
2862	54	163	4. More Than Six Months	39.4
2863	54	191	4. More Than Six Months	39.4
2864	54	155	4. More Than Six Months	39.4
2865	54	192	4. More Than Six Months	37.1
2866	54	178	4. More Than Six Months	34.5
2867	54	134	4. More Than Six Months	34.5
2868	54	165	4. More Than Six Months	34.5
2869	54	162	4. More Than Six Months	34.5
2870	54	168	4. More Than Six Months	34.5
2871	54	171	4. More Than Six Months	31.6
2872	54	185	4. More Than Six Months	31.6
2873	54	189	4. More Than Six Months	31.6
2874	54	194	4. More Than Six Months	31.6
2875	54	174	4. More Than Six Months	28.1
2876	54	181	4. More Than Six Months	28.1
2877	54	136	4. More Than Six Months	24
2878	54	353	4. More Than Six Months	24
2879	54	193	4. More Than Six Months	18.9
2880	54	355	4. More Than Six Months	18.9
2881	54	188	4. More Than Six Months	18.9
2882	54	345	4. More Than Six Months	18.9
2883	54	584	4. More Than Six Months	18.9
2884	54	352	4. More Than Six Months	12.6
2885	54	176	4. More Than Six Months	12.6
2886	54	13	5. All	100
2887	54	58	5. All	85.7
2888	54	34	5. All	85.7
2889	54	30	5. All	83.9
2890	54	31	5. All	83.1
2891	54	23	5. All	81.4
2892	54	113	5. All	79.1
2893	54	28	5. All	78.8
2894	54	77	5. All	77.4
2895	54	19	5. All	77.2
2896	54	2	5. All	75.1
2897	54	37	5. All	75.1
2898	54	18	5. All	74.8
2899	54	14	5. All	74.5
2900	54	173	5. All	74.2
2901	54	17	5. All	73.6
2902	54	20	5. All	72.7
2903	54	35	5. All	72.1
2904	54	117	5. All	70.7
2905	54	150	5. All	70
2906	54	137	5. All	69.6
2907	54	87	5. All	68.1
2908	54	180	5. All	67.3
2909	54	68	5. All	66.9
2910	54	65	5. All	66.9
2911	54	54	5. All	65.6
2912	54	73	5. All	64.6
2913	54	10	5. All	64.2
2914	54	57	5. All	63.7
2915	54	139	5. All	62.1
2916	54	67	5. All	61.6
2917	54	197	5. All	61
2918	54	145	5. All	59.8
2919	54	63	5. All	59.8
2920	54	79	5. All	59.8
2921	54	49	5. All	59.8
2922	54	22	5. All	57.9
2923	54	138	5. All	57.2
2924	54	156	5. All	57.2
2925	54	158	5. All	57.2
2926	54	151	5. All	55
2927	54	157	5. All	55
2928	54	147	5. All	54.2
2929	54	159	5. All	53.4
2930	54	143	5. All	53.4
2931	54	140	5. All	53.4
2932	54	74	5. All	52.6
2933	54	142	5. All	52.6
2934	54	148	5. All	52.6
2935	54	196	5. All	52.6
2936	54	154	5. All	51.6
2937	54	172	5. All	51.6
2938	54	255	5. All	51.6
2939	54	170	5. All	50.7
2940	54	33	5. All	50.7
2941	54	163	5. All	50.7
2942	54	161	5. All	49.7
2943	54	92	5. All	48.7
2944	54	144	5. All	48.7
2945	54	36	5. All	48.7
2946	54	164	5. All	47.6
2947	54	153	5. All	47.6
2948	54	66	5. All	47.6
2949	54	179	5. All	47.6
2950	54	141	5. All	46.4
2951	54	167	5. All	46.4
2952	54	146	5. All	46.4
2953	54	118	5. All	45.1
2954	54	149	5. All	45.1
2955	54	106	5. All	45.1
2956	54	181	5. All	45.1
2957	54	152	5. All	45.1
2958	54	187	5. All	43.8
2959	54	160	5. All	43.8
2960	54	50	5. All	42.4
2961	54	184	5. All	42.4
2962	54	155	5. All	40.8
2963	54	190	5. All	40.8
2964	54	171	5. All	39.2
2965	54	183	5. All	39.2
2966	54	166	5. All	39.2
2967	54	162	5. All	35.4
2968	54	191	5. All	35.4
2969	54	192	5. All	35.4
2970	54	134	5. All	35.4
2971	54	189	5. All	33.1
2972	54	165	5. All	33.1
2973	54	168	5. All	30.6
2974	54	178	5. All	30.6
2975	54	185	5. All	27.8
2976	54	345	5. All	27.8
2977	54	353	5. All	27.8
2978	54	174	5. All	27.8
2979	54	175	5. All	24.5
2980	54	136	5. All	24.5
2981	54	352	5. All	20.6
2982	54	355	5. All	20.6
2983	54	188	5. All	20.6
2984	54	357	5. All	15.8
2985	54	176	5. All	10.1
2986	55	532	3. Six Months	100
2987	55	65	4. More Than Six Months	100
2988	55	281	4. More Than Six Months	100
2989	55	585	4. More Than Six Months	91.2
2990	55	346	4. More Than Six Months	91.2
2991	55	586	4. More Than Six Months	91.2
2992	55	13	4. More Than Six Months	78.8
2993	55	587	4. More Than Six Months	78.8
2994	55	28	4. More Than Six Months	78.8
2995	55	588	4. More Than Six Months	78.8
2996	55	589	4. More Than Six Months	78.8
2997	55	590	4. More Than Six Months	78.8
2998	55	591	4. More Than Six Months	78.8
2999	55	3	4. More Than Six Months	78.8
3000	55	592	4. More Than Six Months	78.8
3001	55	30	4. More Than Six Months	78.8
3002	55	17	4. More Than Six Months	78.8
3003	55	88	4. More Than Six Months	78.8
3004	55	1	4. More Than Six Months	78.8
3005	55	593	4. More Than Six Months	78.8
3006	55	19	4. More Than Six Months	78.8
3007	55	586	5. All	100
3008	55	591	5. All	97.7
3009	55	592	5. All	97.7
3010	55	587	5. All	97.7
3011	55	281	5. All	75.5
3012	55	65	5. All	75.5
3013	55	88	5. All	68.6
3014	55	585	5. All	68.6
3015	55	346	5. All	68.6
3016	55	532	5. All	58.8
3017	55	590	5. All	58.8
3018	55	28	5. All	58.8
3019	55	588	5. All	58.8
3020	55	589	5. All	58.8
3021	55	13	5. All	58.8
3022	55	3	5. All	58.8
3023	55	30	5. All	58.8
3024	55	1	5. All	58.8
3025	55	593	5. All	58.8
3026	55	17	5. All	58.8
3027	55	19	5. All	58.8
3028	56	1	3. Six Months	100
3029	56	1	4. More Than Six Months	100
3030	56	594	4. More Than Six Months	83.7
3031	56	13	4. More Than Six Months	73.2
3032	56	403	4. More Than Six Months	73.2
3033	56	31	4. More Than Six Months	64.8
3034	56	10	4. More Than Six Months	64.8
3035	56	595	4. More Than Six Months	64.8
3036	56	1	5. All	100
3037	56	595	5. All	94.6
3038	56	594	5. All	80.5
3039	56	13	5. All	70
3040	56	403	5. All	70
3041	56	31	5. All	61.7
3042	56	10	5. All	61.7
3043	57	106	3. Six Months	100
3044	57	596	3. Six Months	89.5
3045	57	140	3. Six Months	89.5
3046	57	130	3. Six Months	89.5
3047	57	17	3. Six Months	89.5
3048	57	597	4. More Than Six Months	100
3049	57	313	4. More Than Six Months	100
3050	57	241	4. More Than Six Months	77.7
3051	57	596	4. More Than Six Months	77.7
3052	57	206	4. More Than Six Months	71.4
3053	57	598	4. More Than Six Months	71.4
3054	57	4	4. More Than Six Months	62.5
3055	57	599	4. More Than Six Months	62.5
3056	57	600	4. More Than Six Months	62.5
3057	57	601	4. More Than Six Months	62.5
3058	57	602	4. More Than Six Months	62.5
3059	57	31	4. More Than Six Months	62.5
3060	57	597	5. All	100
3061	57	598	5. All	87.5
3062	57	313	5. All	87.5
3063	57	601	5. All	85.5
3064	57	600	5. All	85.5
3065	57	599	5. All	85.5
3066	57	602	5. All	85.5
3067	57	596	5. All	74.9
3068	57	241	5. All	66.4
3069	57	106	5. All	66.4
3070	57	206	5. All	60.5
3071	57	140	5. All	60.5
3072	57	4	5. All	52
3073	57	31	5. All	52
3074	57	130	5. All	52
3075	57	17	5. All	52
3076	58	72	4. More Than Six Months	100
3077	58	28	4. More Than Six Months	100
3078	58	28	5. All	100
3079	58	72	5. All	88.9
3080	59	359	1. Thirty Days	100
3081	59	359	2. Three Months	100
3082	59	127	2. Three Months	90.1
3083	59	133	2. Three Months	90.1
3084	59	127	3. Six Months	100
3085	59	359	3. Six Months	96
3086	59	133	3. Six Months	75.9
3087	59	359	4. More Than Six Months	100
3088	59	127	4. More Than Six Months	83.9
3089	59	133	4. More Than Six Months	73.5
3090	59	453	4. More Than Six Months	65.3
3091	59	603	4. More Than Six Months	65.3
3092	59	359	5. All	100
3093	59	127	5. All	92.6
3094	59	133	5. All	77
3095	59	453	5. All	66.8
3096	59	603	5. All	58.8
3097	59	604	5. All	58.8
3098	60	65	4. More Than Six Months	100
3099	60	116	4. More Than Six Months	93
3100	60	130	4. More Than Six Months	83.2
3101	60	605	4. More Than Six Months	83.2
3102	60	65	5. All	100
3103	60	116	5. All	92.9
3104	60	130	5. All	82.8
3105	60	605	5. All	82.8
3106	61	31	4. More Than Six Months	100
3107	61	13	4. More Than Six Months	90.6
3108	61	31	5. All	100
3109	61	13	5. All	90.3
3110	61	606	5. All	90.3
3111	62	607	4. More Than Six Months	100
3112	62	392	4. More Than Six Months	100
3113	63	608	4. More Than Six Months	100
3114	63	609	4. More Than Six Months	84.6
3115	63	609	5. All	100
3116	63	608	5. All	86.4
3117	64	131	2. Three Months	100
3118	64	326	2. Three Months	100
3119	64	130	2. Three Months	100
3120	64	58	2. Three Months	100
3121	64	610	2. Three Months	100
3122	64	130	3. Six Months	100
3123	64	34	3. Six Months	91.8
3124	64	427	3. Six Months	80.2
3125	64	128	3. Six Months	80.2
3126	64	196	3. Six Months	80.2
3127	64	131	3. Six Months	80.2
3128	64	326	3. Six Months	80.2
3129	64	255	3. Six Months	80.2
3130	64	308	3. Six Months	80.2
3131	64	58	3. Six Months	80.2
3132	64	610	3. Six Months	80.2
3133	64	130	4. More Than Six Months	100
3134	64	4	4. More Than Six Months	87.9
3135	64	318	4. More Than Six Months	80.8
3136	64	30	4. More Than Six Months	76.3
3137	64	43	4. More Than Six Months	70.8
3138	64	94	4. More Than Six Months	70.8
3139	64	13	4. More Than Six Months	70.8
3140	64	108	4. More Than Six Months	70.8
3141	64	611	4. More Than Six Months	70.8
3142	64	196	4. More Than Six Months	70.8
3143	64	612	4. More Than Six Months	63.6
3144	64	113	4. More Than Six Months	63.6
3145	64	613	4. More Than Six Months	63.6
3146	64	198	4. More Than Six Months	63.6
3147	64	141	4. More Than Six Months	63.6
3148	64	255	4. More Than Six Months	63.6
3149	64	614	4. More Than Six Months	63.6
3150	64	241	4. More Than Six Months	63.6
3151	64	332	4. More Than Six Months	63.6
3152	64	116	4. More Than Six Months	63.6
3153	64	117	4. More Than Six Months	63.6
3154	64	615	4. More Than Six Months	63.6
3155	64	135	4. More Than Six Months	63.6
3156	64	616	4. More Than Six Months	63.6
3157	64	512	4. More Than Six Months	53.7
3158	64	617	4. More Than Six Months	53.7
3159	64	618	4. More Than Six Months	53.7
3160	64	79	4. More Than Six Months	53.7
3161	64	23	4. More Than Six Months	53.7
3162	64	416	4. More Than Six Months	53.7
3163	64	619	4. More Than Six Months	53.7
3164	64	1	4. More Than Six Months	53.7
3165	64	620	4. More Than Six Months	53.7
3166	64	621	4. More Than Six Months	53.7
3167	64	622	4. More Than Six Months	53.7
3168	64	623	4. More Than Six Months	53.7
3169	64	35	4. More Than Six Months	53.7
3170	64	87	4. More Than Six Months	53.7
3171	64	73	4. More Than Six Months	53.7
3172	64	58	4. More Than Six Months	53.7
3173	64	315	4. More Than Six Months	53.7
3174	64	126	4. More Than Six Months	53.7
3175	64	624	4. More Than Six Months	53.7
3176	64	625	4. More Than Six Months	53.7
3177	64	626	4. More Than Six Months	53.7
3178	64	134	4. More Than Six Months	53.7
3179	64	583	4. More Than Six Months	53.7
3180	64	19	4. More Than Six Months	53.7
3181	64	427	4. More Than Six Months	53.7
3182	64	53	4. More Than Six Months	53.7
3183	64	627	4. More Than Six Months	53.7
3184	64	10	4. More Than Six Months	53.7
3185	64	130	5. All	100
3186	64	613	5. All	89.5
3187	64	627	5. All	87.2
3188	64	623	5. All	87.2
3189	64	4	5. All	84.6
3190	64	318	5. All	78.6
3191	64	30	5. All	74.9
3192	64	196	5. All	74.9
3193	64	94	5. All	70.5
3194	64	108	5. All	70.5
3195	64	255	5. All	70.5
3196	64	13	5. All	65.1
3197	64	427	5. All	65.1
3198	64	611	5. All	65.1
3199	64	43	5. All	65.1
3200	64	332	5. All	65.1
3201	64	58	5. All	65.1
3202	64	113	5. All	65.1
3203	64	117	5. All	65.1
3204	64	116	5. All	58.2
3205	64	135	5. All	58.2
3206	64	1	5. All	58.2
3207	64	128	5. All	58.2
3208	64	34	5. All	58.2
3209	64	241	5. All	58.2
3210	64	141	5. All	58.2
3211	64	308	5. All	58.2
3212	64	198	5. All	58.2
3213	64	326	5. All	58.2
3214	64	615	5. All	58.2
3215	64	614	5. All	58.2
3216	64	612	5. All	58.2
3217	64	616	5. All	58.2
3218	64	621	5. All	48.5
3219	64	35	5. All	48.5
3220	64	159	5. All	48.5
3221	64	628	5. All	48.5
3222	64	73	5. All	48.5
3223	64	87	5. All	48.5
3224	64	416	5. All	48.5
3225	64	629	5. All	48.5
3226	64	619	5. All	48.5
3227	64	23	5. All	48.5
3228	64	44	5. All	48.5
3229	64	150	5. All	48.5
3230	64	131	5. All	48.5
3231	64	145	5. All	48.5
3232	64	79	5. All	48.5
3233	64	134	5. All	48.5
3234	64	620	5. All	48.5
3235	64	19	5. All	48.5
3236	64	53	5. All	48.5
3237	64	617	5. All	48.5
3238	64	512	5. All	48.5
3239	64	315	5. All	48.5
3240	64	583	5. All	48.5
3241	64	126	5. All	48.5
3242	64	624	5. All	48.5
3243	64	625	5. All	48.5
3244	64	10	5. All	48.5
3245	64	618	5. All	48.5
3246	64	622	5. All	48.5
3247	64	626	5. All	48.5
3248	64	610	5. All	48.5
3249	65	60	3. Six Months	100
3250	65	167	4. More Than Six Months	100
3251	65	630	4. More Than Six Months	100
3252	65	13	4. More Than Six Months	100
3253	65	58	4. More Than Six Months	100
3254	65	167	5. All	100
3255	65	630	5. All	100
3256	65	58	5. All	100
3257	65	13	5. All	100
3258	65	60	5. All	100
3259	65	28	5. All	100
3260	66	337	4. More Than Six Months	100
3261	66	631	4. More Than Six Months	100
3262	66	23	4. More Than Six Months	89.4
3263	66	631	5. All	100
3264	66	337	5. All	79.6
3265	66	23	5. All	65.6
3266	67	13	1. Thirty Days	100
3267	67	632	2. Three Months	100
3268	67	13	2. Three Months	75.4
3269	67	632	3. Six Months	100
3270	67	13	3. Six Months	80.3
3271	67	1	3. Six Months	65.4
3272	67	37	3. Six Months	65.4
3273	67	38	3. Six Months	65.4
3274	67	113	3. Six Months	65.4
3275	67	34	3. Six Months	65.4
3276	67	49	3. Six Months	65.4
3277	67	13	4. More Than Six Months	100
3278	67	633	4. More Than Six Months	88.3
3279	67	37	4. More Than Six Months	82.7
3280	67	18	4. More Than Six Months	75.5
3281	67	14	4. More Than Six Months	75.5
3282	67	1	4. More Than Six Months	65.5
3283	67	60	4. More Than Six Months	65.5
3284	67	6	4. More Than Six Months	65.5
3285	67	15	4. More Than Six Months	65.5
3286	67	634	4. More Than Six Months	65.5
3287	67	470	4. More Than Six Months	65.5
3288	67	635	4. More Than Six Months	65.5
3289	67	636	4. More Than Six Months	65.5
3290	67	77	4. More Than Six Months	65.5
3291	67	13	5. All	100
3292	67	634	5. All	95.7
3293	67	632	5. All	95.7
3294	67	37	5. All	83.5
3295	67	633	5. All	79.2
3296	67	1	5. All	73.9
3297	67	34	5. All	67.1
3298	67	18	5. All	67.1
3299	67	14	5. All	67.1
3300	67	15	5. All	57.5
3301	67	49	5. All	57.5
3302	67	326	5. All	57.5
3303	67	169	5. All	57.5
3304	67	30	5. All	57.5
3305	67	113	5. All	57.5
3306	67	3	5. All	57.5
3307	67	38	5. All	57.5
3308	67	6	5. All	57.5
3309	67	635	5. All	57.5
3310	67	77	5. All	57.5
3311	67	636	5. All	57.5
3312	67	60	5. All	57.5
3313	67	27	5. All	57.5
3314	67	470	5. All	57.5
3315	67	45	5. All	57.5
3316	68	549	1. Thirty Days	100
3317	68	508	1. Thirty Days	89.6
3318	68	58	1. Thirty Days	89.6
3319	68	226	1. Thirty Days	89.6
3320	68	183	1. Thirty Days	89.6
3321	68	637	2. Three Months	100
3322	68	508	2. Three Months	93.3
3323	68	549	2. Three Months	89.1
3324	68	226	2. Three Months	83.9
3325	68	546	2. Three Months	83.9
3326	68	606	2. Three Months	83.9
3327	68	500	2. Three Months	83.9
3328	68	507	2. Three Months	77.2
3329	68	153	2. Three Months	77.2
3330	68	183	2. Three Months	77.2
3331	68	54	2. Three Months	67.7
3332	68	638	2. Three Months	67.7
3333	68	58	2. Three Months	67.7
3334	68	130	2. Three Months	67.7
3335	68	22	2. Three Months	67.7
3336	68	226	3. Six Months	100
3337	68	22	3. Six Months	94.7
3338	68	508	3. Six Months	90.7
3339	68	637	3. Six Months	87.5
3340	68	86	3. Six Months	81.5
3341	68	606	3. Six Months	79.1
3342	68	546	3. Six Months	73.2
3343	68	549	3. Six Months	73.2
3344	68	507	3. Six Months	69.4
3345	68	183	3. Six Months	64.8
3346	68	639	3. Six Months	64.8
3347	68	168	3. Six Months	64.8
3348	68	500	3. Six Months	64.8
3349	68	14	3. Six Months	58.8
3350	68	153	3. Six Months	58.8
3351	68	1	3. Six Months	50.5
3352	68	258	3. Six Months	50.5
3353	68	54	3. Six Months	50.5
3354	68	638	3. Six Months	50.5
3355	68	58	3. Six Months	50.5
3356	68	130	3. Six Months	50.5
3357	68	226	4. More Than Six Months	100
3358	68	168	4. More Than Six Months	93.4
3359	68	508	4. More Than Six Months	91.4
3360	68	22	4. More Than Six Months	86.9
3361	68	640	4. More Than Six Months	84.2
3362	68	54	4. More Than Six Months	84.2
3363	68	183	4. More Than Six Months	77.6
3364	68	641	4. More Than Six Months	73.4
3365	68	642	4. More Than Six Months	73.4
3366	68	643	4. More Than Six Months	73.4
3367	68	173	4. More Than Six Months	68.4
3368	68	639	4. More Than Six Months	68.4
3369	68	45	4. More Than Six Months	68.4
3370	68	637	4. More Than Six Months	61.8
3371	68	1	4. More Than Six Months	61.8
3372	68	243	4. More Than Six Months	61.8
3373	68	644	4. More Than Six Months	61.8
3374	68	645	4. More Than Six Months	61.8
3375	68	4	4. More Than Six Months	61.8
3376	68	606	4. More Than Six Months	61.8
3377	68	239	4. More Than Six Months	61.8
3378	68	137	4. More Than Six Months	52.6
3379	68	153	4. More Than Six Months	52.6
3380	68	646	4. More Than Six Months	52.6
3381	68	34	4. More Than Six Months	52.6
3382	68	302	4. More Than Six Months	52.6
3383	68	15	4. More Than Six Months	52.6
3384	68	17	4. More Than Six Months	52.6
3385	68	31	4. More Than Six Months	52.6
3386	68	406	4. More Than Six Months	52.6
3387	68	647	4. More Than Six Months	52.6
3388	68	648	4. More Than Six Months	52.6
3389	68	649	4. More Than Six Months	52.6
3390	68	154	4. More Than Six Months	52.6
3391	68	222	4. More Than Six Months	52.6
3392	68	226	5. All	100
3393	68	22	5. All	92.8
3394	68	508	5. All	92
3395	68	168	5. All	82.9
3396	68	637	5. All	81.6
3397	68	606	5. All	75.3
3398	68	645	5. All	75.3
3399	68	54	5. All	73.4
3400	68	649	5. All	73.4
3401	68	183	5. All	71.2
3402	68	86	5. All	71.2
3403	68	639	5. All	68.9
3404	68	640	5. All	68.9
3405	68	549	5. All	66.1
3406	68	546	5. All	63
3407	68	1	5. All	59.3
3408	68	643	5. All	59.3
3409	68	642	5. All	59.3
3410	68	507	5. All	59.3
3411	68	641	5. All	59.3
3412	68	153	5. All	59.3
3413	68	45	5. All	54.8
3414	68	243	5. All	54.8
3415	68	173	5. All	54.8
3416	68	500	5. All	54.8
3417	68	14	5. All	54.8
3418	68	258	5. All	49
3419	68	58	5. All	49
3420	68	4	5. All	49
3421	68	34	5. All	49
3422	68	648	5. All	49
3423	68	644	5. All	49
3424	68	239	5. All	49
3425	68	302	5. All	40.8
3426	68	15	5. All	40.8
3427	68	650	5. All	40.8
3428	68	154	5. All	40.8
3429	68	646	5. All	40.8
3430	68	638	5. All	40.8
3431	68	222	5. All	40.8
3432	68	506	5. All	40.8
3433	68	31	5. All	40.8
3434	68	137	5. All	40.8
3435	68	647	5. All	40.8
3436	68	17	5. All	40.8
3437	68	406	5. All	40.8
3438	68	130	5. All	40.8
3439	69	199	3. Six Months	100
3440	69	13	4. More Than Six Months	100
3441	69	28	4. More Than Six Months	89.8
3442	69	13	5. All	100
3443	69	28	5. All	89.3
3444	69	199	5. All	89.3
3445	70	248	4. More Than Six Months	100
3446	70	476	4. More Than Six Months	94.5
3447	70	621	4. More Than Six Months	87.5
3448	70	651	4. More Than Six Months	87.5
3449	70	652	4. More Than Six Months	77.5
3450	70	653	4. More Than Six Months	77.5
3451	70	58	4. More Than Six Months	77.5
3452	70	43	4. More Than Six Months	77.5
3453	70	248	5. All	100
3454	70	476	5. All	94.5
3455	70	651	5. All	87.4
3456	70	621	5. All	87.4
3457	70	653	5. All	77.3
3458	70	652	5. All	77.3
3459	70	43	5. All	77.3
3460	70	58	5. All	77.3
3461	71	654	3. Six Months	100
3462	71	161	4. More Than Six Months	100
3463	71	113	4. More Than Six Months	100
3464	71	1	4. More Than Six Months	88.6
3465	71	655	4. More Than Six Months	88.6
3466	71	654	5. All	100
3467	71	161	5. All	74
3468	71	113	5. All	74
3469	71	1	5. All	65.2
3470	71	655	5. All	65.2
3471	72	656	4. More Than Six Months	100
3472	72	657	4. More Than Six Months	100
3473	72	658	4. More Than Six Months	100
3474	72	656	5. All	100
3475	72	657	5. All	100
3476	72	658	5. All	66.3
3477	73	19	4. More Than Six Months	100
3478	73	18	4. More Than Six Months	83.4
3479	73	3	4. More Than Six Months	83.4
3480	73	32	4. More Than Six Months	83.4
3481	73	19	5. All	100
3482	73	18	5. All	83.4
3483	73	3	5. All	83.4
3484	73	32	5. All	83.4
3485	74	659	4. More Than Six Months	100
3486	74	146	4. More Than Six Months	100
3487	74	659	5. All	100
3488	74	146	5. All	100
3489	75	128	3. Six Months	100
3843	80	4	5. All	61.1
3490	75	229	4. More Than Six Months	100
3491	75	242	4. More Than Six Months	89.5
3492	75	206	4. More Than Six Months	89.5
3493	75	13	4. More Than Six Months	89.5
3494	75	128	5. All	100
3495	75	229	5. All	100
3496	75	242	5. All	100
3497	75	206	5. All	88.9
3498	75	13	5. All	88.9
3499	75	130	5. All	88.9
3500	76	660	4. More Than Six Months	100
3501	76	33	4. More Than Six Months	68.4
3502	76	660	5. All	100
3503	76	33	5. All	66.5
3504	77	661	4. More Than Six Months	100
3505	77	662	4. More Than Six Months	100
3506	77	661	5. All	100
3507	77	662	5. All	100
3508	78	325	4. More Than Six Months	100
3509	78	226	4. More Than Six Months	100
3510	78	226	5. All	100
3511	78	325	5. All	90.6
3512	79	663	1. Thirty Days	100
3513	79	664	2. Three Months	100
3514	79	43	2. Three Months	79.5
3515	79	19	2. Three Months	73.1
3516	79	663	2. Three Months	73.1
3517	79	54	2. Three Months	64.1
3518	79	306	2. Three Months	64.1
3519	79	30	2. Three Months	64.1
3520	79	349	2. Three Months	64.1
3521	79	19	3. Six Months	100
3522	79	43	3. Six Months	96.5
3523	79	664	3. Six Months	92.4
3524	79	663	3. Six Months	87.4
3525	79	22	3. Six Months	80.9
3526	79	306	3. Six Months	76.8
3527	79	30	3. Six Months	71.8
3528	79	54	3. Six Months	71.8
3529	79	130	3. Six Months	65.3
3530	79	665	3. Six Months	65.3
3531	79	37	3. Six Months	56.2
3532	79	23	3. Six Months	56.2
3533	79	302	3. Six Months	56.2
3534	79	33	3. Six Months	56.2
3535	79	215	3. Six Months	56.2
3536	79	554	3. Six Months	56.2
3537	79	58	3. Six Months	56.2
3538	79	349	3. Six Months	56.2
3539	79	666	4. More Than Six Months	100
3540	79	19	4. More Than Six Months	97.2
3541	79	43	4. More Than Six Months	96
3542	79	54	4. More Than Six Months	84
3543	79	22	4. More Than Six Months	81.6
3544	79	663	4. More Than Six Months	80.8
3545	79	389	4. More Than Six Months	68.9
3546	79	667	4. More Than Six Months	67.2
3547	79	239	4. More Than Six Months	63.3
3548	79	306	4. More Than Six Months	63.3
3549	79	2	4. More Than Six Months	63.3
3550	79	58	4. More Than Six Months	63.3
3551	79	130	4. More Than Six Months	63.3
3552	79	554	4. More Than Six Months	63.3
3553	79	668	4. More Than Six Months	61
3554	79	12	4. More Than Six Months	61
3555	79	282	4. More Than Six Months	58.4
3556	79	31	4. More Than Six Months	58.4
3557	79	13	4. More Than Six Months	58.4
3558	79	113	4. More Than Six Months	55.4
3559	79	641	4. More Than Six Months	51.9
3560	79	126	4. More Than Six Months	51.9
3561	79	665	4. More Than Six Months	51.9
3562	79	4	4. More Than Six Months	47.6
3563	79	3	4. More Than Six Months	47.6
3564	79	53	4. More Than Six Months	47.6
3565	79	669	4. More Than Six Months	47.6
3566	79	74	4. More Than Six Months	47.6
3567	79	670	4. More Than Six Months	47.6
3568	79	1	4. More Than Six Months	47.6
3569	79	173	4. More Than Six Months	42
3570	79	34	4. More Than Six Months	42
3571	79	346	4. More Than Six Months	42
3572	79	23	4. More Than Six Months	42
3573	79	28	4. More Than Six Months	42
3574	79	671	4. More Than Six Months	42
3575	79	254	4. More Than Six Months	42
3576	79	332	4. More Than Six Months	42
3577	79	349	4. More Than Six Months	42
3578	79	139	4. More Than Six Months	34.3
3579	79	672	4. More Than Six Months	34.3
3580	79	673	4. More Than Six Months	34.3
3581	79	674	4. More Than Six Months	34.3
3582	79	65	4. More Than Six Months	34.3
3583	79	79	4. More Than Six Months	34.3
3584	79	33	4. More Than Six Months	34.3
3585	79	675	4. More Than Six Months	34.3
3586	79	406	4. More Than Six Months	34.3
3587	79	60	4. More Than Six Months	34.3
3588	79	186	4. More Than Six Months	34.3
3589	79	326	4. More Than Six Months	34.3
3590	79	336	4. More Than Six Months	34.3
3591	79	27	4. More Than Six Months	34.3
3592	79	676	4. More Than Six Months	34.3
3593	79	677	4. More Than Six Months	34.3
3594	79	678	4. More Than Six Months	34.3
3595	79	679	4. More Than Six Months	34.3
3596	79	181	4. More Than Six Months	34.3
3597	79	359	4. More Than Six Months	34.3
3598	79	32	4. More Than Six Months	34.3
3599	79	128	4. More Than Six Months	34.3
3600	79	680	4. More Than Six Months	34.3
3601	79	417	4. More Than Six Months	34.3
3602	79	681	4. More Than Six Months	34.3
3603	79	682	4. More Than Six Months	34.3
3604	79	683	4. More Than Six Months	34.3
3605	79	30	4. More Than Six Months	34.3
3606	79	88	4. More Than Six Months	34.3
3607	79	10	4. More Than Six Months	34.3
3608	79	39	4. More Than Six Months	34.3
3609	79	198	4. More Than Six Months	34.3
3610	79	145	4. More Than Six Months	34.3
3611	79	303	4. More Than Six Months	34.3
3612	79	684	4. More Than Six Months	34.3
3613	79	19	5. All	100
3614	79	666	5. All	98.1
3615	79	43	5. All	98.1
3616	79	663	5. All	84.8
3617	79	54	5. All	84.8
3618	79	22	5. All	84.1
3619	79	306	5. All	69.8
3620	79	130	5. All	66.8
3621	79	389	5. All	66.8
3622	79	669	5. All	66.8
3623	79	667	5. All	65.1
3624	79	554	5. All	65.1
3625	79	58	5. All	65.1
3626	79	2	5. All	63.2
3627	79	664	5. All	63.2
3628	79	674	5. All	63.2
3629	79	678	5. All	63.2
3630	79	239	5. All	63.2
3631	79	683	5. All	63.2
3632	79	676	5. All	63.2
3633	79	675	5. All	63.2
3634	79	665	5. All	58.9
3635	79	12	5. All	58.9
3636	79	668	5. All	58.9
3637	79	13	5. All	58.9
3638	79	282	5. All	56.3
3639	79	31	5. All	56.3
3640	79	113	5. All	56.3
3641	79	30	5. All	53.2
3642	79	349	5. All	49.7
3643	79	126	5. All	49.7
3644	79	1	5. All	49.7
3645	79	641	5. All	49.7
3646	79	23	5. All	49.7
3647	79	670	5. All	45.3
3648	79	332	5. All	45.3
3649	79	33	5. All	45.3
3650	79	3	5. All	45.3
3651	79	28	5. All	45.3
3652	79	53	5. All	45.3
3653	79	4	5. All	45.3
3654	79	74	5. All	45.3
3655	79	173	5. All	39.8
3656	79	346	5. All	39.8
3657	79	37	5. All	39.8
3658	79	302	5. All	39.8
3659	79	60	5. All	39.8
3660	79	215	5. All	39.8
3661	79	145	5. All	39.8
3662	79	65	5. All	39.8
3663	79	254	5. All	39.8
3664	79	406	5. All	39.8
3665	79	198	5. All	39.8
3666	79	417	5. All	39.8
3667	79	128	5. All	39.8
3668	79	34	5. All	39.8
3669	79	671	5. All	39.8
3670	79	50	5. All	32
3671	79	326	5. All	32
3672	79	80	5. All	32
3673	79	216	5. All	32
3674	79	219	5. All	32
3675	79	336	5. All	32
3676	79	673	5. All	32
3677	79	79	5. All	32
3678	79	161	5. All	32
3679	79	140	5. All	32
3680	79	313	5. All	32
3681	79	416	5. All	32
3682	79	153	5. All	32
3683	79	681	5. All	32
3684	79	303	5. All	32
3685	79	186	5. All	32
3686	79	27	5. All	32
3687	79	39	5. All	32
3688	79	139	5. All	32
3689	79	672	5. All	32
3690	79	10	5. All	32
3691	79	88	5. All	32
3692	79	677	5. All	32
3693	79	682	5. All	32
3694	79	679	5. All	32
3695	79	680	5. All	32
3696	79	32	5. All	32
3697	79	359	5. All	32
3698	79	181	5. All	32
3699	79	684	5. All	32
3700	80	313	2. Three Months	100
3701	80	58	2. Three Months	74.4
3702	80	685	2. Three Months	65.7
3703	80	686	2. Three Months	65.7
3704	80	406	2. Three Months	65.7
3705	80	1	2. Three Months	65.7
3706	80	685	3. Six Months	100
3707	80	313	3. Six Months	93.3
3708	80	88	3. Six Months	91.2
3709	80	58	3. Six Months	83.4
3710	80	329	3. Six Months	76.1
3711	80	686	3. Six Months	71.3
3712	80	236	3. Six Months	71.3
3713	80	122	3. Six Months	65.1
3714	80	317	3. Six Months	65.1
3715	80	198	3. Six Months	56.3
3716	80	305	3. Six Months	56.3
3717	80	4	3. Six Months	56.3
3718	80	159	3. Six Months	56.3
3719	80	342	3. Six Months	56.3
3720	80	406	3. Six Months	56.3
3721	80	1	3. Six Months	56.3
3722	80	687	4. More Than Six Months	100
3723	80	342	4. More Than Six Months	98
3724	80	688	4. More Than Six Months	94.2
3725	80	16	4. More Than Six Months	94.2
3726	80	310	4. More Than Six Months	80.8
3727	80	689	4. More Than Six Months	77.4
3728	80	690	4. More Than Six Months	77.4
3729	80	305	4. More Than Six Months	77.4
3730	80	130	4. More Than Six Months	73.5
3731	80	475	4. More Than Six Months	71.2
3732	80	88	4. More Than Six Months	71.2
3733	80	333	4. More Than Six Months	65.8
3734	80	337	4. More Than Six Months	65.8
3735	80	313	4. More Than Six Months	65.8
3736	80	1	4. More Than Six Months	62.5
3737	80	198	4. More Than Six Months	58.5
3738	80	691	4. More Than Six Months	58.5
3739	80	692	4. More Than Six Months	58.5
3740	80	693	4. More Than Six Months	58.5
3741	80	220	4. More Than Six Months	58.5
3742	80	329	4. More Than Six Months	58.5
3743	80	317	4. More Than Six Months	58.5
3744	80	65	4. More Than Six Months	58.5
3745	80	180	4. More Than Six Months	58.5
3746	80	167	4. More Than Six Months	58.5
3747	80	140	4. More Than Six Months	58.5
3748	80	384	4. More Than Six Months	53.7
3749	80	145	4. More Than Six Months	53.7
3750	80	4	4. More Than Six Months	53.7
3751	80	113	4. More Than Six Months	53.7
3752	80	184	4. More Than Six Months	53.7
3753	80	694	4. More Than Six Months	53.7
3754	80	255	4. More Than Six Months	53.7
3755	80	695	4. More Than Six Months	53.7
3756	80	222	4. More Than Six Months	53.7
3757	80	412	4. More Than Six Months	53.7
3758	80	696	4. More Than Six Months	47.5
3759	80	224	4. More Than Six Months	47.5
3760	80	414	4. More Than Six Months	47.5
3761	80	122	4. More Than Six Months	47.5
3762	80	697	4. More Than Six Months	47.5
3763	80	306	4. More Than Six Months	47.5
3764	80	196	4. More Than Six Months	47.5
3765	80	25	4. More Than Six Months	47.5
3766	80	698	4. More Than Six Months	47.5
3767	80	10	4. More Than Six Months	47.5
3768	80	33	4. More Than Six Months	47.5
3769	80	77	4. More Than Six Months	47.5
3770	80	699	4. More Than Six Months	47.5
3771	80	700	4. More Than Six Months	47.5
3772	80	241	4. More Than Six Months	47.5
3773	80	233	4. More Than Six Months	47.5
3774	80	132	4. More Than Six Months	47.5
3775	80	701	4. More Than Six Months	47.5
3776	80	403	4. More Than Six Months	47.5
3777	80	43	4. More Than Six Months	47.5
3778	80	702	4. More Than Six Months	47.5
3779	80	28	4. More Than Six Months	47.5
3780	80	119	4. More Than Six Months	38.9
3781	80	201	4. More Than Six Months	38.9
3782	80	67	4. More Than Six Months	38.9
3783	80	703	4. More Than Six Months	38.9
3784	80	619	4. More Than Six Months	38.9
3785	80	704	4. More Than Six Months	38.9
3786	80	705	4. More Than Six Months	38.9
3787	80	116	4. More Than Six Months	38.9
3788	80	706	4. More Than Six Months	38.9
3789	80	35	4. More Than Six Months	38.9
3790	80	707	4. More Than Six Months	38.9
3791	80	665	4. More Than Six Months	38.9
3792	80	73	4. More Than Six Months	38.9
3793	80	708	4. More Than Six Months	38.9
3794	80	59	4. More Than Six Months	38.9
3795	80	58	4. More Than Six Months	38.9
3796	80	135	4. More Than Six Months	38.9
3797	80	709	4. More Than Six Months	38.9
3798	80	299	4. More Than Six Months	38.9
3799	80	710	4. More Than Six Months	38.9
3800	80	711	4. More Than Six Months	38.9
3801	80	191	4. More Than Six Months	38.9
3802	80	183	4. More Than Six Months	38.9
3803	80	712	4. More Than Six Months	38.9
3804	80	533	4. More Than Six Months	38.9
3805	80	713	4. More Than Six Months	38.9
3806	80	404	4. More Than Six Months	38.9
3807	80	714	4. More Than Six Months	38.9
3808	80	173	4. More Than Six Months	38.9
3809	80	426	4. More Than Six Months	38.9
3810	80	452	4. More Than Six Months	38.9
3811	80	308	4. More Than Six Months	38.9
3812	80	315	4. More Than Six Months	38.9
3813	80	318	4. More Than Six Months	38.9
3814	80	159	4. More Than Six Months	38.9
3815	80	687	5. All	100
3816	80	342	5. All	98.7
3817	80	16	5. All	93.4
3818	80	688	5. All	93.4
3819	80	88	5. All	86.5
3820	80	313	5. All	85.3
3821	80	685	5. All	81.3
3822	80	310	5. All	79.8
3823	80	305	5. All	79.8
3824	80	689	5. All	78.1
3825	80	690	5. All	76.4
3826	80	695	5. All	76.4
3827	80	697	5. All	74.4
3828	80	130	5. All	74.4
3829	80	701	5. All	74.4
3830	80	696	5. All	74.4
3831	80	329	5. All	72.3
3832	80	710	5. All	72.3
3833	80	475	5. All	70
3834	80	58	5. All	70
3835	80	1	5. All	67.4
3836	80	333	5. All	67.4
3837	80	317	5. All	67.4
3838	80	337	5. All	64.5
3839	80	198	5. All	64.5
3840	80	167	5. All	61.1
3841	80	691	5. All	61.1
3842	80	122	5. All	61.1
3844	80	692	5. All	57.1
3845	80	220	5. All	57.1
3846	80	65	5. All	57.1
3847	80	180	5. All	57.1
3848	80	686	5. All	57.1
3849	80	236	5. All	57.1
3850	80	145	5. All	57.1
3851	80	140	5. All	57.1
3852	80	693	5. All	57.1
3853	80	159	5. All	52.2
3854	80	694	5. All	52.2
3855	80	184	5. All	52.2
3856	80	306	5. All	52.2
3857	80	222	5. All	52.2
3858	80	255	5. All	52.2
3859	80	403	5. All	52.2
3860	80	384	5. All	52.2
3861	80	196	5. All	52.2
3862	80	412	5. All	52.2
3863	80	113	5. All	52.2
3864	80	173	5. All	45.9
3865	80	224	5. All	45.9
3866	80	10	5. All	45.9
3867	80	33	5. All	45.9
3868	80	67	5. All	45.9
3869	80	414	5. All	45.9
3870	80	452	5. All	45.9
3871	80	698	5. All	45.9
3872	80	706	5. All	45.9
3873	80	77	5. All	45.9
3874	80	406	5. All	45.9
3875	80	132	5. All	45.9
3876	80	43	5. All	45.9
3877	80	241	5. All	45.9
3878	80	28	5. All	45.9
3879	80	25	5. All	45.9
3880	80	699	5. All	45.9
3881	80	233	5. All	45.9
3882	80	700	5. All	45.9
3883	80	702	5. All	45.9
3884	80	407	5. All	37.1
3885	80	621	5. All	37.1
3886	80	9	5. All	37.1
3887	80	709	5. All	37.1
3888	80	665	5. All	37.1
3889	80	106	5. All	37.1
3890	80	191	5. All	37.1
3891	80	73	5. All	37.1
3892	80	183	5. All	37.1
3893	80	35	5. All	37.1
3894	80	135	5. All	37.1
3895	80	59	5. All	37.1
3896	80	708	5. All	37.1
3897	80	707	5. All	37.1
3898	80	712	5. All	37.1
3899	80	619	5. All	37.1
3900	80	404	5. All	37.1
3901	80	201	5. All	37.1
3902	80	704	5. All	37.1
3903	80	533	5. All	37.1
3904	80	318	5. All	37.1
3905	80	299	5. All	37.1
3906	80	116	5. All	37.1
3907	80	714	5. All	37.1
3908	80	315	5. All	37.1
3909	80	426	5. All	37.1
3910	80	713	5. All	37.1
3911	80	119	5. All	37.1
3912	80	711	5. All	37.1
3913	80	308	5. All	37.1
3914	80	703	5. All	37.1
3915	81	208	4. More Than Six Months	100
3916	81	1	4. More Than Six Months	100
3917	81	208	5. All	100
3918	81	715	5. All	100
3919	81	1	5. All	100
3920	82	271	4. More Than Six Months	100
3921	82	716	4. More Than Six Months	100
3922	82	717	4. More Than Six Months	100
3923	82	718	4. More Than Six Months	100
3924	82	719	4. More Than Six Months	100
3925	82	164	4. More Than Six Months	100
3926	82	719	5. All	100
3927	82	717	5. All	100
3928	82	716	5. All	100
3929	82	718	5. All	100
3930	82	164	5. All	63.7
3931	82	271	5. All	63.7
3932	82	130	5. All	63.7
3933	83	188	4. More Than Six Months	100
3934	83	720	4. More Than Six Months	90.1
3935	83	721	4. More Than Six Months	90.1
3936	83	720	5. All	100
3937	83	721	5. All	100
3938	83	188	5. All	81.1
3939	84	722	3. Six Months	100
3940	84	335	4. More Than Six Months	100
3941	84	43	4. More Than Six Months	100
3942	84	335	5. All	100
3943	84	43	5. All	100
3944	84	722	5. All	100
3945	84	651	5. All	100
3946	85	1	4. More Than Six Months	100
3947	85	234	4. More Than Six Months	88.8
3948	85	723	4. More Than Six Months	88.8
3949	85	724	4. More Than Six Months	88.8
3950	85	725	4. More Than Six Months	88.8
3951	85	724	5. All	100
3952	85	723	5. All	100
3953	85	1	5. All	73.9
3954	85	234	5. All	65.2
3955	85	725	5. All	65.2
3956	86	726	1. Thirty Days	100
3957	86	726	2. Three Months	100
3958	86	727	2. Three Months	76.6
3959	86	199	2. Three Months	76.6
3960	86	726	3. Six Months	100
3961	86	412	3. Six Months	92.4
3962	86	727	3. Six Months	92.4
3963	86	28	3. Six Months	87.4
3964	86	156	3. Six Months	87.4
3965	86	199	3. Six Months	71.7
3966	86	412	4. More Than Six Months	100
3967	86	28	4. More Than Six Months	93.9
3968	86	156	4. More Than Six Months	93.9
3969	86	727	4. More Than Six Months	70.4
3970	86	199	4. More Than Six Months	70.4
3971	86	4	4. More Than Six Months	70.4
3972	86	392	4. More Than Six Months	61.7
3973	86	306	4. More Than Six Months	61.7
3974	86	130	4. More Than Six Months	61.7
3975	86	412	5. All	100
3976	86	28	5. All	94.4
3977	86	156	5. All	94.4
3978	86	727	5. All	84.3
3979	86	726	5. All	84.3
3980	86	199	5. All	74.5
3981	86	4	5. All	69.9
3982	86	130	5. All	63.9
3983	86	392	5. All	55.5
3984	86	306	5. All	55.5
3985	87	18	4. More Than Six Months	100
3986	87	1	4. More Than Six Months	84.1
3987	87	18	5. All	100
3988	87	1	5. All	83.9
3989	89	109	2. Three Months	100
3990	89	77	2. Three Months	100
3991	89	14	2. Three Months	100
3992	89	728	3. Six Months	100
3993	89	19	3. Six Months	73.7
3994	89	37	3. Six Months	64.9
3995	89	30	3. Six Months	64.9
3996	89	38	3. Six Months	64.9
3997	89	109	3. Six Months	64.9
3998	89	77	3. Six Months	64.9
3999	89	14	3. Six Months	64.9
4000	89	14	4. More Than Six Months	100
4001	89	13	4. More Than Six Months	83.3
4002	89	6	4. More Than Six Months	77.9
4003	89	18	4. More Than Six Months	71
4004	89	729	4. More Than Six Months	71
4005	89	2	4. More Than Six Months	71
4006	89	20	4. More Than Six Months	71
4007	89	730	4. More Than Six Months	61.3
4008	89	731	4. More Than Six Months	61.3
4009	89	23	4. More Than Six Months	61.3
4010	89	38	4. More Than Six Months	61.3
4011	89	47	4. More Than Six Months	61.3
4012	89	28	4. More Than Six Months	61.3
4013	89	12	4. More Than Six Months	61.3
4014	89	3	4. More Than Six Months	61.3
4015	89	103	4. More Than Six Months	61.3
4016	89	137	4. More Than Six Months	61.3
4017	89	31	4. More Than Six Months	61.3
4018	89	34	4. More Than Six Months	61.3
4019	89	14	5. All	100
4020	89	728	5. All	95.6
4021	89	730	5. All	95.6
4022	89	13	5. All	83.2
4023	89	6	5. All	78.8
4024	89	19	5. All	73.4
4025	89	38	5. All	73.4
4026	89	37	5. All	66.5
4027	89	2	5. All	66.5
4028	89	731	5. All	66.5
4029	89	20	5. All	66.5
4030	89	109	5. All	66.5
4031	89	729	5. All	66.5
4032	89	31	5. All	66.5
4033	89	18	5. All	66.5
4034	89	30	5. All	56.7
4035	89	306	5. All	56.7
4036	89	80	5. All	56.7
4037	89	77	5. All	56.7
4038	89	34	5. All	56.7
4039	89	23	5. All	56.7
4040	89	47	5. All	56.7
4041	89	557	5. All	56.7
4042	89	28	5. All	56.7
4043	89	3	5. All	56.7
4044	89	103	5. All	56.7
4045	89	12	5. All	56.7
4046	89	137	5. All	56.7
4047	89	147	5. All	56.7
4048	90	130	4. More Than Six Months	100
4049	90	732	4. More Than Six Months	88.6
4050	90	220	4. More Than Six Months	88.6
4051	90	130	5. All	100
4052	90	732	5. All	88.3
4053	90	220	5. All	88.3
4054	91	226	2. Three Months	100
4055	91	248	2. Three Months	85
4056	91	733	2. Three Months	76.3
4057	91	226	3. Six Months	100
4058	91	248	3. Six Months	97.5
4059	91	733	3. Six Months	94.7
4060	91	226	4. More Than Six Months	100
4061	91	733	4. More Than Six Months	97.6
4062	91	325	4. More Than Six Months	94.9
4063	91	248	4. More Than Six Months	79
4064	91	243	4. More Than Six Months	72.4
4065	91	734	4. More Than Six Months	72.4
4066	91	168	4. More Than Six Months	72.4
4067	91	735	4. More Than Six Months	72.4
4068	91	736	4. More Than Six Months	63.1
4069	91	329	4. More Than Six Months	63.1
4070	91	642	4. More Than Six Months	63.1
4071	91	341	4. More Than Six Months	63.1
4072	91	226	5. All	100
4073	91	733	5. All	96.4
4074	91	248	5. All	90.4
4075	91	735	5. All	88.6
4076	91	325	5. All	84.4
4077	91	243	5. All	67.5
4078	91	168	5. All	61.5
4079	91	734	5. All	61.5
4080	91	341	5. All	61.5
4081	91	736	5. All	53.1
4082	91	329	5. All	53.1
4083	91	642	5. All	53.1
4084	92	13	3. Six Months	100
4085	92	30	3. Six Months	100
4086	92	13	4. More Than Six Months	100
4087	92	163	4. More Than Six Months	88.9
4088	92	13	5. All	100
4089	92	30	5. All	87.3
4090	92	163	5. All	77.2
4091	92	4	5. All	77.2
4092	93	136	4. More Than Six Months	100
4093	93	737	4. More Than Six Months	100
4094	93	59	4. More Than Six Months	93.2
4095	93	738	4. More Than Six Months	88.9
4096	93	154	4. More Than Six Months	83.7
4097	93	739	4. More Than Six Months	83.7
4098	93	589	4. More Than Six Months	76.9
4099	93	549	4. More Than Six Months	67.4
4100	93	19	4. More Than Six Months	67.4
4101	93	26	4. More Than Six Months	67.4
4102	93	34	4. More Than Six Months	67.4
4103	93	589	5. All	100
4104	93	136	5. All	92.9
4105	93	737	5. All	92.9
4106	93	59	5. All	86.5
4107	93	738	5. All	82.5
4108	93	154	5. All	77.6
4109	93	739	5. All	77.6
4110	93	549	5. All	62.2
4111	93	19	5. All	62.2
4112	93	26	5. All	62.2
4113	93	34	5. All	62.2
4114	94	126	2. Three Months	100
4115	94	126	3. Six Months	100
4116	94	740	4. More Than Six Months	100
4117	94	65	4. More Than Six Months	89.8
4118	94	741	4. More Than Six Months	89.8
4119	94	742	4. More Than Six Months	89.8
4120	94	740	5. All	100
4121	94	741	5. All	89.4
4122	94	65	5. All	89.4
4123	94	742	5. All	89.4
4124	94	248	5. All	89.4
4125	94	126	5. All	89.4
4126	95	130	1. Thirty Days	100
4127	95	248	1. Thirty Days	100
4128	95	144	1. Thirty Days	100
4129	95	167	1. Thirty Days	100
4130	95	248	2. Three Months	100
4131	95	743	2. Three Months	79.4
4132	95	130	2. Three Months	79.4
4133	95	144	2. Three Months	79.4
4134	95	167	2. Three Months	79.4
4135	95	248	3. Six Months	100
4136	95	144	3. Six Months	100
4137	95	130	3. Six Months	100
4138	95	743	3. Six Months	87.7
4139	95	167	3. Six Months	87.7
4140	95	196	3. Six Months	78
4141	95	130	4. More Than Six Months	100
4142	95	248	4. More Than Six Months	91.8
4143	95	144	4. More Than Six Months	80.9
4144	95	167	4. More Than Six Months	77.7
4145	95	255	4. More Than Six Months	63.7
4146	95	160	4. More Than Six Months	63.7
4147	95	744	4. More Than Six Months	63.7
4148	95	745	4. More Than Six Months	55.5
4149	95	746	4. More Than Six Months	55.5
4150	95	747	4. More Than Six Months	55.5
4151	95	130	5. All	100
4152	95	248	5. All	93.9
4153	95	144	5. All	87
4154	95	746	5. All	83.3
4155	95	167	5. All	81.2
4156	95	255	5. All	65
4157	95	744	5. All	65
4158	95	743	5. All	65
4159	95	160	5. All	59.2
4160	95	196	5. All	59.2
4161	95	745	5. All	51.1
4162	95	747	5. All	51.1
4163	96	161	4. More Than Six Months	100
4164	96	54	4. More Than Six Months	100
4165	96	45	4. More Than Six Months	92.2
4166	96	61	4. More Than Six Months	92.2
4167	96	748	4. More Than Six Months	81.2
4168	96	185	4. More Than Six Months	81.2
4169	96	365	4. More Than Six Months	81.2
4170	96	143	4. More Than Six Months	81.2
4171	96	65	4. More Than Six Months	81.2
4172	96	58	4. More Than Six Months	81.2
4173	96	38	4. More Than Six Months	81.2
4174	96	161	5. All	100
4175	96	54	5. All	100
4176	96	45	5. All	92
4177	96	61	5. All	92
4178	96	748	5. All	80.8
4179	96	185	5. All	80.8
4180	96	365	5. All	80.8
4181	96	143	5. All	80.8
4182	96	65	5. All	80.8
4183	96	58	5. All	80.8
4184	96	38	5. All	80.8
4185	97	749	1. Thirty Days	100
4186	97	749	2. Three Months	100
4187	97	318	2. Three Months	92.8
4188	97	680	2. Three Months	92.8
4189	97	750	2. Three Months	82.6
4190	97	751	2. Three Months	82.6
4191	97	750	3. Six Months	100
4192	97	318	3. Six Months	94
4193	97	408	3. Six Months	94
4194	97	680	3. Six Months	94
4195	97	749	3. Six Months	94
4196	97	199	3. Six Months	86.2
4197	97	160	3. Six Months	86.2
4198	97	305	3. Six Months	75.3
4199	97	752	3. Six Months	75.3
4200	97	381	3. Six Months	75.3
4201	97	130	3. Six Months	75.3
4202	97	30	3. Six Months	75.3
4203	97	220	3. Six Months	75.3
4204	97	753	3. Six Months	75.3
4205	97	751	3. Six Months	75.3
4206	97	325	3. Six Months	75.3
4207	97	305	4. More Than Six Months	100
4208	97	130	4. More Than Six Months	96.9
4209	97	325	4. More Than Six Months	93.5
4210	97	181	4. More Than Six Months	89.5
4211	97	754	4. More Than Six Months	89.5
4212	97	79	4. More Than Six Months	84.8
4213	97	318	4. More Than Six Months	84.8
4214	97	436	4. More Than Six Months	84.8
4215	97	255	4. More Than Six Months	84.8
4216	97	126	4. More Than Six Months	79
4217	97	335	4. More Than Six Months	79
4218	97	150	4. More Than Six Months	79
4219	97	94	4. More Than Six Months	71.6
4220	97	4	4. More Than Six Months	71.6
4221	97	491	4. More Than Six Months	71.6
4222	97	74	4. More Than Six Months	71.6
4223	97	399	4. More Than Six Months	71.6
4224	97	752	4. More Than Six Months	71.6
4225	97	747	4. More Than Six Months	61.1
4226	97	313	4. More Than Six Months	61.1
4227	97	65	4. More Than Six Months	61.1
4228	97	621	4. More Than Six Months	61.1
4229	97	30	4. More Than Six Months	61.1
4230	97	316	4. More Than Six Months	61.1
4231	97	607	4. More Than Six Months	61.1
4232	97	755	4. More Than Six Months	61.1
4233	97	756	4. More Than Six Months	61.1
4234	97	753	4. More Than Six Months	61.1
4235	97	533	4. More Than Six Months	61.1
4236	97	757	4. More Than Six Months	61.1
4237	97	208	4. More Than Six Months	61.1
4238	97	758	4. More Than Six Months	61.1
4239	97	234	4. More Than Six Months	61.1
4240	97	619	4. More Than Six Months	61.1
4241	97	381	4. More Than Six Months	61.1
4242	97	150	5. All	100
4243	97	335	5. All	100
4244	97	126	5. All	98
4245	97	399	5. All	95.8
4246	97	305	5. All	95.8
4247	97	757	5. All	93.4
4248	97	755	5. All	93.4
4249	97	208	5. All	93.4
4250	97	130	5. All	93.4
4251	97	318	5. All	90.7
4252	97	325	5. All	90.7
4253	97	181	5. All	80.5
4254	97	754	5. All	80.5
4255	97	436	5. All	75.9
4256	97	750	5. All	75.9
4257	97	752	5. All	75.9
4258	97	79	5. All	75.9
4259	97	255	5. All	75.9
4260	97	408	5. All	70.2
4261	97	680	5. All	70.2
4262	97	30	5. All	70.2
4263	97	749	5. All	70.2
4264	97	753	5. All	70.2
4265	97	199	5. All	63
4266	97	313	5. All	63
4267	97	74	5. All	63
4268	97	751	5. All	63
4269	97	491	5. All	63
4270	97	65	5. All	63
4271	97	381	5. All	63
4272	97	94	5. All	63
4273	97	234	5. All	63
4274	97	4	5. All	63
4275	97	160	5. All	63
4276	97	759	5. All	52.8
4277	97	760	5. All	52.8
4278	97	758	5. All	52.8
4279	97	299	5. All	52.8
4280	97	108	5. All	52.8
4281	97	533	5. All	52.8
4282	97	420	5. All	52.8
4283	97	747	5. All	52.8
4284	97	220	5. All	52.8
4285	97	621	5. All	52.8
4286	97	316	5. All	52.8
4287	97	619	5. All	52.8
4288	97	607	5. All	52.8
4289	97	756	5. All	52.8
4290	97	308	5. All	52.8
4291	98	168	2. Three Months	100
4292	98	168	3. Six Months	100
4293	98	168	4. More Than Six Months	100
4294	98	466	4. More Than Six Months	91.2
4295	98	384	4. More Than Six Months	76.1
4296	98	160	4. More Than Six Months	67.3
4297	98	761	4. More Than Six Months	67.3
4298	98	726	4. More Than Six Months	67.3
4299	98	110	4. More Than Six Months	67.3
4300	98	762	4. More Than Six Months	67.3
4301	98	763	4. More Than Six Months	67.3
4302	98	764	4. More Than Six Months	67.3
4303	98	765	4. More Than Six Months	67.3
4304	98	168	5. All	100
4305	98	110	5. All	100
4306	98	726	5. All	97.8
4307	98	764	5. All	97.8
4308	98	765	5. All	97.8
4309	98	761	5. All	97.8
4310	98	762	5. All	97.8
4311	98	763	5. All	97.8
4312	98	466	5. All	89.6
4313	98	384	5. All	70
4314	98	160	5. All	60.7
4315	99	113	4. More Than Six Months	100
4316	99	35	4. More Than Six Months	85.4
4317	99	113	5. All	100
4318	99	35	5. All	85.4
4319	100	633	1. Thirty Days	100
4320	100	633	2. Three Months	100
4321	100	633	3. Six Months	100
4322	100	633	5. All	100
4323	100	766	5. All	89.4
4324	101	113	4. More Than Six Months	100
4325	101	767	4. More Than Six Months	90.6
4326	101	94	4. More Than Six Months	90.6
4327	102	8	2. Three Months	100
4328	102	341	2. Three Months	90.5
4329	102	8	3. Six Months	100
4330	102	341	3. Six Months	84.3
4331	102	13	3. Six Months	84.3
4332	102	8	4. More Than Six Months	100
4333	102	289	4. More Than Six Months	89.6
4334	102	31	4. More Than Six Months	89.6
4335	102	23	4. More Than Six Months	89.6
4336	102	8	5. All	100
4337	102	289	5. All	81.2
4338	102	13	5. All	81.2
4339	102	341	5. All	81.2
4340	102	31	5. All	72.2
4341	102	23	5. All	72.2
4342	102	768	5. All	72.2
4343	102	117	5. All	72.2
4344	103	202	2. Three Months	100
4345	103	202	3. Six Months	100
4346	103	113	3. Six Months	78.6
4347	103	318	3. Six Months	78.6
4348	103	202	4. More Than Six Months	100
4349	103	58	4. More Than Six Months	100
4350	103	4	4. More Than Six Months	88.5
4351	103	1	4. More Than Six Months	88.5
4352	103	22	4. More Than Six Months	88.5
4353	103	3	4. More Than Six Months	88.5
4354	103	248	4. More Than Six Months	88.5
4355	103	769	4. More Than Six Months	88.5
4356	103	202	5. All	100
4357	103	4	5. All	77
4358	103	58	5. All	77
4359	103	769	5. All	77
4360	103	113	5. All	77
4361	103	1	5. All	67.5
4362	103	3	5. All	67.5
4363	103	248	5. All	67.5
4364	103	22	5. All	67.5
4365	103	214	5. All	67.5
4366	103	318	5. All	67.5
4367	104	318	3. Six Months	100
4368	104	58	4. More Than Six Months	100
4369	104	181	4. More Than Six Months	100
4370	104	770	4. More Than Six Months	100
4371	104	130	4. More Than Six Months	88.7
4372	104	771	4. More Than Six Months	88.7
4373	104	771	5. All	100
4374	104	58	5. All	74
4375	104	181	5. All	74
4376	104	770	5. All	74
4377	104	130	5. All	65.3
4378	104	318	5. All	65.3
4379	105	222	5. All	100
4380	106	335	4. More Than Six Months	100
4381	106	346	4. More Than Six Months	100
4382	106	772	4. More Than Six Months	100
4383	106	772	5. All	100
4384	106	335	5. All	66.4
4385	106	346	5. All	66.4
4386	107	8	4. More Than Six Months	100
4387	107	8	5. All	100
4388	107	7	5. All	100
4389	108	358	4. More Than Six Months	100
4390	108	22	4. More Than Six Months	72.4
4391	108	509	4. More Than Six Months	59.1
4392	108	52	4. More Than Six Months	59.1
4393	108	773	4. More Than Six Months	59.1
4394	108	358	5. All	100
4395	108	22	5. All	71.5
4396	108	52	5. All	58.4
4397	108	773	5. All	58.4
4398	108	509	5. All	58.4
4399	109	251	1. Thirty Days	100
4400	109	251	2. Three Months	100
4401	109	199	2. Three Months	91.4
4402	109	611	2. Three Months	76.6
4403	109	774	2. Three Months	76.6
4404	109	43	2. Three Months	68
4405	109	229	2. Three Months	68
4406	109	751	2. Three Months	68
4407	109	199	3. Six Months	100
4408	109	251	3. Six Months	96.8
4409	109	229	3. Six Months	85.6
4410	109	611	3. Six Months	82.4
4411	109	43	3. Six Months	82.4
4412	109	751	3. Six Months	82.4
4413	109	774	3. Six Months	68
4414	109	205	3. Six Months	59.6
4415	109	199	4. More Than Six Months	100
4416	109	251	4. More Than Six Months	90.2
4417	109	43	4. More Than Six Months	88
4418	109	611	4. More Than Six Months	84.5
4419	109	229	4. More Than Six Months	84.5
4420	109	248	4. More Than Six Months	73.1
4421	109	775	4. More Than Six Months	64.5
4422	109	650	4. More Than Six Months	64.5
4423	109	751	4. More Than Six Months	64.5
4424	109	640	4. More Than Six Months	61.5
4425	109	776	4. More Than Six Months	58.1
4426	109	168	4. More Than Six Months	58.1
4427	109	643	4. More Than Six Months	58.1
4428	109	774	4. More Than Six Months	53.8
4429	109	777	4. More Than Six Months	48.4
4430	109	778	4. More Than Six Months	48.4
4431	109	779	4. More Than Six Months	48.4
4432	109	58	4. More Than Six Months	40.7
4433	109	22	4. More Than Six Months	40.7
4434	109	594	4. More Than Six Months	40.7
4435	109	205	4. More Than Six Months	40.7
4436	109	780	4. More Than Six Months	40.7
4437	109	642	4. More Than Six Months	40.7
4438	109	639	4. More Than Six Months	40.7
4439	109	781	4. More Than Six Months	40.7
4440	109	26	4. More Than Six Months	40.7
4441	109	782	4. More Than Six Months	40.7
4442	109	783	4. More Than Six Months	40.7
4443	109	146	4. More Than Six Months	40.7
4444	109	225	4. More Than Six Months	40.7
4445	109	315	4. More Than Six Months	40.7
4446	109	559	4. More Than Six Months	40.7
4447	109	158	4. More Than Six Months	40.7
4448	109	199	5. All	100
4449	109	251	5. All	92.3
4450	109	43	5. All	87.4
4451	109	229	5. All	85.5
4452	109	611	5. All	84.8
4453	109	248	5. All	79.9
4454	109	751	5. All	71.9
4455	109	783	5. All	67
4456	109	782	5. All	67
4457	109	650	5. All	60.3
4458	109	775	5. All	60.3
4459	109	774	5. All	60.3
4460	109	640	5. All	57.5
4461	109	168	5. All	54.1
4462	109	643	5. All	54.1
4463	109	776	5. All	54.1
4464	109	777	5. All	50
4465	109	205	5. All	50
4466	109	778	5. All	44.6
4467	109	779	5. All	44.6
4468	109	594	5. All	37.2
4469	109	158	5. All	37.2
4470	109	22	5. All	37.2
4471	109	26	5. All	37.2
4472	109	58	5. All	37.2
4473	109	639	5. All	37.2
4474	109	780	5. All	37.2
4475	109	642	5. All	37.2
4476	109	781	5. All	37.2
4477	109	146	5. All	37.2
4478	109	225	5. All	37.2
4479	109	315	5. All	37.2
4480	109	559	5. All	37.2
4481	109	401	5. All	37.2
4482	110	784	2. Three Months	100
4483	110	45	2. Three Months	100
4484	110	412	2. Three Months	100
4485	110	784	3. Six Months	100
4486	110	785	3. Six Months	96.9
4487	110	786	3. Six Months	93.4
4488	110	45	3. Six Months	89.3
4489	110	43	3. Six Months	89.3
4490	110	412	3. Six Months	84.2
4491	110	787	3. Six Months	77.6
4492	110	611	3. Six Months	77.6
4493	110	788	3. Six Months	68.3
4494	110	45	4. More Than Six Months	100
4495	110	786	4. More Than Six Months	87.7
4496	110	412	4. More Than Six Months	84.4
4497	110	686	4. More Than Six Months	84.4
4498	110	785	4. More Than Six Months	82.5
4499	110	784	4. More Than Six Months	75.4
4500	110	413	4. More Than Six Months	68.7
4501	110	472	4. More Than Six Months	68.7
4502	110	342	4. More Than Six Months	64.2
4503	110	788	4. More Than Six Months	64.2
4504	110	789	4. More Than Six Months	58.5
4505	110	787	4. More Than Six Months	58.5
4506	110	575	4. More Than Six Months	50.4
4507	110	790	4. More Than Six Months	50.4
4508	110	791	4. More Than Six Months	50.4
4509	110	495	4. More Than Six Months	50.4
4510	110	792	4. More Than Six Months	50.4
4511	110	45	5. All	100
4512	110	786	5. All	91.6
4513	110	785	5. All	89.4
4514	110	412	5. All	86.9
4515	110	784	5. All	86.9
4516	110	686	5. All	82.4
4517	110	788	5. All	68.7
4518	110	413	5. All	68.7
4519	110	787	5. All	68.7
4520	110	472	5. All	65
4521	110	342	5. All	65
4522	110	43	5. All	65
4523	110	789	5. All	54.9
4524	110	611	5. All	54.9
4525	110	790	5. All	46.9
4526	110	792	5. All	46.9
4527	110	495	5. All	46.9
4528	110	791	5. All	46.9
4529	110	575	5. All	46.9
4530	110	182	5. All	46.9
4531	111	793	4. More Than Six Months	100
4532	111	794	4. More Than Six Months	100
4533	111	794	5. All	100
4534	111	793	5. All	100
4535	112	559	1. Thirty Days	100
4536	112	795	2. Three Months	100
4537	112	559	2. Three Months	82.4
4538	112	796	3. Six Months	100
4539	112	795	3. Six Months	94.9
4540	112	281	3. Six Months	58.6
4541	112	75	3. Six Months	58.6
4542	112	7	3. Six Months	58.6
4543	112	33	3. Six Months	58.6
4544	112	797	3. Six Months	58.6
4545	112	559	3. Six Months	58.6
4546	112	795	4. More Than Six Months	100
4547	112	798	4. More Than Six Months	92
4548	112	799	4. More Than Six Months	89.6
4549	112	800	4. More Than Six Months	89.6
4550	112	801	4. More Than Six Months	89.6
4551	112	33	4. More Than Six Months	86.9
4552	112	802	4. More Than Six Months	83.8
4553	112	803	4. More Than Six Months	80.4
4554	112	523	4. More Than Six Months	76.5
4555	112	804	4. More Than Six Months	76.5
4556	112	1	4. More Than Six Months	76.5
4557	112	43	4. More Than Six Months	71.8
4558	112	805	4. More Than Six Months	71.8
4559	112	806	4. More Than Six Months	66.1
4560	112	7	4. More Than Six Months	66.1
4561	112	281	4. More Than Six Months	66.1
4562	112	680	4. More Than Six Months	66.1
4563	112	198	4. More Than Six Months	66.1
4564	112	313	4. More Than Six Months	66.1
4565	112	332	4. More Than Six Months	66.1
4566	112	2	4. More Than Six Months	66.1
4567	112	222	4. More Than Six Months	66.1
4568	112	212	4. More Than Six Months	58.7
4569	112	718	4. More Than Six Months	58.7
4570	112	94	4. More Than Six Months	58.7
4571	112	807	4. More Than Six Months	58.7
4572	112	808	4. More Than Six Months	58.7
4573	112	615	4. More Than Six Months	58.7
4574	112	68	4. More Than Six Months	58.7
4575	112	809	4. More Than Six Months	58.7
4576	112	75	4. More Than Six Months	58.7
4577	112	9	4. More Than Six Months	58.7
4578	112	810	4. More Than Six Months	58.7
4579	112	811	4. More Than Six Months	58.7
4580	112	812	4. More Than Six Months	58.7
4581	112	143	4. More Than Six Months	58.7
4582	112	113	4. More Than Six Months	58.7
4583	112	813	4. More Than Six Months	58.7
4584	112	814	4. More Than Six Months	58.7
4585	112	797	4. More Than Six Months	58.7
4586	112	410	4. More Than Six Months	58.7
4587	112	241	4. More Than Six Months	58.7
4588	112	171	4. More Than Six Months	48.4
4589	112	815	4. More Than Six Months	48.4
4590	112	816	4. More Than Six Months	48.4
4591	112	817	4. More Than Six Months	48.4
4592	112	621	4. More Than Six Months	48.4
4593	112	818	4. More Than Six Months	48.4
4594	112	819	4. More Than Six Months	48.4
4595	112	820	4. More Than Six Months	48.4
4596	112	821	4. More Than Six Months	48.4
4597	112	822	4. More Than Six Months	48.4
4598	112	823	4. More Than Six Months	48.4
4599	112	387	4. More Than Six Months	48.4
4600	112	824	4. More Than Six Months	48.4
4601	112	825	4. More Than Six Months	48.4
4602	112	826	4. More Than Six Months	48.4
4603	112	827	4. More Than Six Months	48.4
4604	112	156	4. More Than Six Months	48.4
4605	112	509	4. More Than Six Months	48.4
4606	112	31	4. More Than Six Months	48.4
4607	112	828	4. More Than Six Months	48.4
4608	112	829	4. More Than Six Months	48.4
4609	112	830	4. More Than Six Months	48.4
4610	112	77	4. More Than Six Months	48.4
4611	112	831	4. More Than Six Months	48.4
4612	112	832	4. More Than Six Months	48.4
4613	112	833	4. More Than Six Months	48.4
4614	112	44	4. More Than Six Months	48.4
4615	112	834	4. More Than Six Months	48.4
4616	112	132	4. More Than Six Months	48.4
4617	112	225	4. More Than Six Months	48.4
4618	112	835	4. More Than Six Months	48.4
4619	112	210	4. More Than Six Months	48.4
4620	112	308	4. More Than Six Months	48.4
4621	112	142	4. More Than Six Months	48.4
4622	112	58	4. More Than Six Months	48.4
4623	112	22	4. More Than Six Months	48.4
4624	112	54	4. More Than Six Months	48.4
4625	112	87	4. More Than Six Months	48.4
4626	112	154	4. More Than Six Months	48.4
4627	112	62	4. More Than Six Months	48.4
4628	112	153	4. More Than Six Months	48.4
4629	112	836	4. More Than Six Months	48.4
4630	112	79	4. More Than Six Months	48.4
4631	112	837	4. More Than Six Months	48.4
4632	112	838	4. More Than Six Months	48.4
4633	112	839	4. More Than Six Months	48.4
4634	112	840	4. More Than Six Months	48.4
4635	112	841	4. More Than Six Months	48.4
4636	112	842	4. More Than Six Months	48.4
4637	112	234	4. More Than Six Months	48.4
4638	112	354	4. More Than Six Months	48.4
4639	112	843	4. More Than Six Months	48.4
4640	112	196	4. More Than Six Months	48.4
4641	112	50	4. More Than Six Months	48.4
4642	112	189	4. More Than Six Months	48.4
4643	112	844	4. More Than Six Months	48.4
4644	112	845	4. More Than Six Months	48.4
4645	112	519	4. More Than Six Months	48.4
4646	112	795	5. All	100
4647	112	803	5. All	87
4648	112	808	5. All	81.7
4649	112	806	5. All	81.7
4650	112	798	5. All	79.6
4651	112	33	5. All	79.6
4652	112	813	5. All	79.6
4653	112	811	5. All	79.6
4654	112	615	5. All	79.6
4655	112	810	5. All	79.6
4656	112	820	5. All	79.6
4657	112	816	5. All	77.4
4658	112	839	5. All	77.4
4659	112	838	5. All	77.4
4660	112	822	5. All	77.4
4661	112	831	5. All	77.4
4662	112	841	5. All	77.4
4663	112	815	5. All	77.4
4664	112	818	5. All	77.4
4665	112	840	5. All	77.4
4666	112	837	5. All	77.4
4667	112	830	5. All	77.4
4668	112	821	5. All	77.4
4669	112	842	5. All	77.4
4670	112	801	5. All	77.4
4671	112	836	5. All	77.4
4672	112	799	5. All	77.4
4673	112	800	5. All	77.4
4674	112	802	5. All	72.1
4675	112	804	5. All	68.9
4676	112	7	5. All	65.3
4677	112	1	5. All	65.3
4678	112	281	5. All	65.3
4679	112	523	5. All	65.3
4680	112	805	5. All	65.3
4681	112	75	5. All	61
4682	112	797	5. All	61
4683	112	43	5. All	61
4684	112	313	5. All	61
4685	112	222	5. All	61
4686	112	332	5. All	55.7
4687	112	198	5. All	55.7
4688	112	2	5. All	55.7
4689	112	680	5. All	55.7
4690	112	241	5. All	55.7
4691	112	807	5. All	49
4692	112	843	5. All	49
4693	112	812	5. All	49
4694	112	410	5. All	49
4695	112	809	5. All	49
4696	112	845	5. All	49
4697	112	814	5. All	49
4698	112	718	5. All	49
4699	112	79	5. All	49
4700	112	387	5. All	49
4701	112	68	5. All	49
4702	112	519	5. All	49
4703	112	113	5. All	49
4704	112	143	5. All	49
4705	112	49	5. All	49
4706	112	824	5. All	49
4707	112	9	5. All	49
4708	112	212	5. All	49
4709	112	94	5. All	49
4710	112	825	5. All	39.6
4711	112	171	5. All	39.6
4712	112	817	5. All	39.6
4713	112	354	5. All	39.6
4714	112	196	5. All	39.6
4715	112	819	5. All	39.6
4716	112	826	5. All	39.6
4717	112	829	5. All	39.6
4718	112	156	5. All	39.6
4719	112	509	5. All	39.6
4720	112	828	5. All	39.6
4721	112	77	5. All	39.6
4722	112	234	5. All	39.6
4723	112	31	5. All	39.6
4724	112	154	5. All	39.6
4725	112	87	5. All	39.6
4726	112	54	5. All	39.6
4727	112	22	5. All	39.6
4728	112	58	5. All	39.6
4729	112	142	5. All	39.6
4730	112	50	5. All	39.6
4731	112	153	5. All	39.6
4732	112	189	5. All	39.6
4733	112	210	5. All	39.6
4734	112	832	5. All	39.6
4735	112	62	5. All	39.6
4736	112	308	5. All	39.6
4737	112	835	5. All	39.6
4738	112	225	5. All	39.6
4739	112	132	5. All	39.6
4740	112	844	5. All	39.6
4741	112	834	5. All	39.6
4742	112	44	5. All	39.6
4743	112	833	5. All	39.6
4744	112	621	5. All	39.6
4745	112	349	5. All	39.6
4746	113	303	4. More Than Six Months	100
4747	113	314	4. More Than Six Months	100
4748	113	846	4. More Than Six Months	100
4749	113	314	5. All	100
4750	113	303	5. All	100
4751	113	846	5. All	100
4752	114	384	4. More Than Six Months	100
4753	114	847	4. More Than Six Months	78.3
4754	114	848	4. More Than Six Months	78.3
4755	114	849	4. More Than Six Months	78.3
4756	114	850	4. More Than Six Months	78.3
4757	114	847	5. All	100
4758	114	384	5. All	85.4
4759	114	848	5. All	66.2
4760	114	849	5. All	66.2
4761	114	850	5. All	66.2
4762	115	65	2. Three Months	100
4763	115	65	3. Six Months	100
4764	115	31	4. More Than Six Months	100
4765	115	145	4. More Than Six Months	100
4766	115	19	4. More Than Six Months	88.2
4767	115	851	4. More Than Six Months	88.2
4768	115	30	4. More Than Six Months	88.2
4769	115	31	5. All	100
4770	115	145	5. All	100
4771	115	30	5. All	100
4772	115	65	5. All	100
4773	115	19	5. All	87.6
4774	115	851	5. All	87.6
4775	115	111	5. All	87.6
4776	116	35	2. Three Months	100
4777	116	58	2. Three Months	89.6
4778	116	109	3. Six Months	100
4779	116	145	3. Six Months	100
4780	116	31	3. Six Months	100
4781	116	19	3. Six Months	100
4782	116	35	3. Six Months	100
4783	116	852	3. Six Months	87.9
4784	116	58	3. Six Months	87.9
4785	116	13	3. Six Months	87.9
4786	116	80	3. Six Months	87.9
4787	116	13	4. More Than Six Months	100
4788	116	145	4. More Than Six Months	85.4
4789	116	14	4. More Than Six Months	77.9
4790	116	20	4. More Than Six Months	77.9
4791	116	31	4. More Than Six Months	67.3
4792	116	39	4. More Than Six Months	67.3
4793	116	10	4. More Than Six Months	67.3
4794	116	853	4. More Than Six Months	67.3
4795	116	7	4. More Than Six Months	67.3
4796	116	729	4. More Than Six Months	67.3
4797	116	1	4. More Than Six Months	67.3
4798	116	854	4. More Than Six Months	67.3
4799	116	582	4. More Than Six Months	67.3
4800	116	18	4. More Than Six Months	67.3
4801	116	853	5. All	100
4802	116	13	5. All	97.3
4803	116	145	5. All	91
4804	116	31	5. All	82.5
4805	116	19	5. All	76.9
4806	116	14	5. All	76.9
4807	116	109	5. All	76.9
4808	116	35	5. All	76.9
4809	116	80	5. All	69.7
4810	116	20	5. All	69.7
4811	116	729	5. All	69.7
4812	116	10	5. All	69.7
4813	116	852	5. All	59.5
4814	116	27	5. All	59.5
4815	116	48	5. All	59.5
4816	116	108	5. All	59.5
4817	116	58	5. All	59.5
4818	116	45	5. All	59.5
4819	116	18	5. All	59.5
4820	116	50	5. All	59.5
4821	116	53	5. All	59.5
4822	116	582	5. All	59.5
4823	116	854	5. All	59.5
4824	116	7	5. All	59.5
4825	116	1	5. All	59.5
4826	116	39	5. All	59.5
4827	116	30	5. All	59.5
4828	117	17	4. More Than Six Months	100
4829	117	332	4. More Than Six Months	70.5
4830	117	855	4. More Than Six Months	70.5
4831	117	17	5. All	100
4832	117	332	5. All	68.6
4833	117	855	5. All	68.6
4834	118	856	4. More Than Six Months	100
4835	118	857	4. More Than Six Months	97
4836	118	858	4. More Than Six Months	93.6
4837	118	9	4. More Than Six Months	93.6
4838	118	481	4. More Than Six Months	93.6
4839	118	859	4. More Than Six Months	85.1
4840	118	1	4. More Than Six Months	79.4
4841	118	119	4. More Than Six Months	79.4
4842	118	13	4. More Than Six Months	72.1
4843	118	860	4. More Than Six Months	72.1
4844	118	766	4. More Than Six Months	72.1
4845	118	18	4. More Than Six Months	72.1
4846	118	861	4. More Than Six Months	72.1
4847	118	536	4. More Than Six Months	72.1
4848	118	862	4. More Than Six Months	61.9
4849	118	468	4. More Than Six Months	61.9
4850	118	863	4. More Than Six Months	61.9
4851	118	411	4. More Than Six Months	61.9
4852	118	864	4. More Than Six Months	61.9
4853	118	417	4. More Than Six Months	61.9
4854	118	865	4. More Than Six Months	61.9
4855	118	866	4. More Than Six Months	61.9
4856	118	867	4. More Than Six Months	61.9
4857	118	135	4. More Than Six Months	61.9
4858	118	421	4. More Than Six Months	61.9
4859	118	868	4. More Than Six Months	61.9
4860	118	108	4. More Than Six Months	61.9
4861	118	222	4. More Than Six Months	61.9
4862	118	22	4. More Than Six Months	61.9
4863	118	857	5. All	100
4864	118	860	5. All	91.3
4865	118	536	5. All	91.3
4866	118	863	5. All	89.1
4867	118	468	5. All	89.1
4868	118	862	5. All	89.1
4869	118	864	5. All	89.1
4870	118	865	5. All	89.1
4871	118	866	5. All	89.1
4872	118	856	5. All	86.6
4873	118	858	5. All	80.8
4874	118	481	5. All	80.8
4875	118	9	5. All	80.8
4876	118	1	5. All	72.9
4877	118	859	5. All	72.9
4878	118	13	5. All	67.8
4879	118	119	5. All	67.8
4880	118	18	5. All	61.1
4881	118	861	5. All	61.1
4882	118	222	5. All	61.1
4883	118	766	5. All	61.1
4884	118	22	5. All	51.7
4885	118	411	5. All	51.7
4886	118	135	5. All	51.7
4887	118	868	5. All	51.7
4888	118	417	5. All	51.7
4889	118	867	5. All	51.7
4890	118	421	5. All	51.7
4891	118	108	5. All	51.7
4892	118	214	5. All	51.7
4893	119	1	4. More Than Six Months	100
4894	119	869	4. More Than Six Months	100
4895	119	168	4. More Than Six Months	89.2
4896	119	3	4. More Than Six Months	89.2
4897	119	1	5. All	100
4898	119	869	5. All	100
4899	119	168	5. All	89.1
4900	119	3	5. All	89.1
4901	120	13	4. More Than Six Months	100
4902	120	530	4. More Than Six Months	100
4903	120	13	5. All	100
4904	120	530	5. All	90.1
4905	121	870	4. More Than Six Months	100
4906	121	593	4. More Than Six Months	100
4907	121	870	5. All	100
4908	121	593	5. All	100
4909	122	342	4. More Than Six Months	100
4910	122	871	4. More Than Six Months	100
4911	122	872	4. More Than Six Months	100
4912	122	814	4. More Than Six Months	100
4913	122	873	4. More Than Six Months	100
4914	122	874	4. More Than Six Months	100
4915	122	875	4. More Than Six Months	100
4916	122	876	4. More Than Six Months	100
4917	122	877	4. More Than Six Months	100
4918	122	874	5. All	100
4919	122	873	5. All	100
4920	122	871	5. All	100
4921	122	877	5. All	100
4922	122	876	5. All	100
4923	122	872	5. All	100
4924	122	814	5. All	100
4925	122	875	5. All	100
4926	122	342	5. All	62.4
4927	123	496	3. Six Months	100
4928	123	130	4. More Than Six Months	100
4929	123	558	4. More Than Six Months	91.8
4930	123	768	4. More Than Six Months	91.8
4931	123	58	4. More Than Six Months	91.8
4932	123	4	4. More Than Six Months	80.2
4933	123	38	4. More Than Six Months	80.2
4934	123	117	4. More Than Six Months	80.2
4935	123	31	4. More Than Six Months	80.2
4936	123	784	4. More Than Six Months	80.2
4937	123	714	4. More Than Six Months	80.2
4938	123	10	4. More Than Six Months	80.2
4939	123	155	4. More Than Six Months	80.2
4940	123	68	4. More Than Six Months	80.2
4941	123	326	4. More Than Six Months	80.2
4942	123	768	5. All	100
4943	123	58	5. All	100
4944	123	130	5. All	100
4945	123	558	5. All	91.6
4946	123	496	5. All	91.6
4947	123	68	5. All	91.6
4948	123	117	5. All	79.8
4949	123	326	5. All	79.8
4950	123	19	5. All	79.8
4951	123	65	5. All	79.8
4952	123	18	5. All	79.8
4953	123	155	5. All	79.8
4954	123	10	5. All	79.8
4955	123	31	5. All	79.8
4956	123	38	5. All	79.8
4957	123	714	5. All	79.8
4958	123	4	5. All	79.8
4959	123	784	5. All	79.8
4960	123	32	5. All	79.8
4961	124	302	1. Thirty Days	100
4962	124	414	2. Three Months	100
4963	124	106	2. Three Months	93
4964	124	302	2. Three Months	83.2
4965	124	384	2. Three Months	83.2
4966	124	414	3. Six Months	100
4967	124	106	3. Six Months	92.4
4968	124	30	3. Six Months	81.7
4969	124	747	3. Six Months	81.7
4970	124	611	3. Six Months	81.7
4971	124	302	3. Six Months	81.7
4972	124	384	3. Six Months	81.7
4973	124	330	4. More Than Six Months	100
4974	124	58	4. More Than Six Months	93.6
4975	124	135	4. More Than Six Months	93.6
4976	124	743	4. More Than Six Months	85.4
4977	124	142	4. More Than Six Months	85.4
4978	124	414	4. More Than Six Months	85.4
4979	124	220	4. More Than Six Months	85.4
4980	124	726	4. More Than Six Months	85.4
4981	124	128	4. More Than Six Months	85.4
4982	124	878	4. More Than Six Months	85.4
4983	124	13	4. More Than Six Months	73.8
4984	124	749	4. More Than Six Months	73.8
4985	124	446	4. More Than Six Months	73.8
4986	124	879	4. More Than Six Months	73.8
4987	124	481	4. More Than Six Months	73.8
4988	124	880	4. More Than Six Months	73.8
4989	124	881	4. More Than Six Months	73.8
4990	124	882	4. More Than Six Months	73.8
4991	124	32	4. More Than Six Months	73.8
4992	124	348	4. More Than Six Months	73.8
4993	124	28	4. More Than Six Months	73.8
4994	124	198	4. More Than Six Months	73.8
4995	124	414	5. All	100
4996	124	330	5. All	95.8
4997	124	128	5. All	84.8
4998	124	135	5. All	84.8
4999	124	58	5. All	84.8
5000	124	743	5. All	84.8
5001	124	726	5. All	77
5002	124	220	5. All	77
5003	124	30	5. All	77
5004	124	106	5. All	77
5005	124	878	5. All	77
5006	124	384	5. All	77
5007	124	142	5. All	77
5008	124	749	5. All	66
5009	124	611	5. All	66
5010	124	747	5. All	66
5011	124	271	5. All	66
5012	124	302	5. All	66
5013	124	472	5. All	66
5014	124	883	5. All	66
5015	124	4	5. All	66
5016	124	198	5. All	66
5017	124	13	5. All	66
5018	124	446	5. All	66
5019	124	879	5. All	66
5020	124	130	5. All	66
5021	124	880	5. All	66
5022	124	881	5. All	66
5023	124	882	5. All	66
5024	124	481	5. All	66
5025	124	32	5. All	66
5026	124	348	5. All	66
5027	124	28	5. All	66
5028	124	145	5. All	66
5029	125	884	1. Thirty Days	100
5030	125	132	1. Thirty Days	92
5031	125	342	1. Thirty Days	86.7
5032	125	9	1. Thirty Days	86.7
5033	125	243	1. Thirty Days	86.7
5034	125	384	1. Thirty Days	79.9
5035	125	427	1. Thirty Days	70.3
5036	125	225	1. Thirty Days	70.3
5037	125	325	1. Thirty Days	70.3
5038	125	885	1. Thirty Days	70.3
5039	125	262	1. Thirty Days	70.3
5040	125	884	2. Three Months	100
5041	125	132	2. Three Months	92.6
5042	125	384	2. Three Months	89.7
5043	125	427	2. Three Months	88.6
5044	125	325	2. Three Months	85.1
5045	125	342	2. Three Months	82.2
5046	125	886	2. Three Months	72.7
5047	125	243	2. Three Months	70
5048	125	225	2. Three Months	67
5049	125	9	2. Three Months	67
5050	125	262	2. Three Months	63.4
5051	125	885	2. Three Months	53.3
5052	125	105	2. Three Months	45.4
5053	125	153	2. Three Months	45.4
5054	125	139	2. Three Months	45.4
5055	125	318	2. Three Months	45.4
5056	125	315	2. Three Months	45.4
5057	125	308	2. Three Months	45.4
5058	125	130	2. Three Months	45.4
5059	125	884	3. Six Months	100
5060	125	132	3. Six Months	94.4
5061	125	384	3. Six Months	87.6
5062	125	342	3. Six Months	85.2
5063	125	427	3. Six Months	77.4
5064	125	325	3. Six Months	74.3
5065	125	9	3. Six Months	73.1
5066	125	225	3. Six Months	70.5
5067	125	243	3. Six Months	69
5068	125	886	3. Six Months	63.7
5069	125	887	3. Six Months	59.1
5070	125	885	3. Six Months	56.3
5071	125	888	3. Six Months	56.3
5072	125	262	3. Six Months	56.3
5073	125	509	3. Six Months	52.9
5074	125	105	3. Six Months	52.9
5075	125	94	3. Six Months	48.9
5076	125	153	3. Six Months	48.9
5077	125	333	3. Six Months	43.6
5078	125	239	3. Six Months	43.6
5079	125	889	3. Six Months	43.6
5080	125	308	3. Six Months	43.6
5081	125	413	3. Six Months	43.6
5082	125	139	3. Six Months	43.6
5083	125	318	3. Six Months	43.6
5084	125	558	3. Six Months	43.6
5085	125	156	3. Six Months	43.6
5086	125	890	3. Six Months	43.6
5087	125	891	3. Six Months	43.6
5088	125	571	3. Six Months	36.3
5089	125	315	3. Six Months	36.3
5090	125	313	3. Six Months	36.3
5091	125	607	3. Six Months	36.3
5092	125	4	3. Six Months	36.3
5093	125	892	3. Six Months	36.3
5094	125	116	3. Six Months	36.3
5095	125	408	3. Six Months	36.3
5096	125	848	3. Six Months	36.3
5097	125	893	3. Six Months	36.3
5098	125	894	3. Six Months	36.3
5099	125	130	3. Six Months	36.3
5100	125	342	4. More Than Six Months	100
5101	125	884	4. More Than Six Months	100
5102	125	225	4. More Than Six Months	92.9
5103	125	132	4. More Than Six Months	89.9
5104	125	891	4. More Than Six Months	82.5
5105	125	9	4. More Than Six Months	81.4
5106	125	890	4. More Than Six Months	81.4
5107	125	243	4. More Than Six Months	76.9
5108	125	408	4. More Than Six Months	76.1
5109	125	888	4. More Than Six Months	74.6
5110	125	384	4. More Than Six Months	74.6
5111	125	893	4. More Than Six Months	72.9
5112	125	886	4. More Than Six Months	71.9
5113	125	894	4. More Than Six Months	70
5114	125	895	4. More Than Six Months	70
5115	125	885	4. More Than Six Months	68.9
5116	125	119	4. More Than Six Months	68.9
5117	125	262	4. More Than Six Months	65.2
5118	125	427	4. More Than Six Months	65.2
5119	125	333	4. More Than Six Months	63.9
5120	125	429	4. More Than Six Months	60.7
5121	125	887	4. More Than Six Months	60.7
5122	125	607	4. More Than Six Months	58.9
5123	125	315	4. More Than Six Months	58.9
5124	125	414	4. More Than Six Months	58.9
5125	125	848	4. More Than Six Months	58.9
5126	125	13	4. More Than Six Months	58.9
5127	125	410	4. More Than Six Months	57
5128	125	94	4. More Than Six Months	57
5129	125	139	4. More Than Six Months	52.2
5130	125	715	4. More Than Six Months	49.4
5131	125	308	4. More Than Six Months	49.4
5132	125	87	4. More Than Six Months	49.4
5133	125	120	4. More Than Six Months	46
5134	125	843	4. More Than Six Months	46
5135	125	472	4. More Than Six Months	46
5136	125	153	4. More Than Six Months	46
5137	125	325	4. More Than Six Months	46
5138	125	896	4. More Than Six Months	41.8
5139	125	558	4. More Than Six Months	41.8
5140	125	116	4. More Than Six Months	41.8
5141	125	239	4. More Than Six Months	41.8
5142	125	167	4. More Than Six Months	41.8
5143	125	143	4. More Than Six Months	41.8
5144	125	897	4. More Than Six Months	36.5
5145	125	898	4. More Than Six Months	36.5
5146	125	899	4. More Than Six Months	36.5
5147	125	900	4. More Than Six Months	36.5
5148	125	312	4. More Than Six Months	36.5
5149	125	105	4. More Than Six Months	36.5
5150	125	209	4. More Than Six Months	36.5
5151	125	571	4. More Than Six Months	29.1
5152	125	901	4. More Than Six Months	29.1
5153	125	351	4. More Than Six Months	29.1
5154	125	305	4. More Than Six Months	29.1
5155	125	902	4. More Than Six Months	29.1
5156	125	903	4. More Than Six Months	29.1
5157	125	130	4. More Than Six Months	29.1
5158	125	904	4. More Than Six Months	29.1
5159	125	677	4. More Than Six Months	29.1
5160	125	4	4. More Than Six Months	29.1
5161	125	65	4. More Than Six Months	29.1
5162	125	905	4. More Than Six Months	29.1
5163	125	128	4. More Than Six Months	29.1
5164	125	906	4. More Than Six Months	29.1
5165	125	907	4. More Than Six Months	29.1
5166	125	313	4. More Than Six Months	29.1
5167	125	908	4. More Than Six Months	29.1
5168	125	718	4. More Than Six Months	29.1
5169	125	144	4. More Than Six Months	29.1
5170	125	236	4. More Than Six Months	29.1
5171	125	909	4. More Than Six Months	29.1
5172	125	494	4. More Than Six Months	29.1
5173	125	311	4. More Than Six Months	29.1
5174	125	892	4. More Than Six Months	29.1
5175	125	884	5. All	100
5176	125	342	5. All	95.3
5177	125	132	5. All	92.4
5178	125	225	5. All	87.1
5179	125	384	5. All	82.2
5180	125	9	5. All	79.5
5181	125	243	5. All	75.3
5182	125	891	5. All	75.3
5183	125	890	5. All	74.4
5184	125	427	5. All	72.9
5185	125	886	5. All	70.6
5186	125	888	5. All	70.6
5187	125	408	5. All	69.3
5188	125	885	5. All	66.5
5189	125	893	5. All	66.5
5190	125	325	5. All	64.9
5191	125	894	5. All	64
5192	125	607	5. All	64
5193	125	262	5. All	64
5194	125	895	5. All	63.1
5195	125	119	5. All	62.2
5196	125	887	5. All	62.2
5197	125	333	5. All	60.1
5198	125	94	5. All	56.5
5199	125	120	5. All	56.5
5200	125	429	5. All	55
5201	125	315	5. All	55
5202	125	848	5. All	55
5203	125	899	5. All	53.5
5204	125	900	5. All	53.5
5205	125	414	5. All	53.5
5206	125	13	5. All	53.5
5207	125	905	5. All	51.8
5208	125	907	5. All	51.8
5209	125	906	5. All	51.8
5210	125	139	5. All	51.8
5211	125	308	5. All	50
5212	125	410	5. All	50
5213	125	153	5. All	50
5214	125	105	5. All	47.9
5215	125	558	5. All	45.6
5216	125	87	5. All	45.6
5217	125	239	5. All	45.6
5218	125	116	5. All	42.9
5219	125	843	5. All	42.9
5220	125	509	5. All	42.9
5221	125	715	5. All	42.9
5222	125	472	5. All	39.7
5223	125	167	5. All	39.7
5224	125	143	5. All	39.7
5225	125	892	5. All	35.8
5226	125	889	5. All	35.8
5227	125	571	5. All	35.8
5228	125	896	5. All	35.8
5229	125	130	5. All	35.8
5230	125	4	5. All	35.8
5231	125	413	5. All	35.8
5232	125	313	5. All	35.8
5233	125	897	5. All	35.8
5234	125	156	5. All	30.9
5235	125	318	5. All	30.9
5236	125	312	5. All	30.9
5237	125	305	5. All	30.9
5238	125	209	5. All	30.9
5239	125	494	5. All	30.9
5240	125	898	5. All	30.9
5241	125	311	5. All	30.9
5242	125	351	5. All	24.1
5243	125	718	5. All	24.1
5244	125	694	5. All	24.1
5245	125	19	5. All	24.1
5246	125	910	5. All	24.1
5247	125	145	5. All	24.1
5248	125	198	5. All	24.1
5249	125	431	5. All	24.1
5250	125	909	5. All	24.1
5251	125	236	5. All	24.1
5252	125	903	5. All	24.1
5253	125	911	5. All	24.1
5254	125	677	5. All	24.1
5255	125	908	5. All	24.1
5256	125	904	5. All	24.1
5257	125	144	5. All	24.1
5258	125	128	5. All	24.1
5259	125	901	5. All	24.1
5260	125	65	5. All	24.1
5261	125	902	5. All	24.1
5262	125	912	5. All	24.1
5263	126	913	2. Three Months	100
5264	126	913	3. Six Months	100
5265	126	795	3. Six Months	89.2
5266	126	327	4. More Than Six Months	100
5267	126	135	4. More Than Six Months	88.4
5268	126	833	4. More Than Six Months	88.4
5269	126	117	4. More Than Six Months	88.4
5270	126	135	5. All	100
5271	126	327	5. All	100
5272	126	913	5. All	100
5273	126	833	5. All	87.6
5274	126	117	5. All	87.6
5275	126	209	5. All	87.6
5276	126	795	5. All	87.6
5277	127	119	2. Three Months	100
5278	127	119	3. Six Months	100
5279	127	914	3. Six Months	83
5280	127	845	4. More Than Six Months	100
5281	127	915	4. More Than Six Months	87.9
5282	127	916	4. More Than Six Months	87.9
5283	127	917	4. More Than Six Months	87.9
5284	127	346	4. More Than Six Months	87.9
5285	127	28	4. More Than Six Months	87.9
5286	127	918	4. More Than Six Months	87.9
5287	127	919	4. More Than Six Months	87.9
5288	127	917	5. All	100
5289	127	119	5. All	78.8
5290	127	845	5. All	72.2
5291	127	346	5. All	72.2
5292	127	28	5. All	72.2
5293	127	919	5. All	72.2
5294	127	916	5. All	62.8
5295	127	915	5. All	62.8
5296	127	918	5. All	62.8
5297	127	914	5. All	62.8
5298	127	345	5. All	62.8
5299	128	226	2. Three Months	100
5300	128	423	2. Three Months	88.8
5301	128	226	3. Six Months	100
5302	128	423	3. Six Months	85
5303	128	558	4. More Than Six Months	100
5304	128	226	4. More Than Six Months	100
5305	128	428	4. More Than Six Months	81.2
5306	128	392	4. More Than Six Months	74.5
5307	128	920	4. More Than Six Months	65.1
5308	128	776	4. More Than Six Months	65.1
5309	128	921	4. More Than Six Months	65.1
5310	128	542	4. More Than Six Months	65.1
5311	128	922	4. More Than Six Months	65.1
5312	128	33	4. More Than Six Months	65.1
5313	128	331	4. More Than Six Months	65.1
5314	128	199	4. More Than Six Months	65.1
5315	128	923	4. More Than Six Months	65.1
5316	128	924	4. More Than Six Months	65.1
5317	128	925	4. More Than Six Months	65.1
5318	128	77	4. More Than Six Months	65.1
5319	128	926	4. More Than Six Months	65.1
5320	128	13	4. More Than Six Months	65.1
5321	128	58	4. More Than Six Months	65.1
5322	128	889	4. More Than Six Months	65.1
5323	128	128	4. More Than Six Months	65.1
5324	128	4	4. More Than Six Months	65.1
5325	128	927	4. More Than Six Months	65.1
5326	128	226	5. All	100
5327	128	428	5. All	94.7
5328	128	392	5. All	92.7
5329	128	921	5. All	92.7
5330	128	776	5. All	92.7
5331	128	925	5. All	90.4
5332	128	923	5. All	90.4
5333	128	889	5. All	90.4
5334	128	920	5. All	90.4
5335	128	199	5. All	90.4
5336	128	927	5. All	90.4
5337	128	542	5. All	90.4
5338	128	13	5. All	90.4
5339	128	77	5. All	90.4
5340	128	924	5. All	90.4
5341	128	926	5. All	90.4
5342	128	331	5. All	90.4
5343	128	922	5. All	90.4
5344	128	33	5. All	90.4
5345	128	558	5. All	87.9
5346	128	423	5. All	68.7
5347	128	128	5. All	61.9
5348	128	58	5. All	61.9
5349	128	4	5. All	52.4
5350	128	928	5. All	52.4
5351	129	299	4. More Than Six Months	100
5352	129	117	4. More Than Six Months	100
5353	129	929	4. More Than Six Months	100
5354	129	59	4. More Than Six Months	100
5355	129	929	5. All	100
5356	129	299	5. All	67
5357	129	117	5. All	67
5358	129	59	5. All	67
5359	130	930	2. Three Months	100
5360	130	930	3. Six Months	100
5361	130	1	4. More Than Six Months	100
5362	130	627	4. More Than Six Months	92.6
5363	130	368	4. More Than Six Months	82.1
5364	130	879	4. More Than Six Months	82.1
5365	130	931	4. More Than Six Months	82.1
5366	130	693	4. More Than Six Months	82.1
5367	130	932	4. More Than Six Months	82.1
5368	130	933	4. More Than Six Months	82.1
5369	130	932	5. All	100
5370	130	933	5. All	100
5371	130	930	5. All	100
5372	130	1	5. All	79.6
5373	130	627	5. All	73.2
5374	130	368	5. All	64.2
5375	130	879	5. All	64.2
5376	130	931	5. All	64.2
5377	130	693	5. All	64.2
5378	131	513	4. More Than Six Months	100
5379	131	934	4. More Than Six Months	100
5380	131	935	4. More Than Six Months	100
5381	131	936	4. More Than Six Months	100
5382	131	937	4. More Than Six Months	100
5383	131	892	4. More Than Six Months	100
5384	131	361	4. More Than Six Months	100
5385	131	937	5. All	100
5386	131	361	5. All	100
5387	131	935	5. All	100
5388	131	936	5. All	100
5389	131	934	5. All	100
5390	131	892	5. All	100
5391	131	513	5. All	63.4
5392	131	938	5. All	63.4
5393	132	939	3. Six Months	100
5394	132	939	4. More Than Six Months	100
5395	132	940	4. More Than Six Months	66.4
5396	132	941	4. More Than Six Months	59
5397	132	939	5. All	100
5398	132	940	5. All	82.6
5399	132	941	5. All	80.9
5400	132	901	5. All	52.1
5401	133	18	4. More Than Six Months	100
5402	133	942	4. More Than Six Months	100
5403	133	15	4. More Than Six Months	100
5404	133	18	5. All	100
5405	133	942	5. All	100
5406	133	15	5. All	100
5407	134	34	3. Six Months	100
5408	134	19	5. All	100
5409	134	4	5. All	100
5410	134	34	5. All	100
5411	134	13	5. All	100
5412	135	248	2. Three Months	100
5413	135	73	2. Three Months	100
5414	135	135	2. Three Months	100
5415	135	621	2. Three Months	100
5416	135	138	2. Three Months	100
5417	135	130	3. Six Months	100
5418	135	22	3. Six Months	100
5419	135	138	3. Six Months	100
5420	135	73	3. Six Months	91.9
5421	135	68	3. Six Months	80.5
5422	135	943	3. Six Months	80.5
5423	135	248	3. Six Months	80.5
5424	135	135	3. Six Months	80.5
5425	135	621	3. Six Months	80.5
5426	135	4	4. More Than Six Months	100
5427	135	130	4. More Than Six Months	100
5428	135	133	4. More Than Six Months	90.2
5429	135	65	4. More Than Six Months	90.2
5430	135	3	4. More Than Six Months	90.2
5431	135	596	4. More Than Six Months	83.6
5432	135	914	4. More Than Six Months	83.6
5433	135	302	4. More Than Six Months	83.6
5434	135	239	4. More Than Six Months	83.6
5435	135	31	4. More Than Six Months	83.6
5436	135	159	4. More Than Six Months	83.6
5437	135	318	4. More Than Six Months	83.6
5438	135	222	4. More Than Six Months	75.2
5439	135	621	4. More Than Six Months	75.2
5440	135	117	4. More Than Six Months	75.2
5441	135	639	4. More Than Six Months	75.2
5442	135	944	4. More Than Six Months	75.2
5443	135	790	4. More Than Six Months	75.2
5444	135	126	4. More Than Six Months	75.2
5445	135	304	4. More Than Six Months	75.2
5446	135	108	4. More Than Six Months	75.2
5447	135	30	4. More Than Six Months	75.2
5448	135	315	4. More Than Six Months	75.2
5449	135	945	4. More Than Six Months	63.5
5450	135	946	4. More Than Six Months	63.5
5451	135	742	4. More Than Six Months	63.5
5452	135	171	4. More Than Six Months	63.5
5453	135	466	4. More Than Six Months	63.5
5454	135	947	4. More Than Six Months	63.5
5455	135	299	4. More Than Six Months	63.5
5456	135	948	4. More Than Six Months	63.5
5457	135	128	4. More Than Six Months	63.5
5458	135	208	4. More Than Six Months	63.5
5459	135	949	4. More Than Six Months	63.5
5460	135	950	4. More Than Six Months	63.5
5461	135	497	4. More Than Six Months	63.5
5462	135	314	4. More Than Six Months	63.5
5463	135	140	4. More Than Six Months	63.5
5464	135	13	4. More Than Six Months	63.5
5465	135	9	4. More Than Six Months	63.5
5466	135	951	4. More Than Six Months	63.5
5467	135	17	4. More Than Six Months	63.5
5468	135	106	4. More Than Six Months	63.5
5469	135	2	4. More Than Six Months	63.5
5470	135	180	4. More Than Six Months	63.5
5471	135	1	4. More Than Six Months	63.5
5472	135	330	4. More Than Six Months	63.5
5473	135	335	4. More Than Six Months	63.5
5474	135	673	4. More Than Six Months	63.5
5475	135	952	4. More Than Six Months	63.5
5476	135	422	4. More Than Six Months	63.5
5477	135	7	4. More Than Six Months	63.5
5478	135	15	4. More Than Six Months	63.5
5479	135	104	4. More Than Six Months	63.5
5480	135	241	4. More Than Six Months	63.5
5481	135	953	4. More Than Six Months	63.5
5482	135	954	4. More Than Six Months	63.5
5483	135	77	4. More Than Six Months	63.5
5484	135	727	4. More Than Six Months	63.5
5485	135	345	4. More Than Six Months	63.5
5486	135	914	5. All	100
5487	135	130	5. All	97.7
5488	135	949	5. All	95.1
5489	135	742	5. All	95.1
5490	135	946	5. All	95.1
5491	135	948	5. All	95.1
5492	135	945	5. All	95.1
5493	135	947	5. All	95.1
5494	135	950	5. All	95.1
5495	135	4	5. All	89.2
5496	135	133	5. All	81.5
5497	135	3	5. All	76.7
5498	135	65	5. All	76.7
5499	135	22	5. All	76.7
5500	135	621	5. All	76.7
5501	135	596	5. All	70.8
5502	135	108	5. All	70.8
5503	135	138	5. All	70.8
5504	135	239	5. All	70.8
5505	135	315	5. All	70.8
5506	135	31	5. All	70.8
5507	135	318	5. All	70.8
5508	135	302	5. All	70.8
5509	135	639	5. All	70.8
5510	135	159	5. All	70.8
5511	135	790	5. All	63.2
5512	135	304	5. All	63.2
5513	135	68	5. All	63.2
5514	135	135	5. All	63.2
5515	135	73	5. All	63.2
5516	135	944	5. All	63.2
5517	135	727	5. All	63.2
5518	135	30	5. All	63.2
5519	135	13	5. All	63.2
5520	135	126	5. All	63.2
5521	135	117	5. All	63.2
5522	135	222	5. All	63.2
5523	135	953	5. All	52.5
5524	135	314	5. All	52.5
5525	135	497	5. All	52.5
5526	135	171	5. All	52.5
5527	135	345	5. All	52.5
5528	135	145	5. All	52.5
5529	135	795	5. All	52.5
5530	135	32	5. All	52.5
5531	135	17	5. All	52.5
5532	135	18	5. All	52.5
5533	135	848	5. All	52.5
5534	135	943	5. All	52.5
5535	135	521	5. All	52.5
5536	135	106	5. All	52.5
5537	135	955	5. All	52.5
5538	135	248	5. All	52.5
5539	135	19	5. All	52.5
5540	135	77	5. All	52.5
5541	135	26	5. All	52.5
5542	135	146	5. All	52.5
5543	135	2	5. All	52.5
5544	135	140	5. All	52.5
5545	135	180	5. All	52.5
5546	135	951	5. All	52.5
5547	135	128	5. All	52.5
5548	135	241	5. All	52.5
5549	135	104	5. All	52.5
5550	135	954	5. All	52.5
5551	135	15	5. All	52.5
5552	135	7	5. All	52.5
5553	135	208	5. All	52.5
5554	135	422	5. All	52.5
5555	135	299	5. All	52.5
5556	135	952	5. All	52.5
5557	135	9	5. All	52.5
5558	135	673	5. All	52.5
5559	135	335	5. All	52.5
5560	135	330	5. All	52.5
5561	135	466	5. All	52.5
5562	135	1	5. All	52.5
5563	135	142	5. All	52.5
5564	136	956	4. More Than Six Months	100
5565	136	956	5. All	100
5566	137	957	4. More Than Six Months	100
5567	137	958	4. More Than Six Months	100
5568	137	91	4. More Than Six Months	100
5569	137	957	5. All	100
5570	137	958	5. All	100
5571	137	91	5. All	100
5572	138	13	3. Six Months	100
5573	138	30	3. Six Months	87
5574	138	19	3. Six Months	87
5575	138	18	3. Six Months	76.6
5576	138	959	3. Six Months	76.6
5577	138	31	4. More Than Six Months	100
5578	138	65	4. More Than Six Months	100
5579	138	30	4. More Than Six Months	94.3
5580	138	13	4. More Than Six Months	82.4
5581	138	19	4. More Than Six Months	82.4
5582	138	60	4. More Than Six Months	82.4
5583	138	38	4. More Than Six Months	82.4
5584	138	18	4. More Than Six Months	76.8
5585	138	23	4. More Than Six Months	76.8
5586	138	1	4. More Than Six Months	69.5
5587	138	113	4. More Than Six Months	69.5
5588	138	960	4. More Than Six Months	69.5
5589	138	914	4. More Than Six Months	59.3
5590	138	729	4. More Than Six Months	59.3
5591	138	108	4. More Than Six Months	59.3
5592	138	73	4. More Than Six Months	59.3
5593	138	20	4. More Than Six Months	59.3
5594	138	332	4. More Than Six Months	59.3
5595	138	421	4. More Than Six Months	59.3
5596	138	202	4. More Than Six Months	59.3
5597	138	422	4. More Than Six Months	59.3
5598	138	43	4. More Than Six Months	59.3
5599	138	45	4. More Than Six Months	59.3
5600	138	961	4. More Than Six Months	59.3
5601	138	103	4. More Than Six Months	59.3
5602	138	962	4. More Than Six Months	59.3
5603	138	119	4. More Than Six Months	59.3
5604	138	34	4. More Than Six Months	59.3
5605	138	95	4. More Than Six Months	59.3
5606	138	14	4. More Than Six Months	59.3
5607	138	521	4. More Than Six Months	59.3
5608	138	349	4. More Than Six Months	59.3
5609	138	137	4. More Than Six Months	59.3
5610	138	28	4. More Than Six Months	59.3
5611	138	155	4. More Than Six Months	59.3
5612	138	31	5. All	100
5613	138	30	5. All	100
5614	138	13	5. All	97.6
5615	138	65	5. All	97.6
5616	138	961	5. All	97.6
5617	138	19	5. All	91.8
5618	138	18	5. All	84.5
5619	138	38	5. All	84.5
5620	138	60	5. All	79.8
5621	138	23	5. All	79.8
5622	138	1	5. All	74.1
5623	138	960	5. All	66.8
5624	138	422	5. All	66.8
5625	138	73	5. All	66.8
5626	138	28	5. All	66.8
5627	138	14	5. All	66.8
5628	138	113	5. All	66.8
5629	138	137	5. All	66.8
5630	138	421	5. All	66.8
5631	138	155	5. All	56.5
5632	138	15	5. All	56.5
5633	138	146	5. All	56.5
5634	138	128	5. All	56.5
5635	138	338	5. All	56.5
5636	138	963	5. All	56.5
5637	138	58	5. All	56.5
5638	138	959	5. All	56.5
5639	138	202	5. All	56.5
5640	138	103	5. All	56.5
5641	138	43	5. All	56.5
5642	138	332	5. All	56.5
5643	138	20	5. All	56.5
5644	138	108	5. All	56.5
5645	138	914	5. All	56.5
5646	138	729	5. All	56.5
5647	138	34	5. All	56.5
5648	138	45	5. All	56.5
5649	138	95	5. All	56.5
5650	138	962	5. All	56.5
5651	138	119	5. All	56.5
5652	138	521	5. All	56.5
5653	138	349	5. All	56.5
5654	138	117	5. All	56.5
5655	139	33	3. Six Months	100
5656	139	88	3. Six Months	89.5
5657	139	964	3. Six Months	89.5
5658	139	33	4. More Than Six Months	100
5659	139	964	4. More Than Six Months	92.8
5660	139	22	4. More Than Six Months	89.1
5661	139	31	4. More Than Six Months	84.5
5662	139	965	4. More Than Six Months	74.9
5663	139	173	4. More Than Six Months	70.3
5664	139	966	4. More Than Six Months	64.4
5665	139	30	4. More Than Six Months	56.1
5666	139	967	4. More Than Six Months	56.1
5667	139	653	4. More Than Six Months	56.1
5668	139	13	4. More Than Six Months	56.1
5669	139	964	5. All	100
5670	139	33	5. All	98.1
5671	139	965	5. All	89.3
5672	139	22	5. All	85.9
5673	139	967	5. All	84
5674	139	31	5. All	81.8
5675	139	173	5. All	65.3
5676	139	966	5. All	65.3
5677	139	13	5. All	59.5
5678	139	30	5. All	51.3
5679	139	653	5. All	51.3
5680	139	88	5. All	51.3
5681	140	627	3. Six Months	100
5682	140	31	3. Six Months	81.7
5683	140	31	4. More Than Six Months	100
5684	140	968	4. More Than Six Months	93.2
5685	140	1	4. More Than Six Months	93.2
5686	140	209	4. More Than Six Months	93.2
5687	140	969	4. More Than Six Months	93.2
5688	140	17	4. More Than Six Months	84.3
5689	140	30	4. More Than Six Months	84.3
5690	140	212	4. More Than Six Months	84.3
5691	140	113	4. More Than Six Months	84.3
5692	140	970	4. More Than Six Months	84.3
5693	140	4	4. More Than Six Months	84.3
5694	140	138	4. More Than Six Months	84.3
5695	140	65	4. More Than Six Months	84.3
5696	140	143	4. More Than Six Months	84.3
5697	140	58	4. More Than Six Months	72
5698	140	971	4. More Than Six Months	72
5699	140	715	4. More Than Six Months	72
5700	140	130	4. More Than Six Months	72
5701	140	972	4. More Than Six Months	72
5702	140	973	4. More Than Six Months	72
5703	140	974	4. More Than Six Months	72
5704	140	627	4. More Than Six Months	72
5705	140	202	4. More Than Six Months	72
5706	140	975	4. More Than Six Months	72
5707	140	976	4. More Than Six Months	72
5708	140	13	4. More Than Six Months	72
5709	140	34	4. More Than Six Months	72
5710	140	977	4. More Than Six Months	72
5711	140	978	4. More Than Six Months	72
5712	140	690	4. More Than Six Months	72
5713	140	979	4. More Than Six Months	72
5714	140	980	4. More Than Six Months	72
5715	140	562	4. More Than Six Months	72
5716	140	43	4. More Than Six Months	72
5717	140	712	4. More Than Six Months	72
5718	140	981	4. More Than Six Months	72
5719	140	982	4. More Than Six Months	72
5720	140	53	4. More Than Six Months	72
5721	140	983	4. More Than Six Months	72
5722	140	215	4. More Than Six Months	72
5723	140	135	4. More Than Six Months	72
5724	140	984	4. More Than Six Months	72
5725	140	212	5. All	100
5726	140	562	5. All	97.7
5727	140	978	5. All	97.7
5728	140	970	5. All	97.7
5729	140	976	5. All	95.2
5730	140	979	5. All	95.2
5731	140	984	5. All	95.2
5732	140	977	5. All	95.2
5733	140	690	5. All	95.2
5734	140	975	5. All	95.2
5735	140	202	5. All	95.2
5736	140	971	5. All	95.2
5737	140	973	5. All	95.2
5738	140	980	5. All	95.2
5739	140	974	5. All	95.2
5740	140	31	5. All	85.9
5741	140	627	5. All	81.9
5742	140	968	5. All	71.3
5743	140	113	5. All	71.3
5744	140	65	5. All	71.3
5745	140	30	5. All	71.3
5746	140	209	5. All	71.3
5747	140	138	5. All	71.3
5748	140	1	5. All	71.3
5749	140	969	5. All	71.3
5750	140	43	5. All	63.8
5751	140	143	5. All	63.8
5752	140	983	5. All	63.8
5753	140	4	5. All	63.8
5754	140	17	5. All	63.8
5755	140	985	5. All	53.3
5756	140	23	5. All	53.3
5757	140	715	5. All	53.3
5758	140	59	5. All	53.3
5759	140	659	5. All	53.3
5760	140	13	5. All	53.3
5761	140	972	5. All	53.3
5762	140	63	5. All	53.3
5763	140	34	5. All	53.3
5764	140	53	5. All	53.3
5765	140	130	5. All	53.3
5766	140	58	5. All	53.3
5767	140	712	5. All	53.3
5768	140	981	5. All	53.3
5769	140	215	5. All	53.3
5770	140	10	5. All	53.3
5771	140	982	5. All	53.3
5772	140	135	5. All	53.3
5773	140	625	5. All	53.3
5774	141	13	4. More Than Six Months	100
5775	141	6	4. More Than Six Months	100
5776	141	636	4. More Than Six Months	100
5777	141	13	5. All	100
5778	141	6	5. All	100
5779	141	636	5. All	100
5780	142	12	4. More Than Six Months	100
5781	142	496	4. More Than Six Months	100
5782	142	627	4. More Than Six Months	100
5783	142	613	4. More Than Six Months	100
5784	142	756	4. More Than Six Months	100
5785	142	613	5. All	100
5786	142	496	5. All	100
5787	142	627	5. All	100
5788	142	12	5. All	63.3
5789	142	756	5. All	63.3
5790	143	173	2. Three Months	100
5791	143	173	3. Six Months	100
5792	143	65	4. More Than Six Months	100
5793	143	778	4. More Than Six Months	100
5794	143	173	5. All	100
5795	143	778	5. All	93.4
5796	143	65	5. All	84.1
5797	144	134	4. More Than Six Months	100
5798	144	986	4. More Than Six Months	89.6
5799	144	987	4. More Than Six Months	89.6
5800	144	747	4. More Than Six Months	89.6
5801	144	134	5. All	100
5802	144	986	5. All	89.6
5803	144	987	5. All	89.6
5804	144	747	5. All	89.6
5805	145	13	4. More Than Six Months	100
5806	145	988	4. More Than Six Months	100
5807	145	38	4. More Than Six Months	100
5808	145	988	5. All	100
5809	145	13	5. All	64.4
5810	145	38	5. All	64.4
5811	146	150	4. More Than Six Months	100
5812	146	130	4. More Than Six Months	100
5813	146	150	5. All	100
5814	146	130	5. All	90.4
5815	147	989	4. More Than Six Months	100
5816	147	990	4. More Than Six Months	100
5817	147	989	5. All	100
5818	147	990	5. All	100
5819	148	126	2. Three Months	100
5820	148	348	2. Three Months	100
5821	148	126	3. Six Months	100
5822	148	348	3. Six Months	100
5823	148	33	3. Six Months	67.3
5824	148	417	3. Six Months	67.3
5825	148	991	3. Six Months	67.3
5826	148	33	4. More Than Six Months	100
5827	148	991	4. More Than Six Months	100
5828	148	992	4. More Than Six Months	92.6
5829	148	327	4. More Than Six Months	82.1
5830	148	248	4. More Than Six Months	82.1
5831	148	221	4. More Than Six Months	82.1
5832	148	59	4. More Than Six Months	82.1
5833	148	126	4. More Than Six Months	82.1
5834	148	126	5. All	100
5835	148	348	5. All	98.1
5836	148	248	5. All	96.1
5837	148	991	5. All	85
5838	148	33	5. All	85
5839	148	992	5. All	70
5840	148	327	5. All	61.2
5841	148	59	5. All	61.2
5842	148	221	5. All	61.2
5843	148	417	5. All	61.2
5844	149	993	1. Thirty Days	100
5845	149	993	2. Three Months	100
5846	149	315	2. Three Months	64.5
5847	149	511	2. Three Months	64.5
5848	149	993	3. Six Months	100
5849	149	346	3. Six Months	71.5
5850	149	994	3. Six Months	61.9
5851	149	9	3. Six Months	61.9
5852	149	50	3. Six Months	61.9
5853	149	157	3. Six Months	61.9
5854	149	13	3. Six Months	61.9
5855	149	315	3. Six Months	61.9
5856	149	511	3. Six Months	61.9
5857	149	320	3. Six Months	61.9
5858	149	209	3. Six Months	61.9
5859	149	775	4. More Than Six Months	100
5860	149	749	4. More Than Six Months	96.3
5861	149	113	4. More Than Six Months	94.9
5862	149	995	4. More Than Six Months	79.5
5863	149	35	4. More Than Six Months	79.5
5864	149	826	4. More Than Six Months	76.7
5865	149	30	4. More Than Six Months	76.7
5866	149	209	4. More Than Six Months	76.7
5867	149	996	4. More Than Six Months	73.5
5868	149	997	4. More Than Six Months	73.5
5869	149	119	4. More Than Six Months	73.5
5870	149	342	4. More Than Six Months	73.5
5871	149	870	4. More Than Six Months	69.7
5872	149	998	4. More Than Six Months	69.7
5873	149	32	4. More Than Six Months	69.7
5874	149	9	4. More Than Six Months	69.7
5875	149	318	4. More Than Six Months	65.4
5876	149	4	4. More Than Six Months	65.4
5877	149	213	4. More Than Six Months	60
5878	149	142	4. More Than Six Months	60
5879	149	326	4. More Than Six Months	60
5880	149	914	4. More Than Six Months	60
5881	149	137	4. More Than Six Months	60
5882	149	999	4. More Than Six Months	60
5883	149	135	4. More Than Six Months	60
5884	149	1000	4. More Than Six Months	60
5885	149	13	4. More Than Six Months	60
5886	149	153	4. More Than Six Months	60
5887	149	225	4. More Than Six Months	60
5888	149	159	4. More Than Six Months	60
5889	149	718	4. More Than Six Months	53.1
5890	149	117	4. More Than Six Months	53.1
5891	149	1001	4. More Than Six Months	53.1
5892	149	136	4. More Than Six Months	53.1
5893	149	77	4. More Than Six Months	53.1
5894	149	301	4. More Than Six Months	53.1
5895	149	1002	4. More Than Six Months	53.1
5896	149	621	4. More Than Six Months	53.1
5897	149	1003	4. More Than Six Months	53.1
5898	149	1004	4. More Than Six Months	53.1
5899	149	1005	4. More Than Six Months	53.1
5900	149	282	4. More Than Six Months	53.1
5901	149	335	4. More Than Six Months	53.1
5902	149	58	4. More Than Six Months	53.1
5903	149	189	4. More Than Six Months	53.1
5904	149	28	4. More Than Six Months	53.1
5905	149	105	4. More Than Six Months	53.1
5906	149	51	4. More Than Six Months	53.1
5907	149	666	4. More Than Six Months	53.1
5908	149	43	4. More Than Six Months	53.1
5909	149	466	4. More Than Six Months	53.1
5910	149	146	4. More Than Six Months	53.1
5911	149	61	4. More Than Six Months	53.1
5912	149	37	4. More Than Six Months	53.1
5913	149	1006	4. More Than Six Months	53.1
5914	149	855	4. More Than Six Months	43.5
5915	149	54	4. More Than Six Months	43.5
5916	149	1007	4. More Than Six Months	43.5
5917	149	1008	4. More Than Six Months	43.5
5918	149	1009	4. More Than Six Months	43.5
5919	149	1010	4. More Than Six Months	43.5
5920	149	1011	4. More Than Six Months	43.5
5921	149	475	4. More Than Six Months	43.5
5922	149	1012	4. More Than Six Months	43.5
5923	149	1013	4. More Than Six Months	43.5
5924	149	7	4. More Than Six Months	43.5
5925	149	131	4. More Than Six Months	43.5
5926	149	1014	4. More Than Six Months	43.5
5927	149	346	4. More Than Six Months	43.5
5928	149	1015	4. More Than Six Months	43.5
5929	149	1016	4. More Than Six Months	43.5
5930	149	332	4. More Than Six Months	43.5
5931	149	220	4. More Than Six Months	43.5
5932	149	330	4. More Than Six Months	43.5
5933	149	26	4. More Than Six Months	43.5
5934	149	440	4. More Than Six Months	43.5
5935	149	281	4. More Than Six Months	43.5
5936	149	1017	4. More Than Six Months	43.5
5937	149	1018	4. More Than Six Months	43.5
5938	149	413	4. More Than Six Months	43.5
5939	149	313	4. More Than Six Months	43.5
5940	149	114	4. More Than Six Months	43.5
5941	149	15	4. More Than Six Months	43.5
5942	149	1019	4. More Than Six Months	43.5
5943	149	797	4. More Than Six Months	43.5
5944	149	1	4. More Than Six Months	43.5
5945	149	426	4. More Than Six Months	43.5
5946	149	1020	4. More Than Six Months	43.5
5947	149	170	4. More Than Six Months	43.5
5948	149	617	4. More Than Six Months	43.5
5949	149	523	4. More Than Six Months	43.5
5950	149	50	4. More Than Six Months	43.5
5951	149	860	4. More Than Six Months	43.5
5952	149	108	4. More Than Six Months	43.5
5953	149	1021	4. More Than Six Months	43.5
5954	149	478	4. More Than Six Months	43.5
5955	149	139	4. More Than Six Months	43.5
5956	149	143	4. More Than Six Months	43.5
5957	149	845	4. More Than Six Months	43.5
5958	149	1022	4. More Than Six Months	43.5
5959	149	775	5. All	100
5960	149	749	5. All	97.5
5961	149	113	5. All	94.7
5962	149	826	5. All	93.2
5963	149	1011	5. All	83.9
5964	149	1004	5. All	83.9
5965	149	209	5. All	81.5
5966	149	1012	5. All	81.5
5967	149	1013	5. All	81.5
5968	149	1010	5. All	81.5
5969	149	1008	5. All	81.5
5970	149	1009	5. All	81.5
5971	149	995	5. All	78.9
5972	149	35	5. All	78.9
5973	149	342	5. All	75.9
5974	149	9	5. All	75.9
5975	149	30	5. All	75.9
5976	149	119	5. All	75.9
5977	149	996	5. All	72.6
5978	149	997	5. All	72.6
5979	149	13	5. All	68.8
5980	149	870	5. All	68.8
5981	149	998	5. All	68.8
5982	149	32	5. All	68.8
5983	149	4	5. All	64.2
5984	149	135	5. All	64.2
5985	149	346	5. All	64.2
5986	149	318	5. All	64.2
5987	149	225	5. All	64.2
5988	149	153	5. All	58.7
5989	149	999	5. All	58.7
5990	149	326	5. All	58.7
5991	149	142	5. All	58.7
5992	149	50	5. All	58.7
5993	149	137	5. All	58.7
5994	149	914	5. All	58.7
5995	149	77	5. All	58.7
5996	149	1006	5. All	58.7
5997	149	1005	5. All	58.7
5998	149	1000	5. All	58.7
5999	149	136	5. All	58.7
6000	149	159	5. All	58.7
6001	149	146	5. All	58.7
6002	149	61	5. All	51.6
6003	149	58	5. All	51.6
6004	149	621	5. All	51.6
6005	149	282	5. All	51.6
6006	149	718	5. All	51.6
6007	149	1002	5. All	51.6
6008	149	51	5. All	51.6
6009	149	43	5. All	51.6
6010	149	466	5. All	51.6
6011	149	1001	5. All	51.6
6012	149	117	5. All	51.6
6013	149	596	5. All	51.6
6014	149	139	5. All	51.6
6015	149	37	5. All	51.6
6016	149	26	5. All	51.6
6017	149	189	5. All	51.6
6018	149	301	5. All	51.6
6019	149	335	5. All	51.6
6020	149	1003	5. All	51.6
6021	149	330	5. All	51.6
6022	149	666	5. All	51.6
6023	149	105	5. All	51.6
6024	149	28	5. All	51.6
6025	149	181	5. All	41.7
6026	149	440	5. All	41.7
6027	149	1	5. All	41.7
6028	149	426	5. All	41.7
6029	149	7	5. All	41.7
6030	149	170	5. All	41.7
6031	149	332	5. All	41.7
6032	149	143	5. All	41.7
6033	149	475	5. All	41.7
6034	149	833	5. All	41.7
6035	149	1016	5. All	41.7
6036	149	351	5. All	41.7
6037	149	131	5. All	41.7
6038	149	107	5. All	41.7
6039	149	15	5. All	41.7
6040	149	523	5. All	41.7
6041	149	1022	5. All	41.7
6042	149	1020	5. All	41.7
6043	149	617	5. All	41.7
6044	149	413	5. All	41.7
6045	149	1018	5. All	41.7
6046	149	1015	5. All	41.7
6047	149	1017	5. All	41.7
6048	149	1021	5. All	41.7
6049	149	1007	5. All	41.7
6050	149	1019	5. All	41.7
6051	149	281	5. All	41.7
6052	149	313	5. All	41.7
6053	149	860	5. All	41.7
6054	149	478	5. All	41.7
6055	149	845	5. All	41.7
6056	149	108	5. All	41.7
6057	149	114	5. All	41.7
6058	149	797	5. All	41.7
6059	150	450	2. Three Months	100
6060	150	450	3. Six Months	100
6061	150	1023	4. More Than Six Months	100
6062	150	1024	4. More Than Six Months	100
6063	150	450	5. All	100
6064	150	1023	5. All	88.6
6065	150	1024	5. All	88.6
6066	150	497	5. All	88.6
6067	151	1025	4. More Than Six Months	100
6068	151	1026	4. More Than Six Months	100
6069	151	1027	4. More Than Six Months	100
6070	151	1026	5. All	100
6071	151	1025	5. All	100
6072	151	1027	5. All	100
6073	152	1028	4. More Than Six Months	100
6074	152	13	4. More Than Six Months	100
6075	152	14	4. More Than Six Months	100
6076	152	1028	5. All	100
6077	152	13	5. All	66.6
6078	152	1	5. All	66.6
6079	152	14	5. All	66.6
6080	153	30	3. Six Months	100
6081	153	346	4. More Than Six Months	100
6082	153	130	4. More Than Six Months	100
6083	153	346	5. All	100
6084	153	130	5. All	100
6085	153	30	5. All	89.1
6086	154	30	4. More Than Six Months	100
6087	154	13	4. More Than Six Months	100
6088	154	1	4. More Than Six Months	88.2
6089	154	673	4. More Than Six Months	88.2
6090	154	33	4. More Than Six Months	88.2
6091	154	31	4. More Than Six Months	88.2
6092	154	1029	4. More Than Six Months	88.2
6093	154	130	4. More Than Six Months	88.2
6094	154	30	5. All	100
6095	154	31	5. All	100
6096	154	13	5. All	100
6097	154	33	5. All	87.8
6098	154	1	5. All	87.8
6099	154	673	5. All	87.8
6100	154	1029	5. All	87.8
6101	154	130	5. All	87.8
6102	154	173	5. All	87.8
6103	155	1030	4. More Than Six Months	100
6104	155	881	4. More Than Six Months	65.9
6105	155	305	4. More Than Six Months	65.9
6106	155	313	4. More Than Six Months	65.9
6107	155	1030	5. All	100
6108	155	881	5. All	65.7
6109	155	305	5. All	65.7
6110	155	313	5. All	65.7
6111	156	13	2. Three Months	100
6112	156	13	3. Six Months	100
6113	156	1	4. More Than Six Months	100
6114	156	1031	4. More Than Six Months	100
6115	156	421	4. More Than Six Months	89.7
6116	156	1032	4. More Than Six Months	89.7
6117	156	1	5. All	100
6118	156	1031	5. All	100
6119	156	421	5. All	89.2
6120	156	1032	5. All	89.2
6121	156	14	5. All	89.2
6122	156	13	5. All	89.2
6123	157	1033	4. More Than Six Months	100
6124	157	625	4. More Than Six Months	89.7
6125	157	560	4. More Than Six Months	89.7
6126	157	625	5. All	100
6127	157	1033	5. All	75.5
6128	157	560	5. All	67.3
6129	158	329	4. More Than Six Months	100
6130	158	31	4. More Than Six Months	92.3
6131	158	301	4. More Than Six Months	80.5
6132	158	715	4. More Than Six Months	71.2
6133	158	236	4. More Than Six Months	71.2
6134	158	532	4. More Than Six Months	71.2
6135	158	1034	4. More Than Six Months	71.2
6136	158	1034	5. All	100
6137	158	329	5. All	95.1
6138	158	31	5. All	84.9
6139	158	301	5. All	73.8
6140	158	715	5. All	64.9
6141	158	532	5. All	64.9
6142	158	236	5. All	64.9
6143	159	531	2. Three Months	100
6144	159	45	3. Six Months	100
6145	159	1035	3. Six Months	100
6146	159	531	3. Six Months	79.6
6147	159	1036	4. More Than Six Months	100
6148	159	531	4. More Than Six Months	95.4
6149	159	106	4. More Than Six Months	89.6
6150	159	1037	4. More Than Six Months	89.6
6151	159	144	4. More Than Six Months	81.8
6152	159	146	4. More Than Six Months	76.6
6153	159	1038	4. More Than Six Months	76.6
6154	159	1039	4. More Than Six Months	70
6155	159	539	4. More Than Six Months	70
6156	159	636	4. More Than Six Months	70
6157	159	1040	4. More Than Six Months	60.6
6158	159	1041	4. More Than Six Months	60.6
6159	159	222	4. More Than Six Months	60.6
6160	159	126	4. More Than Six Months	60.6
6161	159	17	4. More Than Six Months	60.6
6162	159	1042	4. More Than Six Months	60.6
6163	159	1043	4. More Than Six Months	60.6
6164	159	1036	5. All	100
6165	159	531	5. All	100
6166	159	1037	5. All	89.4
6167	159	106	5. All	89.4
6168	159	144	5. All	81.5
6169	159	45	5. All	81.5
6170	159	1035	5. All	81.5
6171	159	146	5. All	76.2
6172	159	1038	5. All	76.2
6173	159	1039	5. All	69.5
6174	159	636	5. All	69.5
6175	159	539	5. All	69.5
6176	159	1043	5. All	69.5
6177	159	1042	5. All	60
6178	159	126	5. All	60
6179	159	17	5. All	60
6180	159	1041	5. All	60
6181	159	222	5. All	60
6182	159	1040	5. All	60
6183	159	1044	5. All	60
6184	160	1045	1. Thirty Days	100
6185	160	1045	2. Three Months	100
6186	160	1045	3. Six Months	100
6187	160	345	3. Six Months	65.7
6188	160	1045	4. More Than Six Months	100
6189	160	130	4. More Than Six Months	70.6
6190	160	1046	4. More Than Six Months	70.6
6191	160	146	4. More Than Six Months	70.6
6192	160	1045	5. All	100
6193	160	146	5. All	64.4
6194	160	345	5. All	64.4
6195	160	130	5. All	56.8
6196	160	1046	5. All	56.8
6197	160	1047	5. All	56.8
6198	160	1048	5. All	56.8
6199	160	1049	5. All	56.8
6200	161	743	4. More Than Six Months	100
6201	161	109	4. More Than Six Months	78.9
6202	161	336	4. More Than Six Months	78.9
6203	161	743	5. All	100
6204	161	109	5. All	78.9
6205	161	336	5. All	78.9
6206	162	58	4. More Than Six Months	100
6207	162	202	4. More Than Six Months	92.9
6208	162	140	4. More Than Six Months	82.8
6209	162	1050	4. More Than Six Months	82.8
6210	163	197	4. More Than Six Months	100
6211	163	183	4. More Than Six Months	100
6212	163	313	4. More Than Six Months	100
6213	163	1051	4. More Than Six Months	89.9
6214	163	28	4. More Than Six Months	89.9
6215	163	197	5. All	100
6216	163	183	5. All	100
6217	163	313	5. All	100
6218	163	1051	5. All	89.9
6219	163	28	5. All	89.9
6220	164	113	1. Thirty Days	100
6221	164	1052	1. Thirty Days	65.6
6222	164	244	1. Thirty Days	65.6
6223	164	345	1. Thirty Days	65.6
6224	164	1053	1. Thirty Days	65.6
6225	164	1022	1. Thirty Days	65.6
6226	164	338	1. Thirty Days	57.3
6227	164	77	1. Thirty Days	57.3
6228	164	4	1. Thirty Days	57.3
6229	164	30	1. Thirty Days	57.3
6230	164	1054	1. Thirty Days	57.3
6231	164	35	1. Thirty Days	57.3
6232	164	113	2. Three Months	100
6233	164	338	2. Three Months	77
6234	164	1052	2. Three Months	75.6
6235	164	77	2. Three Months	75.6
6236	164	244	2. Three Months	72.4
6237	164	1055	2. Three Months	70.6
6238	164	345	2. Three Months	60.9
6239	164	55	2. Three Months	60.9
6240	164	117	2. Three Months	57.5
6241	164	1022	2. Three Months	57.5
6242	164	4	2. Three Months	57.5
6243	164	130	2. Three Months	53.3
6244	164	1056	2. Three Months	53.3
6245	164	108	2. Three Months	53.3
6246	164	673	2. Three Months	53.3
6247	164	1054	2. Three Months	53.3
6248	164	136	2. Three Months	47.8
6249	164	158	2. Three Months	47.8
6250	164	35	2. Three Months	47.8
6251	164	30	2. Three Months	47.8
6252	164	1053	2. Three Months	47.8
6253	164	1057	2. Three Months	47.8
6254	164	1058	2. Three Months	40.2
6255	164	65	2. Three Months	40.2
6256	164	314	2. Three Months	40.2
6257	164	713	2. Three Months	40.2
6258	164	67	2. Three Months	40.2
6259	164	2	2. Three Months	40.2
6260	164	644	2. Three Months	40.2
6261	164	168	2. Three Months	40.2
6262	164	119	2. Three Months	40.2
6263	164	795	2. Three Months	40.2
6264	164	1006	2. Three Months	40.2
6265	164	13	2. Three Months	40.2
6266	164	113	3. Six Months	100
6267	164	77	3. Six Months	78.8
6268	164	1052	3. Six Months	78.8
6269	164	338	3. Six Months	78.1
6270	164	244	3. Six Months	72.8
6271	164	345	3. Six Months	66.8
6272	164	1055	3. Six Months	63.8
6273	164	1059	3. Six Months	62
6274	164	55	3. Six Months	60.1
6275	164	202	3. Six Months	60.1
6276	164	30	3. Six Months	60.1
6277	164	4	3. Six Months	57.9
6278	164	117	3. Six Months	55.5
6279	164	130	3. Six Months	55.5
6280	164	1060	3. Six Months	49.3
6281	164	1022	3. Six Months	49.3
6282	164	1057	3. Six Months	49.3
6283	164	673	3. Six Months	49.3
6284	164	35	3. Six Months	49.3
6285	164	1061	3. Six Months	49.3
6286	164	136	3. Six Months	49.3
6287	164	128	3. Six Months	45.2
6288	164	242	3. Six Months	45.2
6289	164	795	3. Six Months	45.2
6290	164	1054	3. Six Months	45.2
6291	164	1056	3. Six Months	45.2
6292	164	65	3. Six Months	45.2
6293	164	13	3. Six Months	45.2
6294	164	108	3. Six Months	45.2
6295	164	58	3. Six Months	45.2
6296	164	1062	3. Six Months	45.2
6297	164	131	3. Six Months	40
6298	164	173	3. Six Months	40
6299	164	32	3. Six Months	40
6300	164	74	3. Six Months	40
6301	164	67	3. Six Months	40
6302	164	31	3. Six Months	40
6303	164	119	3. Six Months	40
6304	164	1058	3. Six Months	40
6305	164	713	3. Six Months	40
6306	164	45	3. Six Months	40
6307	164	1053	3. Six Months	40
6308	164	39	3. Six Months	40
6309	164	222	3. Six Months	40
6310	164	225	3. Six Months	40
6311	164	176	3. Six Months	40
6312	164	158	3. Six Months	40
6313	164	516	3. Six Months	32.7
6314	164	1006	3. Six Months	32.7
6315	164	168	3. Six Months	32.7
6316	164	644	3. Six Months	32.7
6317	164	349	3. Six Months	32.7
6318	164	314	3. Six Months	32.7
6319	164	315	3. Six Months	32.7
6320	164	1063	3. Six Months	32.7
6321	164	558	3. Six Months	32.7
6322	164	835	3. Six Months	32.7
6323	164	2	3. Six Months	32.7
6324	164	711	3. Six Months	32.7
6325	164	137	3. Six Months	32.7
6326	164	458	3. Six Months	32.7
6327	164	217	3. Six Months	32.7
6328	164	230	3. Six Months	32.7
6329	164	326	3. Six Months	32.7
6330	164	43	3. Six Months	32.7
6331	164	411	3. Six Months	32.7
6332	164	1	3. Six Months	32.7
6333	164	26	3. Six Months	32.7
6334	164	1064	3. Six Months	32.7
6335	164	336	3. Six Months	32.7
6336	164	1018	3. Six Months	32.7
6337	164	404	3. Six Months	32.7
6338	164	3	3. Six Months	32.7
6339	164	182	3. Six Months	32.7
6340	164	684	3. Six Months	32.7
6341	164	332	3. Six Months	32.7
6342	164	1065	3. Six Months	32.7
6343	164	1066	3. Six Months	32.7
6344	164	299	3. Six Months	32.7
6345	164	113	4. More Than Six Months	100
6346	164	242	4. More Than Six Months	83
6347	164	77	4. More Than Six Months	79
6348	164	244	4. More Than Six Months	76.4
6349	164	338	4. More Than Six Months	76.4
6350	164	1052	4. More Than Six Months	72.4
6351	164	726	4. More Than Six Months	69.1
6352	164	1	4. More Than Six Months	68.5
6353	164	206	4. More Than Six Months	64.3
6354	164	4	4. More Than Six Months	63.5
6355	164	13	4. More Than Six Months	61.7
6356	164	65	4. More Than Six Months	60.8
6357	164	673	4. More Than Six Months	59.8
6358	164	35	4. More Than Six Months	59.8
6359	164	88	4. More Than Six Months	58.7
6360	164	130	4. More Than Six Months	58.7
6361	164	202	4. More Than Six Months	58.7
6362	164	1067	4. More Than Six Months	58.7
6363	164	659	4. More Than Six Months	57.6
6364	164	345	4. More Than Six Months	56.4
6365	164	136	4. More Than Six Months	56.4
6366	164	59	4. More Than Six Months	53.7
6367	164	222	4. More Than Six Months	53.7
6368	164	411	4. More Than Six Months	53.7
6369	164	19	4. More Than Six Months	52.2
6370	164	117	4. More Than Six Months	52.2
6371	164	1066	4. More Than Six Months	50.5
6372	164	139	4. More Than Six Months	50.5
6373	164	2	4. More Than Six Months	50.5
6374	164	30	4. More Than Six Months	48.7
6375	164	464	4. More Than Six Months	48.7
6376	164	313	4. More Than Six Months	48.7
6377	164	119	4. More Than Six Months	46.6
6378	164	31	4. More Than Six Months	46.6
6379	164	58	4. More Than Six Months	46.6
6380	164	87	4. More Than Six Months	44.3
6381	164	1061	4. More Than Six Months	44.3
6382	164	271	4. More Than Six Months	44.3
6383	164	73	4. More Than Six Months	44.3
6384	164	32	4. More Than Six Months	41.6
6385	164	713	4. More Than Six Months	41.6
6386	164	135	4. More Than Six Months	41.6
6387	164	198	4. More Than Six Months	41.6
6388	164	1054	4. More Than Six Months	41.6
6389	164	43	4. More Than Six Months	41.6
6390	164	74	4. More Than Six Months	41.6
6391	164	10	4. More Than Six Months	41.6
6392	164	158	4. More Than Six Months	41.6
6393	164	509	4. More Than Six Months	38.4
6394	164	1068	4. More Than Six Months	38.4
6395	164	349	4. More Than Six Months	38.4
6396	164	336	4. More Than Six Months	34.6
6397	164	982	4. More Than Six Months	34.6
6398	164	1069	4. More Than Six Months	34.6
6399	164	346	4. More Than Six Months	34.6
6400	164	184	4. More Than Six Months	34.6
6401	164	567	4. More Than Six Months	34.6
6402	164	26	4. More Than Six Months	34.6
6403	164	1070	4. More Than Six Months	34.6
6404	164	24	4. More Than Six Months	34.6
6405	164	173	4. More Than Six Months	34.6
6406	164	28	4. More Than Six Months	29.7
6407	164	146	4. More Than Six Months	29.7
6408	164	54	4. More Than Six Months	29.7
6409	164	1071	4. More Than Six Months	29.7
6410	164	39	4. More Than Six Months	29.7
6411	164	72	4. More Than Six Months	29.7
6412	164	33	4. More Than Six Months	29.7
6413	164	140	4. More Than Six Months	29.7
6414	164	22	4. More Than Six Months	29.7
6415	164	496	4. More Than Six Months	29.7
6416	164	107	4. More Than Six Months	29.7
6417	164	67	4. More Than Six Months	29.7
6418	164	15	4. More Than Six Months	29.7
6419	164	1072	4. More Than Six Months	29.7
6420	164	685	4. More Than Six Months	29.7
6421	164	51	4. More Than Six Months	29.7
6422	164	241	4. More Than Six Months	29.7
6423	164	1003	4. More Than Six Months	29.7
6424	164	126	4. More Than Six Months	29.7
6425	164	61	4. More Than Six Months	29.7
6426	164	21	4. More Than Six Months	29.7
6427	164	885	4. More Than Six Months	29.7
6428	164	317	4. More Than Six Months	29.7
6429	164	220	4. More Than Six Months	29.7
6430	164	1044	4. More Than Six Months	23
6431	164	237	4. More Than Six Months	23
6432	164	213	4. More Than Six Months	23
6433	164	38	4. More Than Six Months	23
6434	164	116	4. More Than Six Months	23
6435	164	404	4. More Than Six Months	23
6436	164	144	4. More Than Six Months	23
6437	164	143	4. More Than Six Months	23
6438	164	627	4. More Than Six Months	23
6439	164	1073	4. More Than Six Months	23
6440	164	421	4. More Than Six Months	23
6441	164	815	4. More Than Six Months	23
6442	164	79	4. More Than Six Months	23
6443	164	407	4. More Than Six Months	23
6444	164	81	4. More Than Six Months	23
6445	164	113	5. All	100
6446	164	77	5. All	79.9
6447	164	338	5. All	77.8
6448	164	244	5. All	76.5
6449	164	1	5. All	64.2
6450	164	4	5. All	63.6
6451	164	345	5. All	62.4
6452	164	202	5. All	61.1
6453	164	13	5. All	59.7
6454	164	130	5. All	59.7
6455	164	65	5. All	58.9
6456	164	673	5. All	58.9
6457	164	35	5. All	58.9
6458	164	136	5. All	56.4
6459	164	30	5. All	55.5
6460	164	117	5. All	55.5
6461	164	1067	5. All	53.5
6462	164	222	5. All	52.4
6463	164	108	5. All	51.2
6464	164	1068	5. All	50
6465	164	58	5. All	48.6
6466	164	1061	5. All	48.6
6467	164	19	5. All	48.6
6468	164	1066	5. All	48.6
6469	164	59	5. All	48.6
6470	164	2	5. All	48.6
6471	164	1074	5. All	47.2
6472	164	31	5. All	47.2
6473	164	139	5. All	47.2
6474	164	685	5. All	47.2
6475	164	1075	5. All	47.2
6476	164	1076	5. All	45.6
6477	164	1077	5. All	45.6
6478	164	624	5. All	45.6
6479	164	313	5. All	45.6
6480	164	1078	5. All	45.6
6481	164	1079	5. All	45.6
6482	164	74	5. All	43.8
6483	164	158	5. All	43.8
6484	164	32	5. All	43.8
6485	164	326	5. All	41.8
6486	164	43	5. All	41.8
6487	164	73	5. All	41.8
6488	164	173	5. All	39.5
6489	164	349	5. All	39.5
6490	164	87	5. All	39.5
6491	164	39	5. All	37
6492	164	26	5. All	37
6493	164	10	5. All	37
6494	164	67	5. All	37
6495	164	336	5. All	37
6496	164	509	5. All	37
6497	164	198	5. All	37
6498	164	128	5. All	33.9
6499	164	75	5. All	33.9
6500	164	346	5. All	33.9
6501	164	1018	5. All	33.9
6502	164	220	5. All	30.2
6503	164	241	5. All	30.2
6504	164	126	5. All	30.2
6505	164	1080	5. All	30.2
6506	164	51	5. All	30.2
6507	164	404	5. All	30.2
6508	164	1069	5. All	30.2
6509	164	138	5. All	30.2
6510	164	33	5. All	30.2
6511	164	184	5. All	30.2
6512	164	137	5. All	30.2
6513	164	711	5. All	30.2
6514	164	22	5. All	30.2
6515	164	146	5. All	30.2
6516	164	34	5. All	30.2
6517	164	17	5. All	30.2
6518	164	982	5. All	30.2
6519	164	61	5. All	30.2
6520	164	885	5. All	25.5
6521	164	1072	5. All	25.5
6522	164	28	5. All	25.5
6523	164	140	5. All	25.5
6524	164	1003	5. All	25.5
6525	164	421	5. All	25.5
6526	164	106	5. All	25.5
6527	164	399	5. All	25.5
6528	164	215	5. All	25.5
6529	164	344	5. All	25.5
6530	164	81	5. All	25.5
6531	164	317	5. All	25.5
6532	164	21	5. All	25.5
6533	164	38	5. All	25.5
6534	164	15	5. All	25.5
6535	164	54	5. All	25.5
6536	164	143	5. All	19.1
6537	164	144	5. All	19.1
6538	164	237	5. All	19.1
6539	164	79	5. All	19.1
6540	164	23	5. All	19.1
6541	164	815	5. All	19.1
6542	164	627	5. All	19.1
6543	164	161	5. All	19.1
6544	164	354	5. All	19.1
6545	165	13	1. Thirty Days	100
6546	165	14	1. Thirty Days	71.2
6547	165	34	1. Thirty Days	69.7
6548	165	1	1. Thirty Days	61.9
6549	165	18	1. Thirty Days	61.9
6550	165	332	1. Thirty Days	61.9
6551	165	113	1. Thirty Days	61.9
6552	165	30	1. Thirty Days	59.5
6553	165	17	1. Thirty Days	59.5
6554	165	77	1. Thirty Days	59.5
6555	165	58	1. Thirty Days	59.5
6556	165	28	1. Thirty Days	56.7
6557	165	156	1. Thirty Days	56.7
6558	165	161	1. Thirty Days	56.7
6559	165	31	1. Thirty Days	53.4
6560	165	127	1. Thirty Days	53.4
6561	165	254	1. Thirty Days	53.4
6562	165	35	1. Thirty Days	53.4
6563	165	37	1. Thirty Days	53.4
6564	165	87	1. Thirty Days	53.4
6565	165	313	1. Thirty Days	53.4
6566	165	39	1. Thirty Days	53.4
6567	165	340	1. Thirty Days	49.6
6568	165	715	1. Thirty Days	49.6
6569	165	26	1. Thirty Days	49.6
6570	165	19	1. Thirty Days	49.6
6571	165	469	1. Thirty Days	49.6
6572	165	138	1. Thirty Days	49.6
6573	165	3	1. Thirty Days	49.6
6574	165	335	1. Thirty Days	49.6
6575	165	4	1. Thirty Days	49.6
6576	165	146	1. Thirty Days	49.6
6577	165	222	1. Thirty Days	45
6578	165	158	1. Thirty Days	45
6579	165	134	1. Thirty Days	45
6580	165	65	1. Thirty Days	45
6581	165	757	1. Thirty Days	45
6582	165	59	1. Thirty Days	45
6583	165	184	1. Thirty Days	45
6584	165	492	1. Thirty Days	45
6585	165	308	1. Thirty Days	45
6586	165	130	1. Thirty Days	45
6587	165	573	1. Thirty Days	45
6588	165	168	1. Thirty Days	39
6589	165	189	1. Thirty Days	39
6590	165	7	1. Thirty Days	39
6591	165	326	1. Thirty Days	39
6592	165	301	1. Thirty Days	39
6593	165	44	1. Thirty Days	39
6594	165	117	1. Thirty Days	39
6595	165	73	1. Thirty Days	39
6596	165	342	1. Thirty Days	39
6597	165	1081	1. Thirty Days	39
6598	165	33	1. Thirty Days	39
6599	165	153	1. Thirty Days	39
6600	165	137	1. Thirty Days	39
6601	165	12	1. Thirty Days	39
6602	165	673	1. Thirty Days	39
6603	165	23	1. Thirty Days	39
6604	165	142	1. Thirty Days	39
6605	165	6	1. Thirty Days	39
6606	165	144	1. Thirty Days	39
6607	165	126	1. Thirty Days	39
6608	165	53	1. Thirty Days	39
6609	165	847	1. Thirty Days	39
6610	165	70	1. Thirty Days	39
6611	165	54	1. Thirty Days	39
6612	165	48	1. Thirty Days	39
6613	165	305	1. Thirty Days	39
6614	165	1082	1. Thirty Days	30.8
6615	165	983	1. Thirty Days	30.8
6616	165	1083	1. Thirty Days	30.8
6617	165	214	1. Thirty Days	30.8
6618	165	1006	1. Thirty Days	30.8
6619	165	10	1. Thirty Days	30.8
6620	165	783	1. Thirty Days	30.8
6621	165	2	1. Thirty Days	30.8
6622	165	1084	1. Thirty Days	30.8
6623	165	303	1. Thirty Days	30.8
6624	165	402	1. Thirty Days	30.8
6625	165	344	1. Thirty Days	30.8
6626	165	1085	1. Thirty Days	30.8
6627	165	147	1. Thirty Days	30.8
6628	165	9	1. Thirty Days	30.8
6629	165	15	1. Thirty Days	30.8
6630	165	1086	1. Thirty Days	30.8
6631	165	302	1. Thirty Days	30.8
6632	165	1087	1. Thirty Days	30.8
6633	165	751	1. Thirty Days	30.8
6634	165	908	1. Thirty Days	30.8
6635	165	384	1. Thirty Days	30.8
6636	165	170	1. Thirty Days	30.8
6637	165	318	1. Thirty Days	30.8
6638	165	20	1. Thirty Days	30.8
6639	165	311	1. Thirty Days	30.8
6640	165	1088	1. Thirty Days	30.8
6641	165	145	1. Thirty Days	30.8
6642	165	154	1. Thirty Days	30.8
6643	165	1089	1. Thirty Days	30.8
6644	165	107	1. Thirty Days	30.8
6645	165	13	2. Three Months	100
6646	165	34	2. Three Months	71.8
6647	165	28	2. Three Months	68.3
6648	165	573	2. Three Months	66.6
6649	165	70	2. Three Months	65.9
6650	165	77	2. Three Months	65.3
6651	165	14	2. Three Months	64.7
6652	165	113	2. Three Months	64
6653	165	18	2. Three Months	64
6654	165	30	2. Three Months	64
6655	165	1	2. Three Months	62.6
6656	165	23	2. Three Months	62.6
6657	165	326	2. Three Months	61
6658	165	4	2. Three Months	61
6659	165	35	2. Three Months	61
6660	165	31	2. Three Months	59.3
6661	165	58	2. Three Months	59.3
6662	165	332	2. Three Months	57.5
6663	165	581	2. Three Months	56.5
6664	165	37	2. Three Months	55.4
6665	165	17	2. Three Months	55.4
6666	165	43	2. Three Months	54.3
6667	165	137	2. Three Months	54.3
6668	165	126	2. Three Months	54.3
6669	165	87	2. Three Months	53.1
6670	165	492	2. Three Months	53.1
6671	165	68	2. Three Months	51.8
6672	165	156	2. Three Months	51.8
6673	165	302	2. Three Months	51.8
6674	165	10	2. Three Months	51.8
6675	165	9	2. Three Months	50.4
6676	165	131	2. Three Months	50.4
6677	165	313	2. Three Months	50.4
6678	165	153	2. Three Months	50.4
6679	165	26	2. Three Months	50.4
6680	165	38	2. Three Months	48.9
6681	165	146	2. Three Months	48.9
6682	165	308	2. Three Months	48.9
6683	165	19	2. Three Months	48.9
6684	165	33	2. Three Months	48.9
6685	165	161	2. Three Months	48.9
6686	165	757	2. Three Months	48.9
6687	165	54	2. Three Months	47.3
6688	165	2	2. Three Months	47.3
6689	165	469	2. Three Months	47.3
6690	165	340	2. Three Months	47.3
6691	165	130	2. Three Months	47.3
6692	165	7	2. Three Months	47.3
6693	165	73	2. Three Months	47.3
6694	165	65	2. Three Months	45.6
6695	165	318	2. Three Months	45.6
6696	165	36	2. Three Months	45.6
6697	165	139	2. Three Months	45.6
6698	165	184	2. Three Months	45.6
6699	165	15	2. Three Months	45.6
6700	165	142	2. Three Months	45.6
6701	165	39	2. Three Months	45.6
6702	165	402	2. Three Months	43.6
6703	165	53	2. Three Months	43.6
6704	165	59	2. Three Months	43.6
6705	165	22	2. Three Months	43.6
6706	165	145	2. Three Months	43.6
6707	165	241	2. Three Months	43.6
6708	165	57	2. Three Months	43.6
6709	165	12	2. Three Months	43.6
6710	165	254	2. Three Months	43.6
6711	165	189	2. Three Months	41.4
6712	165	1082	2. Three Months	41.4
6713	165	20	2. Three Months	41.4
6714	165	147	2. Three Months	41.4
6715	165	108	2. Three Months	41.4
6716	165	491	2. Three Months	41.4
6717	165	140	2. Three Months	41.4
6718	165	342	2. Three Months	39
6719	165	44	2. Three Months	39
6720	165	63	2. Three Months	39
6721	165	311	2. Three Months	39
6722	165	1090	2. Three Months	39
6723	165	60	2. Three Months	39
6724	165	335	2. Three Months	39
6725	165	79	2. Three Months	39
6726	165	974	2. Three Months	36.2
6727	165	62	2. Three Months	36.2
6728	165	255	2. Three Months	36.2
6729	165	117	2. Three Months	36.2
6730	165	196	2. Three Months	36.2
6731	165	198	2. Three Months	32.9
6732	165	519	2. Three Months	32.9
6733	165	67	2. Three Months	32.9
6734	165	220	2. Three Months	32.9
6735	165	172	2. Three Months	32.9
6736	165	341	2. Three Months	28.9
6737	165	45	2. Three Months	28.9
6738	165	854	2. Three Months	28.9
6739	165	27	2. Three Months	23.8
6740	165	1091	2. Three Months	23.8
6741	165	1092	2. Three Months	23.8
6742	165	316	2. Three Months	23.8
6743	165	617	2. Three Months	23.8
6744	165	423	2. Three Months	17.1
6745	165	13	3. Six Months	100
6746	165	70	3. Six Months	76.8
6747	165	34	3. Six Months	73.8
6748	165	581	3. Six Months	72.4
6749	165	14	3. Six Months	69.2
6750	165	28	3. Six Months	69
6751	165	77	3. Six Months	68.5
6752	165	18	3. Six Months	66.3
6753	165	113	3. Six Months	66
6754	165	30	3. Six Months	65.1
6755	165	37	3. Six Months	63.7
6756	165	31	3. Six Months	60.8
6757	165	35	3. Six Months	60
6758	165	19	3. Six Months	59.5
6759	165	17	3. Six Months	58.6
6760	165	68	3. Six Months	58.6
6761	165	332	3. Six Months	58.6
6762	165	137	3. Six Months	58.6
6763	165	326	3. Six Months	58.2
6764	165	57	3. Six Months	57.2
6765	165	87	3. Six Months	56.2
6766	165	2	3. Six Months	56.2
6767	165	20	3. Six Months	56.2
6768	165	161	3. Six Months	54
6769	165	39	3. Six Months	53.3
6770	165	126	3. Six Months	53.3
6771	165	38	3. Six Months	52.7
6772	165	156	3. Six Months	52.7
6773	165	73	3. Six Months	52.7
6774	165	22	3. Six Months	52.7
6775	165	54	3. Six Months	52.1
6776	165	43	3. Six Months	52.1
6777	165	33	3. Six Months	51.4
6778	165	147	3. Six Months	49.9
6779	165	164	3. Six Months	49.9
6780	165	65	3. Six Months	49.2
6781	165	49	3. Six Months	47.5
6782	165	53	3. Six Months	47.5
6783	165	63	3. Six Months	46.6
6784	165	146	3. Six Months	45.7
6785	165	140	3. Six Months	45.7
6786	165	144	3. Six Months	45.7
6787	165	117	3. Six Months	45.7
6788	165	145	3. Six Months	44.7
6789	165	342	3. Six Months	43.7
6790	165	59	3. Six Months	43.7
6791	165	154	3. Six Months	42.5
6792	165	149	3. Six Months	42.5
6793	165	255	3. Six Months	41.4
6794	165	157	3. Six Months	41.4
6795	165	8	3. Six Months	41.4
6796	165	196	3. Six Months	41.4
6797	165	167	3. Six Months	41.4
6798	165	511	3. Six Months	40.1
6799	165	151	3. Six Months	37.2
6800	165	158	3. Six Months	37.2
6801	165	317	3. Six Months	37.2
6802	165	336	3. Six Months	37.2
6803	165	1093	3. Six Months	37.2
6804	165	1094	3. Six Months	37.2
6805	165	1006	3. Six Months	37.2
6806	165	338	3. Six Months	37.2
6807	165	179	3. Six Months	37.2
6808	165	1087	3. Six Months	35.6
6809	165	1095	3. Six Months	35.6
6810	165	109	3. Six Months	35.6
6811	165	521	3. Six Months	35.6
6812	165	316	3. Six Months	33.8
6813	165	171	3. Six Months	33.8
6814	165	143	3. Six Months	33.8
6815	165	628	3. Six Months	33.8
6816	165	187	3. Six Months	33.8
6817	165	1096	3. Six Months	33.8
6818	165	345	3. Six Months	31.8
6819	165	329	3. Six Months	31.8
6820	165	835	3. Six Months	31.8
6821	165	106	3. Six Months	31.8
6822	165	309	3. Six Months	31.8
6823	165	916	3. Six Months	31.8
6824	165	90	3. Six Months	31.8
6825	165	160	3. Six Months	29.5
6826	165	440	3. Six Months	29.5
6827	165	867	3. Six Months	27
6828	165	330	3. Six Months	27
6829	165	660	3. Six Months	27
6830	165	1097	3. Six Months	24
6831	165	452	3. Six Months	24
6832	165	560	3. Six Months	24
6833	165	1098	3. Six Months	20.4
6834	165	1099	3. Six Months	20.4
6835	165	421	3. Six Months	20.4
6836	165	1100	3. Six Months	16
6837	165	97	3. Six Months	16
6838	165	1101	3. Six Months	16
6839	165	693	3. Six Months	16
6840	165	962	3. Six Months	16
6841	165	1102	3. Six Months	16
6842	165	239	3. Six Months	10.5
6843	165	1103	3. Six Months	10.5
6844	165	427	3. Six Months	10.5
6845	165	23	4. More Than Six Months	78.8
6846	165	113	4. More Than Six Months	74.5
6847	165	34	4. More Than Six Months	74.4
6848	165	77	4. More Than Six Months	73
6849	165	31	4. More Than Six Months	66.2
6850	165	2	4. More Than Six Months	63.9
6851	165	37	4. More Than Six Months	62.1
6852	165	54	4. More Than Six Months	58.1
6853	165	87	4. More Than Six Months	57.3
6854	165	57	4. More Than Six Months	57
6855	165	189	4. More Than Six Months	57
6856	165	130	4. More Than Six Months	57
6857	165	156	4. More Than Six Months	55.6
6858	165	65	4. More Than Six Months	55.6
6859	165	63	4. More Than Six Months	55
6860	165	26	4. More Than Six Months	53.8
6861	165	146	4. More Than Six Months	50.9
6862	165	313	4. More Than Six Months	50.6
6863	165	15	4. More Than Six Months	50.2
6864	165	172	4. More Than Six Months	48.9
6865	165	184	4. More Than Six Months	48.5
6866	165	166	4. More Than Six Months	48
6867	165	138	4. More Than Six Months	47.5
6868	165	36	4. More Than Six Months	47.5
6869	165	1082	4. More Than Six Months	47.1
6870	165	49	4. More Than Six Months	47.1
6871	165	75	4. More Than Six Months	46.6
6872	165	168	4. More Than Six Months	46.6
6873	165	27	4. More Than Six Months	45
6874	165	222	4. More Than Six Months	43.8
6875	165	521	4. More Than Six Months	43.2
6876	165	301	4. More Than Six Months	42
6877	165	336	4. More Than Six Months	41.3
6878	165	133	4. More Than Six Months	41.3
6879	165	345	4. More Than Six Months	41.3
6880	165	80	4. More Than Six Months	40.6
6881	165	144	4. More Than Six Months	40.6
6882	165	157	4. More Than Six Months	40.6
6883	165	179	4. More Than Six Months	39.1
6884	165	344	4. More Than Six Months	38.3
6885	165	151	4. More Than Six Months	38.3
6886	165	197	4. More Than Six Months	37.5
6887	165	106	4. More Than Six Months	37.5
6888	165	237	4. More Than Six Months	37.5
6889	165	155	4. More Than Six Months	36.6
6890	165	579	4. More Than Six Months	36.6
6891	165	665	4. More Than Six Months	35.6
6892	165	422	4. More Than Six Months	34.6
6893	165	1104	4. More Than Six Months	34.6
6894	165	619	4. More Than Six Months	34.6
6895	165	159	4. More Than Six Months	33.6
6896	165	169	4. More Than Six Months	32.5
6897	165	104	4. More Than Six Months	32.5
6898	165	177	4. More Than Six Months	32.5
6899	165	187	4. More Than Six Months	31.3
6900	165	348	4. More Than Six Months	31.3
6901	165	366	4. More Than Six Months	30
6902	165	835	4. More Than Six Months	30
6903	165	1105	4. More Than Six Months	28.6
6904	165	94	4. More Than Six Months	28.6
6905	165	449	4. More Than Six Months	28.6
6906	165	25	4. More Than Six Months	28.6
6907	165	354	4. More Than Six Months	28.6
6908	165	192	4. More Than Six Months	27
6909	165	711	4. More Than Six Months	27
6910	165	1069	4. More Than Six Months	27
6911	165	999	4. More Than Six Months	25.4
6912	165	162	4. More Than Six Months	25.4
6913	165	174	4. More Than Six Months	23.5
6914	165	1106	4. More Than Six Months	23.5
6915	165	109	4. More Than Six Months	23.5
6916	165	953	4. More Than Six Months	23.5
6917	165	1100	4. More Than Six Months	23.5
6918	165	182	4. More Than Six Months	23.5
6919	165	95	4. More Than Six Months	23.5
6920	165	352	4. More Than Six Months	23.5
6921	165	186	4. More Than Six Months	23.5
6922	165	392	4. More Than Six Months	23.5
6923	165	648	4. More Than Six Months	23.5
6924	165	1107	4. More Than Six Months	21.4
6925	165	924	4. More Than Six Months	21.4
6926	165	1108	4. More Than Six Months	21.4
6927	165	353	4. More Than Six Months	21.4
6928	165	426	4. More Than Six Months	21.4
6929	165	261	4. More Than Six Months	19.1
6930	165	404	4. More Than Six Months	19.1
6931	165	358	4. More Than Six Months	19.1
6932	165	148	4. More Than Six Months	19.1
6933	165	1109	4. More Than Six Months	16.4
6934	165	176	4. More Than Six Months	16.4
6935	165	1110	4. More Than Six Months	16.4
6936	165	959	4. More Than Six Months	16.4
6937	165	1111	4. More Than Six Months	16.4
6938	165	1112	4. More Than Six Months	13.3
6939	165	195	4. More Than Six Months	13.3
6940	165	884	4. More Than Six Months	13.3
6941	165	1113	4. More Than Six Months	13.3
6942	165	355	4. More Than Six Months	9.8
6943	165	1114	4. More Than Six Months	9.8
6944	165	357	4. More Than Six Months	9.8
6945	165	13	5. All	100
6946	165	34	5. All	75.2
6947	165	113	5. All	73.7
6948	165	77	5. All	73.2
6949	165	30	5. All	70.1
6950	165	18	5. All	70
6951	165	31	5. All	66.7
6952	165	332	5. All	66.2
6953	165	2	5. All	63.1
6954	165	54	5. All	57.8
6955	165	117	5. All	57.7
6956	165	53	5. All	56.7
6957	165	156	5. All	56.4
6958	165	139	5. All	55.8
6959	165	65	5. All	55.4
6960	165	220	5. All	55.4
6961	165	39	5. All	55.4
6962	165	254	5. All	55.4
6963	165	63	5. All	54.3
6964	165	189	5. All	54.3
6965	165	38	5. All	51.4
6966	165	146	5. All	51.2
6967	165	143	5. All	50.9
6968	165	172	5. All	50.4
6969	165	168	5. All	48.6
6970	165	166	5. All	47.3
6971	165	75	5. All	45.5
6972	165	158	5. All	43.9
6973	165	170	5. All	43.5
6974	165	74	5. All	43.5
6975	165	521	5. All	43.1
6976	165	157	5. All	43.1
6977	165	160	5. All	43.1
6978	165	317	5. All	43.1
6979	165	237	5. All	42.2
6980	165	336	5. All	42.2
6981	165	163	5. All	41.7
6982	165	345	5. All	40.7
6983	165	219	5. All	40.2
6984	165	330	5. All	39.2
6985	165	928	5. All	38.6
6986	165	348	5. All	38.6
6987	165	106	5. All	38
6988	165	104	5. All	38
6989	165	390	5. All	37.4
6990	165	1115	5. All	35.4
6991	165	239	5. All	34.7
6992	165	114	5. All	34.7
6993	165	187	5. All	34.7
6994	165	711	5. All	33.2
6995	165	835	5. All	33.2
6996	165	1035	5. All	33.2
6997	165	1116	5. All	32.4
6998	165	1100	5. All	32.4
6999	165	109	5. All	31.5
7000	165	94	5. All	30.6
7001	165	392	5. All	30.6
7002	165	244	5. All	30.6
7003	165	493	5. All	30.6
7004	165	884	5. All	29.6
7005	165	648	5. All	29.6
7006	165	1117	5. All	27.5
7007	165	404	5. All	27.5
7008	165	1118	5. All	27.5
7009	165	174	5. All	26.4
7010	165	1105	5. All	26.4
7011	165	1114	5. All	26.4
7012	165	1119	5. All	25.1
7013	165	952	5. All	25.1
7014	165	1120	5. All	25.1
7015	165	1121	5. All	25.1
7016	165	1122	5. All	25.1
7017	165	733	5. All	25.1
7018	165	176	5. All	23.8
7019	165	1123	5. All	23.8
7020	165	111	5. All	23.8
7021	165	1124	5. All	23.8
7022	165	228	5. All	23.8
7023	165	1125	5. All	22.3
7024	165	1126	5. All	22.3
7025	165	880	5. All	22.3
7026	165	358	5. All	20.8
7027	165	1109	5. All	20.8
7028	165	1127	5. All	20.8
7029	165	190	5. All	20.8
7030	165	426	5. All	19
7031	165	924	5. All	19
7032	165	355	5. All	19
7033	165	195	5. All	19
7034	165	1108	5. All	17.1
7035	165	1110	5. All	14.9
7036	165	356	5. All	12.5
7037	165	1112	5. All	12.5
7038	165	357	5. All	12.5
7039	165	850	5. All	12.5
7040	165	1128	5. All	12.5
7041	165	898	5. All	9.8
7042	165	1129	5. All	5
7043	165	1130	5. All	5
7044	165	707	5. All	5
7045	166	1037	2. Three Months	100
7046	166	107	3. Six Months	100
7047	166	1037	3. Six Months	100
7048	166	13	4. More Than Six Months	100
7049	166	30	4. More Than Six Months	92
7050	166	130	4. More Than Six Months	92
7051	166	74	4. More Than Six Months	80.7
7052	166	19	4. More Than Six Months	80.7
7053	166	1015	4. More Than Six Months	80.7
7054	166	377	4. More Than Six Months	80.7
7055	166	1131	4. More Than Six Months	80.7
7056	166	1043	4. More Than Six Months	80.7
7057	166	1015	5. All	100
7058	166	1131	5. All	100
7059	166	1043	5. All	100
7060	166	377	5. All	100
7061	166	13	5. All	78.1
7062	166	30	5. All	71.3
7063	166	19	5. All	71.3
7064	166	130	5. All	71.3
7065	166	74	5. All	61.6
7066	166	31	5. All	61.6
7067	166	183	5. All	61.6
7068	166	107	5. All	61.6
7069	166	1037	5. All	61.6
7070	167	1111	1. Thirty Days	100
7071	167	79	1. Thirty Days	100
7072	167	58	2. Three Months	100
7073	167	56	2. Three Months	84.1
7074	167	1111	2. Three Months	84.1
7075	167	1132	2. Three Months	74.9
7076	167	4	2. Three Months	74.9
7077	167	198	2. Three Months	74.9
7078	167	68	2. Three Months	74.9
7079	167	79	2. Three Months	74.9
7080	167	58	3. Six Months	100
7081	167	68	3. Six Months	90.7
7082	167	1044	3. Six Months	86.5
7083	167	496	3. Six Months	86.5
7084	167	67	3. Six Months	86.5
7085	167	117	3. Six Months	81.3
7086	167	198	3. Six Months	81.3
7087	167	56	3. Six Months	81.3
7088	167	1111	3. Six Months	81.3
7089	167	1132	3. Six Months	74.7
7090	167	113	3. Six Months	65.4
7091	167	4	3. Six Months	65.4
7092	167	173	3. Six Months	65.4
7093	167	10	3. Six Months	65.4
7094	167	79	3. Six Months	65.4
7095	167	58	4. More Than Six Months	100
7096	167	1044	4. More Than Six Months	95.5
7097	167	496	4. More Than Six Months	87.5
7098	167	198	4. More Than Six Months	85
7099	167	1132	4. More Than Six Months	78.7
7100	167	1111	4. More Than Six Months	74.8
7101	167	117	4. More Than Six Months	74.8
7102	167	10	4. More Than Six Months	70
7103	167	206	4. More Than Six Months	70
7104	167	68	4. More Than Six Months	70
7105	167	331	4. More Than Six Months	70
7106	167	56	4. More Than Six Months	70
7107	167	173	4. More Than Six Months	63.7
7108	167	335	4. More Than Six Months	63.7
7109	167	4	4. More Than Six Months	63.7
7110	167	402	4. More Than Six Months	55
7111	167	1133	4. More Than Six Months	55
7112	167	1134	4. More Than Six Months	55
7113	167	763	4. More Than Six Months	55
7114	167	1135	4. More Than Six Months	55
7115	167	337	4. More Than Six Months	55
7116	167	414	4. More Than Six Months	55
7117	167	58	5. All	100
7118	167	1044	5. All	93.2
7119	167	496	5. All	88
7120	167	198	5. All	84.8
7121	167	68	5. All	81.1
7122	167	1111	5. All	78.9
7123	167	1132	5. All	78.9
7124	167	117	5. All	78.9
7125	167	56	5. All	76.5
7126	167	10	5. All	70.5
7127	167	67	5. All	70.5
7128	167	4	5. All	66.8
7129	167	173	5. All	66.8
7130	167	206	5. All	62.2
7131	167	331	5. All	62.2
7132	167	414	5. All	56.3
7133	167	335	5. All	56.3
7134	167	402	5. All	56.3
7135	167	763	5. All	48
7136	167	1135	5. All	48
7137	167	337	5. All	48
7138	167	1133	5. All	48
7139	167	1134	5. All	48
7140	167	1136	5. All	48
7141	167	348	5. All	48
7142	167	113	5. All	48
7143	167	79	5. All	48
7144	168	21	4. More Than Six Months	100
7145	168	972	4. More Than Six Months	100
7146	168	136	4. More Than Six Months	100
7147	168	105	4. More Than Six Months	100
7148	168	318	4. More Than Six Months	100
7149	168	795	4. More Than Six Months	89.5
7150	168	1137	4. More Than Six Months	89.5
7151	168	972	5. All	100
7152	168	318	5. All	100
7153	168	21	5. All	100
7154	168	136	5. All	100
7155	168	105	5. All	100
7156	168	795	5. All	89.5
7157	168	1137	5. All	89.5
7158	169	55	4. More Than Six Months	100
7159	169	198	4. More Than Six Months	100
7160	169	1138	4. More Than Six Months	100
7161	169	143	4. More Than Six Months	100
7162	169	1138	5. All	100
7163	169	143	5. All	74.9
7164	169	198	5. All	66.5
7165	169	55	5. All	66.5
7166	170	1	4. More Than Six Months	100
7167	170	113	4. More Than Six Months	100
7168	170	130	4. More Than Six Months	100
7169	170	1139	4. More Than Six Months	100
7170	170	490	4. More Than Six Months	100
7171	170	1139	5. All	100
7172	170	1	5. All	73.6
7173	170	130	5. All	64.8
7174	170	113	5. All	64.8
7175	170	490	5. All	64.8
7176	170	222	5. All	64.8
7177	170	403	5. All	64.8
7178	170	142	5. All	64.8
7179	171	58	4. More Than Six Months	100
7180	171	558	4. More Than Six Months	100
7181	171	58	5. All	100
7182	171	558	5. All	100
7183	172	590	4. More Than Six Months	100
7184	172	241	4. More Than Six Months	84.1
7185	172	590	5. All	100
7186	172	241	5. All	93.3
7187	173	1140	4. More Than Six Months	100
7188	173	1141	4. More Than Six Months	100
7189	173	1142	4. More Than Six Months	100
7190	173	1143	4. More Than Six Months	100
7191	173	1144	4. More Than Six Months	100
7192	173	1140	5. All	100
7193	173	1141	5. All	100
7194	173	1142	5. All	100
7195	173	1143	5. All	100
7196	173	1144	5. All	100
7197	174	1145	1. Thirty Days	100
7198	174	1145	2. Three Months	100
7199	174	1146	3. Six Months	100
7200	174	1145	3. Six Months	100
7201	174	1041	4. More Than Six Months	100
7202	174	1147	4. More Than Six Months	100
7203	174	1148	4. More Than Six Months	90
7204	174	1041	5. All	100
7205	174	1147	5. All	100
7206	174	1146	5. All	100
7207	174	1148	5. All	89.3
7208	174	108	5. All	89.3
7209	174	1145	5. All	89.3
7210	175	248	2. Three Months	100
7211	175	248	3. Six Months	100
7212	175	314	3. Six Months	100
7213	175	248	4. More Than Six Months	100
7214	175	1149	4. More Than Six Months	92.1
7215	175	314	4. More Than Six Months	82.6
7216	175	248	5. All	100
7217	175	314	5. All	88.6
7218	175	1149	5. All	88.6
7219	176	183	4. More Than Six Months	100
7220	176	183	5. All	100
7221	177	35	2. Three Months	100
7222	177	678	3. Six Months	100
7223	177	87	3. Six Months	100
7224	177	1150	3. Six Months	100
7225	177	143	3. Six Months	100
7226	177	50	3. Six Months	100
7227	177	35	3. Six Months	100
7228	177	1151	4. More Than Six Months	100
7229	177	1152	4. More Than Six Months	100
7230	177	1153	4. More Than Six Months	83.9
7231	177	587	4. More Than Six Months	83.9
7232	177	2	4. More Than Six Months	72.1
7233	177	1	4. More Than Six Months	62.7
7234	177	28	4. More Than Six Months	62.7
7235	177	1154	4. More Than Six Months	62.7
7236	177	75	4. More Than Six Months	62.7
7237	177	113	4. More Than Six Months	62.7
7238	177	852	4. More Than Six Months	62.7
7239	177	1151	5. All	100
7240	177	1152	5. All	100
7241	177	1154	5. All	100
7242	177	1153	5. All	83
7243	177	587	5. All	83
7244	177	1	5. All	70.5
7245	177	113	5. All	70.5
7246	177	2	5. All	70.5
7247	177	28	5. All	60.6
7248	177	852	5. All	60.6
7249	177	35	5. All	60.6
7250	177	65	5. All	60.6
7251	177	521	5. All	60.6
7252	177	50	5. All	60.6
7253	177	75	5. All	60.6
7254	177	1150	5. All	60.6
7255	177	4	5. All	60.6
7256	177	679	5. All	60.6
7257	177	139	5. All	60.6
7258	177	143	5. All	60.6
7259	177	87	5. All	60.6
7260	177	678	5. All	60.6
7261	177	9	5. All	60.6
7262	178	30	3. Six Months	100
7263	178	23	3. Six Months	100
7264	178	31	4. More Than Six Months	100
7265	178	18	4. More Than Six Months	81.6
7266	178	65	4. More Than Six Months	81.6
7267	178	421	4. More Than Six Months	81.6
7268	178	31	5. All	100
7269	178	30	5. All	94
7270	178	23	5. All	86.3
7271	178	18	5. All	75.5
7272	178	65	5. All	75.5
7273	178	13	5. All	75.5
7274	178	28	5. All	75.5
7275	178	14	5. All	75.5
7276	178	421	5. All	75.5
7277	179	126	4. More Than Six Months	100
7278	179	1155	4. More Than Six Months	100
7279	179	126	5. All	100
7280	179	1155	5. All	90.3
7281	180	130	4. More Than Six Months	100
7282	180	94	4. More Than Six Months	100
7283	180	130	5. All	100
7284	180	94	5. All	100
7285	181	1156	4. More Than Six Months	100
7286	181	297	4. More Than Six Months	100
7287	181	1157	4. More Than Six Months	100
7288	181	1156	5. All	100
7289	181	297	5. All	67.9
7290	181	1157	5. All	67.9
7291	182	113	4. More Than Six Months	100
7292	182	1158	4. More Than Six Months	100
7293	182	113	5. All	100
7294	182	1158	5. All	100
7295	183	255	4. More Than Six Months	100
7296	183	75	4. More Than Six Months	100
7297	183	255	5. All	100
7298	183	75	5. All	100
7299	184	327	4. More Than Six Months	100
7300	184	1159	4. More Than Six Months	89.6
7301	184	1160	4. More Than Six Months	89.6
7302	184	1159	5. All	100
7303	184	327	5. All	75.5
7304	184	1160	5. All	67.3
7305	184	13	5. All	67.3
7306	185	4	4. More Than Six Months	100
7307	185	1161	4. More Than Six Months	100
7308	185	1161	5. All	100
7309	185	4	5. All	66.6
7310	185	342	5. All	66.6
7311	186	607	4. More Than Six Months	100
7312	186	1162	4. More Than Six Months	100
7313	186	1162	5. All	100
7314	186	607	5. All	100
7315	187	1163	4. More Than Six Months	100
7316	187	1074	4. More Than Six Months	91
7317	187	270	4. More Than Six Months	84.7
7318	187	1163	5. All	100
7319	187	1074	5. All	91
7320	187	270	5. All	84.5
7321	188	4	4. More Than Six Months	100
7322	188	30	4. More Than Six Months	100
7323	188	137	4. More Than Six Months	100
7324	188	27	4. More Than Six Months	100
7325	188	4	5. All	100
7326	188	30	5. All	100
7327	188	137	5. All	100
7328	188	27	5. All	100
7329	189	18	2. Three Months	100
7330	189	18	3. Six Months	100
7331	189	35	5. All	100
7332	189	39	5. All	100
7333	189	1	5. All	100
7334	189	18	5. All	100
7335	190	13	4. More Than Six Months	100
7336	190	126	4. More Than Six Months	95.2
7337	190	31	4. More Than Six Months	89.3
7338	190	4	4. More Than Six Months	89.3
7339	190	68	4. More Than Six Months	89.3
7340	190	196	4. More Than Six Months	81.8
7341	190	137	4. More Than Six Months	81.8
7342	190	19	4. More Than Six Months	81.8
7343	190	1164	4. More Than Six Months	71.1
7344	190	107	4. More Than Six Months	71.1
7345	190	828	4. More Than Six Months	71.1
7346	190	1165	4. More Than Six Months	71.1
7347	190	21	4. More Than Six Months	71.1
7348	190	2	4. More Than Six Months	71.1
7349	190	828	5. All	100
7350	190	1165	5. All	100
7351	190	13	5. All	91.4
7352	190	31	5. All	83.3
7353	190	126	5. All	83.3
7354	190	4	5. All	77.9
7355	190	68	5. All	77.9
7356	190	196	5. All	71
7357	190	137	5. All	71
7358	190	19	5. All	71
7359	190	1164	5. All	61.3
7360	190	21	5. All	61.3
7361	190	2	5. All	61.3
7362	190	107	5. All	61.3
7363	190	189	5. All	61.3
7364	191	898	1. Thirty Days	100
7365	191	13	1. Thirty Days	85
7366	191	898	2. Three Months	100
7367	191	58	2. Three Months	80.4
7368	191	13	2. Three Months	80.4
7369	191	58	3. Six Months	100
7370	191	13	3. Six Months	92.5
7371	191	898	3. Six Months	92.5
7372	191	23	3. Six Months	81.1
7373	191	480	3. Six Months	72.1
7374	191	302	3. Six Months	72.1
7375	191	137	3. Six Months	72.1
7376	191	23	4. More Than Six Months	100
7377	191	137	4. More Than Six Months	93.2
7378	191	480	4. More Than Six Months	83
7379	191	13	4. More Than Six Months	74.8
7380	191	128	4. More Than Six Months	60.9
7381	191	145	4. More Than Six Months	60.9
7382	191	302	4. More Than Six Months	60.9
7383	191	58	4. More Than Six Months	60.9
7384	191	23	5. All	100
7385	191	137	5. All	92.9
7386	191	13	5. All	87.1
7387	191	58	5. All	87.1
7388	191	480	5. All	84.7
7389	191	898	5. All	75.1
7390	191	302	5. All	70.6
7391	191	128	5. All	56.5
7392	191	145	5. All	56.5
7393	191	1166	5. All	56.5
7394	192	1167	4. More Than Six Months	100
7395	192	1168	4. More Than Six Months	88.9
7396	192	1169	4. More Than Six Months	88.9
7397	192	1170	4. More Than Six Months	88.9
7398	192	1171	4. More Than Six Months	88.9
7399	192	1172	4. More Than Six Months	88.9
7400	192	1173	4. More Than Six Months	88.9
7401	192	1174	4. More Than Six Months	88.9
7402	192	1167	5. All	100
7403	192	1170	5. All	97.8
7404	192	1174	5. All	97.8
7405	192	1172	5. All	97.8
7406	192	1168	5. All	97.8
7407	192	1169	5. All	97.8
7408	192	1171	5. All	97.8
7409	192	1173	5. All	97.8
7410	192	1175	5. All	60.9
7411	193	1176	4. More Than Six Months	100
7412	193	607	4. More Than Six Months	100
7413	193	561	4. More Than Six Months	100
7414	193	1177	4. More Than Six Months	100
7415	193	804	4. More Than Six Months	100
7416	193	1177	5. All	100
7417	193	607	5. All	100
7418	193	1176	5. All	100
7419	193	561	5. All	100
7420	193	804	5. All	100
7421	194	212	1. Thirty Days	100
7422	194	357	2. Three Months	100
7423	194	28	2. Three Months	100
7424	194	54	2. Three Months	100
7425	194	212	2. Three Months	100
7426	194	1178	3. Six Months	100
7427	194	1179	3. Six Months	92.3
7428	194	473	3. Six Months	87.2
7429	194	58	3. Six Months	84.1
7430	194	208	3. Six Months	80.6
7431	194	1180	3. Six Months	71.3
7432	194	106	3. Six Months	71.3
7433	194	332	3. Six Months	71.3
7434	194	1181	3. Six Months	71.3
7435	194	486	3. Six Months	64.7
7436	194	30	3. Six Months	64.7
7437	194	65	3. Six Months	64.7
7438	194	573	3. Six Months	64.7
7439	194	1	3. Six Months	64.7
7440	194	306	3. Six Months	64.7
7441	194	357	3. Six Months	55.4
7442	194	1182	3. Six Months	55.4
7443	194	54	3. Six Months	55.4
7444	194	2	3. Six Months	55.4
7445	194	28	3. Six Months	55.4
7446	194	13	3. Six Months	55.4
7447	194	778	3. Six Months	55.4
7448	194	457	3. Six Months	55.4
7449	194	19	3. Six Months	55.4
7450	194	17	3. Six Months	55.4
7451	194	212	3. Six Months	55.4
7452	194	461	4. More Than Six Months	100
7453	194	106	4. More Than Six Months	89.8
7454	194	306	4. More Than Six Months	87.6
7455	194	17	4. More Than Six Months	87.6
7456	194	1	4. More Than Six Months	85.1
7457	194	13	4. More Than Six Months	83.7
7458	194	207	4. More Than Six Months	82.3
7459	194	1183	4. More Than Six Months	82.3
7460	194	302	4. More Than Six Months	82.3
7461	194	54	4. More Than Six Months	79.1
7462	194	978	4. More Than Six Months	73.2
7463	194	802	4. More Than Six Months	73.2
7464	194	448	4. More Than Six Months	70.8
7465	194	202	4. More Than Six Months	70.8
7466	194	18	4. More Than Six Months	68.2
7467	194	31	4. More Than Six Months	68.2
7468	194	1184	4. More Than Six Months	68.2
7469	194	33	4. More Than Six Months	65.2
7470	194	1185	4. More Than Six Months	65.2
7471	194	30	4. More Than Six Months	65.2
7472	194	124	4. More Than Six Months	65.2
7473	194	618	4. More Than Six Months	65.2
7474	194	1186	4. More Than Six Months	65.2
7475	194	1187	4. More Than Six Months	65.2
7476	194	23	4. More Than Six Months	61.7
7477	194	217	4. More Than Six Months	61.7
7478	194	1188	4. More Than Six Months	57.7
7479	194	22	4. More Than Six Months	57.7
7480	194	362	4. More Than Six Months	57.7
7481	194	1189	4. More Than Six Months	57.7
7482	194	19	4. More Than Six Months	52.7
7483	194	976	4. More Than Six Months	52.7
7484	194	1178	4. More Than Six Months	52.7
7485	194	180	4. More Than Six Months	52.7
7486	194	1190	4. More Than Six Months	52.7
7487	194	488	4. More Than Six Months	52.7
7488	194	1191	4. More Than Six Months	52.7
7489	194	221	4. More Than Six Months	52.7
7490	194	113	4. More Than Six Months	46.3
7491	194	32	4. More Than Six Months	46.3
7492	194	1192	4. More Than Six Months	46.3
7493	194	87	4. More Than Six Months	46.3
7494	194	63	4. More Than Six Months	46.3
7495	194	206	4. More Than Six Months	46.3
7496	194	2	4. More Than Six Months	46.3
7497	194	10	4. More Than Six Months	46.3
7498	194	1193	4. More Than Six Months	46.3
7499	194	285	4. More Than Six Months	46.3
7500	194	1194	4. More Than Six Months	46.3
7501	194	59	4. More Than Six Months	46.3
7502	194	326	4. More Than Six Months	46.3
7503	194	8	4. More Than Six Months	46.3
7504	194	58	4. More Than Six Months	46.3
7505	194	15	4. More Than Six Months	46.3
7506	194	1195	4. More Than Six Months	46.3
7507	194	886	4. More Than Six Months	46.3
7508	194	77	4. More Than Six Months	46.3
7509	194	1196	4. More Than Six Months	46.3
7510	194	332	4. More Than Six Months	37.4
7511	194	1182	4. More Than Six Months	37.4
7512	194	150	4. More Than Six Months	37.4
7513	194	20	4. More Than Six Months	37.4
7514	194	1063	4. More Than Six Months	37.4
7515	194	1197	4. More Than Six Months	37.4
7516	194	1198	4. More Than Six Months	37.4
7517	194	673	4. More Than Six Months	37.4
7518	194	1199	4. More Than Six Months	37.4
7519	194	28	4. More Than Six Months	37.4
7520	194	68	4. More Than Six Months	37.4
7521	194	346	4. More Than Six Months	37.4
7522	194	14	4. More Than Six Months	37.4
7523	194	473	4. More Than Six Months	37.4
7524	194	981	4. More Than Six Months	37.4
7525	194	12	4. More Than Six Months	37.4
7526	194	37	4. More Than Six Months	37.4
7527	194	1075	4. More Than Six Months	37.4
7528	194	1200	4. More Than Six Months	37.4
7529	194	335	4. More Than Six Months	37.4
7530	194	625	4. More Than Six Months	37.4
7531	194	1201	4. More Than Six Months	37.4
7532	194	914	4. More Than Six Months	37.4
7533	194	1202	4. More Than Six Months	37.4
7534	194	756	4. More Than Six Months	37.4
7535	194	1203	4. More Than Six Months	37.4
7536	194	317	4. More Than Six Months	37.4
7537	194	1204	4. More Than Six Months	37.4
7538	194	130	4. More Than Six Months	37.4
7539	194	7	4. More Than Six Months	37.4
7540	194	1205	4. More Than Six Months	37.4
7541	194	1206	4. More Than Six Months	37.4
7542	194	1207	4. More Than Six Months	37.4
7543	194	78	4. More Than Six Months	37.4
7544	194	1208	4. More Than Six Months	37.4
7545	194	1209	4. More Than Six Months	37.4
7546	194	1210	4. More Than Six Months	37.4
7547	194	410	4. More Than Six Months	37.4
7548	194	1211	4. More Than Six Months	37.4
7549	194	1212	4. More Than Six Months	37.4
7550	194	1213	4. More Than Six Months	37.4
7551	194	1214	4. More Than Six Months	37.4
7552	194	461	5. All	100
7553	194	106	5. All	92.9
7554	194	306	5. All	89.9
7555	194	17	5. All	88.8
7556	194	1	5. All	87.7
7557	194	13	5. All	85.3
7558	194	1178	5. All	85.3
7559	194	302	5. All	82.6
7560	194	54	5. All	81.1
7561	194	124	5. All	81.1
7562	194	207	5. All	81.1
7563	194	1183	5. All	81.1
7564	194	1190	5. All	75.9
7565	194	1194	5. All	73.9
7566	194	1210	5. All	73.9
7567	194	1193	5. All	73.9
7568	194	978	5. All	73.9
7569	194	1209	5. All	71.7
7570	194	58	5. All	71.7
7571	194	1211	5. All	71.7
7572	194	1214	5. All	71.7
7573	194	1212	5. All	71.7
7574	194	1207	5. All	71.7
7575	194	202	5. All	71.7
7576	194	1208	5. All	71.7
7577	194	1206	5. All	71.7
7578	194	30	5. All	71.7
7579	194	78	5. All	71.7
7580	194	802	5. All	71.7
7581	194	1213	5. All	71.7
7582	194	1205	5. All	71.7
7583	194	473	5. All	71.7
7584	194	448	5. All	69.3
7585	194	18	5. All	69.3
7586	194	1184	5. All	66.5
7587	194	618	5. All	66.5
7588	194	31	5. All	66.5
7589	194	1187	5. All	63.5
7590	194	33	5. All	63.5
7591	194	1186	5. All	63.5
7592	194	1185	5. All	63.5
7593	194	19	5. All	59.9
7594	194	217	5. All	59.9
7595	194	23	5. All	59.9
7596	194	332	5. All	59.9
7597	194	1189	5. All	55.7
7598	194	2	5. All	55.7
7599	194	1188	5. All	55.7
7600	194	22	5. All	55.7
7601	194	362	5. All	55.7
7602	194	180	5. All	50.6
7603	194	488	5. All	50.6
7604	194	221	5. All	50.6
7605	194	10	5. All	50.6
7606	194	976	5. All	50.6
7607	194	1182	5. All	50.6
7608	194	65	5. All	50.6
7609	194	673	5. All	44.1
7610	194	77	5. All	44.1
7611	194	150	5. All	44.1
7612	194	63	5. All	44.1
7613	194	326	5. All	44.1
7614	194	285	5. All	44.1
7615	194	14	5. All	44.1
7616	194	87	5. All	44.1
7617	194	206	5. All	44.1
7618	194	113	5. All	44.1
7619	194	791	5. All	44.1
7620	194	886	5. All	44.1
7621	194	15	5. All	44.1
7622	194	32	5. All	44.1
7623	194	59	5. All	44.1
7624	194	1192	5. All	44.1
7625	194	1195	5. All	44.1
7626	194	1196	5. All	44.1
7627	194	8	5. All	44.1
7628	194	184	5. All	35
7629	194	1198	5. All	35
7630	194	1215	5. All	35
7631	194	1197	5. All	35
7632	194	1199	5. All	35
7633	194	1075	5. All	35
7634	194	12	5. All	35
7635	194	625	5. All	35
7636	194	68	5. All	35
7637	194	130	5. All	35
7638	194	7	5. All	35
7639	194	317	5. All	35
7640	194	756	5. All	35
7641	194	1203	5. All	35
7642	194	914	5. All	35
7643	194	1201	5. All	35
7644	194	1204	5. All	35
7645	194	1063	5. All	35
7646	194	981	5. All	35
7647	194	410	5. All	35
7648	194	1202	5. All	35
7649	194	1200	5. All	35
7650	194	335	5. All	35
7651	194	758	5. All	35
7652	195	63	4. More Than Six Months	100
7653	195	1216	4. More Than Six Months	100
7654	195	1216	5. All	100
7655	195	63	5. All	68.4
7656	196	1102	4. More Than Six Months	100
7657	196	1096	4. More Than Six Months	88.5
7658	196	119	4. More Than Six Months	75.4
7659	196	1217	4. More Than Six Months	67.8
7660	196	727	4. More Than Six Months	62.3
7661	196	688	4. More Than Six Months	54.7
7662	196	401	4. More Than Six Months	54.7
7663	196	1102	5. All	100
7664	196	1096	5. All	88.4
7665	196	119	5. All	75.2
7666	196	727	5. All	67.5
7667	196	1217	5. All	67.5
7668	196	688	5. All	54.3
7669	196	401	5. All	54.3
7670	196	303	5. All	54.3
7671	197	145	4. More Than Six Months	100
7672	197	1218	4. More Than Six Months	89.1
7673	197	761	4. More Than Six Months	89.1
7674	197	1219	4. More Than Six Months	89.1
7675	197	1220	4. More Than Six Months	89.1
7676	197	1221	4. More Than Six Months	89.1
7677	197	1222	4. More Than Six Months	89.1
7678	197	1218	5. All	100
7679	197	1221	5. All	100
7680	197	1219	5. All	100
7681	197	1220	5. All	100
7682	197	761	5. All	100
7683	197	145	5. All	79.3
7684	197	1222	5. All	72.8
7685	198	1223	4. More Than Six Months	100
7686	198	1224	4. More Than Six Months	100
7687	198	1224	5. All	100
7688	198	1223	5. All	100
7689	199	1225	3. Six Months	100
7690	199	600	3. Six Months	90
7691	199	533	3. Six Months	79.1
7692	199	1226	3. Six Months	79.1
7693	199	1227	4. More Than Six Months	100
7694	199	1228	4. More Than Six Months	66.9
7695	199	19	4. More Than Six Months	66.9
7696	199	1228	5. All	100
7697	199	1227	5. All	100
7698	199	1225	5. All	95
7699	199	600	5. All	84.5
7700	199	533	5. All	73.1
7701	199	1226	5. All	73.1
7702	199	19	5. All	64.1
7703	200	135	4. More Than Six Months	100
7704	200	303	4. More Than Six Months	89.3
7705	200	135	5. All	100
7706	200	303	5. All	88.8
7707	200	139	5. All	88.8
7708	201	1229	1. Thirty Days	100
7709	201	38	1. Thirty Days	68.5
7710	201	1229	2. Three Months	100
7711	201	23	2. Three Months	65.8
7712	201	38	2. Three Months	65.8
7713	201	1230	3. Six Months	100
7714	201	1231	3. Six Months	97.7
7715	201	1229	3. Six Months	97.7
7716	201	1232	3. Six Months	97.7
7717	201	13	3. Six Months	76.1
7718	201	58	3. Six Months	69.3
7719	201	30	3. Six Months	69.3
7720	201	38	3. Six Months	69.3
7721	201	109	3. Six Months	59.7
7722	201	54	3. Six Months	59.7
7723	201	68	3. Six Months	59.7
7724	201	23	3. Six Months	59.7
7725	201	138	3. Six Months	59.7
7726	201	3	3. Six Months	59.7
7727	201	350	3. Six Months	59.7
7728	201	1	3. Six Months	59.7
7729	201	87	3. Six Months	59.7
7730	201	13	4. More Than Six Months	100
7731	201	31	4. More Than Six Months	93.1
7732	201	1233	4. More Than Six Months	93.1
7733	201	1	4. More Than Six Months	87.2
7734	201	30	4. More Than Six Months	87.2
7735	201	14	4. More Than Six Months	79.6
7736	201	87	4. More Than Six Months	79.6
7737	201	37	4. More Than Six Months	79.6
7738	201	2	4. More Than Six Months	79.6
7739	201	23	4. More Than Six Months	79.6
7740	201	421	4. More Than Six Months	79.6
7741	201	1234	4. More Than Six Months	74.8
7742	201	113	4. More Than Six Months	74.8
7743	201	1235	4. More Than Six Months	74.8
7744	201	32	4. More Than Six Months	74.8
7745	201	22	4. More Than Six Months	69
7746	201	15	4. More Than Six Months	69
7747	201	18	4. More Than Six Months	69
7748	201	45	4. More Than Six Months	69
7749	201	20	4. More Than Six Months	69
7750	201	28	4. More Than Six Months	69
7751	201	54	4. More Than Six Months	61.4
7752	201	6	4. More Than Six Months	61.4
7753	201	27	4. More Than Six Months	61.4
7754	201	422	4. More Than Six Months	61.4
7755	201	34	4. More Than Six Months	61.4
7756	201	1158	4. More Than Six Months	61.4
7757	201	108	4. More Than Six Months	61.4
7758	201	1236	4. More Than Six Months	61.4
7759	201	19	4. More Than Six Months	61.4
7760	201	1237	4. More Than Six Months	61.4
7761	201	65	4. More Than Six Months	61.4
7762	201	10	4. More Than Six Months	61.4
7763	201	43	4. More Than Six Months	61.4
7764	201	343	4. More Than Six Months	61.4
7765	201	109	4. More Than Six Months	61.4
7766	201	346	4. More Than Six Months	61.4
7767	201	67	4. More Than Six Months	61.4
7768	201	336	4. More Than Six Months	61.4
7769	201	154	4. More Than Six Months	61.4
7770	201	491	4. More Than Six Months	61.4
7771	201	4	4. More Than Six Months	61.4
7772	201	17	4. More Than Six Months	50.9
7773	201	38	4. More Than Six Months	50.9
7774	201	158	4. More Than Six Months	50.9
7775	201	673	4. More Than Six Months	50.9
7776	201	141	4. More Than Six Months	50.9
7777	201	92	4. More Than Six Months	50.9
7778	201	326	4. More Than Six Months	50.9
7779	201	77	4. More Than Six Months	50.9
7780	201	1238	4. More Than Six Months	50.9
7781	201	156	4. More Than Six Months	50.9
7782	201	150	4. More Than Six Months	50.9
7783	201	332	4. More Than Six Months	50.9
7784	201	196	4. More Than Six Months	50.9
7785	201	68	4. More Than Six Months	50.9
7786	201	349	4. More Than Six Months	50.9
7787	201	1239	4. More Than Six Months	50.9
7788	201	1240	4. More Than Six Months	50.9
7789	201	60	4. More Than Six Months	50.9
7790	201	1241	4. More Than Six Months	50.9
7791	201	1242	4. More Than Six Months	50.9
7792	201	317	4. More Than Six Months	50.9
7793	201	9	4. More Than Six Months	50.9
7794	201	137	4. More Than Six Months	50.9
7795	201	106	4. More Than Six Months	50.9
7796	201	792	4. More Than Six Months	50.9
7797	201	1243	4. More Than Six Months	50.9
7798	201	63	4. More Than Six Months	50.9
7799	201	1244	4. More Than Six Months	50.9
7800	201	532	4. More Than Six Months	50.9
7801	201	50	4. More Than Six Months	50.9
7802	201	73	4. More Than Six Months	50.9
7803	201	1029	4. More Than Six Months	50.9
7804	201	1245	4. More Than Six Months	50.9
7805	201	1246	4. More Than Six Months	50.9
7806	201	1247	4. More Than Six Months	50.9
7807	201	1248	4. More Than Six Months	50.9
7808	201	1249	4. More Than Six Months	50.9
7809	201	1250	4. More Than Six Months	50.9
7810	201	1251	4. More Than Six Months	50.9
7811	201	1252	4. More Than Six Months	50.9
7812	201	1253	4. More Than Six Months	50.9
7813	201	1254	4. More Than Six Months	50.9
7814	201	1255	4. More Than Six Months	50.9
7815	201	1256	4. More Than Six Months	50.9
7816	201	1257	4. More Than Six Months	50.9
7817	201	13	5. All	100
7818	201	1234	5. All	94.9
7819	201	1235	5. All	93
7820	201	1236	5. All	90.9
7821	201	1230	5. All	88.6
7822	201	1237	5. All	88.6
7823	201	1232	5. All	88.6
7824	201	30	5. All	88.6
7825	201	1239	5. All	86.1
7826	201	1248	5. All	86.1
7827	201	1250	5. All	86.1
7828	201	1247	5. All	86.1
7829	201	1245	5. All	86.1
7830	201	1246	5. All	86.1
7831	201	1241	5. All	86.1
7832	201	1253	5. All	86.1
7833	201	1256	5. All	86.1
7834	201	1252	5. All	86.1
7835	201	1249	5. All	86.1
7836	201	1254	5. All	86.1
7837	201	1251	5. All	86.1
7838	201	1	5. All	86.1
7839	201	1255	5. All	86.1
7840	201	31	5. All	86.1
7841	201	1231	5. All	86.1
7842	201	1240	5. All	86.1
7843	201	1233	5. All	86.1
7844	201	23	5. All	80.2
7845	201	87	5. All	80.2
7846	201	14	5. All	76.7
7847	201	37	5. All	76.7
7848	201	2	5. All	76.7
7849	201	421	5. All	72.7
7850	201	18	5. All	67.9
7851	201	54	5. All	67.9
7852	201	113	5. All	67.9
7853	201	109	5. All	67.9
7854	201	38	5. All	67.9
7855	201	32	5. All	67.9
7856	201	6	5. All	62.1
7857	201	20	5. All	62.1
7858	201	45	5. All	62.1
7859	201	28	5. All	62.1
7860	201	65	5. All	62.1
7861	201	68	5. All	62.1
7862	201	15	5. All	62.1
7863	201	22	5. All	62.1
7864	201	58	5. All	62.1
7865	201	332	5. All	54.6
7866	201	27	5. All	54.6
7867	201	108	5. All	54.6
7868	201	1158	5. All	54.6
7869	201	422	5. All	54.6
7870	201	3	5. All	54.6
7871	201	63	5. All	54.6
7872	201	1238	5. All	54.6
7873	201	19	5. All	54.6
7874	201	4	5. All	54.6
7875	201	343	5. All	54.6
7876	201	34	5. All	54.6
7877	201	491	5. All	54.6
7878	201	154	5. All	54.6
7879	201	10	5. All	54.6
7880	201	67	5. All	54.6
7881	201	137	5. All	54.6
7882	201	336	5. All	54.6
7883	201	43	5. All	54.6
7884	201	346	5. All	54.6
7885	201	1090	5. All	44.3
7886	201	1029	5. All	44.3
7887	201	156	5. All	44.3
7888	201	134	5. All	44.3
7889	201	106	5. All	44.3
7890	201	9	5. All	44.3
7891	201	222	5. All	44.3
7892	201	150	5. All	44.3
7893	201	35	5. All	44.3
7894	201	418	5. All	44.3
7895	201	117	5. All	44.3
7896	201	103	5. All	44.3
7897	201	521	5. All	44.3
7898	201	1258	5. All	44.3
7899	201	1242	5. All	44.3
7900	201	326	5. All	44.3
7901	201	196	5. All	44.3
7902	201	92	5. All	44.3
7903	201	158	5. All	44.3
7904	201	139	5. All	44.3
7905	201	532	5. All	44.3
7906	201	77	5. All	44.3
7907	201	50	5. All	44.3
7908	201	792	5. All	44.3
7909	201	1257	5. All	44.3
7910	201	317	5. All	44.3
7911	201	1244	5. All	44.3
7912	201	60	5. All	44.3
7913	201	141	5. All	44.3
7914	201	73	5. All	44.3
7915	201	1243	5. All	44.3
7916	201	17	5. All	44.3
7917	202	737	4. More Than Six Months	100
7918	202	576	4. More Than Six Months	100
7919	202	1259	4. More Than Six Months	100
7920	202	604	4. More Than Six Months	100
7921	202	171	4. More Than Six Months	100
7922	202	113	4. More Than Six Months	100
7923	202	737	5. All	100
7924	202	576	5. All	65.2
7925	202	1259	5. All	65.2
7926	202	604	5. All	65.2
7927	202	171	5. All	65.2
7928	202	113	5. All	65.2
7929	203	1260	4. More Than Six Months	100
7930	203	1260	5. All	100
7931	203	414	5. All	100
7932	204	809	1. Thirty Days	100
7933	204	49	2. Three Months	100
7934	204	214	2. Three Months	100
7935	204	809	2. Three Months	100
7936	204	248	3. Six Months	100
7937	204	49	3. Six Months	100
7938	204	214	3. Six Months	90.1
7939	204	809	3. Six Months	90.1
7940	204	248	4. More Than Six Months	100
7941	204	1222	4. More Than Six Months	72.3
7942	204	160	4. More Than Six Months	72.3
7943	204	356	4. More Than Six Months	63.6
7944	204	1018	4. More Than Six Months	63.6
7945	204	1261	4. More Than Six Months	63.6
7946	204	147	4. More Than Six Months	63.6
7947	204	144	4. More Than Six Months	63.6
7948	204	644	4. More Than Six Months	63.6
7949	204	58	4. More Than Six Months	63.6
7950	204	1	4. More Than Six Months	63.6
7951	204	239	4. More Than Six Months	63.6
7952	204	214	4. More Than Six Months	63.6
7953	204	49	4. More Than Six Months	63.6
7954	204	248	5. All	100
7955	204	1222	5. All	96.4
7956	204	49	5. All	79.6
7957	204	214	5. All	74.9
7958	204	160	5. All	68.7
7959	204	1	5. All	60.1
7960	204	356	5. All	60.1
7961	204	1018	5. All	60.1
7962	204	1261	5. All	60.1
7963	204	147	5. All	60.1
7964	204	144	5. All	60.1
7965	204	644	5. All	60.1
7966	204	58	5. All	60.1
7967	204	239	5. All	60.1
7968	204	809	5. All	60.1
7969	205	13	3. Six Months	100
7970	205	31	3. Six Months	89.2
7971	205	2	3. Six Months	89.2
7972	205	113	4. More Than Six Months	100
7973	205	4	4. More Than Six Months	94.5
7974	205	330	4. More Than Six Months	87.5
7975	205	31	4. More Than Six Months	87.5
7976	205	47	4. More Than Six Months	70.6
7977	205	222	4. More Than Six Months	70.6
7978	205	30	4. More Than Six Months	70.6
7979	205	130	4. More Than Six Months	60.7
7980	205	10	4. More Than Six Months	60.7
7981	205	137	4. More Than Six Months	60.7
7982	205	1262	4. More Than Six Months	60.7
7983	205	1263	4. More Than Six Months	60.7
7984	205	13	4. More Than Six Months	60.7
7985	205	27	4. More Than Six Months	60.7
7986	205	20	4. More Than Six Months	60.7
7987	205	34	4. More Than Six Months	60.7
7988	205	1	4. More Than Six Months	60.7
7989	205	14	4. More Than Six Months	60.7
7990	205	1263	5. All	100
7991	205	1262	5. All	100
7992	205	113	5. All	100
7993	205	31	5. All	94.4
7994	205	4	5. All	94.4
7995	205	330	5. All	87.1
7996	205	13	5. All	82.5
7997	205	30	5. All	76.9
7998	205	47	5. All	76.9
7999	205	222	5. All	69.6
8000	205	20	5. All	69.6
8001	205	130	5. All	69.6
8002	205	1	5. All	59.5
8003	205	34	5. All	59.5
8004	205	10	5. All	59.5
8005	205	137	5. All	59.5
8006	205	27	5. All	59.5
8007	205	14	5. All	59.5
8008	205	35	5. All	59.5
8009	205	23	5. All	59.5
8010	205	54	5. All	59.5
8011	205	349	5. All	59.5
8012	205	60	5. All	59.5
8013	205	2	5. All	59.5
8014	205	127	5. All	59.5
8015	206	31	2. Three Months	100
8016	206	45	2. Three Months	100
8017	206	36	3. Six Months	100
8018	206	31	3. Six Months	95.5
8019	206	45	3. Six Months	83
8020	206	130	3. Six Months	73.1
8021	206	1013	3. Six Months	73.1
8022	206	1029	3. Six Months	73.1
8023	206	469	3. Six Months	73.1
8024	206	236	3. Six Months	73.1
8025	206	281	4. More Than Six Months	100
8026	206	315	4. More Than Six Months	93.6
8027	206	130	4. More Than Six Months	84.8
8028	206	31	4. More Than Six Months	84.8
8029	206	167	4. More Than Six Months	82
8030	206	135	4. More Than Six Months	82
8031	206	32	4. More Than Six Months	78.8
8032	206	402	4. More Than Six Months	70.7
8033	206	22	4. More Than Six Months	70.7
8034	206	13	4. More Than Six Months	70.7
8035	206	28	4. More Than Six Months	65.4
8036	206	303	4. More Than Six Months	65.4
8037	206	1264	4. More Than Six Months	65.4
8038	206	335	4. More Than Six Months	65.4
8039	206	1265	4. More Than Six Months	65.4
8040	206	387	4. More Than Six Months	65.4
8041	206	59	4. More Than Six Months	65.4
8042	206	128	4. More Than Six Months	65.4
8043	206	1201	4. More Than Six Months	58.6
8044	206	43	4. More Than Six Months	58.6
8045	206	45	4. More Than Six Months	58.6
8046	206	72	4. More Than Six Months	58.6
8047	206	65	4. More Than Six Months	58.6
8048	206	113	4. More Than Six Months	58.6
8049	206	1015	4. More Than Six Months	58.6
8050	206	1266	4. More Than Six Months	49
8051	206	10	4. More Than Six Months	49
8052	206	1267	4. More Than Six Months	49
8053	206	285	4. More Than Six Months	49
8054	206	558	4. More Than Six Months	49
8055	206	1268	4. More Than Six Months	49
8056	206	30	4. More Than Six Months	49
8057	206	469	4. More Than Six Months	49
8058	206	171	4. More Than Six Months	49
8059	206	738	4. More Than Six Months	49
8060	206	412	4. More Than Six Months	49
8061	206	1029	4. More Than Six Months	49
8062	206	189	4. More Than Six Months	49
8063	206	161	4. More Than Six Months	49
8064	206	299	4. More Than Six Months	49
8065	206	916	4. More Than Six Months	49
8066	206	1269	4. More Than Six Months	49
8067	206	250	4. More Than Six Months	49
8068	206	935	4. More Than Six Months	49
8069	206	126	4. More Than Six Months	49
8070	206	1	4. More Than Six Months	49
8071	206	198	4. More Than Six Months	49
8072	206	410	4. More Than Six Months	49
8073	206	1270	4. More Than Six Months	49
8074	206	333	4. More Than Six Months	49
8075	206	530	4. More Than Six Months	49
8076	206	137	4. More Than Six Months	49
8077	206	318	4. More Than Six Months	49
8078	206	1271	4. More Than Six Months	49
8079	206	68	4. More Than Six Months	49
8080	206	197	4. More Than Six Months	49
8081	206	77	4. More Than Six Months	49
8082	206	594	4. More Than Six Months	49
8083	206	1272	4. More Than Six Months	49
8084	206	1273	4. More Than Six Months	49
8085	206	1274	4. More Than Six Months	49
8086	206	107	4. More Than Six Months	49
8087	206	281	5. All	100
8088	206	31	5. All	95.2
8089	206	315	5. All	93.3
8090	206	1265	5. All	93.3
8091	206	1029	5. All	91.3
8092	206	130	5. All	89.1
8093	206	558	5. All	86.8
8094	206	1274	5. All	86.8
8095	206	1267	5. All	86.8
8096	206	1269	5. All	86.8
8097	206	1273	5. All	86.8
8098	206	1271	5. All	86.8
8099	206	935	5. All	86.8
8100	206	1266	5. All	86.8
8101	206	1272	5. All	86.8
8102	206	167	5. All	84.1
8103	206	135	5. All	81.2
8104	206	32	5. All	81.2
8105	206	13	5. All	74
8106	206	36	5. All	74
8107	206	45	5. All	74
8108	206	335	5. All	69.5
8109	206	402	5. All	69.5
8110	206	22	5. All	69.5
8111	206	1264	5. All	69.5
8112	206	387	5. All	63.9
8113	206	469	5. All	63.9
8114	206	128	5. All	63.9
8115	206	59	5. All	63.9
8116	206	28	5. All	63.9
8117	206	43	5. All	63.9
8118	206	303	5. All	63.9
8119	206	1015	5. All	56.8
8120	206	107	5. All	56.8
8121	206	1201	5. All	56.8
8122	206	1	5. All	56.8
8123	206	72	5. All	56.8
8124	206	65	5. All	56.8
8125	206	113	5. All	56.8
8126	206	299	5. All	46.9
8127	206	126	5. All	46.9
8128	206	189	5. All	46.9
8129	206	1013	5. All	46.9
8130	206	161	5. All	46.9
8131	206	108	5. All	46.9
8132	206	236	5. All	46.9
8133	206	301	5. All	46.9
8134	206	87	5. All	46.9
8135	206	3	5. All	46.9
8136	206	159	5. All	46.9
8137	206	342	5. All	46.9
8138	206	334	5. All	46.9
8139	206	4	5. All	46.9
8140	206	318	5. All	46.9
8141	206	410	5. All	46.9
8142	206	738	5. All	46.9
8143	206	171	5. All	46.9
8144	206	137	5. All	46.9
8145	206	68	5. All	46.9
8146	206	197	5. All	46.9
8147	206	530	5. All	46.9
8148	206	198	5. All	46.9
8149	206	30	5. All	46.9
8150	206	1270	5. All	46.9
8151	206	594	5. All	46.9
8152	206	77	5. All	46.9
8153	206	333	5. All	46.9
8154	206	10	5. All	46.9
8155	206	285	5. All	46.9
8156	206	412	5. All	46.9
8157	206	1268	5. All	46.9
8158	206	250	5. All	46.9
8159	206	916	5. All	46.9
8160	207	1275	4. More Than Six Months	100
8161	207	1276	4. More Than Six Months	100
8162	207	1275	5. All	100
8163	207	1276	5. All	100
8164	208	58	2. Three Months	100
8165	208	58	3. Six Months	100
8166	208	1277	3. Six Months	90.1
8167	208	94	3. Six Months	90.1
8168	208	318	3. Six Months	90.1
8169	208	1278	4. More Than Six Months	100
8170	208	463	4. More Than Six Months	97.6
8171	208	220	4. More Than Six Months	94.9
8172	208	58	4. More Than Six Months	91.9
8173	208	888	4. More Than Six Months	88.4
8174	208	1072	4. More Than Six Months	84.2
8175	208	26	4. More Than Six Months	79.1
8176	208	530	4. More Than Six Months	79.1
8177	208	198	4. More Than Six Months	72.6
8178	208	591	4. More Than Six Months	72.6
8179	208	94	4. More Than Six Months	63.4
8180	208	244	4. More Than Six Months	63.4
8181	208	1279	4. More Than Six Months	63.4
8182	208	145	4. More Than Six Months	63.4
8183	208	1280	4. More Than Six Months	63.4
8184	208	1277	4. More Than Six Months	63.4
8185	208	1278	5. All	100
8186	208	1072	5. All	91.9
8187	208	530	5. All	90.2
8188	208	1279	5. All	88.4
8189	208	145	5. All	86.4
8190	208	58	5. All	86.4
8191	208	463	5. All	86.4
8192	208	1280	5. All	86.4
8193	208	244	5. All	86.4
8194	208	220	5. All	81.6
8195	208	888	5. All	75.5
8196	208	26	5. All	71.7
8197	208	1277	5. All	66.9
8198	208	94	5. All	66.9
8199	208	198	5. All	60.9
8200	208	591	5. All	60.9
8201	208	318	5. All	52.3
8202	209	1281	1. Thirty Days	100
8203	209	54	2. Three Months	100
8204	209	1199	2. Three Months	81.1
8205	209	1282	2. Three Months	65
8206	209	618	2. Three Months	65
8207	209	58	2. Three Months	65
8208	209	1212	2. Three Months	65
8209	209	138	2. Three Months	65
8210	209	1281	2. Three Months	65
8211	209	30	2. Three Months	65
8212	209	65	3. Six Months	100
8213	209	54	3. Six Months	97.8
8214	209	682	3. Six Months	81.8
8215	209	1199	3. Six Months	76.6
8216	209	1282	3. Six Months	60.7
8217	209	618	3. Six Months	60.7
8218	209	58	3. Six Months	60.7
8219	209	130	3. Six Months	60.7
8220	209	1212	3. Six Months	60.7
8221	209	8	3. Six Months	60.7
8222	209	138	3. Six Months	60.7
8223	209	1281	3. Six Months	60.7
8224	209	30	3. Six Months	60.7
8225	209	24	4. More Than Six Months	100
8226	209	726	4. More Than Six Months	96
8227	209	981	4. More Than Six Months	93.3
8228	209	1187	4. More Than Six Months	90.3
8229	209	1283	4. More Than Six Months	89.4
8230	209	979	4. More Than Six Months	86.6
8231	209	87	4. More Than Six Months	83.4
8232	209	1284	4. More Than Six Months	83.4
8233	209	207	4. More Than Six Months	82.3
8234	209	1	4. More Than Six Months	75
8235	209	1185	4. More Than Six Months	73.2
8236	209	1285	4. More Than Six Months	71.3
8237	209	58	4. More Than Six Months	69.1
8238	209	31	4. More Than Six Months	69.1
8239	209	1286	4. More Than Six Months	63.9
8240	209	19	4. More Than Six Months	63.9
8241	209	1282	4. More Than Six Months	63.9
8242	209	10	4. More Than Six Months	56.9
8243	209	12	4. More Than Six Months	56.9
8244	209	448	4. More Than Six Months	52.3
8245	209	1183	4. More Than Six Months	52.3
8246	209	326	4. More Than Six Months	52.3
8247	209	30	4. More Than Six Months	52.3
8248	209	1287	4. More Than Six Months	52.3
8249	209	306	4. More Than Six Months	52.3
8250	209	13	4. More Than Six Months	52.3
8251	209	2	4. More Than Six Months	52.3
8252	209	68	4. More Than Six Months	52.3
8253	209	107	4. More Than Six Months	46.4
8254	209	1288	4. More Than Six Months	46.4
8255	209	678	4. More Than Six Months	46.4
8256	209	65	4. More Than Six Months	46.4
8257	209	222	4. More Than Six Months	46.4
8258	209	1289	4. More Than Six Months	46.4
8259	209	45	4. More Than Six Months	38.2
8260	209	1290	4. More Than Six Months	38.2
8261	209	1291	4. More Than Six Months	38.2
8262	209	1292	4. More Than Six Months	38.2
8263	209	8	4. More Than Six Months	38.2
8264	209	1293	4. More Than Six Months	38.2
8265	209	1294	4. More Than Six Months	38.2
8266	209	1295	4. More Than Six Months	38.2
8267	209	1296	4. More Than Six Months	38.2
8268	209	1243	4. More Than Six Months	38.2
8269	209	33	4. More Than Six Months	38.2
8270	209	35	4. More Than Six Months	38.2
8271	209	317	4. More Than Six Months	38.2
8272	209	1297	4. More Than Six Months	38.2
8273	209	196	4. More Than Six Months	38.2
8274	209	625	4. More Than Six Months	38.2
8275	209	384	4. More Than Six Months	38.2
8276	209	621	4. More Than Six Months	38.2
8277	209	6	4. More Than Six Months	38.2
8278	209	136	4. More Than Six Months	38.2
8279	209	282	4. More Than Six Months	38.2
8280	209	39	4. More Than Six Months	38.2
8281	209	1298	4. More Than Six Months	38.2
8282	209	1299	4. More Than Six Months	38.2
8283	209	114	4. More Than Six Months	38.2
8284	209	644	4. More Than Six Months	38.2
8285	209	53	4. More Than Six Months	38.2
8286	209	1300	4. More Than Six Months	38.2
8287	209	609	4. More Than Six Months	38.2
8288	209	24	5. All	100
8289	209	726	5. All	96.5
8290	209	981	5. All	93.1
8291	209	1187	5. All	90.8
8292	209	1283	5. All	89.1
8293	209	979	5. All	86.2
8294	209	207	5. All	82.9
8295	209	87	5. All	82.9
8296	209	1284	5. All	82.9
8297	209	65	5. All	77.6
8298	209	1	5. All	76
8299	209	1287	5. All	74.3
8300	209	1289	5. All	74.3
8301	209	1185	5. All	74.3
8302	209	58	5. All	72.4
8303	209	1292	5. All	70.4
8304	209	1285	5. All	70.4
8305	209	1290	5. All	70.4
8306	209	1291	5. All	70.4
8307	209	1295	5. All	70.4
8308	209	31	5. All	70.4
8309	209	1293	5. All	70.4
8310	209	54	5. All	70.4
8311	209	1294	5. All	70.4
8312	209	1296	5. All	70.4
8313	209	1282	5. All	68.1
8314	209	19	5. All	65.6
8315	209	1286	5. All	62.8
8316	209	12	5. All	59.5
8317	209	30	5. All	59.5
8318	209	10	5. All	55.6
8319	209	682	5. All	55.6
8320	209	1183	5. All	50.9
8321	209	326	5. All	50.9
8322	209	448	5. All	50.9
8323	209	13	5. All	50.9
8324	209	306	5. All	50.9
8325	209	8	5. All	50.9
8326	209	68	5. All	50.9
8327	209	2	5. All	50.9
8328	209	222	5. All	50.9
8329	209	1199	5. All	50.9
8330	209	45	5. All	44.8
8331	209	644	5. All	44.8
8332	209	6	5. All	44.8
8333	209	1288	5. All	44.8
8334	209	39	5. All	44.8
8335	209	678	5. All	44.8
8336	209	130	5. All	44.8
8337	209	107	5. All	44.8
8338	209	114	5. All	44.8
8339	209	53	5. All	44.8
8340	209	422	5. All	36.3
8341	209	138	5. All	36.3
8342	209	1212	5. All	36.3
8343	209	33	5. All	36.3
8344	209	14	5. All	36.3
8345	209	108	5. All	36.3
8346	209	128	5. All	36.3
8347	209	1243	5. All	36.3
8348	209	35	5. All	36.3
8349	209	140	5. All	36.3
8350	209	1281	5. All	36.3
8351	209	618	5. All	36.3
8352	209	609	5. All	36.3
8353	209	621	5. All	36.3
8354	209	1297	5. All	36.3
8355	209	282	5. All	36.3
8356	209	625	5. All	36.3
8357	209	1298	5. All	36.3
8358	209	384	5. All	36.3
8359	209	317	5. All	36.3
8360	209	1300	5. All	36.3
8361	209	62	5. All	36.3
8362	209	1299	5. All	36.3
8363	209	136	5. All	36.3
8364	209	196	5. All	36.3
8365	209	106	5. All	36.3
8366	209	22	5. All	36.3
8367	210	1301	4. More Than Six Months	100
8368	210	492	4. More Than Six Months	89.9
8369	210	1302	4. More Than Six Months	82.7
8370	210	419	4. More Than Six Months	82.7
8371	210	329	4. More Than Six Months	72.6
8372	210	1303	4. More Than Six Months	72.6
8373	210	542	4. More Than Six Months	72.6
8374	210	258	4. More Than Six Months	72.6
8375	210	1301	5. All	100
8376	210	419	5. All	93.4
8377	210	1303	5. All	91.3
8378	210	492	5. All	76.5
8379	210	1302	5. All	65.5
8380	210	258	5. All	65.5
8381	210	542	5. All	65.5
8382	210	18	5. All	56.9
8383	210	329	5. All	56.9
8384	210	113	5. All	56.9
8385	210	736	5. All	56.9
8386	211	372	4. More Than Six Months	100
8387	211	1304	4. More Than Six Months	100
8388	211	1305	4. More Than Six Months	100
8389	211	1306	4. More Than Six Months	100
8390	211	13	4. More Than Six Months	62.8
8391	211	262	4. More Than Six Months	62.8
8392	211	113	4. More Than Six Months	62.8
8393	211	372	5. All	100
8394	211	1304	5. All	100
8395	211	1305	5. All	100
8396	211	1306	5. All	100
8397	211	13	5. All	62.6
8398	211	262	5. All	62.6
8399	211	113	5. All	62.6
8400	212	21	2. Three Months	100
8401	212	21	3. Six Months	100
8402	212	1307	3. Six Months	77.9
8403	212	680	3. Six Months	77.9
8404	212	3	4. More Than Six Months	100
8405	212	34	4. More Than Six Months	89.3
8406	212	610	4. More Than Six Months	89.3
8407	212	1228	4. More Than Six Months	81.7
8408	212	614	4. More Than Six Months	81.7
8409	212	1	4. More Than Six Months	81.7
8410	212	1308	4. More Than Six Months	81.7
8411	212	1309	4. More Than Six Months	71
8412	212	1307	4. More Than Six Months	71
8413	212	1296	4. More Than Six Months	71
8414	212	154	4. More Than Six Months	71
8415	212	1310	4. More Than Six Months	71
8416	212	76	4. More Than Six Months	71
8417	212	1182	4. More Than Six Months	71
8418	212	30	4. More Than Six Months	71
8419	212	1061	4. More Than Six Months	71
8420	212	1311	4. More Than Six Months	71
8421	212	3	5. All	100
8422	212	34	5. All	95
8423	212	21	5. All	95
8424	212	610	5. All	88.9
8425	212	1307	5. All	88.9
8426	212	1296	5. All	81
8427	212	1309	5. All	81
8428	212	76	5. All	81
8429	212	1308	5. All	81
8430	212	1	5. All	81
8431	212	614	5. All	81
8432	212	1228	5. All	81
8433	212	1310	5. All	69.9
8434	212	1061	5. All	69.9
8435	212	1182	5. All	69.9
8436	212	30	5. All	69.9
8437	212	154	5. All	69.9
8438	212	883	5. All	69.9
8439	212	1311	5. All	69.9
8440	212	680	5. All	69.9
8441	212	107	5. All	69.9
8442	212	960	5. All	69.9
8443	213	177	3. Six Months	100
8444	213	12	3. Six Months	100
8445	213	404	4. More Than Six Months	100
8446	213	12	4. More Than Six Months	100
8447	213	927	4. More Than Six Months	100
8448	213	742	4. More Than Six Months	100
8449	213	12	5. All	100
8450	213	927	5. All	82.8
8451	213	404	5. All	82.8
8452	213	742	5. All	82.8
8453	213	1312	5. All	82.8
8454	213	177	5. All	82.8
8455	214	539	4. More Than Six Months	100
8456	214	45	4. More Than Six Months	100
8457	214	1313	4. More Than Six Months	100
8458	214	539	5. All	100
8459	214	45	5. All	100
8460	214	1313	5. All	100
8461	215	1314	2. Three Months	100
8462	215	1315	2. Three Months	87.7
8463	215	1316	2. Three Months	87.7
8464	215	313	2. Three Months	87.7
8465	215	1317	3. Six Months	100
8466	215	1314	3. Six Months	92.2
8467	215	1315	3. Six Months	73.6
8468	215	1316	3. Six Months	73.6
8469	215	313	3. Six Months	73.6
8470	215	1314	4. More Than Six Months	100
8471	215	1318	4. More Than Six Months	95.1
8472	215	1319	4. More Than Six Months	88.7
8473	215	138	4. More Than Six Months	73.4
8474	215	1320	4. More Than Six Months	73.4
8475	215	30	4. More Than Six Months	73.4
8476	215	1318	5. All	100
8477	215	1314	5. All	100
8478	215	1319	5. All	95.8
8479	215	1320	5. All	90.6
8480	215	1317	5. All	88.5
8481	215	138	5. All	68.8
8482	215	30	5. All	62.6
8483	215	1315	5. All	62.6
8484	215	1316	5. All	62.6
8485	215	313	5. All	62.6
8486	215	133	5. All	53.9
8487	216	1321	4. More Than Six Months	100
8488	216	1322	4. More Than Six Months	100
8489	216	1322	5. All	100
8490	216	1321	5. All	100
8491	217	495	1. Thirty Days	100
8492	217	1323	1. Thirty Days	100
8493	217	1222	1. Thirty Days	100
8494	217	173	1. Thirty Days	100
8495	217	168	2. Three Months	100
8496	217	1222	2. Three Months	95.8
8497	217	495	2. Three Months	90.7
8498	217	1323	2. Three Months	90.7
8499	217	173	2. Three Months	90.7
8500	217	168	3. Six Months	100
8501	217	1222	3. Six Months	93.7
8502	217	173	3. Six Months	87.2
8503	217	495	3. Six Months	84.4
8504	217	1323	3. Six Months	84.4
8505	217	241	3. Six Months	58.9
8506	217	168	4. More Than Six Months	100
8507	217	495	4. More Than Six Months	90.3
8508	217	173	4. More Than Six Months	83
8509	217	1222	4. More Than Six Months	83
8510	217	1323	4. More Than Six Months	76.1
8511	217	318	4. More Than Six Months	71.5
8512	217	4	4. More Than Six Months	65.6
8513	217	768	4. More Than Six Months	65.6
8514	217	1324	4. More Than Six Months	57.3
8515	217	239	4. More Than Six Months	57.3
8516	217	315	4. More Than Six Months	57.3
8517	217	144	4. More Than Six Months	57.3
8518	217	168	5. All	100
8519	217	1222	5. All	89.6
8520	217	495	5. All	88.5
8521	217	173	5. All	86.1
8522	217	1323	5. All	80.2
8523	217	318	5. All	60.9
8524	217	768	5. All	60.9
8525	217	144	5. All	55.4
8526	217	4	5. All	55.4
8527	217	241	5. All	55.4
8528	217	1324	5. All	47.6
8529	217	239	5. All	47.6
8530	217	315	5. All	47.6
8531	217	139	5. All	47.6
8532	217	13	5. All	47.6
8533	218	1325	1. Thirty Days	100
8534	218	1325	3. Six Months	100
8535	218	130	3. Six Months	73.8
8536	218	220	3. Six Months	73.8
8537	218	17	4. More Than Six Months	100
8538	218	305	4. More Than Six Months	100
8539	218	726	4. More Than Six Months	100
8540	218	1326	4. More Than Six Months	100
8541	218	13	4. More Than Six Months	100
8542	218	1325	5. All	100
8543	218	726	5. All	80.3
8544	218	130	5. All	80.3
8545	218	17	5. All	70.9
8546	218	305	5. All	70.9
8547	218	1326	5. All	70.9
8548	218	13	5. All	70.9
8549	218	220	5. All	70.9
8550	219	1327	4. More Than Six Months	100
8551	219	61	4. More Than Six Months	100
8552	219	1327	5. All	100
8553	219	61	5. All	100
8554	220	1328	4. More Than Six Months	100
8555	220	1329	4. More Than Six Months	100
8556	220	1329	5. All	100
8557	220	1328	5. All	100
8558	221	1330	5. All	100
8559	222	35	4. More Than Six Months	100
8560	222	22	4. More Than Six Months	100
8561	222	22	5. All	100
8562	222	35	5. All	100
8563	223	146	4. More Than Six Months	100
8564	223	59	4. More Than Six Months	100
8565	223	146	5. All	100
8566	223	59	5. All	100
8567	224	355	2. Three Months	100
8568	224	1331	2. Three Months	95.2
8569	224	605	2. Three Months	80.2
8570	224	355	3. Six Months	100
8571	224	1331	3. Six Months	95.2
8572	224	605	3. Six Months	80.2
8573	224	1331	4. More Than Six Months	100
8574	224	341	4. More Than Six Months	96.2
8575	224	1331	5. All	100
8576	224	341	5. All	89.7
8577	224	355	5. All	86
8578	224	605	5. All	75.7
8579	225	313	2. Three Months	100
8580	225	313	3. Six Months	100
8581	225	167	4. More Than Six Months	100
8582	225	1332	4. More Than Six Months	100
8583	225	1333	4. More Than Six Months	100
8584	225	313	5. All	100
8585	225	167	5. All	83.7
8586	225	1332	5. All	83.7
8587	225	1333	5. All	83.7
8588	226	1334	1. Thirty Days	100
8589	226	238	1. Thirty Days	93.9
8590	226	983	1. Thirty Days	76.7
8591	226	133	1. Thirty Days	70.6
8592	226	1335	1. Thirty Days	62
8593	226	1336	1. Thirty Days	62
8594	226	33	1. Thirty Days	62
8595	226	1337	1. Thirty Days	62
8596	226	1124	1. Thirty Days	62
8597	226	198	1. Thirty Days	62
8598	226	1334	2. Three Months	100
8599	226	238	2. Three Months	94.6
8600	226	1335	2. Three Months	82.6
8601	226	983	2. Three Months	82.6
8602	226	73	2. Three Months	79.9
8603	226	133	2. Three Months	78.4
8604	226	1338	2. Three Months	73.2
8605	226	198	2. Three Months	68.7
8606	226	951	2. Three Months	66
8607	226	898	2. Three Months	66
8608	226	1339	2. Three Months	66
8609	226	1124	2. Three Months	62.9
8610	226	4	2. Three Months	62.9
8611	226	391	2. Three Months	62.9
8612	226	1340	2. Three Months	59.2
8613	226	171	2. Three Months	59.2
8614	226	681	2. Three Months	59.2
8615	226	461	2. Three Months	59.2
8616	226	31	2. Three Months	54.8
8617	226	33	2. Three Months	54.8
8618	226	216	2. Three Months	54.8
8619	226	49	2. Three Months	54.8
8620	226	707	2. Three Months	54.8
8621	226	134	2. Three Months	54.8
8622	226	777	2. Three Months	54.8
8623	226	50	2. Three Months	49
8624	226	1341	2. Three Months	49
8625	226	408	2. Three Months	49
8626	226	333	2. Three Months	49
8627	226	1342	2. Three Months	49
8628	226	1337	2. Three Months	49
8629	226	2	2. Three Months	49
8630	226	75	2. Three Months	49
8631	226	249	2. Three Months	49
8632	226	117	2. Three Months	49
8633	226	1343	2. Three Months	49
8634	226	626	2. Three Months	49
8635	226	11	2. Three Months	40.9
8636	226	1344	2. Three Months	40.9
8637	226	1105	2. Three Months	40.9
8638	226	196	2. Three Months	40.9
8639	226	521	2. Three Months	40.9
8640	226	1100	2. Three Months	40.9
8641	226	704	2. Three Months	40.9
8642	226	163	2. Three Months	40.9
8643	226	688	2. Three Months	40.9
8644	226	1040	2. Three Months	40.9
8645	226	471	2. Three Months	40.9
8646	226	1336	2. Three Months	40.9
8647	226	108	2. Three Months	40.9
8648	226	693	2. Three Months	40.9
8649	226	410	2. Three Months	40.9
8650	226	1334	3. Six Months	100
8651	226	238	3. Six Months	98.1
8652	226	1335	3. Six Months	94.8
8653	226	983	3. Six Months	86.1
8654	226	133	3. Six Months	78.7
8655	226	31	3. Six Months	78.7
8656	226	951	3. Six Months	77.8
8657	226	4	3. Six Months	75.8
8658	226	898	3. Six Months	74.8
8659	226	391	3. Six Months	74.8
8660	226	198	3. Six Months	74.8
8661	226	73	3. Six Months	74.8
8662	226	2	3. Six Months	73.6
8663	226	1339	3. Six Months	72.5
8664	226	216	3. Six Months	69.8
8665	226	461	3. Six Months	68.4
8666	226	1338	3. Six Months	66.8
8667	226	117	3. Six Months	65.1
8668	226	1345	3. Six Months	65.1
8669	226	33	3. Six Months	65.1
8670	226	707	3. Six Months	63.2
8671	226	1340	3. Six Months	61.2
8672	226	626	3. Six Months	58.9
8673	226	681	3. Six Months	58.9
8674	226	1124	3. Six Months	58.9
8675	226	108	3. Six Months	56.2
8676	226	134	3. Six Months	56.2
8677	226	1343	3. Six Months	56.2
8678	226	333	3. Six Months	53.2
8679	226	49	3. Six Months	53.2
8680	226	75	3. Six Months	53.2
8681	226	558	3. Six Months	53.2
8682	226	67	3. Six Months	53.2
8683	226	693	3. Six Months	53.2
8684	226	1341	3. Six Months	49.7
8685	226	1342	3. Six Months	49.7
8686	226	11	3. Six Months	49.7
8687	226	777	3. Six Months	49.7
8688	226	171	3. Six Months	49.7
8689	226	1336	3. Six Months	49.7
8690	226	249	3. Six Months	49.7
8691	226	386	3. Six Months	49.7
8692	226	1105	3. Six Months	49.7
8693	226	408	3. Six Months	49.7
8694	226	1346	3. Six Months	45.3
8695	226	1045	3. Six Months	45.3
8696	226	163	3. Six Months	45.3
8697	226	704	3. Six Months	45.3
8698	226	92	3. Six Months	45.3
8699	226	124	3. Six Months	45.3
8700	226	50	3. Six Months	45.3
8701	226	1347	3. Six Months	39.7
8702	226	471	3. Six Months	39.7
8703	226	1111	3. Six Months	39.7
8704	226	1344	3. Six Months	39.7
8705	226	1348	3. Six Months	39.7
8706	226	81	3. Six Months	39.7
8707	226	179	3. Six Months	39.7
8708	226	356	3. Six Months	39.7
8709	226	130	3. Six Months	39.7
8710	226	1349	3. Six Months	39.7
8711	226	201	3. Six Months	39.7
8712	226	688	3. Six Months	39.7
8713	226	436	3. Six Months	39.7
8714	226	1337	3. Six Months	39.7
8715	226	293	3. Six Months	39.7
8716	226	1100	3. Six Months	32
8717	226	303	3. Six Months	32
8718	226	315	3. Six Months	32
8719	226	58	3. Six Months	32
8720	226	301	3. Six Months	32
8721	226	521	3. Six Months	32
8722	226	1040	3. Six Months	32
8723	226	196	3. Six Months	32
8724	226	1281	3. Six Months	32
8725	226	1315	3. Six Months	32
8726	226	715	3. Six Months	32
8727	226	1350	3. Six Months	32
8728	226	1049	3. Six Months	32
8729	226	1104	3. Six Months	32
8730	226	13	3. Six Months	32
8731	226	9	3. Six Months	32
8732	226	576	3. Six Months	32
8733	226	341	3. Six Months	32
8734	226	105	3. Six Months	32
8735	226	782	3. Six Months	32
8736	226	410	3. Six Months	32
8737	226	1334	4. More Than Six Months	100
8738	226	1335	4. More Than Six Months	93.3
8739	226	238	4. More Than Six Months	92.1
8740	226	743	4. More Than Six Months	77.8
8741	226	898	4. More Than Six Months	76
8742	226	4	4. More Than Six Months	75
8743	226	75	4. More Than Six Months	75
8744	226	1339	4. More Than Six Months	74
8745	226	31	4. More Than Six Months	74
8746	226	2	4. More Than Six Months	72.9
8747	226	133	4. More Than Six Months	71.8
8748	226	391	4. More Than Six Months	71.8
8749	226	951	4. More Than Six Months	69.3
8750	226	983	4. More Than Six Months	67.9
8751	226	1105	4. More Than Six Months	67.9
8752	226	108	4. More Than Six Months	67.9
8753	226	1351	4. More Than Six Months	64.8
8754	226	49	4. More Than Six Months	64.8
8755	226	117	4. More Than Six Months	64.8
8756	226	216	4. More Than Six Months	63.1
8757	226	1340	4. More Than Six Months	63.1
8758	226	626	4. More Than Six Months	63.1
8759	226	130	4. More Than Six Months	63.1
8760	226	333	4. More Than Six Months	61.2
8761	226	301	4. More Than Six Months	61.2
8762	226	1344	4. More Than Six Months	61.2
8763	226	198	4. More Than Six Months	61.2
8764	226	33	4. More Than Six Months	59.1
8765	226	92	4. More Than Six Months	59.1
8766	226	208	4. More Than Six Months	59.1
8767	226	521	4. More Than Six Months	59.1
8768	226	461	4. More Than Six Months	56.7
8769	226	58	4. More Than Six Months	56.7
8770	226	1352	4. More Than Six Months	56.7
8771	226	249	4. More Than Six Months	56.7
8772	226	386	4. More Than Six Months	56.7
8773	226	1124	4. More Than Six Months	56.7
8774	226	707	4. More Than Six Months	56.7
8775	226	201	4. More Than Six Months	54.1
8776	226	665	4. More Than Six Months	54.1
8777	226	562	4. More Than Six Months	54.1
8778	226	134	4. More Than Six Months	54.1
8779	226	197	4. More Than Six Months	51
8780	226	163	4. More Than Six Months	51
8781	226	1353	4. More Than Six Months	51
8782	226	1338	4. More Than Six Months	51
8783	226	341	4. More Than Six Months	51
8784	226	337	4. More Than Six Months	51
8785	226	43	4. More Than Six Months	51
8786	226	1100	4. More Than Six Months	51
8787	226	681	4. More Than Six Months	51
8788	226	356	4. More Than Six Months	51
8912	226	179	5. All	45.8
8789	226	408	4. More Than Six Months	47.4
8790	226	411	4. More Than Six Months	47.4
8791	226	303	4. More Than Six Months	47.4
8792	226	1343	4. More Than Six Months	47.4
8793	226	242	4. More Than Six Months	47.4
8794	226	179	4. More Than Six Months	47.4
8795	226	306	4. More Than Six Months	43
8796	226	19	4. More Than Six Months	43
8797	226	777	4. More Than Six Months	43
8798	226	50	4. More Than Six Months	43
8799	226	137	4. More Than Six Months	43
8800	226	8	4. More Than Six Months	43
8801	226	1346	4. More Than Six Months	43
8802	226	23	4. More Than Six Months	43
8803	226	159	4. More Than Six Months	43
8804	226	106	4. More Than Six Months	43
8805	226	73	4. More Than Six Months	43
8806	226	1111	4. More Than Six Months	43
8807	226	145	4. More Than Six Months	37.4
8808	226	656	4. More Than Six Months	37.4
8809	226	1045	4. More Than Six Months	37.4
8810	226	144	4. More Than Six Months	37.4
8811	226	30	4. More Than Six Months	37.4
8812	226	1347	4. More Than Six Months	37.4
8813	226	688	4. More Than Six Months	37.4
8814	226	576	4. More Than Six Months	37.4
8815	226	558	4. More Than Six Months	37.4
8816	226	340	4. More Than Six Months	37.4
8817	226	88	4. More Than Six Months	37.4
8818	226	196	4. More Than Six Months	37.4
8819	226	328	4. More Than Six Months	37.4
8820	226	77	4. More Than Six Months	37.4
8821	226	424	4. More Than Six Months	29.6
8822	226	87	4. More Than Six Months	29.6
8823	226	1354	4. More Than Six Months	29.6
8824	226	1355	4. More Than Six Months	29.6
8825	226	180	4. More Than Six Months	29.6
8826	226	611	4. More Than Six Months	29.6
8827	226	1356	4. More Than Six Months	29.6
8828	226	472	4. More Than Six Months	29.6
8829	226	720	4. More Than Six Months	29.6
8830	226	13	4. More Than Six Months	29.6
8831	226	225	4. More Than Six Months	29.6
8832	226	1	4. More Than Six Months	29.6
8833	226	452	4. More Than Six Months	29.6
8834	226	704	4. More Than Six Months	29.6
8835	226	170	4. More Than Six Months	29.6
8836	226	1053	4. More Than Six Months	29.6
8837	226	1334	5. All	100
8838	226	1335	5. All	94.7
8839	226	238	5. All	94.4
8840	226	133	5. All	79.1
8841	226	898	5. All	79.1
8842	226	951	5. All	77.8
8843	226	391	5. All	77.4
8844	226	2	5. All	77.4
8845	226	1339	5. All	77.4
8846	226	31	5. All	76.5
8847	226	4	5. All	75.6
8848	226	75	5. All	73
8849	226	216	5. All	72.4
8850	226	117	5. All	71.3
8851	226	73	5. All	70.6
8852	226	1340	5. All	69.3
8853	226	198	5. All	69.3
8854	226	626	5. All	68.7
8855	226	49	5. All	67.9
8856	226	707	5. All	67.9
8857	226	333	5. All	66.4
8858	226	134	5. All	64.8
8859	226	92	5. All	63.9
8860	226	1344	5. All	63.9
8861	226	386	5. All	63.9
8862	226	461	5. All	63.9
8863	226	301	5. All	63
8864	226	108	5. All	63
8865	226	33	5. All	63
8866	226	1105	5. All	62.1
8867	226	521	5. All	62.1
8868	226	163	5. All	61
8869	226	1338	5. All	61
8870	226	58	5. All	61
8871	226	777	5. All	60
8872	226	1352	5. All	60
8873	226	356	5. All	60
8874	226	1336	5. All	60
8875	226	665	5. All	58.8
8876	226	1346	5. All	58.8
8877	226	1124	5. All	58.8
8878	226	43	5. All	57.6
8879	226	337	5. All	57.6
8880	226	1111	5. All	57.6
8881	226	130	5. All	56.3
8882	226	197	5. All	56.3
8883	226	1347	5. All	56.3
8884	226	681	5. All	56.3
8885	226	191	5. All	54.9
8886	226	137	5. All	54.9
8887	226	249	5. All	54.9
8888	226	1348	5. All	54.9
8889	226	140	5. All	54.9
8890	226	88	5. All	53.4
8891	226	1357	5. All	53.4
8892	226	1343	5. All	53.4
8893	226	13	5. All	53.4
8894	226	159	5. All	53.4
8895	226	145	5. All	53.4
8896	226	32	5. All	51.8
8897	226	168	5. All	51.8
8898	226	408	5. All	50
8899	226	1358	5. All	50
8900	226	1359	5. All	50
8901	226	1356	5. All	50
8902	226	424	5. All	50
8903	226	1360	5. All	50
8904	226	166	5. All	50
8905	226	1361	5. All	50
8906	226	201	5. All	50
8907	226	1362	5. All	50
8908	226	720	5. All	50
8909	226	1363	5. All	50
8910	226	558	5. All	48
8911	226	50	5. All	45.8
8913	226	1100	5. All	45.8
8914	226	562	5. All	45.8
8915	226	1045	5. All	43.4
8916	226	303	5. All	43.4
8917	226	1281	5. All	40.5
8918	226	704	5. All	40.5
8919	226	196	5. All	37.1
8920	226	23	5. All	37.1
8921	226	19	5. All	37.1
8922	226	106	5. All	33
8923	226	8	5. All	33
8924	226	306	5. All	33
8925	226	340	5. All	27.8
8926	226	170	5. All	27.8
8927	226	656	5. All	27.8
8928	226	30	5. All	27.8
8929	226	77	5. All	27.8
8930	226	611	5. All	27.8
8931	226	87	5. All	20.8
8932	226	344	5. All	20.8
8933	226	1354	5. All	20.8
8934	226	472	5. All	20.8
8935	226	1	5. All	20.8
8936	226	180	5. All	20.8
8937	227	19	4. More Than Six Months	100
8938	227	1364	4. More Than Six Months	100
8939	227	1365	4. More Than Six Months	100
8940	227	1366	4. More Than Six Months	100
8941	227	1367	4. More Than Six Months	100
8942	227	318	4. More Than Six Months	100
8943	227	1367	5. All	100
8944	227	1366	5. All	100
8945	227	1365	5. All	100
8946	227	1364	5. All	100
8947	227	19	5. All	65.1
8948	227	318	5. All	65.1
8949	228	1368	4. More Than Six Months	100
8950	228	1369	4. More Than Six Months	100
8951	228	1370	4. More Than Six Months	66.3
8952	228	1371	4. More Than Six Months	66.3
8953	228	1370	5. All	100
8954	228	1371	5. All	100
8955	228	1368	5. All	100
8956	228	1369	5. All	100
8957	229	1372	4. More Than Six Months	100
8958	229	20	4. More Than Six Months	89
8959	229	1373	4. More Than Six Months	89
8960	229	327	4. More Than Six Months	89
8961	229	1372	5. All	100
8962	229	20	5. All	88.8
8963	229	1373	5. All	88.8
8964	229	327	5. All	88.8
8965	230	31	4. More Than Six Months	100
8966	230	303	4. More Than Six Months	100
8967	230	68	4. More Than Six Months	89
8968	230	346	4. More Than Six Months	89
8969	230	400	4. More Than Six Months	89
8970	230	1137	4. More Than Six Months	89
8971	230	30	4. More Than Six Months	89
8972	230	1137	5. All	100
8973	230	400	5. All	100
8974	230	31	5. All	73.8
8975	230	303	5. All	73.8
8976	230	68	5. All	64.9
8977	230	30	5. All	64.9
8978	230	346	5. All	64.9
8979	230	4	5. All	64.9
8980	231	53	2. Three Months	100
8981	231	53	3. Six Months	100
8982	231	13	4. More Than Six Months	100
8983	231	13	5. All	100
8984	231	53	5. All	89.2
8985	232	135	1. Thirty Days	100
8986	232	248	1. Thirty Days	90.3
8987	232	134	1. Thirty Days	90.3
8988	232	135	2. Three Months	100
8989	232	1374	2. Three Months	88.5
8990	232	1114	2. Three Months	84.2
8991	232	612	2. Three Months	65.1
8992	232	248	2. Three Months	65.1
8993	232	704	2. Three Months	57.2
8994	232	1334	2. Three Months	57.2
8995	232	134	2. Three Months	57.2
8996	232	135	3. Six Months	100
8997	232	584	3. Six Months	87.1
8998	232	1374	3. Six Months	87.1
8999	232	1114	3. Six Months	82.7
9000	232	134	3. Six Months	76.9
9001	232	1334	3. Six Months	73.2
9002	232	248	3. Six Months	68.8
9003	232	704	3. Six Months	63
9004	232	136	3. Six Months	63
9005	232	612	3. Six Months	63
9006	232	303	3. Six Months	54.9
9007	232	248	4. More Than Six Months	100
9008	232	1114	4. More Than Six Months	94.9
9009	232	134	4. More Than Six Months	94.9
9010	232	135	4. More Than Six Months	93.7
9011	232	1334	4. More Than Six Months	78.2
9012	232	431	4. More Than Six Months	78.2
9013	232	303	4. More Than Six Months	68.5
9014	232	30	4. More Than Six Months	63.8
9015	232	332	4. More Than Six Months	63.8
9016	232	704	4. More Than Six Months	57.9
9017	232	302	4. More Than Six Months	57.9
9018	232	1375	4. More Than Six Months	57.9
9019	232	119	4. More Than Six Months	57.9
9020	232	414	4. More Than Six Months	57.9
9021	232	1337	4. More Than Six Months	49.6
9022	232	1022	4. More Than Six Months	49.6
9023	232	202	4. More Than Six Months	49.6
9024	232	775	4. More Than Six Months	49.6
9025	232	584	4. More Than Six Months	49.6
9026	232	1376	4. More Than Six Months	49.6
9027	232	32	4. More Than Six Months	49.6
9028	232	256	4. More Than Six Months	49.6
9029	232	135	5. All	100
9030	232	248	5. All	94.3
9031	232	1114	5. All	93.5
9032	232	134	5. All	91.9
9033	232	1334	5. All	79.8
9034	232	584	5. All	78.2
9035	232	775	5. All	74.6
9036	232	1374	5. All	74.6
9037	232	202	5. All	74.6
9038	232	1022	5. All	74.6
9039	232	431	5. All	70.1
9040	232	303	5. All	67.5
9041	232	704	5. All	64.4
9042	232	332	5. All	60.8
9043	232	414	5. All	56.4
9044	232	1375	5. All	56.4
9045	232	30	5. All	56.4
9046	232	136	5. All	56.4
9047	232	119	5. All	50.7
9048	232	302	5. All	50.7
9049	232	32	5. All	50.7
9050	232	256	5. All	50.7
9051	232	612	5. All	50.7
9052	232	1337	5. All	42.7
9053	232	1376	5. All	42.7
9054	232	1377	5. All	42.7
9055	233	757	5. All	100
9056	233	1378	5. All	100
9057	234	146	4. More Than Six Months	100
9058	234	234	4. More Than Six Months	85.6
9059	234	113	4. More Than Six Months	78.1
9060	234	139	4. More Than Six Months	78.1
9061	234	134	4. More Than Six Months	78.1
9062	234	154	4. More Than Six Months	67.7
9063	234	1379	4. More Than Six Months	67.7
9064	234	171	4. More Than Six Months	67.7
9065	234	173	4. More Than Six Months	67.7
9066	234	19	4. More Than Six Months	67.7
9067	234	58	4. More Than Six Months	67.7
9068	234	691	4. More Than Six Months	67.7
9069	234	1380	4. More Than Six Months	67.7
9070	234	30	4. More Than Six Months	67.7
9071	234	1381	4. More Than Six Months	67.7
9072	234	49	4. More Than Six Months	67.7
9073	234	68	4. More Than Six Months	67.7
9074	234	756	4. More Than Six Months	67.7
9075	234	32	4. More Than Six Months	67.7
9076	234	7	4. More Than Six Months	67.7
9077	234	143	4. More Than Six Months	67.7
9078	234	329	4. More Than Six Months	67.7
9079	234	1379	5. All	100
9080	234	691	5. All	100
9081	234	1380	5. All	100
9082	234	1381	5. All	100
9083	234	146	5. All	94.4
9084	234	234	5. All	82.7
9085	234	58	5. All	70
9086	234	113	5. All	70
9087	234	139	5. All	70
9088	234	134	5. All	70
9089	234	68	5. All	60
9090	234	619	5. All	60
9091	234	19	5. All	60
9092	234	173	5. All	60
9093	234	255	5. All	60
9094	234	414	5. All	60
9095	234	303	5. All	60
9096	234	50	5. All	60
9097	234	313	5. All	60
9098	234	32	5. All	60
9099	234	329	5. All	60
9100	234	171	5. All	60
9101	234	30	5. All	60
9102	234	154	5. All	60
9103	234	756	5. All	60
9104	234	7	5. All	60
9105	234	143	5. All	60
9106	234	49	5. All	60
9107	234	198	5. All	60
9108	235	414	4. More Than Six Months	100
9109	235	24	5. All	100
9110	235	414	5. All	72.2
9111	236	30	4. More Than Six Months	100
9112	236	113	4. More Than Six Months	88.7
9113	236	1382	4. More Than Six Months	88.7
9114	236	19	4. More Than Six Months	88.7
9115	236	153	4. More Than Six Months	88.7
9116	236	1382	5. All	100
9117	236	30	5. All	74
9118	236	113	5. All	65.3
9119	236	153	5. All	65.3
9120	236	19	5. All	65.3
9121	237	13	2. Three Months	100
9122	237	13	3. Six Months	100
9123	237	1	3. Six Months	89.6
9124	237	13	5. All	100
9125	237	31	5. All	94.1
9126	237	38	5. All	86.5
9127	237	1	5. All	86.5
9128	237	150	5. All	75.8
9129	237	306	5. All	75.8
9130	237	35	5. All	75.8
9131	237	54	5. All	75.8
9132	237	19	5. All	75.8
9133	237	61	5. All	75.8
9134	237	346	5. All	75.8
9135	237	45	5. All	75.8
9136	238	795	2. Three Months	100
9137	238	1138	2. Three Months	100
9138	238	750	2. Three Months	100
9139	238	795	3. Six Months	100
9140	238	1138	3. Six Months	100
9141	238	750	3. Six Months	100
9142	238	1383	3. Six Months	65.2
9143	238	1384	3. Six Months	65.2
9144	238	1385	3. Six Months	65.2
9145	238	124	3. Six Months	65.2
9146	238	1384	4. More Than Six Months	100
9147	238	477	4. More Than Six Months	81.1
9148	238	1386	4. More Than Six Months	81.1
9149	238	1383	4. More Than Six Months	77
9150	238	590	4. More Than Six Months	65.6
9151	238	1387	4. More Than Six Months	65.6
9152	238	475	4. More Than Six Months	65.6
9153	238	620	4. More Than Six Months	65.6
9154	238	519	4. More Than Six Months	65.6
9155	238	1385	4. More Than Six Months	65.6
9156	238	759	4. More Than Six Months	56.6
9157	238	154	4. More Than Six Months	56.6
9158	238	1388	4. More Than Six Months	56.6
9159	238	1389	4. More Than Six Months	56.6
9160	238	679	4. More Than Six Months	56.6
9161	238	1136	4. More Than Six Months	56.6
9162	238	1390	4. More Than Six Months	56.6
9163	238	987	4. More Than Six Months	56.6
9164	238	1391	4. More Than Six Months	56.6
9165	238	1392	4. More Than Six Months	56.6
9166	238	1283	4. More Than Six Months	56.6
9167	238	1393	4. More Than Six Months	56.6
9168	238	1384	5. All	100
9169	238	1386	5. All	98.5
9170	238	1138	5. All	91.2
9171	238	1387	5. All	91.2
9172	238	590	5. All	91.2
9173	238	1388	5. All	88.9
9174	238	795	5. All	88.9
9175	238	1390	5. All	88.9
9176	238	1136	5. All	88.9
9177	238	750	5. All	88.9
9178	238	1389	5. All	88.9
9179	238	987	5. All	88.9
9180	238	1391	5. All	88.9
9181	238	1283	5. All	88.9
9182	238	1392	5. All	88.9
9183	238	1383	5. All	80.5
9184	238	477	5. All	80.5
9185	238	1385	5. All	72.6
9186	238	475	5. All	60.7
9187	238	620	5. All	60.7
9188	238	124	5. All	60.7
9189	238	519	5. All	60.7
9190	238	979	5. All	51.2
9191	238	154	5. All	51.2
9192	238	554	5. All	51.2
9193	238	1393	5. All	51.2
9194	238	131	5. All	51.2
9195	238	759	5. All	51.2
9196	238	679	5. All	51.2
9197	239	285	4. More Than Six Months	100
9198	239	984	4. More Than Six Months	82.9
9199	239	1394	4. More Than Six Months	68.4
9200	239	749	4. More Than Six Months	68.4
9201	239	1394	5. All	100
9202	239	749	5. All	100
9203	239	285	5. All	97.7
9204	239	984	5. All	80.2
9205	240	1395	4. More Than Six Months	100
9206	240	358	4. More Than Six Months	96.4
9207	240	1396	4. More Than Six Months	86.9
9208	240	1	4. More Than Six Months	86.9
9209	240	390	4. More Than Six Months	83.8
9210	240	175	4. More Than Six Months	83.8
9211	240	137	4. More Than Six Months	80.2
9212	240	805	4. More Than Six Months	75.9
9213	240	139	4. More Than Six Months	70.7
9214	240	1397	4. More Than Six Months	70.7
9215	240	306	4. More Than Six Months	70.7
9216	240	144	4. More Than Six Months	64
9217	240	1370	4. More Than Six Months	64
9218	240	222	4. More Than Six Months	64
9219	240	130	4. More Than Six Months	64
9220	240	1363	4. More Than Six Months	64
9221	240	1398	4. More Than Six Months	64
9222	240	580	4. More Than Six Months	54.5
9223	240	1399	4. More Than Six Months	54.5
9224	240	1400	4. More Than Six Months	54.5
9225	240	1401	4. More Than Six Months	54.5
9226	240	19	4. More Than Six Months	54.5
9227	240	874	4. More Than Six Months	54.5
9228	240	871	4. More Than Six Months	54.5
9229	240	1402	4. More Than Six Months	54.5
9230	240	1403	4. More Than Six Months	54.5
9231	240	873	4. More Than Six Months	54.5
9232	240	1404	4. More Than Six Months	54.5
9233	240	620	4. More Than Six Months	54.5
9234	240	845	4. More Than Six Months	54.5
9235	240	1405	4. More Than Six Months	54.5
9236	240	313	4. More Than Six Months	54.5
9237	240	58	4. More Than Six Months	54.5
9238	240	238	4. More Than Six Months	54.5
9239	240	7	4. More Than Six Months	54.5
9240	240	1406	4. More Than Six Months	54.5
9241	240	113	4. More Than Six Months	54.5
9242	240	117	4. More Than Six Months	54.5
9243	240	1407	4. More Than Six Months	54.5
9244	240	1395	5. All	100
9245	240	1396	5. All	92.9
9246	240	358	5. All	86.4
9247	240	1397	5. All	86.4
9248	240	845	5. All	82.4
9249	240	1405	5. All	82.4
9250	240	1402	5. All	82.4
9251	240	1400	5. All	82.4
9252	240	1404	5. All	82.4
9253	240	874	5. All	82.4
9254	240	1403	5. All	82.4
9255	240	873	5. All	82.4
9256	240	871	5. All	82.4
9257	240	1399	5. All	82.4
9258	240	580	5. All	82.4
9259	240	1401	5. All	82.4
9260	240	1	5. All	77.4
9261	240	390	5. All	74.4
9262	240	175	5. All	74.4
9263	240	137	5. All	70.9
9264	240	805	5. All	66.9
9265	240	306	5. All	61.9
9266	240	139	5. All	61.9
9267	240	130	5. All	55.5
9268	240	1406	5. All	55.5
9269	240	1363	5. All	55.5
9270	240	1398	5. All	55.5
9271	240	1370	5. All	55.5
9272	240	144	5. All	55.5
9273	240	222	5. All	55.5
9274	240	238	5. All	46.5
9275	240	58	5. All	46.5
9276	240	313	5. All	46.5
9277	240	19	5. All	46.5
9278	240	620	5. All	46.5
9279	240	7	5. All	46.5
9280	240	113	5. All	46.5
9281	240	117	5. All	46.5
9282	240	1407	5. All	46.5
9283	241	1408	2. Three Months	100
9284	241	1409	2. Three Months	100
9285	241	87	2. Three Months	66.3
9286	241	1408	3. Six Months	100
9287	241	1409	3. Six Months	100
9288	241	936	3. Six Months	73.9
9289	241	87	3. Six Months	73.9
9290	241	1384	3. Six Months	65.1
9291	241	1385	4. More Than Six Months	100
9292	241	1410	4. More Than Six Months	78
9293	241	262	4. More Than Six Months	78
9294	241	16	4. More Than Six Months	78
9295	241	805	4. More Than Six Months	78
9296	241	281	4. More Than Six Months	71.1
9297	241	13	4. More Than Six Months	71.1
9298	241	906	4. More Than Six Months	71.1
9299	241	754	4. More Than Six Months	71.1
9300	241	846	4. More Than Six Months	61.3
9301	241	1384	4. More Than Six Months	61.3
9302	241	679	4. More Than Six Months	61.3
9303	241	298	4. More Than Six Months	61.3
9304	241	1022	4. More Than Six Months	61.3
9305	241	139	4. More Than Six Months	61.3
9306	241	384	4. More Than Six Months	61.3
9307	241	1411	4. More Than Six Months	61.3
9308	241	687	4. More Than Six Months	61.3
9309	241	1412	4. More Than Six Months	61.3
9310	241	485	4. More Than Six Months	61.3
9311	241	1413	4. More Than Six Months	61.3
9312	241	109	4. More Than Six Months	61.3
9313	242	488	4. More Than Six Months	100
9314	242	478	4. More Than Six Months	79
9315	242	1414	4. More Than Six Months	79
9316	242	570	4. More Than Six Months	79
9317	242	1415	4. More Than Six Months	79
9318	242	488	5. All	100
9319	242	478	5. All	94.5
9320	242	570	5. All	94.5
9321	242	1415	5. All	94.5
9322	242	1414	5. All	94.5
9323	243	560	1. Thirty Days	100
9324	243	784	1. Thirty Days	95.4
9325	243	571	1. Thirty Days	93.4
9326	243	497	1. Thirty Days	92.7
9327	243	471	1. Thirty Days	89.6
9328	243	108	1. Thirty Days	86.9
9329	243	114	1. Thirty Days	86
9330	243	94	1. Thirty Days	84
9331	243	301	1. Thirty Days	82.9
9332	243	26	1. Thirty Days	82.9
9333	243	951	1. Thirty Days	81.7
9334	243	341	1. Thirty Days	80.5
9335	243	1416	1. Thirty Days	80.5
9336	243	340	1. Thirty Days	79.2
9337	243	128	1. Thirty Days	77.9
9338	243	58	1. Thirty Days	77.9
9339	243	13	1. Thirty Days	76.4
9340	243	1	1. Thirty Days	76.4
9341	243	145	1. Thirty Days	76.4
9342	243	31	1. Thirty Days	74.9
9343	243	73	1. Thirty Days	74.9
9344	243	760	1. Thirty Days	74.9
9345	243	1417	1. Thirty Days	73.2
9346	243	328	1. Thirty Days	71.4
9347	243	348	1. Thirty Days	71.4
9348	243	326	1. Thirty Days	71.4
9349	243	1418	1. Thirty Days	69.5
9350	243	1049	1. Thirty Days	69.5
9351	243	60	1. Thirty Days	69.5
9352	243	87	1. Thirty Days	67.4
9353	243	250	1. Thirty Days	67.4
9354	243	330	1. Thirty Days	67.4
9355	243	23	1. Thirty Days	67.4
9356	243	413	1. Thirty Days	65
9357	243	183	1. Thirty Days	65
9358	243	262	1. Thirty Days	65
9359	243	134	1. Thirty Days	62.4
9360	243	1341	1. Thirty Days	62.4
9361	243	130	1. Thirty Days	62.4
9362	243	983	1. Thirty Days	62.4
9363	243	457	1. Thirty Days	59.4
9364	243	49	1. Thirty Days	59.4
9365	243	18	1. Thirty Days	59.4
9366	243	214	1. Thirty Days	59.4
9367	243	164	1. Thirty Days	56
9368	243	1331	1. Thirty Days	56
9369	243	1116	1. Thirty Days	56
9370	243	452	1. Thirty Days	56
9371	243	461	1. Thirty Days	56
9372	243	258	1. Thirty Days	51.9
9373	243	1363	1. Thirty Days	51.9
9374	243	1419	1. Thirty Days	51.9
9375	243	693	1. Thirty Days	51.9
9376	243	34	1. Thirty Days	47
9377	243	150	1. Thirty Days	47
9378	243	850	1. Thirty Days	47
9379	243	88	1. Thirty Days	47
9380	243	356	1. Thirty Days	47
9381	243	1420	1. Thirty Days	47
9382	243	1421	1. Thirty Days	47
9383	243	848	1. Thirty Days	47
9384	243	1115	1. Thirty Days	47
9385	243	318	1. Thirty Days	47
9386	243	393	1. Thirty Days	47
9387	243	28	1. Thirty Days	47
9388	243	833	1. Thirty Days	47
9389	243	158	1. Thirty Days	40.7
9390	243	237	1. Thirty Days	40.7
9391	243	1422	1. Thirty Days	40.7
9392	243	843	1. Thirty Days	40.7
9393	243	729	1. Thirty Days	40.7
9394	243	1326	1. Thirty Days	40.7
9395	243	35	1. Thirty Days	40.7
9396	243	1423	1. Thirty Days	40.7
9397	243	335	1. Thirty Days	40.7
9398	243	342	1. Thirty Days	40.7
9399	243	1022	1. Thirty Days	40.7
9400	243	1122	1. Thirty Days	40.7
9401	243	209	1. Thirty Days	40.7
9402	243	30	1. Thirty Days	40.7
9403	243	133	1. Thirty Days	40.7
9404	243	220	1. Thirty Days	40.7
9405	243	1424	1. Thirty Days	40.7
9406	243	415	1. Thirty Days	40.7
9407	243	492	1. Thirty Days	32
9408	243	1425	1. Thirty Days	32
9409	243	2	1. Thirty Days	32
9410	243	905	1. Thirty Days	32
9411	243	1426	1. Thirty Days	32
9412	243	766	1. Thirty Days	32
9413	243	1427	1. Thirty Days	32
9414	243	219	1. Thirty Days	32
9415	243	126	1. Thirty Days	32
9416	243	9	1. Thirty Days	32
9417	243	1428	1. Thirty Days	32
9418	243	19	1. Thirty Days	32
9419	243	168	1. Thirty Days	32
9420	243	496	1. Thirty Days	32
9421	243	403	1. Thirty Days	32
9422	243	77	1. Thirty Days	32
9423	243	560	2. Three Months	100
9424	243	784	2. Three Months	95.1
9425	243	497	2. Three Months	92.2
9426	243	571	2. Three Months	91.8
9427	243	108	2. Three Months	91.3
9428	243	340	2. Three Months	87.1
9429	243	471	2. Three Months	86.5
9430	243	94	2. Three Months	86.2
9431	243	114	2. Three Months	85.3
9432	243	760	2. Three Months	84.3
9433	243	301	2. Three Months	84.1
9434	243	951	2. Three Months	83.5
9435	243	341	2. Three Months	83
9436	243	326	2. Three Months	82.7
9437	243	13	2. Three Months	81.3
9438	243	26	2. Three Months	81
9439	243	58	2. Three Months	80.1
9440	243	60	2. Three Months	79.7
9441	243	250	2. Three Months	79.1
9442	243	128	2. Three Months	78.7
9443	243	330	2. Three Months	78.1
9444	243	73	2. Three Months	77.7
9445	243	1416	2. Three Months	77
9446	243	183	2. Three Months	75.8
9447	243	23	2. Three Months	75.4
9448	243	87	2. Three Months	73.7
9449	243	1	2. Three Months	73.7
9450	243	262	2. Three Months	72.8
9451	243	145	2. Three Months	72.8
9452	243	130	2. Three Months	72.8
9453	243	1418	2. Three Months	71.9
9454	243	328	2. Three Months	70.9
9455	243	1049	2. Three Months	70.9
9456	243	452	2. Three Months	69.9
9457	243	49	2. Three Months	69.9
9458	243	1419	2. Three Months	68.8
9459	243	1417	2. Three Months	68.2
9460	243	983	2. Three Months	67.6
9461	243	348	2. Three Months	67
9462	243	905	2. Three Months	66.3
9463	243	1326	2. Three Months	65.7
9464	243	457	2. Three Months	65.7
9465	243	31	2. Three Months	63.6
9466	243	134	2. Three Months	63.6
9467	243	1331	2. Three Months	62
9468	243	356	2. Three Months	61.2
9469	243	258	2. Three Months	60.3
9470	243	848	2. Three Months	59.4
9471	243	393	2. Three Months	59.4
9472	243	461	2. Three Months	57.5
9473	243	1421	2. Three Months	57.5
9474	243	34	2. Three Months	56.5
9475	243	1341	2. Three Months	55.4
9476	243	318	2. Three Months	55.4
9477	243	214	2. Three Months	55.4
9478	243	88	2. Three Months	54.2
9479	243	237	2. Three Months	52.9
9480	243	18	2. Three Months	52.9
9481	243	37	2. Three Months	52.9
9482	243	1363	2. Three Months	52.9
9483	243	1420	2. Three Months	51.6
9484	243	77	2. Three Months	50.2
9485	243	133	2. Three Months	48.7
9486	243	30	2. Three Months	47
9487	243	19	2. Three Months	47
9488	243	158	2. Three Months	47
9489	243	28	2. Three Months	47
9490	243	1429	2. Three Months	47
9491	243	1424	2. Three Months	47
9492	243	2	2. Three Months	45.2
9493	243	342	2. Three Months	45.2
9494	243	1104	2. Three Months	45.2
9495	243	1428	2. Three Months	45.2
9496	243	150	2. Three Months	43.1
9497	243	4	2. Three Months	43.1
9498	243	142	2. Three Months	40.9
9499	243	1427	2. Three Months	40.9
9500	243	1430	2. Three Months	40.9
9501	243	70	2. Three Months	38.3
9502	243	10	2. Three Months	38.3
9503	243	1105	2. Three Months	38.3
9504	243	335	2. Three Months	38.3
9505	243	113	2. Three Months	38.3
9506	243	573	2. Three Months	38.3
9507	243	581	2. Three Months	35.4
9508	243	229	2. Three Months	35.4
9509	243	233	2. Three Months	35.4
9510	243	427	2. Three Months	35.4
9511	243	302	2. Three Months	35.4
9512	243	32	2. Three Months	35.4
9513	243	3	2. Three Months	35.4
9514	243	65	2. Three Months	35.4
9515	243	408	2. Three Months	35.4
9516	243	14	2. Three Months	35.4
9517	243	117	2. Three Months	32
9518	243	1431	2. Three Months	32
9519	243	39	2. Three Months	27.9
9520	243	192	2. Three Months	22.7
9521	243	33	2. Three Months	16
9522	243	185	2. Three Months	16
9523	243	108	3. Six Months	93.6
9524	243	26	3. Six Months	85.8
9525	243	114	3. Six Months	85.1
9526	243	23	3. Six Months	83.7
9527	243	13	3. Six Months	82.1
9528	243	73	3. Six Months	82.1
9529	243	60	3. Six Months	81.7
9530	243	183	3. Six Months	81.7
9531	243	58	3. Six Months	81.2
9532	243	1416	3. Six Months	79.3
9533	243	330	3. Six Months	78.8
9534	243	130	3. Six Months	76
9535	243	1	3. Six Months	75.4
9536	243	145	3. Six Months	74.7
9537	243	87	3. Six Months	73.1
9538	243	49	3. Six Months	70.9
9539	243	134	3. Six Months	68.9
9540	243	348	3. Six Months	68.6
9541	243	356	3. Six Months	67.6
9542	243	31	3. Six Months	66.2
9543	243	164	3. Six Months	65.1
9544	243	18	3. Six Months	60.8
9545	243	318	3. Six Months	59.8
9546	243	34	3. Six Months	57.6
9547	243	30	3. Six Months	57
9548	243	1363	3. Six Months	57
9549	243	37	3. Six Months	56.4
9550	243	77	3. Six Months	53.8
9551	243	28	3. Six Months	53.8
9552	243	14	3. Six Months	52.3
9553	243	4	3. Six Months	51.5
9554	243	158	3. Six Months	51.5
9555	243	19	3. Six Months	51.5
9556	243	133	3. Six Months	50.7
9557	243	1116	3. Six Months	50.7
9558	243	142	3. Six Months	49.9
9559	243	150	3. Six Months	49.9
9560	243	113	3. Six Months	49
9561	243	10	3. Six Months	48
9562	243	2	3. Six Months	48
9563	243	335	3. Six Months	48
9564	243	68	3. Six Months	47
9565	243	342	3. Six Months	47
9566	243	137	3. Six Months	46
9567	243	7	3. Six Months	46
9568	243	17	3. Six Months	46
9569	243	138	3. Six Months	44.9
9570	243	20	3. Six Months	44.9
9571	243	117	3. Six Months	44.9
9572	243	36	3. Six Months	43.7
9573	243	65	3. Six Months	43.7
9574	243	172	3. Six Months	42.4
9575	243	35	3. Six Months	41.1
9576	243	422	3. Six Months	39.6
9577	243	33	3. Six Months	39.6
9578	243	426	3. Six Months	39.6
9579	243	15	3. Six Months	39.6
9580	243	332	3. Six Months	38
9581	243	74	3. Six Months	38
9582	243	192	3. Six Months	38
9583	243	39	3. Six Months	36.3
9584	243	331	3. Six Months	36.3
9585	243	168	3. Six Months	34.4
9586	243	156	3. Six Months	34.4
9587	243	67	3. Six Months	34.4
9588	243	22	3. Six Months	34.4
9589	243	53	3. Six Months	32.3
9590	243	153	3. Six Months	32.3
9591	243	79	3. Six Months	32.3
9592	243	63	3. Six Months	32.3
9593	243	159	3. Six Months	29.9
9594	243	141	3. Six Months	29.9
9595	243	57	3. Six Months	29.9
9596	243	139	3. Six Months	29.9
9597	243	509	3. Six Months	29.9
9598	243	315	3. Six Months	29.9
9599	243	665	3. Six Months	29.9
9600	243	54	3. Six Months	29.9
9601	243	27	3. Six Months	29.9
9602	243	197	3. Six Months	27.2
9603	243	180	3. Six Months	27.2
9604	243	185	3. Six Months	27.2
9605	243	118	3. Six Months	27.2
9606	243	157	3. Six Months	24.1
9607	243	43	3. Six Months	24.1
9608	243	343	3. Six Months	24.1
9609	243	673	3. Six Months	24.1
9610	243	149	3. Six Months	24.1
9611	243	254	3. Six Months	24.1
9612	243	173	3. Six Months	24.1
9613	243	62	3. Six Months	24.1
9614	243	144	3. Six Months	20.3
9615	243	140	3. Six Months	20.3
9616	243	351	3. Six Months	20.3
9617	243	255	3. Six Months	15.8
9618	243	390	3. Six Months	15.8
9619	243	239	3. Six Months	15.8
9620	243	50	3. Six Months	15.8
9621	243	337	3. Six Months	10.2
9622	243	166	3. Six Months	10.2
9623	243	23	4. More Than Six Months	88.9
9624	243	73	4. More Than Six Months	87.9
9625	243	183	4. More Than Six Months	86.6
9626	243	58	4. More Than Six Months	84.9
9627	243	13	4. More Than Six Months	83
9628	243	28	4. More Than Six Months	80.9
9629	243	87	4. More Than Six Months	79.2
9630	243	145	4. More Than Six Months	75.8
9631	243	49	4. More Than Six Months	70.8
9632	243	31	4. More Than Six Months	70.1
9633	243	356	4. More Than Six Months	69.3
9634	243	18	4. More Than Six Months	67
9635	243	33	4. More Than Six Months	67
9636	243	34	4. More Than Six Months	66
9637	243	150	4. More Than Six Months	65.1
9638	243	1	4. More Than Six Months	64.2
9639	243	134	4. More Than Six Months	64.2
9640	243	30	4. More Than Six Months	63.3
9641	243	113	4. More Than Six Months	62.5
9642	243	158	4. More Than Six Months	60.3
9643	243	164	4. More Than Six Months	59.5
9644	243	19	4. More Than Six Months	59.5
9645	243	77	4. More Than Six Months	57.2
9646	243	117	4. More Than Six Months	56.1
9647	243	14	4. More Than Six Months	56.1
9648	243	185	4. More Than Six Months	54.6
9649	243	17	4. More Than Six Months	54.6
9650	243	37	4. More Than Six Months	54.2
9651	243	137	4. More Than Six Months	54.2
9652	243	35	4. More Than Six Months	52.9
9653	243	10	4. More Than Six Months	51.5
9654	243	65	4. More Than Six Months	51
9655	243	138	4. More Than Six Months	50.5
9656	243	2	4. More Than Six Months	50.5
9657	243	54	4. More Than Six Months	49.5
9658	243	390	4. More Than Six Months	49
9659	243	426	4. More Than Six Months	48.4
9660	243	22	4. More Than Six Months	47.8
9661	243	173	4. More Than Six Months	47.8
9662	243	20	4. More Than Six Months	47.8
9663	243	192	4. More Than Six Months	47.2
9664	243	172	4. More Than Six Months	46.6
9665	243	255	4. More Than Six Months	46
9666	243	149	4. More Than Six Months	46
9667	243	36	4. More Than Six Months	45.3
9668	243	39	4. More Than Six Months	45.3
9669	243	166	4. More Than Six Months	45.3
9670	243	159	4. More Than Six Months	44.6
9671	243	153	4. More Than Six Months	43.1
9672	243	68	4. More Than Six Months	43.1
9673	243	139	4. More Than Six Months	42.4
9674	243	142	4. More Than Six Months	42.4
9675	243	57	4. More Than Six Months	42.4
9676	243	157	4. More Than Six Months	42.4
9677	243	74	4. More Than Six Months	41.6
9678	243	144	4. More Than Six Months	39.8
9679	243	222	4. More Than Six Months	39.8
9680	243	196	4. More Than Six Months	39.8
9681	243	63	4. More Than Six Months	39.8
9682	243	181	4. More Than Six Months	38.9
9683	243	140	4. More Than Six Months	37.9
9684	243	197	4. More Than Six Months	37.9
9685	243	67	4. More Than Six Months	37.9
9686	243	351	4. More Than Six Months	37.9
9687	243	92	4. More Than Six Months	36.8
9688	243	195	4. More Than Six Months	36.8
9689	243	118	4. More Than Six Months	36.8
9690	243	146	4. More Than Six Months	34.5
9691	243	180	4. More Than Six Months	34.5
9692	243	161	4. More Than Six Months	34.5
9693	243	167	4. More Than Six Months	33.2
9694	243	143	4. More Than Six Months	33.2
9695	243	50	4. More Than Six Months	33.2
9696	243	156	4. More Than Six Months	33.2
9697	243	155	4. More Than Six Months	33.2
9698	243	184	4. More Than Six Months	31.8
9699	243	154	4. More Than Six Months	31.8
9700	243	141	4. More Than Six Months	31.8
9701	243	186	4. More Than Six Months	31.8
9702	243	168	4. More Than Six Months	30.3
9703	243	165	4. More Than Six Months	30.3
9704	243	179	4. More Than Six Months	30.3
9705	243	151	4. More Than Six Months	30.3
9706	243	163	4. More Than Six Months	28.7
9707	243	136	4. More Than Six Months	28.7
9708	243	187	4. More Than Six Months	28.7
9709	243	147	4. More Than Six Months	28.7
9710	243	170	4. More Than Six Months	26.9
9711	243	189	4. More Than Six Months	26.9
9712	243	194	4. More Than Six Months	26.9
9713	243	106	4. More Than Six Months	26.9
9714	243	182	4. More Than Six Months	24.9
9715	243	178	4. More Than Six Months	22.7
9716	243	171	4. More Than Six Months	22.7
9717	243	169	4. More Than Six Months	20.2
9718	243	174	4. More Than Six Months	20.2
9719	243	191	4. More Than Six Months	20.2
9720	243	175	4. More Than Six Months	14.1
9721	243	1069	4. More Than Six Months	14.1
9722	243	352	4. More Than Six Months	10.3
9723	243	23	5. All	88.1
9724	243	73	5. All	86.9
9725	243	183	5. All	85.9
9726	243	58	5. All	84.8
9727	243	13	5. All	83.8
9728	243	87	5. All	78.3
9729	243	145	5. All	77.2
9730	243	28	5. All	76.7
9731	243	49	5. All	72.1
9732	243	31	5. All	71.1
9733	243	356	5. All	70.2
9734	243	134	5. All	68.6
9735	243	18	5. All	66.7
9736	243	34	5. All	65.1
9737	243	33	5. All	64.1
9738	243	150	5. All	64.1
9739	243	164	5. All	63.6
9740	243	30	5. All	63.1
9741	243	113	5. All	60.6
9742	243	158	5. All	59.7
9743	243	19	5. All	59
9744	243	37	5. All	59
9745	243	77	5. All	58.2
9746	243	14	5. All	57
9747	243	117	5. All	57
9748	243	17	5. All	56.3
9749	243	137	5. All	53.9
9750	243	65	5. All	53.6
9751	243	185	5. All	53.4
9752	243	10	5. All	52.8
9753	243	2	5. All	52.1
9754	243	35	5. All	51.8
9755	243	138	5. All	51.2
9756	243	142	5. All	51.2
9757	243	172	5. All	50.8
9758	243	192	5. All	50.1
9759	243	20	5. All	49.4
9760	243	173	5. All	48.3
9761	243	36	5. All	47.5
9762	243	68	5. All	47.5
9763	243	54	5. All	47.1
9764	243	22	5. All	46.6
9765	243	255	5. All	46.2
9766	243	166	5. All	45.3
9767	243	63	5. All	44.8
9768	243	67	5. All	44.3
9769	243	74	5. All	43.3
9770	243	159	5. All	43.3
9771	243	149	5. All	43.3
9772	243	153	5. All	42.7
9773	243	197	5. All	42.7
9774	243	118	5. All	42.2
9775	243	79	5. All	42.2
9776	243	57	5. All	41.6
9777	243	139	5. All	41.6
9778	243	168	5. All	41
9779	243	180	5. All	41
9780	243	157	5. All	40.4
9781	243	136	5. All	39.8
9782	243	196	5. All	39.8
9783	243	187	5. All	37
9784	243	156	5. All	37
9785	243	189	5. All	37
9786	243	144	5. All	37
9787	243	140	5. All	36.2
9788	243	154	5. All	36.2
9789	243	161	5. All	36.2
9790	243	146	5. All	35.4
9791	243	160	5. All	35.4
9792	243	165	5. All	34.5
9793	243	195	5. All	34.5
9794	243	141	5. All	34.5
9795	243	181	5. All	34.5
9796	243	184	5. All	33.6
9797	243	148	5. All	33.6
9798	243	147	5. All	33.6
9799	243	143	5. All	33.6
9800	243	179	5. All	32.6
9801	243	178	5. All	32.6
9802	243	92	5. All	31.6
9803	243	155	5. All	31.6
9804	243	50	5. All	31.6
9805	243	152	5. All	31.6
9806	243	167	5. All	30.6
9807	243	163	5. All	30.6
9808	243	584	5. All	26.9
9809	243	186	5. All	26.9
9810	243	171	5. All	26.9
9811	243	170	5. All	25.5
9812	243	106	5. All	25.5
9813	243	151	5. All	25.5
9814	243	174	5. All	24
9815	243	194	5. All	22.3
9816	243	345	5. All	22.3
9817	243	169	5. All	22.3
9818	243	191	5. All	18.4
9819	243	352	5. All	16.1
9820	243	175	5. All	16.1
9821	243	176	5. All	13.6
9822	243	1130	5. All	7.5
9823	244	13	1. Thirty Days	100
9824	244	30	1. Thirty Days	71.5
9825	244	19	1. Thirty Days	71.5
9826	244	77	1. Thirty Days	66.3
9827	244	117	1. Thirty Days	66.3
9828	244	35	1. Thirty Days	66.3
9829	244	65	1. Thirty Days	59.7
9830	244	1385	1. Thirty Days	59.7
9831	244	17	1. Thirty Days	59.7
9832	244	26	1. Thirty Days	59.7
9833	244	10	1. Thirty Days	59.7
9834	244	1	1. Thirty Days	59.7
9835	244	3	1. Thirty Days	59.7
9836	244	153	1. Thirty Days	59.7
9837	244	804	1. Thirty Days	59.7
9838	244	143	1. Thirty Days	59.7
9839	244	48	1. Thirty Days	59.7
9840	244	509	1. Thirty Days	59.7
9841	244	346	1. Thirty Days	50.3
9842	244	519	1. Thirty Days	50.3
9843	244	326	1. Thirty Days	50.3
9844	244	62	1. Thirty Days	50.3
9845	244	1202	1. Thirty Days	50.3
9846	244	766	1. Thirty Days	50.3
9847	244	154	1. Thirty Days	50.3
9848	244	81	1. Thirty Days	50.3
9849	244	54	1. Thirty Days	50.3
9850	244	313	1. Thirty Days	50.3
9851	244	673	1. Thirty Days	50.3
9852	244	353	1. Thirty Days	50.3
9853	244	31	1. Thirty Days	50.3
9854	244	399	1. Thirty Days	50.3
9855	244	332	1. Thirty Days	50.3
9856	244	1422	1. Thirty Days	50.3
9857	244	141	1. Thirty Days	50.3
9858	244	555	1. Thirty Days	50.3
9859	244	51	1. Thirty Days	50.3
9860	244	258	1. Thirty Days	50.3
9861	244	189	1. Thirty Days	50.3
9862	244	28	1. Thirty Days	50.3
9863	244	1432	1. Thirty Days	50.3
9864	244	147	1. Thirty Days	50.3
9865	244	113	1. Thirty Days	50.3
9866	244	197	1. Thirty Days	50.3
9867	244	993	1. Thirty Days	50.3
9868	244	130	1. Thirty Days	50.3
9869	244	87	1. Thirty Days	50.3
9870	244	13	2. Three Months	100
9871	244	491	2. Three Months	73.8
9872	244	30	2. Three Months	68.6
9873	244	28	2. Three Months	68.6
9874	244	3	2. Three Months	68.6
9875	244	26	2. Three Months	66.6
9876	244	326	2. Three Months	64.4
9877	244	10	2. Three Months	64.4
9878	244	1	2. Three Months	64.4
9879	244	130	2. Three Months	64.4
9880	244	70	2. Three Months	64.4
9881	244	77	2. Three Months	64.4
9882	244	2	2. Three Months	61.9
9883	244	4	2. Three Months	61.9
9884	244	17	2. Three Months	61.9
9885	244	19	2. Three Months	61.9
9886	244	581	2. Three Months	59
9887	244	34	2. Three Months	59
9888	244	58	2. Three Months	59
9889	244	23	2. Three Months	59
9890	244	65	2. Three Months	59
9891	244	54	2. Three Months	59
9892	244	137	2. Three Months	55.8
9893	244	142	2. Three Months	55.8
9894	244	15	2. Three Months	55.8
9895	244	20	2. Three Months	55.8
9896	244	143	2. Three Months	55.8
9897	244	254	2. Three Months	51.9
9898	244	48	2. Three Months	51.9
9899	244	12	2. Three Months	51.9
9900	244	35	2. Three Months	51.9
9901	244	573	2. Three Months	51.9
9902	244	147	2. Three Months	51.9
9903	244	87	2. Three Months	51.9
9904	244	509	2. Three Months	51.9
9905	244	117	2. Three Months	51.9
9906	244	313	2. Three Months	47.2
9907	244	8	2. Three Months	47.2
9908	244	9	2. Three Months	47.2
9909	244	1433	2. Three Months	47.2
9910	244	74	2. Three Months	47.2
9911	244	530	2. Three Months	47.2
9912	244	308	2. Three Months	47.2
9913	244	333	2. Three Months	47.2
9914	244	73	2. Three Months	47.2
9915	244	138	2. Three Months	47.2
9916	244	133	2. Three Months	47.2
9917	244	106	2. Three Months	47.2
9918	244	150	2. Three Months	47.2
9919	244	53	2. Three Months	47.2
9920	244	14	2. Three Months	47.2
9921	244	33	2. Three Months	47.2
9922	244	346	2. Three Months	47.2
9923	244	153	2. Three Months	47.2
9924	244	37	2. Three Months	47.2
9925	244	159	2. Three Months	41.2
9926	244	140	2. Three Months	41.2
9927	244	229	2. Three Months	41.2
9928	244	43	2. Three Months	41.2
9929	244	7	2. Three Months	41.2
9930	244	113	2. Three Months	41.2
9931	244	22	2. Three Months	41.2
9932	244	32	2. Three Months	41.2
9933	244	31	2. Three Months	41.2
9934	244	1093	2. Three Months	41.2
9935	244	167	2. Three Months	41.2
9936	244	92	2. Three Months	41.2
9937	244	1224	2. Three Months	41.2
9938	244	108	2. Three Months	41.2
9939	244	49	2. Three Months	41.2
9940	244	134	2. Three Months	41.2
9941	244	318	2. Three Months	41.2
9942	244	158	2. Three Months	41.2
9943	244	41	2. Three Months	41.2
9944	244	68	2. Three Months	41.2
9945	244	335	2. Three Months	41.2
9946	244	768	2. Three Months	41.2
9947	244	67	2. Three Months	41.2
9948	244	184	2. Three Months	41.2
9949	244	619	2. Three Months	32.8
9950	244	914	2. Three Months	32.8
9951	244	303	2. Three Months	32.8
9952	244	756	2. Three Months	32.8
9953	244	1434	2. Three Months	32.8
9954	244	492	2. Three Months	32.8
9955	244	835	2. Three Months	32.8
9956	244	1435	2. Three Months	32.8
9957	244	156	2. Three Months	32.8
9958	244	886	2. Three Months	32.8
9959	244	580	2. Three Months	32.8
9960	244	50	2. Three Months	32.8
9961	244	145	2. Three Months	32.8
9962	244	216	2. Three Months	32.8
9963	244	196	2. Three Months	32.8
9964	244	1134	2. Three Months	32.8
9965	244	237	2. Three Months	32.8
9966	244	186	2. Three Months	32.8
9967	244	91	2. Three Months	32.8
9968	244	107	2. Three Months	32.8
9969	244	1105	2. Three Months	32.8
9970	244	13	3. Six Months	100
9971	244	1	3. Six Months	75.6
9972	244	23	3. Six Months	74.1
9973	244	30	3. Six Months	72.4
9974	244	28	3. Six Months	72.4
9975	244	34	3. Six Months	71.6
9976	244	130	3. Six Months	69.7
9977	244	7	3. Six Months	67.6
9978	244	18	3. Six Months	67.6
9979	244	14	3. Six Months	66.5
9980	244	58	3. Six Months	65.4
9981	244	26	3. Six Months	64.1
9982	244	113	3. Six Months	64.1
9983	244	19	3. Six Months	64.1
9984	244	77	3. Six Months	64.1
9985	244	10	3. Six Months	64.1
9986	244	2	3. Six Months	64.1
9987	244	65	3. Six Months	64.1
9988	244	54	3. Six Months	64.1
9989	244	308	3. Six Months	62.8
9990	244	3	3. Six Months	62.8
9991	244	142	3. Six Months	62.8
9992	244	184	3. Six Months	59.9
9993	244	53	3. Six Months	59.9
9994	244	147	3. Six Months	59.9
9995	244	35	3. Six Months	59.9
9996	244	17	3. Six Months	58.2
9997	244	137	3. Six Months	58.2
9998	244	4	3. Six Months	56.5
9999	244	31	3. Six Months	56.5
10000	244	15	3. Six Months	56.5
10001	244	196	3. Six Months	56.5
10002	244	145	3. Six Months	56.5
10003	244	20	3. Six Months	54.5
10004	244	153	3. Six Months	54.5
10005	244	143	3. Six Months	54.5
10006	244	117	3. Six Months	54.5
10007	244	87	3. Six Months	54.5
10008	244	254	3. Six Months	54.5
10009	244	303	3. Six Months	52.4
10010	244	27	3. Six Months	52.4
10011	244	12	3. Six Months	52.4
10012	244	22	3. Six Months	52.4
10013	244	108	3. Six Months	52.4
10014	244	33	3. Six Months	50
10015	244	134	3. Six Months	50
10016	244	49	3. Six Months	50
10017	244	159	3. Six Months	50
10018	244	57	3. Six Months	50
10019	244	68	3. Six Months	50
10020	244	173	3. Six Months	50
10021	244	332	3. Six Months	50
10022	244	43	3. Six Months	50
10023	244	138	3. Six Months	50
10024	244	73	3. Six Months	50
10025	244	67	3. Six Months	50
10026	244	74	3. Six Months	47.2
10027	244	186	3. Six Months	47.2
10028	244	335	3. Six Months	47.2
10029	244	61	3. Six Months	47.2
10030	244	318	3. Six Months	47.2
10031	244	315	3. Six Months	44.1
10032	244	158	3. Six Months	44.1
10033	244	530	3. Six Months	44.1
10034	244	346	3. Six Months	44.1
10035	244	106	3. Six Months	44.1
10036	244	302	3. Six Months	44.1
10037	244	63	3. Six Months	44.1
10038	244	154	3. Six Months	44.1
10039	244	139	3. Six Months	44.1
10040	244	133	3. Six Months	40.4
10041	244	32	3. Six Months	40.4
10042	244	180	3. Six Months	40.4
10043	244	135	3. Six Months	40.4
10044	244	255	3. Six Months	36
10045	244	769	3. Six Months	36
10046	244	38	3. Six Months	36
10047	244	301	3. Six Months	36
10048	244	167	3. Six Months	36
10049	244	345	3. Six Months	36
10050	244	521	3. Six Months	36
10051	244	220	3. Six Months	36
10052	244	403	3. Six Months	36
10053	244	79	3. Six Months	30.3
10054	244	342	3. Six Months	30.3
10055	244	164	3. Six Months	30.3
10056	244	161	3. Six Months	30.3
10057	244	330	3. Six Months	30.3
10058	244	983	3. Six Months	30.3
10059	244	337	3. Six Months	30.3
10060	244	349	3. Six Months	30.3
10061	244	582	3. Six Months	22.6
10062	244	336	3. Six Months	22.6
10063	244	165	3. Six Months	22.6
10064	244	422	3. Six Months	22.6
10065	244	222	3. Six Months	22.6
10066	244	146	3. Six Months	22.6
10067	244	192	3. Six Months	22.6
10068	244	149	3. Six Months	22.6
10069	244	144	3. Six Months	22.6
10070	244	13	4. More Than Six Months	100
10071	244	23	4. More Than Six Months	84.4
10072	244	30	4. More Than Six Months	80.6
10073	244	34	4. More Than Six Months	77.7
10074	244	113	4. More Than Six Months	77.5
10075	244	19	4. More Than Six Months	75.9
10076	244	31	4. More Than Six Months	73.3
10077	244	58	4. More Than Six Months	73
10078	244	2	4. More Than Six Months	71.9
10079	244	77	4. More Than Six Months	71.9
10080	244	65	4. More Than Six Months	70.1
10081	244	28	4. More Than Six Months	69.5
10082	244	154	4. More Than Six Months	69.2
10083	244	35	4. More Than Six Months	68.5
10084	244	10	4. More Than Six Months	67.8
10085	244	117	4. More Than Six Months	67.8
10086	244	22	4. More Than Six Months	67.8
10087	244	137	4. More Than Six Months	67.1
10088	244	17	4. More Than Six Months	66.7
10089	244	14	4. More Than Six Months	66.4
10090	244	145	4. More Than Six Months	66
10091	244	54	4. More Than Six Months	64.4
10092	244	33	4. More Than Six Months	63.9
10093	244	18	4. More Than Six Months	63.5
10094	244	20	4. More Than Six Months	63
10095	244	37	4. More Than Six Months	62.1
10096	244	142	4. More Than Six Months	61.6
10097	244	68	4. More Than Six Months	61.1
10098	244	345	4. More Than Six Months	60.6
10099	244	138	4. More Than Six Months	60.6
10100	244	87	4. More Than Six Months	58.4
10101	244	57	4. More Than Six Months	58.4
10102	244	146	4. More Than Six Months	57.8
10103	244	173	4. More Than Six Months	57.2
10104	244	139	4. More Than Six Months	56.6
10105	244	79	4. More Than Six Months	55.3
10106	244	49	4. More Than Six Months	53.8
10107	244	255	4. More Than Six Months	53.1
10108	244	153	4. More Than Six Months	53.1
10109	244	144	4. More Than Six Months	53.1
10110	244	149	4. More Than Six Months	52.3
10111	244	106	4. More Than Six Months	52.3
10112	244	159	4. More Than Six Months	52.3
10113	244	143	4. More Than Six Months	51.5
10114	244	196	4. More Than Six Months	51.5
10115	244	180	4. More Than Six Months	51.5
10116	244	156	4. More Than Six Months	51.5
10117	244	164	4. More Than Six Months	51.5
10118	244	151	4. More Than Six Months	50.6
10119	244	158	4. More Than Six Months	50.6
10120	244	73	4. More Than Six Months	50.6
10121	244	74	4. More Than Six Months	49.7
10122	244	167	4. More Than Six Months	49.7
10123	244	150	4. More Than Six Months	48.7
10124	244	50	4. More Than Six Months	48.7
10125	244	63	4. More Than Six Months	48.7
10126	244	140	4. More Than Six Months	47.7
10127	244	148	4. More Than Six Months	47.7
10128	244	155	4. More Than Six Months	46.7
10129	244	186	4. More Than Six Months	46.7
10130	244	189	4. More Than Six Months	46.7
10131	244	171	4. More Than Six Months	45.6
10132	244	147	4. More Than Six Months	45.6
10133	244	183	4. More Than Six Months	45.6
10134	244	197	4. More Than Six Months	44.4
10135	244	161	4. More Than Six Months	44.4
10136	244	165	4. More Than Six Months	44.4
10137	244	172	4. More Than Six Months	44.4
10138	244	184	4. More Than Six Months	43.1
10139	244	36	4. More Than Six Months	43.1
10140	244	178	4. More Than Six Months	41.7
10141	244	168	4. More Than Six Months	40.2
10142	244	136	4. More Than Six Months	40.2
10143	244	160	4. More Than Six Months	40.2
10144	244	179	4. More Than Six Months	38.6
10145	244	192	4. More Than Six Months	38.6
10146	244	67	4. More Than Six Months	38.6
10147	244	190	4. More Than Six Months	38.6
10148	244	170	4. More Than Six Months	36.9
10149	244	187	4. More Than Six Months	36.9
10150	244	194	4. More Than Six Months	36.9
10151	244	166	4. More Than Six Months	36.9
10152	244	118	4. More Than Six Months	36.9
10153	244	66	4. More Than Six Months	36.9
10154	244	141	4. More Than Six Months	35
10155	244	152	4. More Than Six Months	32.8
10156	244	174	4. More Than Six Months	32.8
10157	244	134	4. More Than Six Months	32.8
10158	244	193	4. More Than Six Months	32.8
10159	244	354	4. More Than Six Months	30.4
10160	244	92	4. More Than Six Months	30.4
10161	244	163	4. More Than Six Months	30.4
10162	244	191	4. More Than Six Months	30.4
10163	244	185	4. More Than Six Months	27.7
10164	244	162	4. More Than Six Months	27.7
10165	244	353	4. More Than Six Months	27.7
10166	244	176	4. More Than Six Months	27.7
10167	244	181	4. More Than Six Months	27.7
10168	244	175	4. More Than Six Months	24.5
10169	244	584	4. More Than Six Months	24.5
10170	244	13	5. All	100
10171	244	23	5. All	83.7
10172	244	30	5. All	79.4
10173	244	34	5. All	78.3
10174	244	19	5. All	75.8
10175	244	113	5. All	75.7
10176	244	58	5. All	73.8
10177	244	31	5. All	72.9
10178	244	77	5. All	72.9
10179	244	2	5. All	72.9
10180	244	28	5. All	72.9
10181	244	65	5. All	69.8
10182	244	117	5. All	68.5
10183	244	154	5. All	68.5
10184	244	137	5. All	68.5
10185	244	22	5. All	68.3
10186	244	17	5. All	68.3
10187	244	10	5. All	68
10188	244	54	5. All	67.7
10189	244	35	5. All	67.7
10190	244	145	5. All	67.5
10191	244	14	5. All	67.5
10192	244	142	5. All	65.8
10193	244	18	5. All	65.8
10194	244	37	5. All	64.5
10195	244	138	5. All	62.9
10196	244	33	5. All	62.5
10197	244	20	5. All	62.5
10198	244	173	5. All	60.6
10199	244	68	5. All	60.2
10200	244	139	5. All	59.4
10201	244	87	5. All	59
10202	244	57	5. All	58.1
10203	244	345	5. All	58.1
10204	244	159	5. All	57.6
10205	244	158	5. All	55.6
10206	244	180	5. All	55.6
10207	244	146	5. All	54.6
10208	244	63	5. All	54.6
10209	244	196	5. All	54.6
10210	244	49	5. All	54.6
10211	244	153	5. All	54.6
10212	244	143	5. All	54
10213	244	140	5. All	54
10214	244	79	5. All	52.8
10215	244	151	5. All	52.8
10216	244	156	5. All	52.2
10217	244	147	5. All	52.2
10218	244	73	5. All	52.2
10219	244	106	5. All	52.2
10220	244	150	5. All	52.2
10221	244	255	5. All	51.6
10222	244	74	5. All	50.9
10223	244	197	5. All	50.9
10224	244	184	5. All	50.9
10225	244	144	5. All	50.2
10226	244	165	5. All	49.5
10227	244	149	5. All	49.5
10228	244	164	5. All	49.5
10229	244	50	5. All	49.5
10230	244	183	5. All	49.5
10231	244	186	5. All	48.8
10232	244	167	5. All	48.8
10233	244	171	5. All	47.2
10234	244	136	5. All	45.5
10235	244	189	5. All	44.5
10236	244	67	5. All	44.5
10237	244	155	5. All	43.6
10238	244	191	5. All	43.6
10239	244	161	5. All	43.6
10240	244	36	5. All	42.5
10241	244	163	5. All	42.5
10242	244	172	5. All	41.4
10243	244	134	5. All	41.4
10244	244	178	5. All	39
10245	244	160	5. All	39
10246	244	66	5. All	39
10247	244	118	5. All	37.7
10248	244	166	5. All	37.7
10249	244	141	5. All	37.7
10250	244	192	5. All	37.7
10251	244	168	5. All	37.7
10252	244	176	5. All	37.7
10253	244	152	5. All	37.7
10254	244	353	5. All	36.2
10255	244	354	5. All	36.2
10256	244	170	5. All	36.2
10257	244	92	5. All	36.2
10258	244	187	5. All	36.2
10259	244	179	5. All	36.2
10260	244	190	5. All	34.7
10261	244	174	5. All	31.1
10262	244	185	5. All	31.1
10263	244	157	5. All	31.1
10264	244	175	5. All	26.7
10265	244	162	5. All	24.1
10266	244	181	5. All	24.1
10267	244	188	5. All	21
10268	244	355	5. All	21
10269	244	352	5. All	13.2
10270	245	206	3. Six Months	100
10271	245	161	4. More Than Six Months	100
10272	245	1436	4. More Than Six Months	78.5
10273	245	206	4. More Than Six Months	78.5
10274	245	1436	5. All	100
10275	245	161	5. All	85.2
10276	245	206	5. All	80.4
10277	245	128	5. All	65.6
10278	245	1	5. All	65.6
10279	245	1437	5. All	65.6
10280	245	1438	5. All	65.6
10281	245	140	5. All	65.6
10282	245	969	5. All	65.6
10283	246	1	3. Six Months	100
10284	246	73	4. More Than Six Months	100
10285	246	212	4. More Than Six Months	100
10286	246	1439	4. More Than Six Months	100
10287	246	434	4. More Than Six Months	100
10288	246	31	4. More Than Six Months	100
10289	246	88	4. More Than Six Months	100
10290	246	73	5. All	100
10291	246	212	5. All	100
10292	246	1439	5. All	100
10293	246	434	5. All	100
10294	246	31	5. All	100
10295	246	88	5. All	100
10296	246	1	5. All	100
10297	247	209	4. More Than Six Months	100
10298	247	1268	4. More Than Six Months	100
10299	247	1440	4. More Than Six Months	100
10300	247	1441	4. More Than Six Months	100
10301	247	1440	5. All	100
10302	247	1268	5. All	100
10303	247	1441	5. All	100
10304	247	209	5. All	64.6
10305	248	13	4. More Than Six Months	100
10306	248	1442	4. More Than Six Months	89.6
10307	248	1442	5. All	100
10308	248	13	5. All	75.2
10309	248	1243	5. All	66.8
10310	249	198	4. More Than Six Months	100
10311	249	302	4. More Than Six Months	100
10312	249	35	4. More Than Six Months	89.8
10313	249	198	5. All	100
10314	249	302	5. All	100
10315	249	35	5. All	89.7
10316	250	1443	4. More Than Six Months	100
10317	250	39	4. More Than Six Months	73.8
10318	250	87	4. More Than Six Months	73.8
10319	250	1444	4. More Than Six Months	65
10320	250	1445	4. More Than Six Months	65
10321	250	1446	4. More Than Six Months	65
10322	250	1447	4. More Than Six Months	65
10323	250	1448	4. More Than Six Months	65
10324	250	1449	4. More Than Six Months	65
10325	250	1450	4. More Than Six Months	65
10326	250	1451	4. More Than Six Months	65
10327	250	1452	4. More Than Six Months	65
10328	250	885	4. More Than Six Months	65
10329	250	143	4. More Than Six Months	65
10330	250	161	4. More Than Six Months	65
10331	250	31	4. More Than Six Months	65
10332	250	1444	5. All	100
10333	250	1445	5. All	100
10334	250	1446	5. All	100
10335	250	1451	5. All	100
10336	250	1447	5. All	100
10337	250	1448	5. All	100
10338	250	1449	5. All	100
10339	250	1450	5. All	100
10340	250	1452	5. All	100
10341	250	1443	5. All	100
10342	250	39	5. All	71.1
10343	250	87	5. All	71.1
10344	250	885	5. All	61.3
10345	250	161	5. All	61.3
10346	250	143	5. All	61.3
10347	250	31	5. All	61.3
10348	251	249	2. Three Months	100
10349	251	249	3. Six Months	100
10350	251	905	4. More Than Six Months	100
10351	251	905	5. All	100
10352	251	249	5. All	100
10353	251	462	5. All	84.3
10354	252	330	4. More Than Six Months	100
10355	252	130	4. More Than Six Months	100
10356	252	330	5. All	100
10357	252	130	5. All	90
10358	253	136	4. More Than Six Months	100
10359	253	1453	4. More Than Six Months	100
10360	253	1453	5. All	100
10361	253	136	5. All	68.5
10362	254	4	3. Six Months	100
10363	254	727	4. More Than Six Months	100
10364	254	113	4. More Than Six Months	100
10365	254	475	4. More Than Six Months	100
10366	254	302	4. More Than Six Months	89.2
10367	254	491	4. More Than Six Months	89.2
10368	254	475	5. All	100
10369	254	727	5. All	92.6
10370	254	113	5. All	92.6
10371	254	302	5. All	82.2
10372	254	491	5. All	82.2
10373	254	639	5. All	82.2
10374	254	4	5. All	82.2
10375	255	335	2. Three Months	100
10376	255	8	2. Three Months	100
10377	255	776	2. Three Months	89.5
10378	255	335	3. Six Months	100
10379	255	8	3. Six Months	100
10380	255	462	3. Six Months	82.6
10381	255	776	3. Six Months	82.6
10382	255	166	4. More Than Six Months	100
10383	255	1454	4. More Than Six Months	100
10384	255	130	4. More Than Six Months	91.9
10385	255	776	4. More Than Six Months	91.9
10386	255	145	4. More Than Six Months	91.9
10387	255	168	4. More Than Six Months	91.9
10388	255	144	4. More Than Six Months	80.6
10389	255	335	4. More Than Six Months	80.6
10390	255	117	4. More Than Six Months	80.6
10391	255	462	4. More Than Six Months	80.6
10392	255	199	4. More Than Six Months	80.6
10393	255	313	4. More Than Six Months	80.6
10394	255	335	5. All	100
10395	255	776	5. All	95.2
10396	255	8	5. All	95.2
10397	255	166	5. All	89.3
10398	255	1454	5. All	89.3
10399	255	462	5. All	89.3
10400	255	168	5. All	89.3
10401	255	130	5. All	81.7
10402	255	145	5. All	81.7
10403	255	144	5. All	71.1
10404	255	117	5. All	71.1
10405	255	199	5. All	71.1
10406	255	313	5. All	71.1
10407	255	301	5. All	71.1
10408	256	1455	2. Three Months	100
10409	256	1456	2. Three Months	100
10410	256	1	3. Six Months	100
10411	256	1457	3. Six Months	100
10412	256	65	3. Six Months	100
10413	256	28	3. Six Months	100
10414	256	1455	3. Six Months	100
10415	256	1456	3. Six Months	100
10416	256	1	4. More Than Six Months	100
10417	256	1384	4. More Than Six Months	74.6
10418	256	58	4. More Than Six Months	74.6
10419	256	13	4. More Than Six Months	69.4
10420	256	146	4. More Than Six Months	69.4
10421	256	523	4. More Than Six Months	62.8
10422	256	108	4. More Than Six Months	62.8
10423	256	1196	4. More Than Six Months	62.8
10424	256	1458	4. More Than Six Months	62.8
10425	256	30	4. More Than Six Months	62.8
10426	256	330	4. More Than Six Months	62.8
10427	256	130	4. More Than Six Months	62.8
10428	256	1459	4. More Than Six Months	53.5
10429	256	1460	4. More Than Six Months	53.5
10430	256	31	4. More Than Six Months	53.5
10431	256	303	4. More Than Six Months	53.5
10432	256	1461	4. More Than Six Months	53.5
10433	256	33	4. More Than Six Months	53.5
10434	256	302	4. More Than Six Months	53.5
10435	256	139	4. More Than Six Months	53.5
10436	256	51	4. More Than Six Months	53.5
10437	256	618	4. More Than Six Months	53.5
10438	256	179	4. More Than Six Months	53.5
10439	256	1204	4. More Than Six Months	53.5
10440	256	1462	4. More Than Six Months	53.5
10441	256	421	4. More Than Six Months	53.5
10442	256	136	4. More Than Six Months	53.5
10443	256	1463	4. More Than Six Months	53.5
10444	256	1464	4. More Than Six Months	53.5
10445	256	1465	4. More Than Six Months	53.5
10446	256	326	4. More Than Six Months	53.5
10447	256	672	4. More Than Six Months	53.5
10448	256	27	4. More Than Six Months	53.5
10449	256	43	4. More Than Six Months	53.5
10450	256	742	4. More Than Six Months	53.5
10451	256	142	4. More Than Six Months	53.5
10452	256	1	5. All	100
10453	256	1458	5. All	89.7
10454	256	1196	5. All	89.7
10455	256	1460	5. All	89.7
10456	256	1462	5. All	87.5
10457	256	1464	5. All	87.5
10458	256	1204	5. All	87.5
10459	256	1463	5. All	87.5
10460	256	1384	5. All	75.5
10461	256	13	5. All	71.2
10462	256	58	5. All	71.2
10463	256	30	5. All	65.9
10464	256	146	5. All	65.9
10465	256	108	5. All	59.2
10466	256	28	5. All	59.2
10467	256	65	5. All	59.2
10468	256	1455	5. All	59.2
10469	256	1461	5. All	59.2
10470	256	523	5. All	59.2
10471	256	130	5. All	59.2
10472	256	330	5. All	59.2
10473	256	421	5. All	49.7
10474	256	2	5. All	49.7
10475	256	37	5. All	49.7
10476	256	1457	5. All	49.7
10477	256	68	5. All	49.7
10478	256	457	5. All	49.7
10479	256	1466	5. All	49.7
10480	256	303	5. All	49.7
10481	256	530	5. All	49.7
10482	256	31	5. All	49.7
10483	256	33	5. All	49.7
10484	256	173	5. All	49.7
10485	256	1456	5. All	49.7
10486	256	4	5. All	49.7
10487	256	1467	5. All	49.7
10488	256	139	5. All	49.7
10489	256	1459	5. All	49.7
10490	256	302	5. All	49.7
10491	256	1465	5. All	49.7
10492	256	179	5. All	49.7
10493	256	142	5. All	49.7
10494	256	51	5. All	49.7
10495	256	672	5. All	49.7
10496	256	136	5. All	49.7
10497	256	326	5. All	49.7
10498	256	618	5. All	49.7
10499	256	742	5. All	49.7
10500	256	27	5. All	49.7
10501	256	43	5. All	49.7
10502	256	19	5. All	49.7
10503	257	126	4. More Than Six Months	100
10504	257	1468	4. More Than Six Months	93.2
10505	257	126	5. All	100
10506	257	1468	5. All	93.1
10507	258	200	2. Three Months	100
10508	258	771	2. Three Months	100
10509	258	200	3. Six Months	100
10510	258	771	3. Six Months	93.4
10511	258	58	3. Six Months	84
10512	258	168	4. More Than Six Months	100
10513	258	771	4. More Than Six Months	87.9
10514	258	331	4. More Than Six Months	84.8
10515	258	200	4. More Than Six Months	70.2
10516	258	1469	4. More Than Six Months	53.3
10517	258	168	5. All	100
10518	258	200	5. All	92.7
10519	258	771	5. All	91.5
10520	258	331	5. All	86
10521	258	1469	5. All	52
10522	258	58	5. All	52
10523	259	65	4. More Than Six Months	100
10524	259	65	5. All	100
10525	260	1470	2. Three Months	100
10526	260	35	2. Three Months	100
10527	260	1471	3. Six Months	100
10528	260	135	3. Six Months	100
10529	260	1470	3. Six Months	100
10530	260	35	3. Six Months	100
10531	260	119	4. More Than Six Months	100
10532	260	113	4. More Than Six Months	91.5
10533	260	153	4. More Than Six Months	91.5
10534	260	130	4. More Than Six Months	91.5
10535	260	21	4. More Than Six Months	91.5
10536	260	1472	4. More Than Six Months	91.5
10537	260	28	4. More Than Six Months	91.5
10538	260	390	4. More Than Six Months	79.5
10539	260	301	4. More Than Six Months	79.5
10540	260	1117	4. More Than Six Months	79.5
10541	260	146	4. More Than Six Months	79.5
10542	260	241	4. More Than Six Months	79.5
10543	260	1	4. More Than Six Months	79.5
10544	260	1473	4. More Than Six Months	79.5
10545	260	1474	4. More Than Six Months	79.5
10546	260	65	4. More Than Six Months	79.5
10547	260	13	4. More Than Six Months	79.5
10548	260	1474	5. All	100
10549	260	119	5. All	76.1
10550	260	113	5. All	69.3
10551	260	35	5. All	69.3
10552	260	135	5. All	69.3
10553	260	28	5. All	69.3
10554	260	146	5. All	69.3
10555	260	153	5. All	69.3
10556	260	1470	5. All	69.3
10557	260	1472	5. All	69.3
10558	260	21	5. All	69.3
10559	260	130	5. All	69.3
10560	260	301	5. All	59.7
10561	260	65	5. All	59.7
10562	260	1473	5. All	59.7
10563	260	241	5. All	59.7
10564	260	1117	5. All	59.7
10565	260	1094	5. All	59.7
10566	260	1471	5. All	59.7
10567	260	13	5. All	59.7
10568	260	390	5. All	59.7
10569	260	1	5. All	59.7
10570	261	30	4. More Than Six Months	100
10571	261	134	4. More Than Six Months	92.3
10572	261	31	4. More Than Six Months	81.6
10573	261	326	4. More Than Six Months	81.6
10574	261	1475	4. More Than Six Months	81.6
10575	261	62	4. More Than Six Months	81.6
10576	261	1475	5. All	100
10577	261	30	5. All	79.4
10578	261	134	5. All	72.9
10579	261	13	5. All	63.8
10580	261	31	5. All	63.8
10581	261	62	5. All	63.8
10582	261	326	5. All	63.8
10583	261	38	5. All	63.8
10584	261	37	5. All	63.8
10585	262	1476	4. More Than Six Months	100
10586	262	113	4. More Than Six Months	88
10587	262	389	4. More Than Six Months	78.5
10588	262	1477	4. More Than Six Months	78.5
10589	262	1477	5. All	100
10590	262	1476	5. All	85.3
10591	262	113	5. All	74.6
10592	262	389	5. All	66
10593	263	1478	4. More Than Six Months	100
10594	263	1479	4. More Than Six Months	100
10595	263	1478	5. All	100
10596	263	1479	5. All	100
10597	264	133	2. Three Months	100
10598	264	133	3. Six Months	100
10599	264	113	4. More Than Six Months	100
10600	264	130	4. More Than Six Months	100
10601	264	707	4. More Than Six Months	100
10602	264	130	5. All	100
10603	264	113	5. All	89.4
10604	264	133	5. All	89.4
10605	264	707	5. All	89.4
10606	265	1014	4. More Than Six Months	100
10607	265	117	4. More Than Six Months	83.2
10608	265	1407	4. More Than Six Months	83.2
10609	265	1407	5. All	100
10610	265	1014	5. All	80.7
10611	265	117	5. All	66.2
10612	265	113	5. All	66.2
10613	266	441	4. More Than Six Months	100
10614	266	441	5. All	100
10615	266	30	5. All	89.6
10616	267	3	3. Six Months	100
10617	267	130	4. More Than Six Months	100
10618	267	53	4. More Than Six Months	88
10619	267	94	4. More Than Six Months	88
10620	267	49	4. More Than Six Months	88
10621	267	1017	4. More Than Six Months	88
10622	267	233	4. More Than Six Months	88
10623	267	49	5. All	100
10624	267	130	5. All	100
10625	267	3	5. All	100
10626	267	53	5. All	87.3
10627	267	94	5. All	87.3
10628	267	233	5. All	87.3
10629	267	1017	5. All	87.3
10630	267	1480	5. All	87.3
10631	267	65	5. All	87.3
10632	267	145	5. All	87.3
10633	268	670	4. More Than Six Months	100
10634	268	891	4. More Than Six Months	90.8
10635	268	670	5. All	100
10636	268	891	5. All	98.1
10637	269	402	2. Three Months	100
10638	269	1481	2. Three Months	100
10639	269	240	2. Three Months	100
10640	269	9	2. Three Months	89.2
10641	269	62	2. Three Months	89.2
10642	269	237	2. Three Months	89.2
10643	269	596	3. Six Months	100
10644	269	402	3. Six Months	88.6
10645	269	58	3. Six Months	79.6
10646	269	1481	3. Six Months	73.2
10647	269	173	3. Six Months	73.2
10648	269	30	3. Six Months	73.2
10649	269	9	3. Six Months	73.2
10650	269	240	3. Six Months	73.2
10651	269	302	3. Six Months	64.1
10652	269	335	3. Six Months	64.1
10653	269	276	3. Six Months	64.1
10654	269	62	3. Six Months	64.1
10655	269	237	3. Six Months	64.1
10656	269	58	4. More Than Six Months	100
10657	269	146	4. More Than Six Months	92.2
10658	269	302	4. More Than Six Months	88.1
10659	269	341	4. More Than Six Months	85.8
10660	269	402	4. More Than Six Months	80.2
10661	269	249	4. More Than Six Months	80.2
10662	269	248	4. More Than Six Months	76.7
10663	269	579	4. More Than Six Months	76.7
10664	269	128	4. More Than Six Months	76.7
10665	269	130	4. More Than Six Months	76.7
10666	269	198	4. More Than Six Months	61.3
10667	269	1	4. More Than Six Months	61.3
10668	269	127	4. More Than Six Months	61.3
10669	269	107	4. More Than Six Months	61.3
10670	269	237	4. More Than Six Months	52.3
10671	269	418	4. More Than Six Months	52.3
10672	269	23	4. More Than Six Months	52.3
10673	269	1481	4. More Than Six Months	52.3
10674	269	962	4. More Than Six Months	52.3
10675	269	31	4. More Than Six Months	52.3
10676	269	117	4. More Than Six Months	52.3
10677	269	560	4. More Than Six Months	52.3
10678	269	315	4. More Than Six Months	52.3
10679	269	15	4. More Than Six Months	52.3
10680	269	168	4. More Than Six Months	52.3
10681	269	22	4. More Than Six Months	52.3
10682	269	54	4. More Than Six Months	52.3
10683	269	643	4. More Than Six Months	52.3
10684	269	58	5. All	100
10685	269	402	5. All	89.4
10686	269	302	5. All	87.7
10687	269	146	5. All	87.7
10688	269	596	5. All	85.8
10689	269	341	5. All	81.3
10690	269	248	5. All	75.8
10691	269	249	5. All	75.8
10692	269	130	5. All	72.4
10693	269	128	5. All	72.4
10694	269	579	5. All	72.4
10695	269	1481	5. All	68.4
10696	269	237	5. All	63.5
10697	269	30	5. All	63.5
10698	269	240	5. All	63.5
10699	269	127	5. All	57.2
10700	269	62	5. All	57.2
10701	269	9	5. All	57.2
10702	269	173	5. All	57.2
10703	269	107	5. All	57.2
10704	269	1	5. All	57.2
10705	269	31	5. All	57.2
10706	269	198	5. All	57.2
10707	269	117	5. All	57.2
10708	269	315	5. All	57.2
10709	269	168	5. All	48.3
10710	269	22	5. All	48.3
10711	269	23	5. All	48.3
10712	269	643	5. All	48.3
10713	269	54	5. All	48.3
10714	269	45	5. All	48.3
10715	269	335	5. All	48.3
10716	269	68	5. All	48.3
10717	269	15	5. All	48.3
10718	269	276	5. All	48.3
10719	269	560	5. All	48.3
10720	269	962	5. All	48.3
10721	269	418	5. All	48.3
10722	270	88	2. Three Months	100
10723	270	88	3. Six Months	100
10724	270	58	4. More Than Six Months	100
10725	270	335	4. More Than Six Months	100
10726	270	335	5. All	100
10727	270	58	5. All	100
10728	270	88	5. All	100
10729	271	1482	4. More Than Six Months	100
10730	271	1483	4. More Than Six Months	100
10731	271	1483	5. All	100
10732	271	1482	5. All	100
10733	272	238	2. Three Months	100
10734	272	238	3. Six Months	100
10735	272	416	3. Six Months	76.7
10736	272	416	4. More Than Six Months	100
10737	272	58	4. More Than Six Months	85.3
10738	272	33	4. More Than Six Months	70.6
10739	272	113	4. More Than Six Months	70.6
10740	272	951	4. More Than Six Months	70.6
10741	272	149	4. More Than Six Months	70.6
10742	272	248	4. More Than Six Months	70.6
10743	272	416	5. All	100
10744	272	238	5. All	98
10745	272	58	5. All	78.9
10746	272	33	5. All	64.4
10747	272	113	5. All	64.4
10748	272	951	5. All	64.4
10749	272	149	5. All	64.4
10750	272	248	5. All	64.4
10751	273	158	4. More Than Six Months	100
10752	273	317	4. More Than Six Months	88.9
10753	273	130	4. More Than Six Months	88.9
10754	273	65	4. More Than Six Months	88.9
10755	273	911	4. More Than Six Months	88.9
10756	273	158	5. All	100
10757	273	911	5. All	100
10758	273	130	5. All	88.7
10759	273	317	5. All	88.7
10760	273	65	5. All	88.7
10761	274	65	4. More Than Six Months	100
10762	274	50	4. More Than Six Months	89.3
10763	274	58	4. More Than Six Months	89.3
10764	274	19	4. More Than Six Months	89.3
10765	274	404	4. More Than Six Months	89.3
10766	274	65	5. All	100
10767	274	19	5. All	100
10768	274	58	5. All	88.7
10769	274	50	5. All	88.7
10770	274	404	5. All	88.7
10771	274	13	5. All	88.7
10772	275	222	3. Six Months	100
10773	275	12	4. More Than Six Months	100
10774	275	1331	4. More Than Six Months	100
10775	275	31	4. More Than Six Months	100
10776	275	2	4. More Than Six Months	100
10777	275	303	4. More Than Six Months	100
10778	275	216	4. More Than Six Months	100
10779	275	87	4. More Than Six Months	100
10780	275	30	4. More Than Six Months	89
10781	275	1484	4. More Than Six Months	89
10782	275	12	5. All	100
10783	275	1331	5. All	92.4
10784	275	31	5. All	92.4
10785	275	2	5. All	92.4
10786	275	303	5. All	92.4
10787	275	216	5. All	92.4
10788	275	87	5. All	92.4
10789	275	30	5. All	81.6
10790	275	1484	5. All	81.6
10791	275	222	5. All	81.6
10792	276	106	4. More Than Six Months	100
10793	276	106	5. All	100
10794	277	1031	4. More Than Six Months	100
10795	277	927	4. More Than Six Months	88.7
10796	277	1031	5. All	100
10797	277	130	5. All	88.3
10798	277	927	5. All	88.3
10799	277	47	5. All	88.3
10800	277	18	5. All	88.3
10801	277	38	5. All	88.3
10802	278	318	2. Three Months	100
10803	278	318	3. Six Months	100
10804	278	880	4. More Than Six Months	100
10805	278	314	4. More Than Six Months	100
10806	278	611	4. More Than Six Months	100
10807	278	43	4. More Than Six Months	100
10808	278	22	4. More Than Six Months	100
10809	278	302	4. More Than Six Months	88.4
10810	278	335	4. More Than Six Months	88.4
10811	278	130	4. More Than Six Months	88.4
10812	278	880	5. All	100
10813	278	314	5. All	100
10814	278	43	5. All	100
10815	278	611	5. All	100
10816	278	22	5. All	100
10817	278	318	5. All	100
10818	278	335	5. All	88.1
10819	278	130	5. All	88.1
10820	278	302	5. All	88.1
10821	278	1290	5. All	88.1
10822	279	248	4. More Than Six Months	100
10823	279	168	4. More Than Six Months	100
10824	279	1485	4. More Than Six Months	100
10825	279	248	5. All	100
10826	279	168	5. All	100
10827	279	1485	5. All	100
10828	280	380	2. Three Months	100
10829	280	329	2. Three Months	84.6
10830	280	380	3. Six Months	100
10831	280	329	3. Six Months	85
10832	280	1226	4. More Than Six Months	100
10833	280	401	4. More Than Six Months	100
10834	280	380	4. More Than Six Months	100
10835	280	1486	4. More Than Six Months	100
10836	280	1226	5. All	100
10837	280	380	5. All	95.1
10838	280	401	5. All	73.6
10839	280	329	5. All	73.6
10840	280	354	5. All	64.8
10841	280	452	5. All	64.8
10842	280	905	5. All	64.8
10843	280	1486	5. All	64.8
10844	280	313	5. All	64.8
10845	281	155	2. Three Months	100
10846	281	756	2. Three Months	100
10847	281	348	2. Three Months	88.4
10848	281	440	2. Three Months	88.4
10849	281	113	2. Three Months	88.4
10850	281	138	2. Three Months	88.4
10851	281	65	3. Six Months	100
10852	281	130	3. Six Months	100
10853	281	1487	3. Six Months	100
10854	281	356	3. Six Months	100
10855	281	155	3. Six Months	100
10856	281	756	3. Six Months	100
10857	281	539	3. Six Months	87.2
10858	281	22	3. Six Months	87.2
10859	281	342	3. Six Months	87.2
10860	281	126	3. Six Months	87.2
10861	281	58	3. Six Months	87.2
10862	281	348	3. Six Months	87.2
10863	281	440	3. Six Months	87.2
10864	281	74	3. Six Months	87.2
10865	281	113	3. Six Months	87.2
10866	281	138	3. Six Months	87.2
10867	281	316	4. More Than Six Months	100
10868	281	313	4. More Than Six Months	90.7
10869	281	130	4. More Than Six Months	90.7
10870	281	1488	4. More Than Six Months	90.7
10871	281	13	4. More Than Six Months	90.7
10872	281	135	4. More Than Six Months	90.7
10873	281	1489	4. More Than Six Months	77.6
10874	281	532	4. More Than Six Months	77.6
10875	281	1490	4. More Than Six Months	77.6
10876	281	1491	4. More Than Six Months	77.6
10877	281	1029	4. More Than Six Months	77.6
10878	281	19	4. More Than Six Months	77.6
10879	281	1003	4. More Than Six Months	77.6
10880	281	1492	4. More Than Six Months	77.6
10881	281	969	4. More Than Six Months	77.6
10882	281	128	4. More Than Six Months	77.6
10883	281	814	4. More Than Six Months	77.6
10884	281	28	4. More Than Six Months	77.6
10885	281	58	4. More Than Six Months	77.6
10886	281	335	4. More Than Six Months	77.6
10887	281	275	4. More Than Six Months	77.6
10888	281	1493	4. More Than Six Months	77.6
10889	281	1494	4. More Than Six Months	77.6
10890	281	1495	4. More Than Six Months	77.6
10891	281	35	4. More Than Six Months	77.6
10892	281	1439	4. More Than Six Months	77.6
10893	281	154	4. More Than Six Months	77.6
10894	281	1	4. More Than Six Months	77.6
10895	281	34	4. More Than Six Months	77.6
10896	281	32	4. More Than Six Months	77.6
10897	281	833	4. More Than Six Months	77.6
10898	281	639	4. More Than Six Months	77.6
10899	281	387	4. More Than Six Months	77.6
10900	281	318	4. More Than Six Months	77.6
10901	281	133	4. More Than Six Months	77.6
10902	281	143	4. More Than Six Months	77.6
10903	281	146	4. More Than Six Months	77.6
10904	281	159	4. More Than Six Months	77.6
10905	281	1488	5. All	100
10906	281	1492	5. All	97.5
10907	281	1489	5. All	97.5
10908	281	1490	5. All	97.5
10909	281	1439	5. All	97.5
10910	281	1491	5. All	97.5
10911	281	1493	5. All	97.5
10912	281	1494	5. All	97.5
10913	281	1495	5. All	97.5
10914	281	532	5. All	97.5
10915	281	275	5. All	97.5
10916	281	130	5. All	83.8
10917	281	316	5. All	79
10918	281	756	5. All	73
10919	281	65	5. All	73
10920	281	313	5. All	73
10921	281	135	5. All	73
10922	281	58	5. All	73
10923	281	32	5. All	65.4
10924	281	128	5. All	65.4
10925	281	356	5. All	65.4
10926	281	126	5. All	65.4
10927	281	74	5. All	65.4
10928	281	1487	5. All	65.4
10929	281	22	5. All	65.4
10930	281	13	5. All	65.4
10931	281	155	5. All	65.4
10932	281	539	5. All	65.4
10933	281	146	5. All	65.4
10934	281	138	5. All	65.4
10935	281	302	5. All	54.7
10936	281	117	5. All	54.7
10937	281	1003	5. All	54.7
10938	281	348	5. All	54.7
10939	281	440	5. All	54.7
10940	281	681	5. All	54.7
10941	281	145	5. All	54.7
10942	281	342	5. All	54.7
10943	281	151	5. All	54.7
10944	281	116	5. All	54.7
10945	281	969	5. All	54.7
10946	281	673	5. All	54.7
10947	281	833	5. All	54.7
10948	281	19	5. All	54.7
10949	281	35	5. All	54.7
10950	281	143	5. All	54.7
10951	281	133	5. All	54.7
10952	281	318	5. All	54.7
10953	281	387	5. All	54.7
10954	281	639	5. All	54.7
10955	281	1	5. All	54.7
10956	281	4	5. All	54.7
10957	281	1029	5. All	54.7
10958	281	34	5. All	54.7
10959	281	154	5. All	54.7
10960	281	814	5. All	54.7
10961	281	28	5. All	54.7
10962	281	335	5. All	54.7
10963	281	159	5. All	54.7
10964	281	113	5. All	54.7
10965	282	34	1. Thirty Days	100
10966	282	32	1. Thirty Days	89.6
10967	282	2	2. Three Months	100
10968	282	34	2. Three Months	94.3
10969	282	538	2. Three Months	87
10970	282	65	2. Three Months	76.7
10971	282	119	2. Three Months	76.7
10972	282	32	2. Three Months	76.7
10973	282	348	2. Three Months	76.7
10974	282	538	3. Six Months	100
10975	282	2	3. Six Months	100
10976	282	117	3. Six Months	95.8
10977	282	179	3. Six Months	90.9
10978	282	65	3. Six Months	84.8
10979	282	34	3. Six Months	84.8
10980	282	156	3. Six Months	84.8
10981	282	32	3. Six Months	77
10982	282	1	3. Six Months	77
10983	282	181	3. Six Months	77
10984	282	348	3. Six Months	66
10985	282	1021	3. Six Months	66
10986	282	145	3. Six Months	66
10987	282	35	3. Six Months	66
10988	282	21	3. Six Months	66
10989	282	349	3. Six Months	66
10990	282	119	3. Six Months	66
10991	282	130	3. Six Months	66
10992	282	326	3. Six Months	66
10993	282	22	3. Six Months	66
10994	282	30	3. Six Months	66
10995	282	158	3. Six Months	66
10996	282	31	3. Six Months	66
10997	282	261	3. Six Months	66
10998	282	13	3. Six Months	66
10999	282	1049	3. Six Months	66
11000	282	4	3. Six Months	66
11001	282	107	3. Six Months	66
11002	282	1021	4. More Than Six Months	100
11003	282	130	4. More Than Six Months	88.7
11004	282	763	4. More Than Six Months	83.9
11005	282	65	4. More Than Six Months	82
11006	282	1	4. More Than Six Months	80
11007	282	13	4. More Than Six Months	77.8
11008	282	30	4. More Than Six Months	77.8
11009	282	4	4. More Than Six Months	75.3
11010	282	261	4. More Than Six Months	72.6
11011	282	336	4. More Than Six Months	72.6
11012	282	3	4. More Than Six Months	69.5
11013	282	1202	4. More Than Six Months	69.5
11014	282	34	4. More Than Six Months	69.5
11015	282	31	4. More Than Six Months	65.9
11016	282	6	4. More Than Six Months	65.9
11017	282	901	4. More Than Six Months	65.9
11018	282	54	4. More Than Six Months	65.9
11019	282	1049	4. More Than Six Months	65.9
11020	282	58	4. More Than Six Months	65.9
11021	282	113	4. More Than Six Months	61.7
11022	282	220	4. More Than Six Months	61.7
11023	282	317	4. More Than Six Months	61.7
11024	282	330	4. More Than Six Months	61.7
11025	282	145	4. More Than Six Months	61.7
11026	282	342	4. More Than Six Months	56.6
11027	282	979	4. More Than Six Months	56.6
11028	282	198	4. More Than Six Months	56.6
11029	282	117	4. More Than Six Months	56.6
11030	282	1113	4. More Than Six Months	56.6
11031	282	1496	4. More Than Six Months	56.6
11032	282	491	4. More Than Six Months	56.6
11033	282	2	4. More Than Six Months	56.6
11034	282	68	4. More Than Six Months	56.6
11035	282	583	4. More Than Six Months	56.6
11036	282	10	4. More Than Six Months	56.6
11037	282	155	4. More Than Six Months	56.6
11038	282	180	4. More Than Six Months	56.6
11039	282	81	4. More Than Six Months	56.6
11040	282	108	4. More Than Six Months	56.6
11041	282	411	4. More Than Six Months	49.9
11042	282	665	4. More Than Six Months	49.9
11043	282	208	4. More Than Six Months	49.9
11044	282	414	4. More Than Six Months	49.9
11045	282	235	4. More Than Six Months	49.9
11046	282	972	4. More Than Six Months	49.9
11047	282	598	4. More Than Six Months	49.9
11048	282	1497	4. More Than Six Months	49.9
11049	282	359	4. More Than Six Months	49.9
11050	282	404	4. More Than Six Months	49.9
11051	282	8	4. More Than Six Months	49.9
11052	282	23	4. More Than Six Months	49.9
11053	282	20	4. More Than Six Months	49.9
11054	282	1186	4. More Than Six Months	49.9
11055	282	53	4. More Than Six Months	49.9
11056	282	333	4. More Than Six Months	49.9
11057	282	1429	4. More Than Six Months	49.9
11058	282	43	4. More Than Six Months	49.9
11059	282	1196	4. More Than Six Months	49.9
11060	282	7	4. More Than Six Months	49.9
11061	282	138	4. More Than Six Months	49.9
11062	282	751	4. More Than Six Months	49.9
11063	282	1498	4. More Than Six Months	49.9
11064	282	158	4. More Than Six Months	49.9
11065	282	1281	4. More Than Six Months	49.9
11066	282	1419	4. More Than Six Months	49.9
11067	282	241	4. More Than Six Months	49.9
11068	282	164	4. More Than Six Months	40.7
11069	282	380	4. More Than Six Months	40.7
11070	282	1499	4. More Than Six Months	40.7
11071	282	792	4. More Than Six Months	40.7
11072	282	285	4. More Than Six Months	40.7
11073	282	18	4. More Than Six Months	40.7
11074	282	91	4. More Than Six Months	40.7
11075	282	75	4. More Than Six Months	40.7
11076	282	1500	4. More Than Six Months	40.7
11077	282	132	4. More Than Six Months	40.7
11078	282	1501	4. More Than Six Months	40.7
11079	282	509	4. More Than Six Months	40.7
11080	282	45	4. More Than Six Months	40.7
11081	282	562	4. More Than Six Months	40.7
11082	282	66	4. More Than Six Months	40.7
11083	282	67	4. More Than Six Months	40.7
11084	282	892	4. More Than Six Months	40.7
11085	282	302	4. More Than Six Months	40.7
11086	282	22	4. More Than Six Months	40.7
11087	282	26	4. More Than Six Months	40.7
11088	282	28	4. More Than Six Months	40.7
11089	282	318	4. More Than Six Months	40.7
11090	282	1502	4. More Than Six Months	40.7
11091	282	1503	4. More Than Six Months	40.7
11092	282	431	4. More Than Six Months	40.7
11093	282	303	4. More Than Six Months	40.7
11094	282	144	4. More Than Six Months	40.7
11095	282	254	4. More Than Six Months	40.7
11096	282	306	4. More Than Six Months	40.7
11097	282	1504	4. More Than Six Months	40.7
11098	282	1097	4. More Than Six Months	40.7
11099	282	142	4. More Than Six Months	40.7
11100	282	242	4. More Than Six Months	40.7
11101	282	221	4. More Than Six Months	40.7
11102	282	1021	5. All	100
11103	282	130	5. All	89.6
11104	282	65	5. All	86.8
11105	282	1202	5. All	85.3
11106	282	763	5. All	83.7
11107	282	1	5. All	82
11108	282	13	5. All	80.1
11109	282	30	5. All	80.1
11110	282	34	5. All	78
11111	282	2	5. All	78
11112	282	4	5. All	78
11113	282	380	5. All	75.8
11114	282	117	5. All	75.8
11115	282	261	5. All	75.8
11116	282	1049	5. All	70.6
11117	282	31	5. All	70.6
11118	282	336	5. All	70.6
11119	282	145	5. All	67.4
11120	282	58	5. All	67.4
11121	282	3	5. All	67.4
11122	282	901	5. All	67.4
11123	282	6	5. All	63.8
11124	282	330	5. All	63.8
11125	282	220	5. All	63.8
11126	282	54	5. All	63.8
11127	282	198	5. All	59.6
11128	282	1113	5. All	59.6
11129	282	158	5. All	59.6
11130	282	68	5. All	59.6
11131	282	113	5. All	59.6
11132	282	317	5. All	59.6
11133	282	10	5. All	59.6
11134	282	979	5. All	59.6
11135	282	108	5. All	59.6
11136	282	342	5. All	54.4
11137	282	751	5. All	54.4
11138	282	598	5. All	54.4
11139	282	22	5. All	54.4
11140	282	235	5. All	54.4
11141	282	583	5. All	54.4
11142	282	491	5. All	54.4
11143	282	241	5. All	54.4
11144	282	155	5. All	54.4
11145	282	180	5. All	54.4
11146	282	81	5. All	54.4
11147	282	18	5. All	47.7
11148	282	892	5. All	47.7
11149	282	26	5. All	47.7
11150	282	414	5. All	47.7
11151	282	1504	5. All	47.7
11152	282	1419	5. All	47.7
11153	282	1186	5. All	47.7
11154	282	665	5. All	47.7
11155	282	53	5. All	47.7
11156	282	1429	5. All	47.7
11157	282	7	5. All	47.7
11158	282	333	5. All	47.7
11159	282	509	5. All	47.7
11160	282	23	5. All	47.7
11161	282	20	5. All	47.7
11162	282	315	5. All	47.7
11163	282	972	5. All	47.7
11164	282	688	5. All	47.7
11165	282	208	5. All	47.7
11166	282	411	5. All	47.7
11167	282	1498	5. All	47.7
11168	282	404	5. All	47.7
11169	282	43	5. All	47.7
11170	282	1196	5. All	47.7
11171	282	8	5. All	47.7
11172	282	1281	5. All	47.7
11173	282	1503	5. All	47.7
11174	282	1497	5. All	47.7
11175	282	138	5. All	47.7
11176	282	66	5. All	38.4
11177	282	45	5. All	38.4
11178	282	318	5. All	38.4
11179	282	1501	5. All	38.4
11180	282	431	5. All	38.4
11181	282	306	5. All	38.4
11182	282	302	5. All	38.4
11183	282	1097	5. All	38.4
11184	282	417	5. All	38.4
11185	282	792	5. All	38.4
11186	282	242	5. All	38.4
11187	282	144	5. All	38.4
11188	282	132	5. All	38.4
11189	282	75	5. All	38.4
11190	282	221	5. All	38.4
11191	282	303	5. All	38.4
11192	282	28	5. All	38.4
11193	282	91	5. All	38.4
11194	282	164	5. All	38.4
11195	282	285	5. All	38.4
11196	282	1505	5. All	38.4
11197	282	1502	5. All	38.4
11198	282	1499	5. All	38.4
11199	282	1500	5. All	38.4
11200	282	254	5. All	38.4
11201	282	1506	5. All	38.4
11202	283	21	3. Six Months	100
11203	283	9	4. More Than Six Months	100
11204	283	1331	4. More Than Six Months	100
11205	283	145	4. More Than Six Months	100
11206	283	21	5. All	100
11207	283	9	5. All	88.7
11208	283	145	5. All	88.7
11209	283	1331	5. All	88.7
11210	283	118	5. All	88.7
11211	284	31	4. More Than Six Months	100
11212	284	303	4. More Than Six Months	94.7
11213	284	337	4. More Than Six Months	78.4
11214	284	31	5. All	100
11215	284	303	5. All	94.7
11216	284	337	5. All	78.1
11217	284	421	5. All	78.1
11218	284	1507	5. All	78.1
11219	285	58	4. More Than Six Months	100
11220	285	107	4. More Than Six Months	100
11221	285	198	4. More Than Six Months	100
11222	285	259	4. More Than Six Months	100
11223	285	220	4. More Than Six Months	100
11224	285	198	5. All	100
11225	285	220	5. All	100
11226	285	58	5. All	87.9
11227	285	107	5. All	87.9
11228	285	259	5. All	87.9
11229	285	9	5. All	87.9
11230	285	130	5. All	87.9
11231	286	4	4. More Than Six Months	100
11232	286	415	4. More Than Six Months	100
11233	286	1384	4. More Than Six Months	100
11234	286	4	5. All	100
11235	286	415	5. All	89.1
11236	286	1384	5. All	89.1
11237	287	1	4. More Than Six Months	100
11238	287	126	4. More Than Six Months	100
11239	287	1	5. All	100
11240	287	126	5. All	100
11241	288	1508	2. Three Months	100
11242	288	249	2. Three Months	72
11243	288	1508	3. Six Months	100
11244	288	249	3. Six Months	80
11245	288	248	3. Six Months	66.7
11246	288	629	3. Six Months	66.7
11247	288	119	3. Six Months	59
11248	288	224	4. More Than Six Months	100
11249	288	776	4. More Than Six Months	90.4
11250	288	1508	4. More Than Six Months	90.4
11251	288	249	4. More Than Six Months	90.4
11252	288	183	4. More Than Six Months	73.9
11253	288	248	4. More Than Six Months	73.9
11254	288	289	4. More Than Six Months	73.9
11255	288	1508	5. All	100
11256	288	249	5. All	85.4
11257	288	224	5. All	75.4
11258	288	248	5. All	71.8
11259	288	776	5. All	67.5
11260	288	629	5. All	61.8
11261	288	183	5. All	53.9
11262	288	289	5. All	53.9
11263	288	769	5. All	53.9
11264	288	1509	5. All	53.9
11265	288	119	5. All	53.9
11266	289	224	4. More Than Six Months	100
11267	289	224	5. All	100
11268	290	30	4. More Than Six Months	100
11269	290	1510	4. More Than Six Months	88.8
11270	290	1	4. More Than Six Months	88.8
11271	290	1510	5. All	100
11272	290	30	5. All	74.2
11273	290	1	5. All	65.5
11274	290	31	5. All	65.5
11275	291	93	4. More Than Six Months	100
11276	291	130	4. More Than Six Months	87.4
11277	291	1	4. More Than Six Months	87.4
11278	291	93	5. All	100
11279	291	130	5. All	87.1
11280	291	1	5. All	87.1
11281	292	30	4. More Than Six Months	100
11282	292	1511	4. More Than Six Months	100
11283	292	1512	4. More Than Six Months	100
11284	292	116	4. More Than Six Months	100
11285	292	1511	5. All	100
11286	292	1512	5. All	100
11287	292	116	5. All	73.3
11288	292	30	5. All	64.3
11289	292	142	5. All	64.3
11290	292	2	5. All	64.3
11291	293	186	1. Thirty Days	100
11292	293	30	1. Thirty Days	92.1
11293	293	220	1. Thirty Days	92.1
11294	293	130	1. Thirty Days	80.9
11295	293	4	1. Thirty Days	80.9
11296	293	9	1. Thirty Days	80.9
11297	293	215	1. Thirty Days	80.9
11298	293	183	1. Thirty Days	80.9
11299	293	130	2. Three Months	100
11300	293	30	2. Three Months	86.6
11301	293	65	2. Three Months	82.8
11302	293	128	2. Three Months	78.3
11303	293	145	2. Three Months	78.3
11304	293	305	2. Three Months	78.3
11305	293	35	2. Three Months	72.8
11306	293	13	2. Three Months	72.8
11307	293	4	2. Three Months	72.8
11308	293	220	2. Three Months	72.8
11309	293	231	2. Three Months	72.8
11310	293	186	2. Three Months	72.8
11311	293	126	2. Three Months	72.8
11312	293	9	2. Three Months	65.7
11313	293	1	2. Three Months	65.7
11314	293	183	2. Three Months	65.7
11315	293	410	2. Three Months	65.7
11316	293	248	2. Three Months	55.7
11317	293	381	2. Three Months	55.7
11318	293	215	2. Three Months	55.7
11319	293	142	2. Three Months	55.7
11320	293	180	2. Three Months	55.7
11321	293	20	2. Three Months	55.7
11322	293	332	2. Three Months	55.7
11323	293	540	2. Three Months	55.7
11324	293	7	2. Three Months	55.7
11325	293	58	2. Three Months	55.7
11326	293	715	2. Three Months	55.7
11327	293	678	2. Three Months	55.7
11328	293	53	2. Three Months	55.7
11329	293	998	2. Three Months	55.7
11330	293	159	2. Three Months	55.7
11331	293	135	2. Three Months	55.7
11332	293	625	2. Three Months	55.7
11333	293	161	2. Three Months	55.7
11334	293	346	2. Three Months	55.7
11335	293	1481	2. Three Months	55.7
11336	293	31	2. Three Months	55.7
11337	293	743	2. Three Months	55.7
11338	293	1513	2. Three Months	55.7
11339	293	130	3. Six Months	100
11340	293	30	3. Six Months	93.3
11341	293	4	3. Six Months	91.3
11342	293	1514	3. Six Months	89.2
11343	293	65	3. Six Months	86.8
11344	293	313	3. Six Months	84.2
11345	293	743	3. Six Months	81.2
11346	293	128	3. Six Months	81.2
11347	293	13	3. Six Months	77.9
11348	293	145	3. Six Months	77.9
11349	293	114	3. Six Months	74.1
11350	293	496	3. Six Months	69.5
11351	293	31	3. Six Months	69.5
11352	293	231	3. Six Months	69.5
11353	293	305	3. Six Months	69.5
11354	293	35	3. Six Months	69.5
11355	293	126	3. Six Months	69.5
11356	293	220	3. Six Months	69.5
11357	293	117	3. Six Months	69.5
11358	293	38	3. Six Months	64
11359	293	28	3. Six Months	64
11360	293	183	3. Six Months	64
11361	293	88	3. Six Months	64
11362	293	186	3. Six Months	64
11363	293	346	3. Six Months	64
11364	293	342	3. Six Months	64
11365	293	58	3. Six Months	64
11366	293	715	3. Six Months	56.9
11367	293	410	3. Six Months	56.9
11368	293	184	3. Six Months	56.9
11369	293	381	3. Six Months	56.9
11370	293	540	3. Six Months	56.9
11371	293	1	3. Six Months	56.9
11372	293	202	3. Six Months	56.9
11373	293	139	3. Six Months	56.9
11374	293	59	3. Six Months	56.9
11375	293	589	3. Six Months	56.9
11376	293	135	3. Six Months	56.9
11377	293	17	3. Six Months	56.9
11378	293	53	3. Six Months	56.9
11379	293	159	3. Six Months	56.9
11380	293	241	3. Six Months	56.9
11381	293	9	3. Six Months	56.9
11382	293	142	3. Six Months	47
11383	293	20	3. Six Months	47
11384	293	998	3. Six Months	47
11385	293	198	3. Six Months	47
11386	293	332	3. Six Months	47
11387	293	255	3. Six Months	47
11388	293	678	3. Six Months	47
11389	293	215	3. Six Months	47
11390	293	315	3. Six Months	47
11391	293	7	3. Six Months	47
11392	293	108	3. Six Months	47
11393	293	414	3. Six Months	47
11394	293	248	3. Six Months	47
11395	293	455	3. Six Months	47
11396	293	180	3. Six Months	47
11397	293	258	3. Six Months	47
11398	293	212	3. Six Months	47
11399	293	210	3. Six Months	47
11400	293	221	3. Six Months	47
11401	293	141	3. Six Months	47
11402	293	1515	3. Six Months	47
11403	293	302	3. Six Months	47
11404	293	207	3. Six Months	47
11405	293	146	3. Six Months	47
11406	293	303	3. Six Months	47
11407	293	848	3. Six Months	47
11408	293	384	3. Six Months	47
11409	293	14	3. Six Months	47
11410	293	22	3. Six Months	47
11411	293	18	3. Six Months	47
11412	293	34	3. Six Months	47
11413	293	630	3. Six Months	47
11414	293	307	3. Six Months	47
11415	293	49	3. Six Months	47
11416	293	331	3. Six Months	47
11417	293	219	3. Six Months	47
11418	293	1350	3. Six Months	47
11419	293	1516	3. Six Months	47
11420	293	318	3. Six Months	47
11421	293	607	3. Six Months	47
11422	293	1481	3. Six Months	47
11423	293	40	3. Six Months	47
11424	293	339	3. Six Months	47
11425	293	161	3. Six Months	47
11426	293	625	3. Six Months	47
11427	293	1513	3. Six Months	47
11428	293	130	4. More Than Six Months	100
11429	293	59	4. More Than Six Months	92.4
11430	293	13	4. More Than Six Months	90.2
11431	293	58	4. More Than Six Months	88.7
11432	293	4	4. More Than Six Months	87.8
11433	293	19	4. More Than Six Months	83.1
11434	293	30	4. More Than Six Months	81
11435	293	65	4. More Than Six Months	78.6
11436	293	302	4. More Than Six Months	74.4
11437	293	113	4. More Than Six Months	72.8
11438	293	332	4. More Than Six Months	71.1
11439	293	22	4. More Than Six Months	69.3
11440	293	34	4. More Than Six Months	69.3
11441	293	627	4. More Than Six Months	69.3
11442	293	117	4. More Than Six Months	69.3
11443	293	35	4. More Than Six Months	69.3
11444	293	128	4. More Than Six Months	69.3
11445	293	220	4. More Than Six Months	67.3
11446	293	145	4. More Than Six Months	67.3
11447	293	126	4. More Than Six Months	67.3
11448	293	73	4. More Than Six Months	65.2
11449	293	137	4. More Than Six Months	65.2
11450	293	114	4. More Than Six Months	65.2
11451	293	198	4. More Than Six Months	65.2
11452	293	3	4. More Than Six Months	62.8
11453	293	74	4. More Than Six Months	62.8
11454	293	318	4. More Than Six Months	62.8
11455	293	619	4. More Than Six Months	62.8
11456	293	53	4. More Than Six Months	62.8
11457	293	173	4. More Than Six Months	60.1
11458	293	32	4. More Than Six Months	60.1
11459	293	315	4. More Than Six Months	60.1
11460	293	313	4. More Than Six Months	60.1
11461	293	139	4. More Than Six Months	60.1
11462	293	2	4. More Than Six Months	60.1
11463	293	196	4. More Than Six Months	60.1
11464	293	45	4. More Than Six Months	60.1
11465	293	402	4. More Than Six Months	60.1
11466	293	1	4. More Than Six Months	60.1
11467	293	159	4. More Than Six Months	57.1
11468	293	349	4. More Than Six Months	57.1
11469	293	18	4. More Than Six Months	57.1
11470	293	28	4. More Than Six Months	57.1
11471	293	138	4. More Than Six Months	57.1
11472	293	146	4. More Than Six Months	57.1
11473	293	143	4. More Than Six Months	57.1
11474	293	180	4. More Than Six Months	53.6
11475	293	108	4. More Than Six Months	53.6
11476	293	54	4. More Than Six Months	53.6
11477	293	346	4. More Than Six Months	53.6
11478	293	68	4. More Than Six Months	53.6
11479	293	314	4. More Than Six Months	53.6
11480	293	303	4. More Than Six Months	53.6
11481	293	953	4. More Than Six Months	49.4
11482	293	140	4. More Than Six Months	49.4
11483	293	49	4. More Than Six Months	49.4
11484	293	37	4. More Than Six Months	49.4
11485	293	33	4. More Than Six Months	49.4
11486	293	161	4. More Than Six Months	49.4
11487	293	509	4. More Than Six Months	49.4
11488	293	202	4. More Than Six Months	49.4
11489	293	142	4. More Than Six Months	49.4
11490	293	136	4. More Than Six Months	49.4
11491	293	330	4. More Than Six Months	49.4
11492	293	241	4. More Than Six Months	44.4
11493	293	166	4. More Than Six Months	44.4
11494	293	415	4. More Than Six Months	44.4
11495	293	186	4. More Than Six Months	44.4
11496	293	7	4. More Than Six Months	44.4
11497	293	79	4. More Than Six Months	44.4
11498	293	306	4. More Than Six Months	44.4
11499	293	23	4. More Than Six Months	44.4
11500	293	665	4. More Than Six Months	44.4
11501	293	338	4. More Than Six Months	38
11502	293	331	4. More Than Six Months	38
11503	293	167	4. More Than Six Months	38
11504	293	925	4. More Than Six Months	38
11505	293	317	4. More Than Six Months	38
11506	293	982	4. More Than Six Months	38
11507	293	38	4. More Than Six Months	38
11508	293	83	4. More Than Six Months	38
11509	293	426	4. More Than Six Months	38
11510	293	96	4. More Than Six Months	38
11511	293	270	4. More Than Six Months	38
11512	293	418	4. More Than Six Months	38
11513	293	835	4. More Than Six Months	38
11514	293	308	4. More Than Six Months	38
11515	293	131	4. More Than Six Months	38
11516	293	542	4. More Than Six Months	38
11517	293	39	4. More Than Six Months	29.3
11518	293	10	4. More Than Six Months	29.3
11519	293	67	4. More Than Six Months	29.3
11520	293	40	4. More Than Six Months	29.3
11521	293	189	4. More Than Six Months	29.3
11522	293	612	4. More Than Six Months	29.3
11523	293	81	4. More Than Six Months	29.3
11524	293	1105	4. More Than Six Months	29.3
11525	293	851	4. More Than Six Months	29.3
11526	293	1517	4. More Than Six Months	29.3
11527	293	307	4. More Than Six Months	29.3
11528	293	130	5. All	100
11529	293	4	5. All	89.5
11530	293	13	5. All	88.3
11531	293	30	5. All	85.8
11532	293	58	5. All	85.1
11533	293	65	5. All	82.2
11534	293	19	5. All	77.8
11535	293	145	5. All	72.5
11536	293	313	5. All	71.2
11537	293	35	5. All	71.2
11538	293	117	5. All	71.2
11539	293	114	5. All	69.9
11540	293	332	5. All	68.5
11541	293	113	5. All	66.9
11542	293	34	5. All	66.9
11543	293	22	5. All	66.9
11544	293	53	5. All	63.6
11545	293	137	5. All	61.6
11546	293	139	5. All	61.6
11547	293	1	5. All	61.6
11548	293	73	5. All	61.6
11549	293	28	5. All	61.6
11550	293	318	5. All	61.6
11551	293	17	5. All	61.6
11552	293	159	5. All	59.6
11553	293	342	5. All	59.6
11554	293	619	5. All	59.6
11555	293	315	5. All	59.6
11556	293	346	5. All	59.6
11557	293	18	5. All	57.3
11558	293	2	5. All	57.3
11559	293	173	5. All	57.3
11560	293	146	5. All	57.3
11561	293	108	5. All	54.7
11562	293	138	5. All	54.7
11563	293	301	5. All	54.7
11564	293	303	5. All	54.7
11565	293	180	5. All	54.7
11566	293	349	5. All	54.7
11567	293	186	5. All	54.7
11568	293	32	5. All	54.7
11569	293	196	5. All	54.7
11570	293	38	5. All	51.8
11571	293	142	5. All	51.8
11572	293	77	5. All	51.8
11573	293	161	5. All	51.8
11574	293	1097	5. All	51.8
11575	293	49	5. All	51.8
11576	293	68	5. All	51.8
11577	293	241	5. All	51.8
11578	293	143	5. All	51.8
11579	293	54	5. All	48.4
11580	293	521	5. All	48.4
11581	293	37	5. All	48.4
11582	293	141	5. All	48.4
11583	293	509	5. All	48.4
11584	293	7	5. All	48.4
11585	293	33	5. All	48.4
11586	293	219	5. All	48.4
11587	293	106	5. All	48.4
11588	293	140	5. All	44.5
11589	293	330	5. All	44.5
11590	293	331	5. All	44.5
11591	293	136	5. All	44.5
11592	293	171	5. All	44.5
11593	293	15	5. All	44.5
11594	293	21	5. All	44.5
11595	293	255	5. All	39.7
11596	293	307	5. All	39.7
11597	293	14	5. All	39.7
11598	293	26	5. All	39.7
11599	293	166	5. All	39.7
11600	293	665	5. All	39.7
11601	293	23	5. All	39.7
11602	293	167	5. All	39.7
11603	293	79	5. All	39.7
11604	293	426	5. All	39.7
11605	293	179	5. All	39.7
11606	293	308	5. All	33.6
11607	293	168	5. All	33.6
11608	293	134	5. All	33.6
11609	293	1517	5. All	33.6
11610	293	66	5. All	33.6
11611	293	530	5. All	33.6
11612	293	418	5. All	33.6
11613	293	835	5. All	33.6
11614	293	422	5. All	33.6
11615	293	96	5. All	33.6
11616	293	351	5. All	33.6
11617	293	612	5. All	33.6
11618	293	83	5. All	33.6
11619	293	982	5. All	33.6
11620	293	39	5. All	25.3
11621	293	75	5. All	25.3
11622	293	144	5. All	25.3
11623	293	1105	5. All	25.3
11624	293	189	5. All	25.3
11625	293	851	5. All	25.3
11626	293	81	5. All	25.3
11627	293	10	5. All	25.3
11628	294	628	4. More Than Six Months	100
11629	294	1518	4. More Than Six Months	89.6
11630	294	1332	4. More Than Six Months	89.6
11631	294	335	4. More Than Six Months	89.6
11632	294	628	5. All	100
11633	294	1518	5. All	82.5
11634	294	1332	5. All	82.5
11635	294	335	5. All	82.5
11636	294	1519	5. All	82.5
11637	295	845	2. Three Months	100
11638	295	1520	2. Three Months	100
11639	295	330	3. Six Months	100
11640	295	845	3. Six Months	100
11641	295	1520	3. Six Months	100
11642	295	156	4. More Than Six Months	100
11643	295	35	4. More Than Six Months	87.8
11644	295	225	4. More Than Six Months	87.8
11645	295	153	4. More Than Six Months	87.8
11646	295	313	4. More Than Six Months	87.8
11647	295	9	4. More Than Six Months	87.8
11648	295	156	5. All	100
11649	295	845	5. All	100
11650	295	35	5. All	87.4
11651	295	153	5. All	87.4
11652	295	225	5. All	87.4
11653	295	313	5. All	87.4
11654	295	9	5. All	87.4
11655	295	330	5. All	87.4
11656	295	1520	5. All	87.4
11657	296	1521	3. Six Months	100
11658	296	58	3. Six Months	100
11659	296	31	4. More Than Six Months	100
11660	296	214	4. More Than Six Months	90
11661	296	111	4. More Than Six Months	90
11662	296	58	4. More Than Six Months	82.9
11663	296	13	4. More Than Six Months	82.9
11664	296	3	4. More Than Six Months	72.9
11665	296	53	4. More Than Six Months	72.9
11666	296	307	4. More Than Six Months	72.9
11667	296	338	4. More Than Six Months	72.9
11668	296	1521	4. More Than Six Months	72.9
11669	296	31	5. All	100
11670	296	58	5. All	91.8
11671	296	214	5. All	91.8
11672	296	1521	5. All	86.4
11673	296	111	5. All	86.4
11674	296	13	5. All	79.4
11675	296	3	5. All	69.5
11676	296	53	5. All	69.5
11677	296	338	5. All	69.5
11678	296	307	5. All	69.5
11679	296	1	5. All	69.5
11680	296	126	5. All	69.5
11681	296	1522	5. All	69.5
11682	296	30	5. All	69.5
11683	297	1523	2. Three Months	100
11684	297	58	2. Three Months	89.1
11685	297	1523	3. Six Months	100
11686	297	58	3. Six Months	81.5
11687	297	1506	3. Six Months	72.6
11688	297	1348	3. Six Months	72.6
11689	297	1523	4. More Than Six Months	100
11690	297	314	4. More Than Six Months	98.2
11691	297	1524	4. More Than Six Months	96.2
11692	297	145	4. More Than Six Months	82.4
11693	297	1525	4. More Than Six Months	73.1
11694	297	310	4. More Than Six Months	66.6
11695	297	1348	4. More Than Six Months	66.6
11696	297	130	4. More Than Six Months	66.6
11697	297	1220	4. More Than Six Months	66.6
11698	297	655	4. More Than Six Months	66.6
11699	297	1426	4. More Than Six Months	66.6
11700	297	1341	4. More Than Six Months	57.4
11701	297	124	4. More Than Six Months	57.4
11702	297	240	4. More Than Six Months	57.4
11703	297	62	4. More Than Six Months	57.4
11704	297	237	4. More Than Six Months	57.4
11705	297	789	4. More Than Six Months	57.4
11706	297	254	4. More Than Six Months	57.4
11707	297	58	4. More Than Six Months	57.4
11708	297	1526	4. More Than Six Months	57.4
11709	297	1527	4. More Than Six Months	57.4
11710	297	628	4. More Than Six Months	57.4
11711	297	1528	4. More Than Six Months	57.4
11712	297	289	4. More Than Six Months	57.4
11713	297	4	4. More Than Six Months	57.4
11714	297	1	4. More Than Six Months	57.4
11715	297	1523	5. All	100
11716	297	1524	5. All	92
11717	297	655	5. All	82.4
11718	297	314	5. All	82.4
11719	297	130	5. All	80.6
11720	297	1426	5. All	80.6
11721	297	237	5. All	80.6
11722	297	1527	5. All	78.7
11723	297	1526	5. All	78.7
11724	297	254	5. All	78.7
11725	297	789	5. All	78.7
11726	297	62	5. All	78.7
11727	297	240	5. All	78.7
11728	297	145	5. All	68.1
11729	297	1348	5. All	64.3
11730	297	58	5. All	64.3
11731	297	1525	5. All	59.7
11732	297	310	5. All	53.7
11733	297	1220	5. All	53.7
11734	297	1506	5. All	53.7
11735	297	289	5. All	45.4
11736	297	1341	5. All	45.4
11737	297	4	5. All	45.4
11738	297	1528	5. All	45.4
11739	297	124	5. All	45.4
11740	297	628	5. All	45.4
11741	297	612	5. All	45.4
11742	297	107	5. All	45.4
11743	297	1	5. All	45.4
11744	298	186	1. Thirty Days	100
11745	298	117	1. Thirty Days	100
11746	298	130	2. Three Months	100
11747	298	313	2. Three Months	71.6
11748	298	186	2. Three Months	71.6
11749	298	117	2. Three Months	71.6
11750	298	308	2. Three Months	71.6
11751	298	30	2. Three Months	71.6
11752	298	130	3. Six Months	100
11753	298	30	3. Six Months	72
11754	298	77	3. Six Months	63.3
11755	298	313	3. Six Months	63.3
11756	298	186	3. Six Months	63.3
11757	298	117	3. Six Months	63.3
11758	298	308	3. Six Months	63.3
11759	298	202	4. More Than Six Months	100
11760	298	30	4. More Than Six Months	93.9
11761	298	1529	4. More Than Six Months	85.9
11762	298	953	4. More Than Six Months	85.9
11763	298	130	4. More Than Six Months	85.9
11764	298	65	4. More Than Six Months	85.9
11765	298	303	4. More Than Six Months	85.9
11766	298	77	4. More Than Six Months	85.9
11767	298	13	4. More Than Six Months	85.9
11768	298	127	4. More Than Six Months	74.8
11769	298	198	4. More Than Six Months	74.8
11770	298	31	4. More Than Six Months	74.8
11771	298	411	4. More Than Six Months	74.8
11772	298	197	4. More Than Six Months	74.8
11773	298	335	4. More Than Six Months	74.8
11774	298	1411	4. More Than Six Months	74.8
11775	298	345	4. More Than Six Months	74.8
11776	298	23	4. More Than Six Months	74.8
11777	298	130	5. All	100
11778	298	1411	5. All	94.5
11779	298	30	5. All	84.2
11780	298	77	5. All	76.5
11781	298	202	5. All	76.5
11782	298	953	5. All	64.9
11783	298	198	5. All	64.9
11784	298	313	5. All	64.9
11785	298	345	5. All	64.9
11786	298	13	5. All	64.9
11787	298	303	5. All	64.9
11788	298	197	5. All	64.9
11789	298	1529	5. All	64.9
11790	298	65	5. All	64.9
11791	298	335	5. All	55.7
11792	298	411	5. All	55.7
11793	298	23	5. All	55.7
11794	298	137	5. All	55.7
11795	298	106	5. All	55.7
11796	298	250	5. All	55.7
11797	298	127	5. All	55.7
11798	298	19	5. All	55.7
11799	298	31	5. All	55.7
11800	298	186	5. All	55.7
11801	298	117	5. All	55.7
11802	298	308	5. All	55.7
11803	299	183	3. Six Months	100
11804	299	183	4. More Than Six Months	100
11805	299	342	4. More Than Six Months	74
11806	299	402	4. More Than Six Months	74
11807	299	183	5. All	100
11808	299	402	5. All	76.2
11809	299	342	5. All	68.2
11810	300	65	4. More Than Six Months	100
11811	300	625	4. More Than Six Months	100
11812	300	62	4. More Than Six Months	89.8
11813	300	65	5. All	100
11814	300	625	5. All	100
11815	300	62	5. All	89.7
11816	300	207	5. All	89.7
11817	301	135	1. Thirty Days	100
11818	301	495	2. Three Months	100
11819	301	173	2. Three Months	86.6
11820	301	59	2. Three Months	71.3
11821	301	241	2. Three Months	62.3
11822	301	1118	2. Three Months	62.3
11823	301	119	2. Three Months	62.3
11824	301	135	2. Three Months	62.3
11825	301	161	2. Three Months	62.3
11826	301	1530	2. Three Months	62.3
11827	301	1261	2. Three Months	62.3
11828	301	495	3. Six Months	100
11829	301	173	3. Six Months	89
11830	301	241	3. Six Months	89
11831	301	45	3. Six Months	80.8
11832	301	4	3. Six Months	75.4
11833	301	130	3. Six Months	75.4
11834	301	59	3. Six Months	75.4
11835	301	161	3. Six Months	75.4
11836	301	119	3. Six Months	68.4
11837	301	1531	3. Six Months	68.4
11838	301	65	3. Six Months	68.4
11839	301	1261	3. Six Months	68.4
11840	301	1021	3. Six Months	68.4
11841	301	32	3. Six Months	68.4
11842	301	726	3. Six Months	58.6
11843	301	30	3. Six Months	58.6
11844	301	151	3. Six Months	58.6
11845	301	150	3. Six Months	58.6
11846	301	139	3. Six Months	58.6
11847	301	135	3. Six Months	58.6
11848	301	305	3. Six Months	58.6
11849	301	1118	3. Six Months	58.6
11850	301	332	3. Six Months	58.6
11851	301	38	3. Six Months	58.6
11852	301	88	3. Six Months	58.6
11853	301	342	3. Six Months	58.6
11854	301	619	3. Six Months	58.6
11855	301	318	3. Six Months	58.6
11856	301	144	3. Six Months	58.6
11857	301	1530	3. Six Months	58.6
11858	301	161	4. More Than Six Months	100
11859	301	971	4. More Than Six Months	78.9
11860	301	13	4. More Than Six Months	74.6
11861	301	130	4. More Than Six Months	74.6
11862	301	1	4. More Than Six Months	74.6
11863	301	65	4. More Than Six Months	69.1
11864	301	4	4. More Than Six Months	69.1
11865	301	271	4. More Than Six Months	65.8
11866	301	23	4. More Than Six Months	65.8
11867	301	299	4. More Than Six Months	61.8
11868	301	207	4. More Than Six Months	61.8
11869	301	32	4. More Than Six Months	61.8
11870	301	58	4. More Than Six Months	61.8
11871	301	326	4. More Than Six Months	61.8
11872	301	59	4. More Than Six Months	61.8
11873	301	473	4. More Than Six Months	57
11874	301	30	4. More Than Six Months	57
11875	301	173	4. More Than Six Months	57
11876	301	1087	4. More Than Six Months	57
11877	301	128	4. More Than Six Months	57
11878	301	212	4. More Than Six Months	57
11879	301	1532	4. More Than Six Months	57
11880	301	142	4. More Than Six Months	57
11881	301	113	4. More Than Six Months	57
11882	301	589	4. More Than Six Months	57
11883	301	1533	4. More Than Six Months	50.8
11884	301	1534	4. More Than Six Months	50.8
11885	301	1535	4. More Than Six Months	50.8
11886	301	43	4. More Than Six Months	50.8
11887	301	54	4. More Than Six Months	50.8
11888	301	45	4. More Than Six Months	50.8
11889	301	341	4. More Than Six Months	50.8
11890	301	12	4. More Than Six Months	50.8
11891	301	1519	4. More Than Six Months	50.8
11892	301	1536	4. More Than Six Months	50.8
11893	301	49	4. More Than Six Months	50.8
11894	301	221	4. More Than Six Months	50.8
11895	301	117	4. More Than Six Months	50.8
11896	301	31	4. More Than Six Months	50.8
11897	301	53	4. More Than Six Months	50.8
11898	301	1531	4. More Than Six Months	42.1
11899	301	22	4. More Than Six Months	42.1
11900	301	969	4. More Than Six Months	42.1
11901	301	2	4. More Than Six Months	42.1
11902	301	762	4. More Than Six Months	42.1
11903	301	976	4. More Than Six Months	42.1
11904	301	143	4. More Than Six Months	42.1
11905	301	837	4. More Than Six Months	42.1
11906	301	1003	4. More Than Six Months	42.1
11907	301	77	4. More Than Six Months	42.1
11908	301	1537	4. More Than Six Months	42.1
11909	301	455	4. More Than Six Months	42.1
11910	301	625	4. More Than Six Months	42.1
11911	301	26	4. More Than Six Months	42.1
11912	301	1538	4. More Than Six Months	42.1
11913	301	35	4. More Than Six Months	42.1
11914	301	139	4. More Than Six Months	42.1
11915	301	220	4. More Than Six Months	42.1
11916	301	390	4. More Than Six Months	42.1
11917	301	241	4. More Than Six Months	42.1
11918	301	185	4. More Than Six Months	42.1
11919	301	134	4. More Than Six Months	42.1
11920	301	108	4. More Than Six Months	42.1
11921	301	75	4. More Than Six Months	42.1
11922	301	1337	4. More Than Six Months	42.1
11923	301	239	4. More Than Six Months	42.1
11924	301	556	4. More Than Six Months	42.1
11925	301	28	4. More Than Six Months	42.1
11926	301	1539	4. More Than Six Months	42.1
11927	301	9	4. More Than Six Months	42.1
11928	301	1487	4. More Than Six Months	42.1
11929	301	338	4. More Than Six Months	42.1
11930	301	38	4. More Than Six Months	42.1
11931	301	686	4. More Than Six Months	42.1
11932	301	1540	4. More Than Six Months	42.1
11933	301	1541	4. More Than Six Months	42.1
11934	301	1542	4. More Than Six Months	42.1
11935	301	1543	4. More Than Six Months	42.1
11936	301	303	4. More Than Six Months	42.1
11937	301	1544	4. More Than Six Months	42.1
11938	301	1545	4. More Than Six Months	42.1
11939	301	673	4. More Than Six Months	42.1
11940	301	8	4. More Than Six Months	42.1
11941	301	214	4. More Than Six Months	42.1
11942	301	168	4. More Than Six Months	42.1
11943	301	1261	4. More Than Six Months	42.1
11944	301	161	5. All	100
11945	301	130	5. All	79.2
11946	301	971	5. All	77.5
11947	301	473	5. All	77.5
11948	301	1532	5. All	77.5
11949	301	686	5. All	75.5
11950	301	1533	5. All	75.5
11951	301	1535	5. All	75.5
11952	301	173	5. All	75.5
11953	301	1536	5. All	75.5
11954	301	4	5. All	75.5
11955	301	1534	5. All	75.5
11956	301	1542	5. All	73.4
11957	301	1540	5. All	73.4
11958	301	1541	5. All	73.4
11959	301	1545	5. All	73.4
11960	301	1544	5. All	73.4
11961	301	1543	5. All	73.4
11962	301	1	5. All	73.4
11963	301	65	5. All	73.4
11964	301	59	5. All	71
11965	301	241	5. All	71
11966	301	13	5. All	71
11967	301	32	5. All	68.4
11968	301	45	5. All	68.4
11969	301	271	5. All	65.5
11970	301	30	5. All	62
11971	301	207	5. All	62
11972	301	58	5. All	62
11973	301	23	5. All	62
11974	301	326	5. All	62
11975	301	212	5. All	58
11976	301	1261	5. All	58
11977	301	1531	5. All	58
11978	301	299	5. All	58
11979	301	38	5. All	53
11980	301	589	5. All	53
11981	301	31	5. All	53
11982	301	113	5. All	53
11983	301	43	5. All	53
11984	301	1087	5. All	53
11985	301	341	5. All	53
11986	301	142	5. All	53
11987	301	1021	5. All	53
11988	301	128	5. All	53
11989	301	762	5. All	46.7
11990	301	2	5. All	46.7
11991	301	77	5. All	46.7
11992	301	108	5. All	46.7
11993	301	54	5. All	46.7
11994	301	9	5. All	46.7
11995	301	88	5. All	46.7
11996	301	139	5. All	46.7
11997	301	168	5. All	46.7
11998	301	969	5. All	46.7
11999	301	1118	5. All	46.7
12000	301	185	5. All	46.7
12001	301	221	5. All	46.7
12002	301	53	5. All	46.7
12003	301	12	5. All	46.7
12004	301	49	5. All	46.7
12005	301	117	5. All	46.7
12006	301	625	5. All	46.7
12007	301	144	5. All	46.7
12008	301	1519	5. All	46.7
12009	301	305	5. All	46.7
12010	301	28	5. All	46.7
12011	301	332	5. All	46.7
12012	301	302	5. All	37.9
12013	301	214	5. All	37.9
12014	301	318	5. All	37.9
12015	301	619	5. All	37.9
12016	301	225	5. All	37.9
12017	301	22	5. All	37.9
12018	301	390	5. All	37.9
12019	301	220	5. All	37.9
12020	301	208	5. All	37.9
12021	301	182	5. All	37.9
12022	301	75	5. All	37.9
12023	301	1538	5. All	37.9
12024	301	1539	5. All	37.9
12025	301	303	5. All	37.9
12026	301	239	5. All	37.9
12027	301	1097	5. All	37.9
12028	301	134	5. All	37.9
12029	301	338	5. All	37.9
12030	301	1487	5. All	37.9
12031	301	556	5. All	37.9
12032	301	35	5. All	37.9
12033	301	1337	5. All	37.9
12034	301	26	5. All	37.9
12035	301	8	5. All	37.9
12036	301	673	5. All	37.9
12037	301	1537	5. All	37.9
12038	301	976	5. All	37.9
12039	301	143	5. All	37.9
12040	301	837	5. All	37.9
12041	301	146	5. All	37.9
12042	301	455	5. All	37.9
12043	301	754	5. All	37.9
12044	302	508	2. Three Months	100
12045	302	508	3. Six Months	100
12046	302	161	3. Six Months	89.7
12047	302	1510	4. More Than Six Months	100
12048	302	1510	5. All	100
12049	302	508	5. All	73.7
12050	302	161	5. All	64.9
12051	303	30	3. Six Months	100
12052	303	303	4. More Than Six Months	100
12053	303	362	4. More Than Six Months	87.8
12054	303	350	4. More Than Six Months	82
12055	303	31	4. More Than Six Months	82
12056	303	35	4. More Than Six Months	74.6
12057	303	1044	4. More Than Six Months	74.6
12058	303	87	4. More Than Six Months	74.6
12059	303	27	4. More Than Six Months	74.6
12060	303	28	4. More Than Six Months	74.6
12061	303	222	4. More Than Six Months	64.1
12062	303	109	4. More Than Six Months	64.1
12063	303	1546	4. More Than Six Months	64.1
12064	303	19	4. More Than Six Months	64.1
12065	303	13	4. More Than Six Months	64.1
12066	303	1547	4. More Than Six Months	64.1
12067	303	1548	4. More Than Six Months	64.1
12068	303	1549	4. More Than Six Months	64.1
12069	303	1550	4. More Than Six Months	64.1
12070	303	1551	4. More Than Six Months	64.1
12071	303	53	4. More Than Six Months	64.1
12072	303	21	4. More Than Six Months	64.1
12073	303	32	4. More Than Six Months	64.1
12074	303	673	4. More Than Six Months	64.1
12075	303	332	4. More Than Six Months	64.1
12076	303	173	4. More Than Six Months	64.1
12077	303	113	4. More Than Six Months	64.1
12078	303	117	4. More Than Six Months	64.1
12079	303	1044	5. All	100
12080	303	1549	5. All	97.6
12081	303	1550	5. All	97.6
12082	303	1547	5. All	97.6
12083	303	1551	5. All	97.6
12084	303	1548	5. All	97.6
12085	303	303	5. All	94.9
12086	303	362	5. All	80.2
12087	303	350	5. All	80.2
12088	303	31	5. All	74.6
12089	303	35	5. All	74.6
12090	303	13	5. All	67.3
12091	303	27	5. All	67.3
12092	303	19	5. All	67.3
12093	303	87	5. All	67.3
12094	303	30	5. All	67.3
12095	303	28	5. All	67.3
12096	303	173	5. All	57.2
12097	303	21	5. All	57.2
12098	303	53	5. All	57.2
12099	303	113	5. All	57.2
12100	303	1546	5. All	57.2
12101	303	332	5. All	57.2
12102	303	109	5. All	57.2
12103	303	32	5. All	57.2
12104	303	222	5. All	57.2
12105	303	202	5. All	57.2
12106	303	511	5. All	57.2
12107	303	117	5. All	57.2
12108	303	673	5. All	57.2
12109	304	86	4. More Than Six Months	100
12110	304	131	4. More Than Six Months	100
12111	304	86	5. All	100
12112	304	131	5. All	66.6
12113	305	1552	5. All	100
12114	305	1377	5. All	100
12115	306	201	4. More Than Six Months	100
12116	306	198	4. More Than Six Months	93.4
12117	306	1324	4. More Than Six Months	84.1
12118	306	201	5. All	100
12119	306	198	5. All	95
12120	306	1324	5. All	79.6
12121	307	13	3. Six Months	100
12122	307	30	3. Six Months	100
12123	307	19	3. Six Months	100
12124	307	65	4. More Than Six Months	100
12125	307	14	4. More Than Six Months	87.3
12126	307	31	4. More Than Six Months	77.2
12127	307	38	4. More Than Six Months	77.2
12128	307	1553	4. More Than Six Months	77.2
12129	307	1553	5. All	100
12130	307	65	5. All	84.6
12131	307	14	5. All	73.2
12132	307	31	5. All	73.2
12133	307	38	5. All	64.2
12134	307	2	5. All	64.2
12135	307	13	5. All	64.2
12136	307	30	5. All	64.2
12137	307	19	5. All	64.2
12138	307	23	5. All	64.2
12139	308	1554	3. Six Months	100
12140	308	1555	3. Six Months	100
12141	308	1556	3. Six Months	100
12142	308	1557	3. Six Months	71.7
12143	308	415	3. Six Months	71.7
12144	308	943	3. Six Months	71.7
12145	308	486	3. Six Months	62.2
12146	308	313	3. Six Months	62.2
12147	308	1558	3. Six Months	62.2
12148	308	680	3. Six Months	62.2
12149	308	718	3. Six Months	62.2
12150	308	892	3. Six Months	62.2
12151	308	329	3. Six Months	62.2
12152	308	1332	4. More Than Six Months	100
12153	308	1006	4. More Than Six Months	92.8
12154	308	1477	4. More Than Six Months	91
12155	308	1524	4. More Than Six Months	84.8
12156	308	1559	4. More Than Six Months	84.8
12157	308	775	4. More Than Six Months	84.8
12158	308	1560	4. More Than Six Months	76.4
12159	308	533	4. More Than Six Months	72.7
12160	308	680	4. More Than Six Months	72.7
12161	308	766	4. More Than Six Months	68.4
12162	308	611	4. More Than Six Months	68.4
12163	308	519	4. More Than Six Months	68.4
12164	308	61	4. More Than Six Months	68.4
12165	308	19	4. More Than Six Months	68.4
12166	308	43	4. More Than Six Months	68.4
12167	308	113	4. More Than Six Months	68.4
12168	308	881	4. More Than Six Months	63.2
12169	308	9	4. More Than Six Months	63.2
12170	308	1003	4. More Than Six Months	63.2
12171	308	1561	4. More Than Six Months	63.2
12172	308	1562	4. More Than Six Months	63.2
12173	308	225	4. More Than Six Months	63.2
12174	308	1	4. More Than Six Months	63.2
12175	308	143	4. More Than Six Months	56.4
12176	308	620	4. More Than Six Months	56.4
12177	308	135	4. More Than Six Months	56.4
12178	308	226	4. More Than Six Months	56.4
12179	308	954	4. More Than Six Months	56.4
12180	308	133	4. More Than Six Months	56.4
12181	308	1333	4. More Than Six Months	56.4
12182	308	639	4. More Than Six Months	56.4
12183	308	403	4. More Than Six Months	56.4
12184	308	1520	4. More Than Six Months	56.4
12185	308	142	4. More Than Six Months	56.4
12186	308	1563	4. More Than Six Months	56.4
12187	308	241	4. More Than Six Months	56.4
12188	308	843	4. More Than Six Months	56.4
12189	308	130	4. More Than Six Months	46.9
12190	308	309	4. More Than Six Months	46.9
12191	308	419	4. More Than Six Months	46.9
12192	308	1392	4. More Than Six Months	46.9
12193	308	695	4. More Than Six Months	46.9
12194	308	1564	4. More Than Six Months	46.9
12195	308	862	4. More Than Six Months	46.9
12196	308	415	4. More Than Six Months	46.9
12197	308	18	4. More Than Six Months	46.9
12198	308	222	4. More Than Six Months	46.9
12199	308	153	4. More Than Six Months	46.9
12200	308	434	4. More Than Six Months	46.9
12201	308	1565	4. More Than Six Months	46.9
12202	308	1376	4. More Than Six Months	46.9
12203	308	1566	4. More Than Six Months	46.9
12204	308	1567	4. More Than Six Months	46.9
12205	308	928	4. More Than Six Months	46.9
12206	308	233	4. More Than Six Months	46.9
12207	308	107	4. More Than Six Months	46.9
12208	308	131	4. More Than Six Months	46.9
12209	308	315	4. More Than Six Months	46.9
12210	308	202	4. More Than Six Months	46.9
12211	308	1341	4. More Than Six Months	46.9
12212	308	4	4. More Than Six Months	46.9
12213	308	58	4. More Than Six Months	46.9
12214	308	330	4. More Than Six Months	46.9
12215	308	346	4. More Than Six Months	46.9
12216	308	898	4. More Than Six Months	46.9
12217	308	320	4. More Than Six Months	46.9
12218	308	699	4. More Than Six Months	46.9
12219	308	1530	4. More Than Six Months	46.9
12220	308	486	4. More Than Six Months	46.9
12221	308	643	4. More Than Six Months	46.9
12222	308	1332	5. All	100
12223	308	1006	5. All	94.2
12224	308	1477	5. All	90.7
12225	308	954	5. All	86.6
12226	308	226	5. All	86.6
12227	308	775	5. All	86.6
12228	308	1559	5. All	84.3
12229	308	1556	5. All	84.3
12230	308	1530	5. All	84.3
12231	308	1555	5. All	84.3
12232	308	1566	5. All	84.3
12233	308	1554	5. All	84.3
12234	308	1524	5. All	84.3
12235	308	680	5. All	78.8
12236	308	1560	5. All	75.5
12237	308	533	5. All	75.5
12238	308	113	5. All	71.8
12239	308	19	5. All	71.8
12240	308	611	5. All	67.3
12241	308	1562	5. All	67.3
12242	308	519	5. All	67.3
12243	308	61	5. All	67.3
12244	308	766	5. All	67.3
12245	308	43	5. All	67.3
12246	308	1	5. All	67.3
12247	308	415	5. All	67.3
12248	308	225	5. All	67.3
12249	308	1003	5. All	61.9
12250	308	639	5. All	61.9
12251	308	1561	5. All	61.9
12252	308	9	5. All	61.9
12253	308	620	5. All	61.9
12254	308	486	5. All	61.9
12255	308	881	5. All	61.9
12256	308	143	5. All	61.9
12257	308	1520	5. All	54.9
12258	308	1563	5. All	54.9
12259	308	142	5. All	54.9
12260	308	58	5. All	54.9
12261	308	241	5. All	54.9
12262	308	1557	5. All	54.9
12263	308	403	5. All	54.9
12264	308	133	5. All	54.9
12265	308	1333	5. All	54.9
12266	308	135	5. All	54.9
12267	308	943	5. All	54.9
12268	308	313	5. All	54.9
12269	308	1341	5. All	54.9
12270	308	843	5. All	54.9
12271	308	404	5. All	45.1
12272	308	329	5. All	45.1
12273	308	197	5. All	45.1
12274	308	65	5. All	45.1
12275	308	332	5. All	45.1
12276	308	130	5. All	45.1
12277	308	1558	5. All	45.1
12278	308	892	5. All	45.1
12279	308	146	5. All	45.1
12280	308	387	5. All	45.1
12281	308	389	5. All	45.1
12282	308	511	5. All	45.1
12283	308	119	5. All	45.1
12284	308	68	5. All	45.1
12285	308	166	5. All	45.1
12286	308	795	5. All	45.1
12287	308	718	5. All	45.1
12288	308	139	5. All	45.1
12289	308	434	5. All	45.1
12290	308	153	5. All	45.1
12291	308	1567	5. All	45.1
12292	308	1376	5. All	45.1
12293	308	233	5. All	45.1
12294	308	107	5. All	45.1
12295	308	315	5. All	45.1
12296	308	131	5. All	45.1
12297	308	1564	5. All	45.1
12298	308	202	5. All	45.1
12299	308	4	5. All	45.1
12300	308	320	5. All	45.1
12301	308	928	5. All	45.1
12302	308	330	5. All	45.1
12303	308	695	5. All	45.1
12304	308	309	5. All	45.1
12305	308	346	5. All	45.1
12306	308	419	5. All	45.1
12307	308	1392	5. All	45.1
12308	308	222	5. All	45.1
12309	308	862	5. All	45.1
12310	308	1565	5. All	45.1
12311	308	699	5. All	45.1
12312	308	898	5. All	45.1
12313	308	18	5. All	45.1
12314	308	643	5. All	45.1
12315	309	533	1. Thirty Days	100
12316	309	1104	1. Thirty Days	84.5
12317	309	596	1. Thirty Days	75.5
12318	309	1376	1. Thirty Days	75.5
12319	309	1568	1. Thirty Days	75.5
12320	309	533	2. Three Months	100
12321	309	596	2. Three Months	99.2
12322	309	1060	2. Three Months	89.4
12323	309	1104	2. Three Months	89.4
12324	309	1568	2. Three Months	69
12325	309	1094	2. Three Months	64.6
12326	309	45	2. Three Months	59
12327	309	401	2. Three Months	59
12328	309	519	2. Three Months	59
12329	309	694	2. Three Months	51
12330	309	1341	2. Three Months	51
12331	309	196	2. Three Months	51
12332	309	1376	2. Three Months	51
12333	309	596	3. Six Months	100
12334	309	533	3. Six Months	97
12335	309	1060	3. Six Months	92.4
12336	309	1104	3. Six Months	86.4
12337	309	1568	3. Six Months	75.5
12338	309	1094	3. Six Months	69.8
12339	309	1087	3. Six Months	61.9
12340	309	45	3. Six Months	61.9
12341	309	694	3. Six Months	56.3
12342	309	401	3. Six Months	56.3
12343	309	519	3. Six Months	56.3
12344	309	1341	3. Six Months	48.3
12345	309	196	3. Six Months	48.3
12346	309	1376	3. Six Months	48.3
12347	309	185	4. More Than Six Months	100
12348	309	401	4. More Than Six Months	92.5
12349	309	225	4. More Than Six Months	90.3
12350	309	1568	4. More Than Six Months	86.5
12351	309	1060	4. More Than Six Months	79.8
12352	309	220	4. More Than Six Months	78.7
12353	309	1569	4. More Than Six Months	77.6
12354	309	596	4. More Than Six Months	75.3
12355	309	299	4. More Than Six Months	74
12356	309	1104	4. More Than Six Months	71
12357	309	694	4. More Than Six Months	65.5
12358	309	1070	4. More Than Six Months	65.5
12359	309	1000	4. More Than Six Months	60.8
12360	309	181	4. More Than Six Months	57.8
12361	309	91	4. More Than Six Months	57.8
12362	309	202	4. More Than Six Months	57.8
12363	309	1357	4. More Than Six Months	57.8
12364	309	236	4. More Than Six Months	50.1
12365	309	1570	4. More Than Six Months	50.1
12366	309	770	4. More Than Six Months	50.1
12367	309	1571	4. More Than Six Months	50.1
12368	309	45	4. More Than Six Months	50.1
12369	309	1572	4. More Than Six Months	50.1
12370	309	1573	4. More Than Six Months	50.1
12371	309	128	4. More Than Six Months	44.7
12372	309	1087	4. More Than Six Months	44.7
12373	309	33	4. More Than Six Months	44.7
12374	309	491	4. More Than Six Months	44.7
12375	309	302	4. More Than Six Months	44.7
12376	309	533	4. More Than Six Months	44.7
12377	309	389	4. More Than Six Months	37.1
12378	309	436	4. More Than Six Months	37.1
12379	309	232	4. More Than Six Months	37.1
12380	309	4	4. More Than Six Months	37.1
12381	309	1574	4. More Than Six Months	37.1
12382	309	414	4. More Than Six Months	37.1
12383	309	167	4. More Than Six Months	37.1
12384	309	192	4. More Than Six Months	37.1
12385	309	543	4. More Than Six Months	37.1
12386	309	898	4. More Than Six Months	37.1
12387	309	49	4. More Than Six Months	37.1
12388	309	1049	4. More Than Six Months	37.1
12389	309	185	5. All	100
12390	309	596	5. All	94.8
12391	309	401	5. All	93.4
12392	309	1060	5. All	92.4
12393	309	1568	5. All	90.8
12394	309	225	5. All	89.6
12395	309	533	5. All	85.7
12396	309	1104	5. All	85
12397	309	220	5. All	78.8
12398	309	1569	5. All	76.6
12399	309	91	5. All	74.2
12400	309	299	5. All	72.8
12401	309	1572	5. All	69.8
12402	309	694	5. All	69.8
12403	309	1574	5. All	66.2
12404	309	1070	5. All	64.2
12405	309	1000	5. All	61.9
12406	309	45	5. All	61.9
12407	309	202	5. All	59.2
12408	309	1357	5. All	59.2
12409	309	1087	5. All	59.2
12410	309	1094	5. All	56.2
12411	309	181	5. All	56.2
12412	309	1573	5. All	52.7
12413	309	1571	5. All	48.3
12414	309	1570	5. All	48.3
12415	309	236	5. All	48.3
12416	309	770	5. All	48.3
12417	309	128	5. All	42.7
12418	309	1341	5. All	42.7
12419	309	196	5. All	42.7
12420	309	519	5. All	42.7
12421	309	192	5. All	42.7
12422	309	33	5. All	42.7
12423	309	436	5. All	42.7
12424	309	491	5. All	42.7
12425	309	302	5. All	42.7
12426	309	389	5. All	34.9
12427	309	543	5. All	34.9
12428	309	898	5. All	34.9
12429	309	49	5. All	34.9
12430	309	232	5. All	34.9
12431	309	4	5. All	34.9
12432	309	606	5. All	34.9
12433	309	1049	5. All	34.9
12434	309	414	5. All	34.9
12435	309	167	5. All	34.9
12436	309	1376	5. All	34.9
12437	309	775	5. All	34.9
12438	310	348	4. More Than Six Months	100
12439	310	131	4. More Than Six Months	100
12440	310	335	4. More Than Six Months	100
12441	310	142	4. More Than Six Months	100
12442	310	233	4. More Than Six Months	100
12443	310	1575	4. More Than Six Months	100
12444	310	607	4. More Than Six Months	100
12445	310	127	4. More Than Six Months	100
12446	310	104	4. More Than Six Months	100
12447	310	108	4. More Than Six Months	100
12448	310	198	4. More Than Six Months	100
12449	310	1086	4. More Than Six Months	100
12450	310	128	4. More Than Six Months	100
12451	310	63	4. More Than Six Months	100
12452	310	446	4. More Than Six Months	100
12453	310	63	5. All	100
12454	310	142	5. All	100
12455	310	1575	5. All	100
12456	310	348	5. All	100
12457	310	335	5. All	100
12458	310	127	5. All	100
12459	310	104	5. All	100
12460	310	108	5. All	100
12461	310	233	5. All	100
12462	310	607	5. All	100
12463	310	446	5. All	100
12464	310	128	5. All	100
12465	310	198	5. All	100
12466	310	131	5. All	100
12467	310	1086	5. All	100
12468	311	68	4. More Than Six Months	100
12469	311	1576	4. More Than Six Months	100
12470	311	1257	4. More Than Six Months	100
12471	311	1577	4. More Than Six Months	100
12472	311	1578	4. More Than Six Months	100
12473	311	1579	4. More Than Six Months	100
12474	311	1580	4. More Than Six Months	100
12475	311	1576	5. All	100
12476	311	1578	5. All	100
12477	311	1579	5. All	100
12478	311	1577	5. All	100
12479	311	1257	5. All	100
12480	311	1580	5. All	63.7
12481	311	68	5. All	63.7
12482	311	413	5. All	63.7
12483	312	225	4. More Than Six Months	100
12484	312	1581	4. More Than Six Months	100
12485	312	766	4. More Than Six Months	100
12486	312	1513	4. More Than Six Months	100
12487	312	1581	5. All	100
12488	312	225	5. All	100
12489	312	1513	5. All	100
12490	312	766	5. All	100
12491	313	77	4. More Than Six Months	100
12492	313	18	4. More Than Six Months	79.8
12493	313	1582	4. More Than Six Months	79.8
12494	313	2	4. More Than Six Months	79.8
12495	313	154	4. More Than Six Months	79.8
12496	313	1291	4. More Than Six Months	79.8
12497	313	30	4. More Than Six Months	79.8
12498	313	77	5. All	100
12499	313	30	5. All	79.3
12500	313	18	5. All	79.3
12501	313	2	5. All	79.3
12502	313	1582	5. All	79.3
12503	313	1291	5. All	79.3
12504	313	154	5. All	79.3
12505	313	519	5. All	79.3
12506	313	117	5. All	79.3
12507	314	1583	4. More Than Six Months	100
12508	314	1584	4. More Than Six Months	100
12509	314	1585	4. More Than Six Months	100
12510	314	1585	5. All	100
12511	314	1583	5. All	100
12512	314	1584	5. All	100
12513	314	1586	5. All	66.4
12514	315	1587	4. More Than Six Months	100
12515	315	1588	4. More Than Six Months	90.5
12516	315	1589	4. More Than Six Months	90.5
12517	315	1587	5. All	100
12518	315	1588	5. All	98.1
12519	315	1589	5. All	98.1
12520	316	30	3. Six Months	100
12521	316	113	4. More Than Six Months	100
12522	316	65	4. More Than Six Months	88.7
12523	316	13	4. More Than Six Months	88.7
12524	316	31	4. More Than Six Months	88.7
12525	316	113	5. All	100
12526	316	13	5. All	88.4
12527	316	65	5. All	88.4
12528	316	31	5. All	88.4
12529	316	30	5. All	88.4
12530	317	18	4. More Than Six Months	100
12531	317	113	4. More Than Six Months	89.6
12532	317	302	4. More Than Six Months	89.6
12533	317	18	5. All	100
12534	317	113	5. All	89.5
12535	317	302	5. All	89.5
12536	318	459	1. Thirty Days	100
12537	318	459	2. Three Months	100
12538	318	1590	4. More Than Six Months	100
12539	318	59	4. More Than Six Months	70
12540	318	459	4. More Than Six Months	70
12541	318	19	4. More Than Six Months	62.1
12542	318	947	4. More Than Six Months	62.1
12543	318	1590	5. All	100
12544	318	88	5. All	85.9
12545	318	947	5. All	84.1
12546	318	459	5. All	70.9
12547	318	19	5. All	66.6
12548	318	59	5. All	61.2
12549	318	198	5. All	61.2
12550	319	17	3. Six Months	100
12551	319	13	3. Six Months	100
12552	319	7	4. More Than Six Months	100
12553	319	18	4. More Than Six Months	100
12554	319	1	4. More Than Six Months	100
12555	319	19	4. More Than Six Months	100
12556	319	18	5. All	100
12557	319	7	5. All	100
12558	319	1	5. All	88.1
12559	319	77	5. All	88.1
12560	319	17	5. All	88.1
12561	319	13	5. All	88.1
12562	319	19	5. All	88.1
12563	320	35	4. More Than Six Months	100
12564	320	1	4. More Than Six Months	100
12565	320	1006	4. More Than Six Months	100
12566	320	35	5. All	100
12567	320	1	5. All	100
12568	320	1006	5. All	100
12569	321	53	2. Three Months	100
12570	321	23	2. Three Months	88.5
12571	321	164	2. Three Months	88.5
12572	321	7	2. Three Months	88.5
12573	321	1591	2. Three Months	88.5
12574	321	113	2. Three Months	88.5
12575	321	53	3. Six Months	100
12576	321	4	3. Six Months	87.2
12577	321	418	3. Six Months	87.2
12578	321	13	3. Six Months	87.2
12579	321	315	3. Six Months	87.2
12580	321	31	3. Six Months	87.2
12581	321	412	3. Six Months	87.2
12582	321	23	3. Six Months	87.2
12583	321	164	3. Six Months	87.2
12584	321	7	3. Six Months	87.2
12585	321	1591	3. Six Months	87.2
12586	321	130	3. Six Months	87.2
12587	321	113	3. Six Months	87.2
12588	321	54	3. Six Months	87.2
12589	321	53	4. More Than Six Months	100
12590	321	72	4. More Than Six Months	84.9
12591	321	359	4. More Than Six Months	84.9
12592	321	151	4. More Than Six Months	84.9
12593	321	261	4. More Than Six Months	84.9
12594	321	1082	4. More Than Six Months	73
12595	321	14	4. More Than Six Months	73
12596	321	58	4. More Than Six Months	73
12597	321	4	4. More Than Six Months	73
12598	321	333	4. More Than Six Months	73
12599	321	30	4. More Than Six Months	73
12600	321	222	4. More Than Six Months	73
12601	321	152	4. More Than Six Months	73
12602	321	37	4. More Than Six Months	73
12603	321	91	4. More Than Six Months	73
12604	321	154	4. More Than Six Months	73
12605	321	422	4. More Than Six Months	73
12606	321	2	4. More Than Six Months	73
12607	321	164	4. More Than Six Months	73
12608	321	203	4. More Than Six Months	73
12609	321	1592	4. More Than Six Months	73
12610	321	629	4. More Than Six Months	73
12611	321	54	4. More Than Six Months	73
12612	321	1593	4. More Than Six Months	73
12613	321	130	4. More Than Six Months	73
12614	321	10	4. More Than Six Months	73
12615	321	628	4. More Than Six Months	73
12616	321	203	5. All	100
12617	321	1592	5. All	97.6
12618	321	53	5. All	91.9
12619	321	164	5. All	74.2
12620	321	54	5. All	74.2
12621	321	130	5. All	74.2
12622	321	4	5. All	74.2
12623	321	261	5. All	74.2
12624	321	72	5. All	74.2
12625	321	629	5. All	66.9
12626	321	7	5. All	66.9
12627	321	23	5. All	66.9
12628	321	13	5. All	66.9
12629	321	31	5. All	66.9
12630	321	418	5. All	66.9
12631	321	14	5. All	66.9
12632	321	10	5. All	66.9
12633	321	359	5. All	66.9
12634	321	151	5. All	66.9
12635	321	412	5. All	56.6
12636	321	140	5. All	56.6
12637	321	1594	5. All	56.6
12638	321	154	5. All	56.6
12639	321	30	5. All	56.6
12640	321	338	5. All	56.6
12641	321	333	5. All	56.6
12642	321	91	5. All	56.6
12643	321	254	5. All	56.6
12644	321	349	5. All	56.6
12645	321	1591	5. All	56.6
12646	321	108	5. All	56.6
12647	321	113	5. All	56.6
12648	321	1502	5. All	56.6
12649	321	158	5. All	56.6
12650	321	1593	5. All	56.6
12651	321	315	5. All	56.6
12652	321	20	5. All	56.6
12653	321	92	5. All	56.6
12654	321	422	5. All	56.6
12655	321	2	5. All	56.6
12656	321	73	5. All	56.6
12657	321	229	5. All	56.6
12658	321	628	5. All	56.6
12659	321	1082	5. All	56.6
12660	321	37	5. All	56.6
12661	321	152	5. All	56.6
12662	321	222	5. All	56.6
12663	321	58	5. All	56.6
12664	322	119	3. Six Months	100
12665	322	119	4. More Than Six Months	100
12666	322	65	4. More Than Six Months	74.9
12667	322	1595	4. More Than Six Months	74.9
12668	322	1595	5. All	100
12669	322	119	5. All	95.2
12670	322	65	5. All	65.5
12671	323	1596	4. More Than Six Months	100
12672	323	1597	4. More Than Six Months	65.1
12673	323	326	4. More Than Six Months	65.1
12674	323	1598	4. More Than Six Months	65.1
12675	323	1599	4. More Than Six Months	65.1
12676	323	1589	4. More Than Six Months	65.1
12677	323	409	4. More Than Six Months	65.1
12678	323	1600	4. More Than Six Months	65.1
12679	323	1601	4. More Than Six Months	65.1
12680	323	1602	4. More Than Six Months	65.1
12681	323	1277	4. More Than Six Months	65.1
12682	323	780	4. More Than Six Months	65.1
12683	323	647	4. More Than Six Months	65.1
12684	323	1603	4. More Than Six Months	65.1
12685	323	1604	4. More Than Six Months	65.1
12686	323	64	4. More Than Six Months	65.1
12687	323	795	4. More Than Six Months	65.1
12688	323	1596	5. All	100
12689	323	1604	5. All	87.2
12690	323	1597	5. All	87.2
12691	323	780	5. All	87.2
12692	323	647	5. All	87.2
12693	323	64	5. All	87.2
12694	323	1598	5. All	87.2
12695	323	1277	5. All	87.2
12696	323	1589	5. All	87.2
12697	323	1599	5. All	87.2
12698	323	409	5. All	87.2
12699	323	1601	5. All	87.2
12700	323	1600	5. All	87.2
12701	323	1603	5. All	87.2
12702	323	1602	5. All	52.3
12703	323	326	5. All	52.3
12704	323	795	5. All	52.3
12705	323	198	5. All	52.3
12706	324	636	4. More Than Six Months	100
12707	324	222	4. More Than Six Months	100
12708	324	1	4. More Than Six Months	100
12709	324	636	5. All	100
12710	324	222	5. All	100
12711	324	1	5. All	100
12712	324	130	5. All	100
12713	324	54	5. All	100
12714	324	28	5. All	100
12715	325	824	3. Six Months	100
12716	325	15	3. Six Months	100
12717	325	58	4. More Than Six Months	100
12718	325	995	4. More Than Six Months	100
12719	325	1588	4. More Than Six Months	100
12720	325	1605	4. More Than Six Months	100
12721	325	878	4. More Than Six Months	100
12722	325	35	4. More Than Six Months	100
12723	325	126	4. More Than Six Months	100
12724	325	824	4. More Than Six Months	100
12725	325	995	5. All	100
12726	325	1605	5. All	100
12727	325	1588	5. All	100
12728	325	824	5. All	79.1
12729	325	58	5. All	72.6
12730	325	878	5. All	63.4
12731	325	126	5. All	63.4
12732	325	35	5. All	63.4
12733	325	15	5. All	63.4
12734	325	130	5. All	63.4
12735	326	22	3. Six Months	100
12736	326	35	4. More Than Six Months	100
12737	326	1	4. More Than Six Months	100
12738	326	19	4. More Than Six Months	100
12739	326	60	4. More Than Six Months	100
12740	326	19	5. All	100
12741	326	35	5. All	100
12742	326	1	5. All	100
12743	326	60	5. All	100
12744	326	22	5. All	100
12745	327	113	5. All	100
12746	327	1606	5. All	90.1
12747	328	402	3. Six Months	100
12748	328	133	4. More Than Six Months	100
12749	328	130	4. More Than Six Months	80
12750	328	199	4. More Than Six Months	66.7
12751	328	4	4. More Than Six Months	59
12752	328	1607	4. More Than Six Months	59
12753	328	402	4. More Than Six Months	59
12754	328	133	5. All	100
12755	328	1607	5. All	88.6
12756	328	130	5. All	81.6
12757	328	199	5. All	70.7
12758	328	402	5. All	70.7
12759	328	4	5. All	57.2
12760	329	521	2. Three Months	100
12761	329	315	2. Three Months	100
12762	329	1608	2. Three Months	100
12763	329	521	3. Six Months	100
12764	329	315	3. Six Months	79.6
12765	329	1608	3. Six Months	79.6
12766	329	521	4. More Than Six Months	100
12767	329	901	4. More Than Six Months	79.4
12768	329	694	4. More Than Six Months	71
12769	329	521	5. All	100
12770	329	901	5. All	70.6
12771	329	694	5. All	62.5
12772	329	410	5. All	62.5
12773	329	1	5. All	62.5
12774	329	341	5. All	62.5
12775	329	315	5. All	62.5
12776	329	1608	5. All	62.5
12777	330	25	2. Three Months	100
12778	330	648	2. Three Months	100
12779	330	648	3. Six Months	100
12780	330	18	3. Six Months	100
12781	330	155	3. Six Months	100
12782	330	25	3. Six Months	93
12783	330	18	4. More Than Six Months	100
12784	330	25	4. More Than Six Months	87.4
12785	330	594	4. More Than Six Months	80.9
12786	330	66	4. More Than Six Months	80.9
12787	330	215	4. More Than Six Months	71.7
12788	330	155	4. More Than Six Months	71.7
12789	330	1130	4. More Than Six Months	71.7
12790	330	341	4. More Than Six Months	71.7
12791	330	137	4. More Than Six Months	71.7
12792	330	18	5. All	100
12793	330	25	5. All	90.2
12794	330	155	5. All	86.9
12795	330	648	5. All	83
12796	330	66	5. All	78.2
12797	330	594	5. All	78.2
12798	330	1130	5. All	63.2
12799	330	215	5. All	63.2
12800	330	341	5. All	63.2
12801	330	137	5. All	63.2
12802	330	336	5. All	63.2
12803	331	1609	3. Six Months	100
12804	331	144	4. More Than Six Months	100
12805	331	167	4. More Than Six Months	90.1
12806	331	1610	4. More Than Six Months	79.4
12807	331	1610	5. All	100
12808	331	144	5. All	91.8
12809	331	167	5. All	82.4
12810	331	1609	5. All	72.1
12811	332	58	2. Three Months	100
12812	332	9	3. Six Months	100
12813	332	308	3. Six Months	100
12814	332	58	3. Six Months	100
12815	332	65	4. More Than Six Months	100
12816	332	731	4. More Than Six Months	100
12817	332	350	4. More Than Six Months	100
12818	332	32	4. More Than Six Months	100
12819	332	326	4. More Than Six Months	100
12820	332	130	4. More Than Six Months	100
12821	332	462	4. More Than Six Months	100
12822	332	2	4. More Than Six Months	100
12823	332	202	4. More Than Six Months	100
12824	332	65	5. All	100
12825	332	130	5. All	100
12826	332	202	5. All	100
12827	332	58	5. All	100
12828	332	731	5. All	88.3
12829	332	350	5. All	88.3
12830	332	32	5. All	88.3
12831	332	326	5. All	88.3
12832	332	462	5. All	88.3
12833	332	2	5. All	88.3
12834	332	9	5. All	88.3
12835	332	308	5. All	88.3
12836	333	77	2. Three Months	100
12837	333	1611	3. Six Months	100
12838	333	77	3. Six Months	66.8
12839	333	224	4. More Than Six Months	100
12840	333	77	4. More Than Six Months	85.8
12841	333	329	4. More Than Six Months	85.8
12842	333	771	4. More Than Six Months	65.6
12843	333	1612	4. More Than Six Months	65.6
12844	333	2	4. More Than Six Months	57.3
12845	333	1021	4. More Than Six Months	57.3
12846	333	1060	4. More Than Six Months	57.3
12847	333	1341	4. More Than Six Months	57.3
12848	333	715	4. More Than Six Months	57.3
12849	333	1613	4. More Than Six Months	57.3
12850	333	224	5. All	100
12851	333	77	5. All	88.8
12852	333	1611	5. All	88.8
12853	333	329	5. All	84.2
12854	333	771	5. All	63.5
12855	333	1612	5. All	63.5
12856	333	2	5. All	63.5
12857	333	1060	5. All	63.5
12858	333	1021	5. All	55.1
12859	333	715	5. All	55.1
12860	333	1341	5. All	55.1
12861	333	198	5. All	55.1
12862	333	305	5. All	55.1
12863	333	137	5. All	55.1
12864	333	1613	5. All	55.1
12865	333	233	5. All	55.1
12866	334	625	1. Thirty Days	100
12867	334	625	2. Three Months	100
12868	334	130	3. Six Months	100
12869	334	145	3. Six Months	89.9
12870	334	625	3. Six Months	89.9
12871	334	58	4. More Than Six Months	100
12872	334	4	4. More Than Six Months	100
12873	334	1519	4. More Than Six Months	100
12874	334	202	4. More Than Six Months	100
12875	334	4	5. All	100
12876	334	130	5. All	100
12877	334	58	5. All	88.3
12878	334	1519	5. All	88.3
12879	334	202	5. All	88.3
12880	334	363	5. All	88.3
12881	334	145	5. All	88.3
12882	334	1614	5. All	88.3
12883	334	625	5. All	88.3
12884	335	127	2. Three Months	100
12885	335	128	2. Three Months	80.6
12886	335	385	2. Three Months	80.6
12887	335	127	3. Six Months	100
12888	335	385	3. Six Months	85.1
12889	335	1615	3. Six Months	76.5
12890	335	128	3. Six Months	76.5
12891	335	1612	3. Six Months	76.5
12892	335	736	4. More Than Six Months	100
12893	335	1616	4. More Than Six Months	80.2
12894	335	1	4. More Than Six Months	74
12895	335	1617	4. More Than Six Months	65.2
12896	335	1618	4. More Than Six Months	65.2
12897	335	1619	4. More Than Six Months	65.2
12898	335	1620	4. More Than Six Months	65.2
12899	335	1621	4. More Than Six Months	65.2
12900	335	1155	4. More Than Six Months	65.2
12901	335	168	4. More Than Six Months	65.2
12902	335	736	5. All	100
12903	335	1616	5. All	91.4
12904	335	1155	5. All	87.6
12905	335	1618	5. All	87.6
12906	335	1619	5. All	87.6
12907	335	1617	5. All	87.6
12908	335	1620	5. All	87.6
12909	335	1621	5. All	87.6
12910	335	127	5. All	80
12911	335	168	5. All	62.1
12912	335	1	5. All	62.1
12913	335	385	5. All	62.1
12914	335	1615	5. All	53.5
12915	335	128	5. All	53.5
12916	335	1612	5. All	53.5
12917	336	299	2. Three Months	100
12918	336	410	2. Three Months	77.9
12919	336	113	2. Three Months	63.9
12920	336	414	2. Three Months	63.9
12921	336	299	3. Six Months	100
12922	336	410	3. Six Months	87.1
12923	336	319	3. Six Months	78.8
12924	336	31	3. Six Months	75.1
12925	336	549	3. Six Months	70.6
12926	336	638	3. Six Months	64.8
12927	336	113	3. Six Months	64.8
12928	336	414	3. Six Months	64.8
12929	336	22	3. Six Months	56.5
12930	336	299	4. More Than Six Months	100
12931	336	677	4. More Than Six Months	95.2
12932	336	199	4. More Than Six Months	88.9
12933	336	410	4. More Than Six Months	83.3
12934	336	58	4. More Than Six Months	81.7
12935	336	319	4. More Than Six Months	81.7
12936	336	168	4. More Than Six Months	81.7
12937	336	314	4. More Than Six Months	75.7
12938	336	643	4. More Than Six Months	63.5
12939	336	54	4. More Than Six Months	63.5
12940	336	640	4. More Than Six Months	58.9
12941	336	508	4. More Than Six Months	58.9
12942	336	414	4. More Than Six Months	58.9
12943	336	31	4. More Than Six Months	58.9
12944	336	642	4. More Than Six Months	52.9
12945	336	153	4. More Than Six Months	52.9
12946	336	1467	4. More Than Six Months	52.9
12947	336	146	4. More Than Six Months	52.9
12948	336	1622	4. More Than Six Months	52.9
12949	336	1393	4. More Than Six Months	44.6
12950	336	557	4. More Than Six Months	44.6
12951	336	30	4. More Than Six Months	44.6
12952	336	176	4. More Than Six Months	44.6
12953	336	1155	4. More Than Six Months	44.6
12954	336	332	4. More Than Six Months	44.6
12955	336	135	4. More Than Six Months	44.6
12956	336	236	4. More Than Six Months	44.6
12957	336	18	4. More Than Six Months	44.6
12958	336	22	4. More Than Six Months	44.6
12959	336	1283	4. More Than Six Months	44.6
12960	336	1623	4. More Than Six Months	44.6
12961	336	1	4. More Than Six Months	44.6
12962	336	79	4. More Than Six Months	44.6
12963	336	239	4. More Than Six Months	44.6
12964	336	650	4. More Than Six Months	44.6
12965	336	1341	4. More Than Six Months	44.6
12966	336	1624	4. More Than Six Months	44.6
12967	336	1324	4. More Than Six Months	44.6
12968	336	849	4. More Than Six Months	44.6
12969	336	13	4. More Than Six Months	44.6
12970	336	480	4. More Than Six Months	44.6
12971	336	320	4. More Than Six Months	44.6
12972	336	1625	4. More Than Six Months	44.6
12973	336	299	5. All	100
12974	336	677	5. All	86.3
12975	336	410	5. All	85.4
12976	336	199	5. All	81.5
12977	336	319	5. All	81.5
12978	336	58	5. All	75.1
12979	336	168	5. All	73.5
12980	336	1393	5. All	69.9
12981	336	557	5. All	69.9
12982	336	1625	5. All	69.9
12983	336	1624	5. All	69.9
12984	336	849	5. All	69.9
12985	336	1324	5. All	69.9
12986	336	480	5. All	69.9
12987	336	320	5. All	69.9
12988	336	31	5. All	67.8
12989	336	314	5. All	67.8
12990	336	414	5. All	62.9
12991	336	54	5. All	59.8
12992	336	643	5. All	56.2
12993	336	549	5. All	56.2
12994	336	22	5. All	51.9
12995	336	508	5. All	51.9
12996	336	640	5. All	51.9
12997	336	113	5. All	51.9
12998	336	1467	5. All	46.2
12999	336	638	5. All	46.2
13000	336	18	5. All	46.2
13001	336	1622	5. All	46.2
13002	336	153	5. All	46.2
13003	336	642	5. All	46.2
13004	336	146	5. All	46.2
13005	336	606	5. All	38.3
13006	336	1271	5. All	38.3
13007	336	205	5. All	38.3
13008	336	1331	5. All	38.3
13009	336	143	5. All	38.3
13010	336	332	5. All	38.3
13011	336	1626	5. All	38.3
13012	336	30	5. All	38.3
13013	336	1	5. All	38.3
13014	336	176	5. All	38.3
13015	336	1155	5. All	38.3
13016	336	135	5. All	38.3
13017	336	236	5. All	38.3
13018	336	13	5. All	38.3
13019	336	1623	5. All	38.3
13020	336	650	5. All	38.3
13021	336	239	5. All	38.3
13022	336	1341	5. All	38.3
13023	336	1283	5. All	38.3
13024	336	79	5. All	38.3
13025	336	318	5. All	38.3
13026	337	18	4. More Than Six Months	100
13027	337	14	4. More Than Six Months	100
13028	337	18	5. All	100
13029	337	14	5. All	100
13030	338	308	3. Six Months	100
13031	338	38	4. More Than Six Months	100
13032	338	784	4. More Than Six Months	100
13033	338	94	4. More Than Six Months	100
13034	338	784	5. All	100
13035	338	94	5. All	100
13036	338	308	5. All	100
13037	338	38	5. All	89.8
13038	339	1164	3. Six Months	100
13039	339	497	3. Six Months	100
13040	339	313	4. More Than Six Months	100
13041	339	175	4. More Than Six Months	100
13042	339	183	4. More Than Six Months	88.2
13043	339	119	4. More Than Six Months	88.2
13044	339	130	4. More Than Six Months	88.2
13045	339	1029	4. More Than Six Months	88.2
13046	339	206	4. More Than Six Months	88.2
13047	339	192	4. More Than Six Months	88.2
13048	339	126	4. More Than Six Months	88.2
13049	339	175	5. All	100
13050	339	313	5. All	100
13051	339	130	5. All	100
13052	339	183	5. All	87.5
13053	339	126	5. All	87.5
13054	339	119	5. All	87.5
13055	339	206	5. All	87.5
13056	339	192	5. All	87.5
13057	339	1029	5. All	87.5
13058	339	983	5. All	87.5
13059	339	232	5. All	87.5
13060	339	1164	5. All	87.5
13061	339	497	5. All	87.5
13062	339	128	5. All	87.5
13063	339	293	5. All	87.5
13064	340	1627	2. Three Months	100
13065	340	1628	2. Three Months	100
13066	340	87	2. Three Months	66.3
13067	340	1629	3. Six Months	100
13068	340	1630	3. Six Months	100
13069	340	1627	3. Six Months	100
13070	340	1628	3. Six Months	100
13071	340	751	3. Six Months	63.4
13072	340	629	3. Six Months	63.4
13073	340	921	3. Six Months	63.4
13074	340	87	3. Six Months	63.4
13075	340	1631	4. More Than Six Months	100
13076	340	130	4. More Than Six Months	62.7
13077	340	1632	4. More Than Six Months	62.7
13078	340	1633	4. More Than Six Months	54.4
13079	340	198	4. More Than Six Months	54.4
13080	340	358	4. More Than Six Months	51.4
13081	340	776	4. More Than Six Months	47.8
13082	340	472	4. More Than Six Months	47.8
13083	340	87	4. More Than Six Months	43.2
13084	340	50	4. More Than Six Months	43.2
13085	340	1634	4. More Than Six Months	43.2
13086	340	606	4. More Than Six Months	43.2
13087	340	341	4. More Than Six Months	43.2
13088	340	751	4. More Than Six Months	43.2
13089	340	1635	4. More Than Six Months	36.7
13090	340	321	4. More Than Six Months	36.7
13091	340	1636	4. More Than Six Months	36.7
13092	340	1353	4. More Than Six Months	36.7
13093	340	1637	4. More Than Six Months	36.7
13094	340	1638	4. More Than Six Months	36.7
13095	340	542	4. More Than Six Months	36.7
13096	340	1639	4. More Than Six Months	36.7
13097	340	410	4. More Than Six Months	36.7
13098	340	996	4. More Than Six Months	36.7
13099	340	523	4. More Than Six Months	36.7
13100	340	313	4. More Than Six Months	36.7
13101	340	850	4. More Than Six Months	36.7
13102	340	156	4. More Than Six Months	36.7
13103	340	1631	5. All	100
13104	340	1633	5. All	67.8
13105	340	1635	5. All	62.6
13106	340	130	5. All	62.6
13107	340	1634	5. All	62.6
13108	340	606	5. All	62.6
13109	340	341	5. All	62.6
13110	340	1636	5. All	61
13111	340	321	5. All	61
13112	340	1639	5. All	61
13113	340	1628	5. All	61
13114	340	1632	5. All	61
13115	340	1637	5. All	61
13116	340	1638	5. All	61
13117	340	1629	5. All	61
13118	340	1627	5. All	61
13119	340	1630	5. All	61
13120	340	198	5. All	52.3
13121	340	751	5. All	49.2
13122	340	358	5. All	49.2
13123	340	87	5. All	49.2
13124	340	776	5. All	49.2
13125	340	472	5. All	45.5
13126	340	542	5. All	40.6
13127	340	921	5. All	40.6
13128	340	410	5. All	40.6
13129	340	50	5. All	40.6
13130	340	313	5. All	40.6
13131	340	1351	5. All	33.8
13132	340	156	5. All	33.8
13133	340	1640	5. All	33.8
13134	340	850	5. All	33.8
13135	340	996	5. All	33.8
13136	340	523	5. All	33.8
13137	340	1353	5. All	33.8
13138	340	629	5. All	33.8
13139	341	745	1. Thirty Days	100
13140	341	1202	1. Thirty Days	95.6
13141	341	202	1. Thirty Days	95.6
13142	341	1060	1. Thirty Days	73.5
13143	341	130	1. Thirty Days	73.5
13144	341	1641	1. Thirty Days	73.5
13145	341	116	1. Thirty Days	73.5
13146	341	1202	2. Three Months	100
13147	341	1642	2. Three Months	91.5
13148	341	1643	2. Three Months	87.7
13149	341	202	2. Three Months	80.2
13150	341	745	2. Three Months	76.9
13151	341	116	2. Three Months	68.4
13152	341	315	2. Three Months	53.9
13153	341	1	2. Three Months	53.9
13154	341	130	2. Three Months	53.9
13155	341	1644	2. Three Months	53.9
13156	341	1060	2. Three Months	53.9
13157	341	1641	2. Three Months	53.9
13158	341	1029	2. Three Months	53.9
13159	341	1645	2. Three Months	53.9
13160	341	1642	3. Six Months	100
13161	341	1202	3. Six Months	95.5
13162	341	202	3. Six Months	91.5
13163	341	221	3. Six Months	88.3
13164	341	1646	3. Six Months	82.4
13165	341	1647	3. Six Months	82.4
13166	341	1643	3. Six Months	82.4
13167	341	1648	3. Six Months	82.4
13168	341	480	3. Six Months	77.5
13169	341	759	3. Six Months	74.5
13170	341	305	3. Six Months	74.5
13171	341	745	3. Six Months	71.1
13172	341	116	3. Six Months	67
13173	341	130	3. Six Months	67
13174	341	315	3. Six Months	67
13175	341	19	3. Six Months	55.7
13176	341	134	3. Six Months	55.7
13177	341	1029	3. Six Months	55.7
13178	341	1644	3. Six Months	55.7
13179	341	161	3. Six Months	55.7
13180	341	342	3. Six Months	55.7
13181	341	1	3. Six Months	46.7
13182	341	463	3. Six Months	46.7
13183	341	1060	3. Six Months	46.7
13184	341	1641	3. Six Months	46.7
13185	341	145	3. Six Months	46.7
13186	341	1645	3. Six Months	46.7
13187	341	281	3. Six Months	46.7
13188	341	981	3. Six Months	46.7
13189	341	206	3. Six Months	46.7
13190	341	126	3. Six Months	46.7
13191	341	119	3. Six Months	46.7
13192	341	983	3. Six Months	46.7
13193	341	1017	3. Six Months	46.7
13194	341	180	3. Six Months	46.7
13195	341	833	3. Six Months	46.7
13196	341	154	3. Six Months	46.7
13197	341	88	3. Six Months	46.7
13198	341	173	3. Six Months	46.7
13199	341	30	3. Six Months	46.7
13200	341	137	3. Six Months	46.7
13201	341	384	4. More Than Six Months	100
13202	341	335	4. More Than Six Months	93.9
13203	341	58	4. More Than Six Months	81.4
13204	341	65	4. More Than Six Months	76.3
13205	341	281	4. More Than Six Months	76.3
13206	341	4	4. More Than Six Months	74.3
13207	341	542	4. More Than Six Months	74.3
13208	341	130	4. More Than Six Months	69.8
13209	341	519	4. More Than Six Months	69.8
13210	341	30	4. More Than Six Months	69.8
13211	341	113	4. More Than Six Months	69.8
13212	341	31	4. More Than Six Months	69.8
13213	341	88	4. More Than Six Months	69.8
13214	341	978	4. More Than Six Months	67.1
13215	341	759	4. More Than Six Months	67.1
13216	341	305	4. More Than Six Months	67.1
13217	341	21	4. More Than Six Months	64.1
13218	341	106	4. More Than Six Months	64.1
13219	341	108	4. More Than Six Months	64.1
13220	341	1	4. More Than Six Months	64.1
13221	341	679	4. More Than Six Months	64.1
13222	341	221	4. More Than Six Months	64.1
13223	341	685	4. More Than Six Months	60.6
13224	341	302	4. More Than Six Months	56.5
13225	341	315	4. More Than Six Months	56.5
13226	341	410	4. More Than Six Months	56.5
13227	341	119	4. More Than Six Months	56.5
13228	341	303	4. More Than Six Months	56.5
13229	341	45	4. More Than Six Months	56.5
13230	341	1649	4. More Than Six Months	56.5
13231	341	342	4. More Than Six Months	56.5
13232	341	28	4. More Than Six Months	56.5
13233	341	625	4. More Than Six Months	51.4
13234	341	1029	4. More Than Six Months	51.4
13235	341	139	4. More Than Six Months	51.4
13236	341	881	4. More Than Six Months	51.4
13237	341	209	4. More Than Six Months	51.4
13238	341	1480	4. More Than Six Months	51.4
13239	341	136	4. More Than Six Months	51.4
13240	341	128	4. More Than Six Months	51.4
13241	341	117	4. More Than Six Months	51.4
13242	341	558	4. More Than Six Months	51.4
13243	341	1650	4. More Than Six Months	51.4
13244	341	618	4. More Than Six Months	51.4
13245	341	538	4. More Than Six Months	51.4
13246	341	241	4. More Than Six Months	51.4
13247	341	434	4. More Than Six Months	51.4
13248	341	426	4. More Than Six Months	51.4
13249	341	160	4. More Than Six Months	45
13250	341	35	4. More Than Six Months	45
13251	341	73	4. More Than Six Months	45
13252	341	1651	4. More Than Six Months	45
13253	341	135	4. More Than Six Months	45
13254	341	3	4. More Than Six Months	45
13255	341	2	4. More Than Six Months	45
13256	341	32	4. More Than Six Months	45
13257	341	1393	4. More Than Six Months	45
13258	341	196	4. More Than Six Months	45
13259	341	301	4. More Than Six Months	45
13260	341	1652	4. More Than Six Months	45
13261	341	17	4. More Than Six Months	45
13262	341	107	4. More Than Six Months	45
13263	341	133	4. More Than Six Months	45
13264	341	415	4. More Than Six Months	45
13265	341	325	4. More Than Six Months	45
13266	341	91	4. More Than Six Months	45
13267	341	43	4. More Than Six Months	45
13268	341	1100	4. More Than Six Months	45
13269	341	220	4. More Than Six Months	45
13270	341	180	4. More Than Six Months	45
13271	341	554	4. More Than Six Months	45
13272	341	19	4. More Than Six Months	45
13273	341	148	4. More Than Six Months	45
13274	341	134	4. More Than Six Months	45
13275	341	390	4. More Than Six Months	36
13276	341	7	4. More Than Six Months	36
13277	341	1094	4. More Than Six Months	36
13278	341	1653	4. More Than Six Months	36
13279	341	184	4. More Than Six Months	36
13280	341	210	4. More Than Six Months	36
13281	341	1654	4. More Than Six Months	36
13282	341	1655	4. More Than Six Months	36
13283	341	171	4. More Than Six Months	36
13284	341	593	4. More Than Six Months	36
13285	341	47	4. More Than Six Months	36
13286	341	33	4. More Than Six Months	36
13287	341	711	4. More Than Six Months	36
13288	341	727	4. More Than Six Months	36
13289	341	52	4. More Than Six Months	36
13290	341	855	4. More Than Six Months	36
13291	341	1656	4. More Than Six Months	36
13292	341	222	4. More Than Six Months	36
13293	341	146	4. More Than Six Months	36
13294	341	345	4. More Than Six Months	36
13295	341	271	4. More Than Six Months	36
13296	341	1472	4. More Than Six Months	36
13297	341	333	4. More Than Six Months	36
13298	341	666	4. More Than Six Months	36
13299	341	1302	4. More Than Six Months	36
13300	341	1657	4. More Than Six Months	36
13301	341	335	5. All	93.6
13302	341	221	5. All	87.3
13303	341	202	5. All	84.8
13304	341	305	5. All	80.4
13305	341	759	5. All	80.4
13306	341	58	5. All	80.4
13307	341	130	5. All	78.8
13308	341	65	5. All	75.1
13309	341	4	5. All	75.1
13310	341	30	5. All	73
13311	341	1487	5. All	73
13312	341	1591	5. All	73
13313	341	88	5. All	73
13314	341	542	5. All	73
13315	341	1180	5. All	73
13316	341	1658	5. All	70.8
13317	341	1659	5. All	70.8
13318	341	1660	5. All	70.8
13319	341	315	5. All	70.8
13320	341	1284	5. All	70.8
13321	341	519	5. All	68.3
13322	341	1	5. All	68.3
13323	341	31	5. All	68.3
13324	341	113	5. All	68.3
13325	341	108	5. All	65.5
13326	341	679	5. All	65.5
13327	341	342	5. All	65.5
13328	341	1029	5. All	62.3
13329	341	106	5. All	62.3
13330	341	119	5. All	62.3
13331	341	21	5. All	62.3
13332	341	28	5. All	58.6
13333	341	45	5. All	58.6
13334	341	302	5. All	58.6
13335	341	410	5. All	58.6
13336	341	19	5. All	58.6
13337	341	134	5. All	58.6
13338	341	685	5. All	58.6
13339	341	180	5. All	54.3
13340	341	128	5. All	54.3
13341	341	136	5. All	54.3
13342	341	303	5. All	54.3
13343	341	241	5. All	54.3
13344	341	881	5. All	49
13345	341	538	5. All	49
13346	341	32	5. All	49
13347	341	1480	5. All	49
13348	341	91	5. All	49
13349	341	434	5. All	49
13350	341	117	5. All	49
13351	341	618	5. All	49
13352	341	126	5. All	49
13353	341	625	5. All	49
13354	341	196	5. All	49
13355	341	139	5. All	49
13356	341	107	5. All	49
13357	341	558	5. All	49
13358	341	426	5. All	49
13359	341	209	5. All	49
13360	341	35	5. All	49
13361	341	145	5. All	42.3
13362	341	17	5. All	42.3
13363	341	135	5. All	42.3
13364	341	1651	5. All	42.3
13365	341	325	5. All	42.3
13366	341	73	5. All	42.3
13367	341	220	5. All	42.3
13368	341	301	5. All	42.3
13369	341	3	5. All	42.3
13370	341	43	5. All	42.3
13371	341	415	5. All	42.3
13372	341	148	5. All	42.3
13373	341	554	5. All	42.3
13374	341	1100	5. All	42.3
13375	341	333	5. All	42.3
13376	341	160	5. All	42.3
13377	341	1654	5. All	42.3
13378	341	146	5. All	42.3
13379	341	142	5. All	33
13380	341	150	5. All	33
13381	341	345	5. All	33
13382	341	222	5. All	33
13383	341	271	5. All	33
13384	341	1302	5. All	33
13385	341	390	5. All	33
13386	341	1657	5. All	33
13387	341	210	5. All	33
13388	341	198	5. All	33
13389	341	7	5. All	33
13390	341	521	5. All	33
13391	341	1655	5. All	33
13392	341	711	5. All	33
13393	341	52	5. All	33
13394	341	855	5. All	33
13395	341	593	5. All	33
13396	341	884	5. All	33
13397	341	184	5. All	33
13398	341	666	5. All	33
13399	341	171	5. All	33
13400	341	47	5. All	33
13401	342	144	3. Six Months	100
13402	342	1523	4. More Than Six Months	100
13403	342	168	4. More Than Six Months	88
13404	342	1661	4. More Than Six Months	78.4
13405	342	1662	4. More Than Six Months	78.4
13406	342	643	4. More Than Six Months	78.4
13407	342	144	4. More Than Six Months	78.4
13408	342	1662	5. All	100
13409	342	1661	5. All	100
13410	342	1523	5. All	85.1
13411	342	144	5. All	85.1
13412	342	168	5. All	74.2
13413	342	643	5. All	65.5
13414	343	319	1. Thirty Days	100
13415	343	175	2. Three Months	100
13416	343	1663	2. Three Months	100
13417	343	59	2. Three Months	65.6
13418	343	1570	2. Three Months	65.6
13419	343	221	2. Three Months	65.6
13420	343	319	2. Three Months	65.6
13421	343	59	3. Six Months	100
13422	343	175	3. Six Months	96
13423	343	1663	3. Six Months	96
13424	343	436	3. Six Months	80.9
13425	343	221	3. Six Months	69.7
13426	343	1006	3. Six Months	60.9
13427	343	1570	3. Six Months	60.9
13428	343	319	3. Six Months	60.9
13429	343	1006	4. More Than Six Months	100
13430	343	4	4. More Than Six Months	92.3
13431	343	130	4. More Than Six Months	88.4
13432	343	528	4. More Than Six Months	86.1
13433	343	113	4. More Than Six Months	86.1
13434	343	507	4. More Than Six Months	86.1
13435	343	1	4. More Than Six Months	80.9
13436	343	13	4. More Than Six Months	69.8
13437	343	135	4. More Than Six Months	69.8
13438	343	28	4. More Than Six Months	69.8
13439	343	2	4. More Than Six Months	69.8
13440	343	1570	4. More Than Six Months	69.8
13441	343	434	4. More Than Six Months	69.8
13442	343	319	4. More Than Six Months	64.6
13443	343	1664	4. More Than Six Months	64.6
13444	343	14	4. More Than Six Months	64.6
13445	343	1565	4. More Than Six Months	57.8
13446	343	34	4. More Than Six Months	57.8
13447	343	848	4. More Than Six Months	57.8
13448	343	1665	4. More Than Six Months	57.8
13449	343	1666	4. More Than Six Months	57.8
13450	343	467	4. More Than Six Months	48.3
13451	343	1667	4. More Than Six Months	48.3
13452	343	1484	4. More Than Six Months	48.3
13453	343	832	4. More Than Six Months	48.3
13454	343	142	4. More Than Six Months	48.3
13455	343	133	4. More Than Six Months	48.3
13456	343	184	4. More Than Six Months	48.3
13457	343	342	4. More Than Six Months	48.3
13458	343	858	4. More Than Six Months	48.3
13459	343	680	4. More Than Six Months	48.3
13460	343	156	4. More Than Six Months	48.3
13461	343	19	4. More Than Six Months	48.3
13462	343	220	4. More Than Six Months	48.3
13463	343	150	4. More Than Six Months	48.3
13464	343	684	4. More Than Six Months	48.3
13465	343	429	4. More Than Six Months	48.3
13466	343	173	4. More Than Six Months	48.3
13467	343	143	4. More Than Six Months	48.3
13468	343	1668	4. More Than Six Months	48.3
13469	343	18	4. More Than Six Months	48.3
13470	343	1669	4. More Than Six Months	48.3
13471	343	1670	4. More Than Six Months	48.3
13472	343	31	4. More Than Six Months	48.3
13473	343	58	4. More Than Six Months	48.3
13474	343	67	4. More Than Six Months	48.3
13475	343	53	4. More Than Six Months	48.3
13476	343	414	4. More Than Six Months	48.3
13477	343	1105	4. More Than Six Months	48.3
13478	343	59	4. More Than Six Months	48.3
13479	343	45	4. More Than Six Months	48.3
13480	343	198	4. More Than Six Months	48.3
13481	343	804	4. More Than Six Months	48.3
13482	343	875	4. More Than Six Months	48.3
13483	343	955	4. More Than Six Months	48.3
13484	343	188	4. More Than Six Months	48.3
13485	343	833	4. More Than Six Months	48.3
13486	343	108	4. More Than Six Months	48.3
13487	343	194	4. More Than Six Months	48.3
13488	343	302	4. More Than Six Months	48.3
13489	343	349	4. More Than Six Months	48.3
13490	343	20	4. More Than Six Months	48.3
13491	343	682	4. More Than Six Months	48.3
13492	343	1671	4. More Than Six Months	48.3
13493	343	15	4. More Than Six Months	48.3
13494	343	1006	5. All	100
13495	343	59	5. All	91.3
13496	343	434	5. All	89.5
13497	343	4	5. All	89.5
13498	343	130	5. All	87.6
13499	343	1664	5. All	87.6
13500	343	1666	5. All	85.5
13501	343	113	5. All	85.5
13502	343	848	5. All	85.5
13503	343	1665	5. All	85.5
13504	343	832	5. All	83.2
13505	343	1668	5. All	83.2
13506	343	682	5. All	83.2
13507	343	1670	5. All	83.2
13508	343	467	5. All	83.2
13509	343	1484	5. All	83.2
13510	343	1669	5. All	83.2
13511	343	1671	5. All	83.2
13512	343	1667	5. All	83.2
13513	343	507	5. All	83.2
13514	343	528	5. All	83.2
13515	343	175	5. All	83.2
13516	343	1663	5. All	83.2
13517	343	684	5. All	83.2
13518	343	1	5. All	77.7
13519	343	1570	5. All	74.5
13520	343	319	5. All	70.8
13521	343	13	5. All	70.8
13522	343	28	5. All	66.4
13523	343	135	5. All	66.4
13524	343	436	5. All	66.4
13525	343	2	5. All	66.4
13526	343	14	5. All	61
13527	343	58	5. All	54
13528	343	173	5. All	54
13529	343	45	5. All	54
13530	343	1565	5. All	54
13531	343	31	5. All	54
13532	343	34	5. All	54
13533	343	221	5. All	54
13534	343	15	5. All	44.4
13535	343	18	5. All	44.4
13536	343	35	5. All	44.4
13537	343	156	5. All	44.4
13538	343	133	5. All	44.4
13539	343	19	5. All	44.4
13540	343	220	5. All	44.4
13541	343	184	5. All	44.4
13542	343	145	5. All	44.4
13543	343	143	5. All	44.4
13544	343	342	5. All	44.4
13545	343	20	5. All	44.4
13546	343	302	5. All	44.4
13547	343	429	5. All	44.4
13548	343	194	5. All	44.4
13549	343	188	5. All	44.4
13550	343	1105	5. All	44.4
13551	343	198	5. All	44.4
13552	343	804	5. All	44.4
13553	343	108	5. All	44.4
13554	343	414	5. All	44.4
13555	343	53	5. All	44.4
13556	343	349	5. All	44.4
13557	343	67	5. All	44.4
13558	343	117	5. All	44.4
13559	343	875	5. All	44.4
13560	343	833	5. All	44.4
13561	343	146	5. All	44.4
13562	343	955	5. All	44.4
13563	343	142	5. All	44.4
13564	343	858	5. All	44.4
13565	343	680	5. All	44.4
13566	343	150	5. All	44.4
13567	344	65	3. Six Months	100
13568	344	13	4. More Than Six Months	100
13569	344	35	4. More Than Six Months	91.2
13570	344	18	4. More Than Six Months	88.4
13571	344	31	4. More Than Six Months	85.2
13572	344	4	4. More Than Six Months	77.2
13573	344	60	4. More Than Six Months	71.9
13574	344	2	4. More Than Six Months	71.9
13575	344	113	4. More Than Six Months	71.9
13576	344	53	4. More Than Six Months	71.9
13577	344	1672	4. More Than Six Months	65.1
13578	344	37	4. More Than Six Months	65.1
13579	344	332	4. More Than Six Months	65.1
13580	344	241	4. More Than Six Months	65.1
13581	344	108	4. More Than Six Months	65.1
13582	344	107	4. More Than Six Months	65.1
13583	344	1	4. More Than Six Months	65.1
13584	344	1673	4. More Than Six Months	65.1
13585	344	1674	4. More Than Six Months	55.4
13586	344	335	4. More Than Six Months	55.4
13587	344	19	4. More Than Six Months	55.4
13588	344	349	4. More Than Six Months	55.4
13589	344	45	4. More Than Six Months	55.4
13590	344	6	4. More Than Six Months	55.4
13591	344	767	4. More Than Six Months	55.4
13592	344	46	4. More Than Six Months	55.4
13593	344	1675	4. More Than Six Months	55.4
13594	344	1656	4. More Than Six Months	55.4
13595	344	494	4. More Than Six Months	55.4
13596	344	1676	4. More Than Six Months	55.4
13597	344	67	4. More Than Six Months	55.4
13598	344	1352	4. More Than Six Months	55.4
13599	344	363	4. More Than Six Months	55.4
13600	344	524	4. More Than Six Months	55.4
13601	344	92	4. More Than Six Months	55.4
13602	344	130	4. More Than Six Months	55.4
13603	344	13	5. All	100
13604	344	1675	5. All	91.8
13605	344	1674	5. All	91.8
13606	344	35	5. All	91.8
13607	344	1656	5. All	91.8
13608	344	494	5. All	91.8
13609	344	1676	5. All	91.8
13610	344	18	5. All	89.3
13611	344	31	5. All	83.2
13612	344	4	5. All	79.4
13613	344	60	5. All	69.6
13614	344	241	5. All	69.6
13615	344	113	5. All	69.6
13616	344	53	5. All	69.6
13617	344	2	5. All	69.6
13618	344	19	5. All	62.7
13619	344	1673	5. All	62.7
13620	344	363	5. All	62.7
13621	344	107	5. All	62.7
13622	344	108	5. All	62.7
13623	344	1672	5. All	62.7
13624	344	332	5. All	62.7
13625	344	1	5. All	62.7
13626	344	37	5. All	62.7
13627	344	65	5. All	52.9
13628	344	983	5. All	52.9
13629	344	45	5. All	52.9
13630	344	790	5. All	52.9
13631	344	130	5. All	52.9
13632	344	335	5. All	52.9
13633	344	349	5. All	52.9
13634	344	524	5. All	52.9
13635	344	67	5. All	52.9
13636	344	1352	5. All	52.9
13637	344	6	5. All	52.9
13638	344	767	5. All	52.9
13639	344	92	5. All	52.9
13640	344	46	5. All	52.9
13641	344	3	5. All	52.9
13642	345	15	4. More Than Six Months	100
13643	345	326	4. More Than Six Months	100
13644	345	326	5. All	100
13645	345	15	5. All	100
13646	346	168	4. More Than Six Months	100
13647	346	199	4. More Than Six Months	75.9
13648	346	168	5. All	100
13649	346	199	5. All	79.8
13650	347	35	2. Three Months	100
13651	347	113	2. Three Months	100
13652	347	1677	2. Three Months	100
13653	347	146	2. Three Months	100
13654	347	58	2. Three Months	100
13655	347	35	3. Six Months	100
13656	347	114	3. Six Months	87.3
13657	347	146	3. Six Months	87.3
13658	347	381	3. Six Months	87.3
13659	347	87	3. Six Months	87.3
13660	347	113	3. Six Months	87.3
13661	347	1677	3. Six Months	87.3
13662	347	130	3. Six Months	87.3
13663	347	58	3. Six Months	87.3
13664	347	68	3. Six Months	87.3
13665	347	221	4. More Than Six Months	100
13666	347	31	4. More Than Six Months	97.9
13667	347	113	4. More Than Six Months	95.7
13668	347	65	4. More Than Six Months	95.7
13669	347	130	4. More Than Six Months	90.5
13670	347	68	4. More Than Six Months	87.4
13671	347	30	4. More Than Six Months	84
13672	347	13	4. More Than Six Months	75.3
13673	347	1	4. More Than Six Months	75.3
13674	347	411	4. More Than Six Months	75.3
13675	347	161	4. More Than Six Months	75.3
13676	347	3	4. More Than Six Months	75.3
13677	347	241	4. More Than Six Months	75.3
13678	347	108	4. More Than Six Months	69.5
13679	347	4	4. More Than Six Months	69.5
13680	347	107	4. More Than Six Months	69.5
13681	347	117	4. More Than Six Months	69.5
13682	347	180	4. More Than Six Months	69.5
13683	347	202	4. More Than Six Months	69.5
13684	347	305	4. More Than Six Months	69.5
13685	347	58	4. More Than Six Months	69.5
13686	347	53	4. More Than Six Months	62.1
13687	347	146	4. More Than Six Months	62.1
13688	347	302	4. More Than Six Months	62.1
13689	347	75	4. More Than Six Months	62.1
13690	347	935	4. More Than Six Months	62.1
13691	347	1678	4. More Than Six Months	62.1
13692	347	316	4. More Than Six Months	62.1
13693	347	138	4. More Than Six Months	62.1
13694	347	127	4. More Than Six Months	62.1
13695	347	332	4. More Than Six Months	62.1
13696	347	715	4. More Than Six Months	62.1
13697	347	119	4. More Than Six Months	62.1
13698	347	1679	4. More Than Six Months	62.1
13699	347	293	4. More Than Six Months	62.1
13700	347	19	4. More Than Six Months	62.1
13701	347	417	4. More Than Six Months	62.1
13702	347	2	4. More Than Six Months	62.1
13703	347	244	4. More Than Six Months	62.1
13704	347	21	4. More Than Six Months	62.1
13705	347	338	4. More Than Six Months	62.1
13706	347	1416	4. More Than Six Months	62.1
13707	347	77	4. More Than Six Months	62.1
13708	347	1094	4. More Than Six Months	51.7
13709	347	15	4. More Than Six Months	51.7
13710	347	1680	4. More Than Six Months	51.7
13711	347	28	4. More Than Six Months	51.7
13712	347	94	4. More Than Six Months	51.7
13713	347	984	4. More Than Six Months	51.7
13714	347	1003	4. More Than Six Months	51.7
13715	347	1681	4. More Than Six Months	51.7
13716	347	135	4. More Than Six Months	51.7
13717	347	73	4. More Than Six Months	51.7
13718	347	35	4. More Than Six Months	51.7
13719	347	331	4. More Than Six Months	51.7
13720	347	1682	4. More Than Six Months	51.7
13721	347	43	4. More Than Six Months	51.7
13722	347	426	4. More Than Six Months	51.7
13723	347	673	4. More Than Six Months	51.7
13724	347	49	4. More Than Six Months	51.7
13725	347	45	4. More Than Six Months	51.7
13726	347	414	4. More Than Six Months	51.7
13727	347	384	4. More Than Six Months	51.7
13728	347	140	4. More Than Six Months	51.7
13729	347	23	4. More Than Six Months	51.7
13730	347	60	4. More Than Six Months	51.7
13731	347	914	4. More Than Six Months	51.7
13732	347	159	4. More Than Six Months	51.7
13733	347	281	4. More Than Six Months	51.7
13734	347	1536	4. More Than Six Months	51.7
13735	347	113	5. All	100
13736	347	221	5. All	100
13737	347	31	5. All	97.9
13738	347	65	5. All	97.9
13739	347	130	5. All	95.5
13740	347	1680	5. All	93
13741	347	68	5. All	93
13742	347	1682	5. All	93
13743	347	1681	5. All	93
13744	347	30	5. All	87
13745	347	1	5. All	79.4
13746	347	3	5. All	79.4
13747	347	161	5. All	79.4
13748	347	411	5. All	79.4
13749	347	58	5. All	79.4
13750	347	107	5. All	74.5
13751	347	241	5. All	74.5
13752	347	108	5. All	74.5
13753	347	13	5. All	74.5
13754	347	35	5. All	74.5
13755	347	146	5. All	74.5
13756	347	4	5. All	68.6
13757	347	19	5. All	68.6
13758	347	77	5. All	68.6
13759	347	117	5. All	68.6
13760	347	316	5. All	68.6
13761	347	127	5. All	68.6
13762	347	53	5. All	68.6
13763	347	305	5. All	68.6
13764	347	75	5. All	68.6
13765	347	180	5. All	68.6
13766	347	202	5. All	68.6
13767	347	138	5. All	60.9
13768	347	715	5. All	60.9
13769	347	417	5. All	60.9
13770	347	338	5. All	60.9
13771	347	935	5. All	60.9
13772	347	114	5. All	60.9
13773	347	332	5. All	60.9
13774	347	119	5. All	60.9
13775	347	1416	5. All	60.9
13776	347	244	5. All	60.9
13777	347	1679	5. All	60.9
13778	347	302	5. All	60.9
13779	347	1678	5. All	60.9
13780	347	2	5. All	60.9
13781	347	21	5. All	60.9
13782	347	293	5. All	60.9
13783	347	43	5. All	50.3
13784	347	33	5. All	50.3
13785	347	381	5. All	50.3
13786	347	530	5. All	50.3
13787	347	156	5. All	50.3
13788	347	94	5. All	50.3
13789	347	196	5. All	50.3
13790	347	1536	5. All	50.3
13791	347	326	5. All	50.3
13792	347	87	5. All	50.3
13793	347	346	5. All	50.3
13794	347	139	5. All	50.3
13795	347	26	5. All	50.3
13796	347	1094	5. All	50.3
13797	347	491	5. All	50.3
13798	347	313	5. All	50.3
13799	347	159	5. All	50.3
13800	347	1003	5. All	50.3
13801	347	45	5. All	50.3
13802	347	60	5. All	50.3
13803	347	331	5. All	50.3
13804	347	23	5. All	50.3
13805	347	673	5. All	50.3
13806	347	414	5. All	50.3
13807	347	140	5. All	50.3
13808	347	49	5. All	50.3
13809	347	28	5. All	50.3
13810	347	73	5. All	50.3
13811	347	384	5. All	50.3
13812	347	914	5. All	50.3
13813	347	281	5. All	50.3
13814	347	426	5. All	50.3
13815	347	135	5. All	50.3
13816	347	15	5. All	50.3
13817	347	984	5. All	50.3
13818	347	1677	5. All	50.3
13819	348	1003	4. More Than Six Months	100
13820	348	1683	4. More Than Six Months	100
13821	348	1683	5. All	100
13822	348	1003	5. All	100
13823	349	130	3. Six Months	100
13824	349	130	4. More Than Six Months	100
13825	349	31	4. More Than Six Months	92
13826	349	137	4. More Than Six Months	92
13827	349	139	4. More Than Six Months	92
13828	349	1684	4. More Than Six Months	80.8
13829	349	1	4. More Than Six Months	80.8
13830	349	341	4. More Than Six Months	80.8
13831	349	1684	5. All	100
13832	349	130	5. All	88.4
13833	349	139	5. All	79.1
13834	349	31	5. All	72.6
13835	349	137	5. All	72.6
13836	349	341	5. All	63.4
13837	349	1	5. All	63.4
13838	349	60	5. All	63.4
13839	349	1433	5. All	63.4
13840	349	13	5. All	63.4
13841	350	130	1. Thirty Days	100
13842	350	419	2. Three Months	100
13843	350	130	2. Three Months	67.1
13844	350	419	3. Six Months	100
13845	350	130	3. Six Months	70.8
13846	350	1645	3. Six Months	63.1
13847	350	130	4. More Than Six Months	100
13848	350	419	4. More Than Six Months	100
13849	350	325	4. More Than Six Months	74.3
13850	350	542	4. More Than Six Months	65.6
13851	350	1685	4. More Than Six Months	65.6
13852	350	229	4. More Than Six Months	65.6
13853	350	884	4. More Than Six Months	65.6
13854	350	419	5. All	100
13855	350	130	5. All	88.5
13856	350	325	5. All	60.9
13857	350	1645	5. All	60.9
13858	350	542	5. All	53.3
13859	350	1685	5. All	53.3
13860	350	229	5. All	53.3
13861	350	884	5. All	53.3
13862	351	1419	2. Three Months	100
13863	351	711	2. Three Months	100
13864	351	4	3. Six Months	100
13865	351	711	3. Six Months	100
13866	351	1419	3. Six Months	100
13867	351	31	3. Six Months	100
13868	351	58	3. Six Months	100
13869	351	4	4. More Than Six Months	100
13870	351	53	4. More Than Six Months	81.2
13871	351	33	4. More Than Six Months	81.2
13872	351	31	4. More Than Six Months	81.2
13873	351	1	4. More Than Six Months	81.2
13874	351	305	4. More Than Six Months	81.2
13875	351	62	4. More Than Six Months	81.2
13876	351	58	4. More Than Six Months	81.2
13877	351	137	4. More Than Six Months	81.2
13878	351	179	4. More Than Six Months	70.3
13879	351	37	4. More Than Six Months	70.3
13880	351	920	4. More Than Six Months	70.3
13881	351	530	4. More Than Six Months	70.3
13882	351	38	4. More Than Six Months	70.3
13883	351	13	4. More Than Six Months	70.3
13884	351	1686	4. More Than Six Months	70.3
13885	351	1687	4. More Than Six Months	70.3
13886	351	146	4. More Than Six Months	70.3
13887	351	28	4. More Than Six Months	70.3
13888	351	21	4. More Than Six Months	70.3
13889	351	1029	4. More Than Six Months	70.3
13890	351	1687	5. All	100
13891	351	1686	5. All	100
13892	351	4	5. All	94.5
13893	351	31	5. All	82.9
13894	351	58	5. All	82.9
13895	351	53	5. All	70.3
13896	351	62	5. All	70.3
13897	351	305	5. All	70.3
13898	351	711	5. All	70.3
13899	351	1	5. All	70.3
13900	351	137	5. All	70.3
13901	351	33	5. All	70.3
13902	351	1029	5. All	60.4
13903	351	1419	5. All	60.4
13904	351	65	5. All	60.4
13905	351	37	5. All	60.4
13906	351	966	5. All	60.4
13907	351	13	5. All	60.4
13908	351	530	5. All	60.4
13909	351	38	5. All	60.4
13910	351	179	5. All	60.4
13911	351	28	5. All	60.4
13912	351	21	5. All	60.4
13913	351	146	5. All	60.4
13914	351	920	5. All	60.4
13915	352	546	2. Three Months	100
13916	352	508	3. Six Months	100
13917	352	546	3. Six Months	100
13918	352	180	4. More Than Six Months	100
13919	352	168	4. More Than Six Months	92.5
13920	352	108	4. More Than Six Months	71.9
13921	352	172	4. More Than Six Months	71.9
13922	352	180	5. All	100
13923	352	168	5. All	92.2
13924	352	108	5. All	71.1
13925	352	172	5. All	71.1
13926	352	22	5. All	71.1
13927	352	508	5. All	71.1
13928	352	546	5. All	71.1
13929	353	481	1. Thirty Days	100
13930	353	481	2. Three Months	100
13931	353	481	3. Six Months	100
13932	353	159	4. More Than Six Months	100
13933	353	32	4. More Than Six Months	100
13934	353	65	4. More Than Six Months	100
13935	353	154	4. More Than Six Months	100
13936	353	159	5. All	100
13937	353	32	5. All	100
13938	353	65	5. All	100
13939	353	154	5. All	100
13940	353	983	5. All	100
13941	353	481	5. All	100
13942	354	13	4. More Than Six Months	100
13943	354	1	4. More Than Six Months	100
13944	354	1	5. All	100
13945	354	13	5. All	100
13946	355	931	4. More Than Six Months	100
13947	355	531	4. More Than Six Months	94.8
13948	355	130	4. More Than Six Months	94.8
13949	355	28	4. More Than Six Months	78.8
13950	355	365	4. More Than Six Months	78.8
13951	355	531	5. All	100
13952	355	931	5. All	100
13953	355	130	5. All	94.8
13954	355	28	5. All	78.7
13955	355	365	5. All	78.7
13956	356	558	4. More Than Six Months	100
13957	356	127	4. More Than Six Months	100
13958	356	65	4. More Than Six Months	100
13959	356	128	4. More Than Six Months	100
13960	356	127	5. All	100
13961	356	558	5. All	89.4
13962	356	128	5. All	89.4
13963	356	65	5. All	89.4
13964	357	130	1. Thirty Days	100
13965	357	381	2. Three Months	100
13966	357	262	2. Three Months	100
13967	357	533	2. Three Months	100
13968	357	1688	2. Three Months	97.7
13969	357	4	2. Three Months	85.6
13970	357	315	2. Three Months	81.3
13971	357	130	2. Three Months	76
13972	357	403	2. Three Months	76
13973	357	94	2. Three Months	69.2
13974	357	1689	2. Three Months	69.2
13975	357	136	2. Three Months	69.2
13976	357	239	2. Three Months	59.6
13977	357	58	2. Three Months	59.6
13978	357	133	2. Three Months	59.6
13979	357	331	2. Three Months	59.6
13980	357	401	2. Three Months	59.6
13981	357	543	2. Three Months	59.6
13982	357	134	2. Three Months	59.6
13983	357	381	3. Six Months	100
13984	357	262	3. Six Months	100
13985	357	533	3. Six Months	100
13986	357	1688	3. Six Months	97.7
13987	357	4	3. Six Months	89.1
13988	357	315	3. Six Months	85.4
13989	357	130	3. Six Months	81
13990	357	133	3. Six Months	75.6
13991	357	403	3. Six Months	75.6
13992	357	136	3. Six Months	68.7
13993	357	1689	3. Six Months	68.7
13994	357	94	3. Six Months	68.7
13995	357	134	3. Six Months	68.7
13996	357	239	3. Six Months	59
13997	357	58	3. Six Months	59
13998	357	344	3. Six Months	59
13999	357	401	3. Six Months	59
14000	357	117	3. Six Months	59
14001	357	331	3. Six Months	59
14002	357	543	3. Six Months	59
14003	357	936	3. Six Months	59
14004	357	1082	4. More Than Six Months	100
14005	357	302	4. More Than Six Months	92.9
14006	357	130	4. More Than Six Months	92.9
14007	357	315	4. More Than Six Months	92.9
14008	357	234	4. More Than Six Months	88.6
14009	357	134	4. More Than Six Months	88.6
14010	357	173	4. More Than Six Months	83.4
14011	357	1068	4. More Than Six Months	83.4
14012	357	4	4. More Than Six Months	83.4
14013	357	94	4. More Than Six Months	83.4
14014	357	1003	4. More Than Six Months	77.2
14015	357	133	4. More Than Six Months	77.2
14016	357	928	4. More Than Six Months	77.2
14017	357	122	4. More Than Six Months	77.2
14018	357	542	4. More Than Six Months	77.2
14019	357	1690	4. More Than Six Months	77.2
14020	357	401	4. More Than Six Months	77.2
14021	357	1691	4. More Than Six Months	77.2
14022	357	77	4. More Than Six Months	69.1
14023	357	233	4. More Than Six Months	69.1
14024	357	318	4. More Than Six Months	69.1
14025	357	983	4. More Than Six Months	69.1
14026	357	50	4. More Than Six Months	69.1
14027	357	749	4. More Than Six Months	69.1
14028	357	198	4. More Than Six Months	69.1
14029	357	331	4. More Than Six Months	69.1
14030	357	1692	4. More Than Six Months	69.1
14031	357	1070	4. More Than Six Months	69.1
14032	357	303	4. More Than Six Months	69.1
14033	357	596	4. More Than Six Months	69.1
14034	357	144	4. More Than Six Months	69.1
14035	357	329	4. More Than Six Months	69.1
14036	357	1341	4. More Than Six Months	69.1
14037	357	1468	4. More Than Six Months	69.1
14038	357	724	4. More Than Six Months	57.8
14039	357	1417	4. More Than Six Months	57.8
14040	357	1693	4. More Than Six Months	57.8
14041	357	1015	4. More Than Six Months	57.8
14042	357	1573	4. More Than Six Months	57.8
14043	357	341	4. More Than Six Months	57.8
14044	357	1694	4. More Than Six Months	57.8
14045	357	188	4. More Than Six Months	57.8
14046	357	1695	4. More Than Six Months	57.8
14047	357	53	4. More Than Six Months	57.8
14048	357	1487	4. More Than Six Months	57.8
14049	357	1689	4. More Than Six Months	57.8
14050	357	1696	4. More Than Six Months	57.8
14051	357	677	4. More Than Six Months	57.8
14052	357	1697	4. More Than Six Months	57.8
14053	357	32	4. More Than Six Months	57.8
14054	357	250	4. More Than Six Months	57.8
14055	357	136	4. More Than Six Months	57.8
14056	357	328	4. More Than Six Months	57.8
14057	357	532	4. More Than Six Months	57.8
14058	357	475	4. More Than Six Months	57.8
14059	357	262	4. More Than Six Months	57.8
14060	357	65	4. More Than Six Months	57.8
14061	357	617	4. More Than Six Months	57.8
14062	357	1698	4. More Than Six Months	57.8
14063	357	608	4. More Than Six Months	57.8
14064	357	1676	4. More Than Six Months	57.8
14065	357	571	4. More Than Six Months	57.8
14066	357	2	4. More Than Six Months	57.8
14067	357	202	4. More Than Six Months	57.8
14068	357	137	4. More Than Six Months	57.8
14069	357	1006	4. More Than Six Months	57.8
14070	357	74	4. More Than Six Months	57.8
14071	357	58	4. More Than Six Months	57.8
14072	357	1	4. More Than Six Months	57.8
14073	357	427	4. More Than Six Months	57.8
14074	357	128	4. More Than Six Months	57.8
14075	357	560	4. More Than Six Months	57.8
14076	357	326	4. More Than Six Months	57.8
14077	357	461	4. More Than Six Months	57.8
14078	357	1334	4. More Than Six Months	57.8
14079	357	523	4. More Than Six Months	57.8
14080	357	1195	4. More Than Six Months	57.8
14081	357	132	4. More Than Six Months	57.8
14082	357	342	4. More Than Six Months	57.8
14083	357	26	4. More Than Six Months	57.8
14084	357	619	4. More Than Six Months	57.8
14085	357	1699	4. More Than Six Months	57.8
14086	357	607	4. More Than Six Months	57.8
14087	357	319	4. More Than Six Months	57.8
14088	357	384	4. More Than Six Months	57.8
14089	357	1421	4. More Than Six Months	57.8
14090	357	430	4. More Than Six Months	57.8
14091	357	680	4. More Than Six Months	57.8
14092	357	1332	4. More Than Six Months	57.8
14093	357	27	4. More Than Six Months	57.8
14094	357	392	4. More Than Six Months	57.8
14095	357	167	4. More Than Six Months	57.8
14096	357	196	4. More Than Six Months	57.8
14097	357	141	4. More Than Six Months	57.8
14098	357	160	4. More Than Six Months	57.8
14099	357	751	4. More Than Six Months	57.8
14100	357	130	5. All	100
14101	357	134	5. All	95.9
14102	357	302	5. All	94.4
14103	357	133	5. All	94.4
14104	357	315	5. All	89.1
14105	357	262	5. All	89.1
14106	357	331	5. All	89.1
14107	357	1689	5. All	89.1
14108	357	4	5. All	87.1
14109	357	144	5. All	84.9
14110	357	381	5. All	84.9
14111	357	1692	5. All	84.9
14112	357	303	5. All	84.9
14113	357	533	5. All	84.9
14114	357	233	5. All	84.9
14115	357	1006	5. All	82.5
14116	357	1421	5. All	82.5
14117	357	392	5. All	82.5
14118	357	1688	5. All	82.5
14119	357	1082	5. All	82.5
14120	357	1694	5. All	82.5
14121	357	1693	5. All	82.5
14122	357	1695	5. All	82.5
14123	357	1332	5. All	82.5
14124	357	1699	5. All	82.5
14125	357	202	5. All	82.5
14126	357	430	5. All	82.5
14127	357	571	5. All	82.5
14128	357	680	5. All	82.5
14129	357	141	5. All	82.5
14130	357	53	5. All	82.5
14131	357	160	5. All	82.5
14132	357	27	5. All	82.5
14133	357	167	5. All	82.5
14134	357	196	5. All	82.5
14135	357	188	5. All	82.5
14136	357	94	5. All	76.9
14137	357	173	5. All	69.7
14138	357	234	5. All	69.7
14139	357	401	5. All	69.7
14140	357	136	5. All	65.1
14141	357	1068	5. All	65.1
14142	357	403	5. All	65.1
14143	357	198	5. All	59.5
14144	357	329	5. All	59.5
14145	357	58	5. All	59.5
14146	357	1468	5. All	59.5
14147	357	1003	5. All	59.5
14148	357	542	5. All	59.5
14149	357	122	5. All	59.5
14150	357	928	5. All	59.5
14151	357	1690	5. All	59.5
14152	357	1691	5. All	59.5
14153	357	328	5. All	52.3
14154	357	749	5. All	52.3
14155	357	65	5. All	52.3
14156	357	607	5. All	52.3
14157	357	1341	5. All	52.3
14158	357	77	5. All	52.3
14159	357	32	5. All	52.3
14160	357	26	5. All	52.3
14161	357	1070	5. All	52.3
14162	357	137	5. All	52.3
14163	357	983	5. All	52.3
14164	357	50	5. All	52.3
14165	357	560	5. All	52.3
14166	357	128	5. All	52.3
14167	357	342	5. All	52.3
14168	357	318	5. All	52.3
14169	357	596	5. All	52.3
14170	357	617	5. All	42.3
14171	357	427	5. All	42.3
14172	357	619	5. All	42.3
14173	357	1697	5. All	42.3
14174	357	1	5. All	42.3
14175	357	475	5. All	42.3
14176	357	532	5. All	42.3
14177	357	608	5. All	42.3
14178	357	74	5. All	42.3
14179	357	543	5. All	42.3
14180	357	951	5. All	42.3
14181	357	1698	5. All	42.3
14182	357	1334	5. All	42.3
14183	357	1676	5. All	42.3
14184	357	341	5. All	42.3
14185	357	326	5. All	42.3
14186	357	319	5. All	42.3
14187	357	384	5. All	42.3
14188	357	523	5. All	42.3
14189	357	1195	5. All	42.3
14190	357	1015	5. All	42.3
14191	357	1573	5. All	42.3
14192	357	1696	5. All	42.3
14193	357	724	5. All	42.3
14194	357	1487	5. All	42.3
14195	357	1417	5. All	42.3
14196	357	677	5. All	42.3
14197	357	132	5. All	42.3
14198	357	461	5. All	42.3
14199	357	2	5. All	42.3
14200	358	1	4. More Than Six Months	100
14201	358	1700	4. More Than Six Months	100
14202	358	1700	5. All	100
14203	358	1	5. All	67.6
14204	358	301	5. All	67.6
14205	359	594	1. Thirty Days	100
14206	359	558	1. Thirty Days	100
14207	359	1701	1. Thirty Days	100
14208	359	13	1. Thirty Days	100
14209	359	12	1. Thirty Days	100
14210	359	330	1. Thirty Days	100
14211	359	134	2. Three Months	100
14212	359	239	2. Three Months	98.3
14213	359	774	2. Three Months	96.4
14214	359	315	2. Three Months	94.4
14215	359	1515	2. Three Months	87
14216	359	325	2. Three Months	83.9
14217	359	594	2. Three Months	83.9
14218	359	1701	2. Three Months	76
14219	359	12	2. Three Months	76
14220	359	13	2. Three Months	76
14221	359	308	2. Three Months	70.9
14222	359	122	2. Three Months	70.9
14223	359	558	2. Three Months	70.9
14224	359	410	2. Three Months	64.2
14225	359	1702	2. Three Months	64.2
14226	359	414	2. Three Months	54.8
14227	359	732	2. Three Months	54.8
14228	359	113	2. Three Months	54.8
14229	359	199	2. Three Months	54.8
14230	359	680	2. Three Months	54.8
14231	359	137	2. Three Months	54.8
14232	359	145	2. Three Months	54.8
14233	359	330	2. Three Months	54.8
14234	359	134	3. Six Months	100
14235	359	239	3. Six Months	95.8
14236	359	315	3. Six Months	94.3
14237	359	774	3. Six Months	92.6
14238	359	12	3. Six Months	92.6
14239	359	325	3. Six Months	90.7
14240	359	1515	3. Six Months	84.2
14241	359	594	3. Six Months	81.5
14242	359	1701	3. Six Months	74.9
14243	359	122	3. Six Months	74.9
14244	359	13	3. Six Months	70.7
14245	359	330	3. Six Months	65.6
14246	359	558	3. Six Months	65.6
14247	359	113	3. Six Months	65.6
14248	359	308	3. Six Months	65.6
14249	359	1702	3. Six Months	59.1
14250	359	410	3. Six Months	59.1
14251	359	137	3. Six Months	59.1
14252	359	477	3. Six Months	59.1
14253	359	1703	3. Six Months	59.1
14254	359	589	3. Six Months	59.1
14255	359	318	3. Six Months	49.9
14256	359	319	3. Six Months	49.9
14257	359	145	3. Six Months	49.9
14258	359	1704	3. Six Months	49.9
14259	359	680	3. Six Months	49.9
14260	359	805	3. Six Months	49.9
14261	359	183	3. Six Months	49.9
14262	359	199	3. Six Months	49.9
14263	359	414	3. Six Months	49.9
14264	359	248	3. Six Months	49.9
14265	359	130	3. Six Months	49.9
14266	359	255	3. Six Months	49.9
14267	359	732	3. Six Months	49.9
14268	359	1261	3. Six Months	49.9
14269	359	355	3. Six Months	49.9
14270	359	1265	3. Six Months	49.9
14271	359	94	3. Six Months	49.9
14272	359	325	4. More Than Six Months	100
14273	359	477	4. More Than Six Months	97
14274	359	594	4. More Than Six Months	89.6
14275	359	225	4. More Than Six Months	89.6
14276	359	805	4. More Than Six Months	87.3
14277	359	936	4. More Than Six Months	87.3
14278	359	12	4. More Than Six Months	84.8
14279	359	113	4. More Than Six Months	81.9
14280	359	539	4. More Than Six Months	75
14281	359	315	4. More Than Six Months	75
14282	359	154	4. More Than Six Months	75
14283	359	1705	4. More Than Six Months	70.7
14284	359	308	4. More Than Six Months	70.7
14285	359	122	4. More Than Six Months	70.7
14286	359	709	4. More Than Six Months	70.7
14287	359	1515	4. More Than Six Months	70.7
14288	359	255	4. More Than Six Months	70.7
14289	359	248	4. More Than Six Months	65.3
14290	359	411	4. More Than Six Months	65.3
14291	359	199	4. More Than Six Months	65.3
14292	359	589	4. More Than Six Months	65.3
14293	359	239	4. More Than Six Months	65.3
14294	359	151	4. More Than Six Months	65.3
14295	359	413	4. More Than Six Months	65.3
14296	359	1007	4. More Than Six Months	65.3
14297	359	426	4. More Than Six Months	65.3
14298	359	769	4. More Than Six Months	65.3
14299	359	1100	4. More Than Six Months	65.3
14300	359	314	4. More Than Six Months	58.5
14301	359	341	4. More Than Six Months	58.5
14302	359	540	4. More Than Six Months	58.5
14303	359	689	4. More Than Six Months	58.5
14304	359	318	4. More Than Six Months	58.5
14305	359	303	4. More Than Six Months	58.5
14306	359	35	4. More Than Six Months	58.5
14307	359	134	4. More Than Six Months	48.9
14308	359	335	4. More Than Six Months	48.9
14309	359	1706	4. More Than Six Months	48.9
14310	359	58	4. More Than Six Months	48.9
14311	359	4	4. More Than Six Months	48.9
14312	359	198	4. More Than Six Months	48.9
14313	359	220	4. More Than Six Months	48.9
14314	359	145	4. More Than Six Months	48.9
14315	359	148	4. More Than Six Months	48.9
14316	359	1469	4. More Than Six Months	48.9
14317	359	1707	4. More Than Six Months	48.9
14318	359	1708	4. More Than Six Months	48.9
14319	359	94	4. More Than Six Months	48.9
14320	359	1709	4. More Than Six Months	48.9
14321	359	1384	4. More Than Six Months	48.9
14322	359	137	4. More Than Six Months	48.9
14323	359	282	4. More Than Six Months	48.9
14324	359	850	4. More Than Six Months	48.9
14325	359	1223	4. More Than Six Months	48.9
14326	359	234	4. More Than Six Months	48.9
14327	359	329	4. More Than Six Months	48.9
14328	359	431	4. More Than Six Months	48.9
14329	359	1500	4. More Than Six Months	48.9
14330	359	130	4. More Than Six Months	48.9
14331	359	410	4. More Than Six Months	48.9
14332	359	325	5. All	100
14333	359	12	5. All	93.7
14334	359	134	5. All	91.6
14335	359	315	5. All	91.6
14336	359	594	5. All	90.4
14337	359	239	5. All	90.4
14338	359	477	5. All	89.2
14339	359	774	5. All	83.4
14340	359	1515	5. All	83.4
14341	359	1705	5. All	81.8
14342	359	113	5. All	79.9
14343	359	225	5. All	79.9
14344	359	805	5. All	79.9
14345	359	1709	5. All	78
14346	359	936	5. All	78
14347	359	1707	5. All	78
14348	359	122	5. All	78
14349	359	1708	5. All	75.8
14350	359	308	5. All	73.4
14351	359	255	5. All	67.7
14352	359	1701	5. All	67.7
14353	359	589	5. All	67.7
14354	359	539	5. All	67.7
14355	359	199	5. All	64.2
14356	359	154	5. All	64.2
14357	359	248	5. All	64.2
14358	359	13	5. All	64.2
14359	359	709	5. All	64.2
14360	359	137	5. All	60.1
14361	359	558	5. All	60.1
14362	359	426	5. All	60.1
14363	359	330	5. All	60.1
14364	359	769	5. All	60.1
14365	359	410	5. All	60.1
14366	359	318	5. All	60.1
14367	359	411	5. All	60.1
14368	359	413	5. All	55
14369	359	130	5. All	55
14370	359	145	5. All	55
14371	359	303	5. All	55
14372	359	94	5. All	55
14373	359	151	5. All	55
14374	359	314	5. All	55
14375	359	1007	5. All	55
14376	359	1100	5. All	55
14377	359	1384	5. All	48.6
14378	359	341	5. All	48.6
14379	359	414	5. All	48.6
14380	359	1703	5. All	48.6
14381	359	319	5. All	48.6
14382	359	355	5. All	48.6
14383	359	58	5. All	48.6
14384	359	540	5. All	48.6
14385	359	220	5. All	48.6
14386	359	1702	5. All	48.6
14387	359	198	5. All	48.6
14388	359	689	5. All	48.6
14389	359	35	5. All	48.6
14390	359	234	5. All	48.6
14391	359	680	5. All	48.6
14392	359	1223	5. All	48.6
14393	359	884	5. All	39.6
14394	359	1	5. All	39.6
14395	359	183	5. All	39.6
14396	359	1704	5. All	39.6
14397	359	184	5. All	39.6
14398	359	491	5. All	39.6
14399	359	17	5. All	39.6
14400	359	128	5. All	39.6
14401	359	1261	5. All	39.6
14402	359	732	5. All	39.6
14403	359	472	5. All	39.6
14404	359	262	5. All	39.6
14405	359	644	5. All	39.6
14406	359	1469	5. All	39.6
14407	359	784	5. All	39.6
14408	359	751	5. All	39.6
14409	359	1265	5. All	39.6
14410	359	30	5. All	39.6
14411	359	148	5. All	39.6
14412	359	335	5. All	39.6
14413	359	1706	5. All	39.6
14414	359	850	5. All	39.6
14415	359	329	5. All	39.6
14416	359	431	5. All	39.6
14417	359	302	5. All	39.6
14418	359	282	5. All	39.6
14419	359	4	5. All	39.6
14420	359	1500	5. All	39.6
14421	359	1710	5. All	39.6
14422	360	1	4. More Than Six Months	100
14423	360	1711	4. More Than Six Months	100
14424	360	1711	5. All	100
14425	360	1	5. All	66.3
14426	361	134	1. Thirty Days	100
14427	361	1360	2. Three Months	100
14428	361	134	2. Three Months	100
14429	361	888	3. Six Months	100
14430	361	778	3. Six Months	74.9
14431	361	1360	3. Six Months	74.9
14432	361	134	3. Six Months	74.9
14433	361	145	3. Six Months	74.9
14434	361	4	4. More Than Six Months	100
14435	361	119	4. More Than Six Months	100
14436	361	134	4. More Than Six Months	100
14437	361	13	4. More Than Six Months	91.9
14438	361	17	4. More Than Six Months	91.9
14439	361	778	4. More Than Six Months	91.9
14440	361	198	4. More Than Six Months	91.9
14441	361	221	4. More Than Six Months	80.6
14442	361	456	4. More Than Six Months	80.6
14443	361	625	4. More Than Six Months	80.6
14444	361	302	4. More Than Six Months	80.6
14445	361	130	4. More Than Six Months	80.6
14446	361	888	4. More Than Six Months	80.6
14447	361	888	5. All	100
14448	361	134	5. All	92.9
14449	361	119	5. All	88.5
14450	361	778	5. All	88.5
14451	361	4	5. All	83
14452	361	198	5. All	83
14453	361	17	5. All	75.9
14454	361	1360	5. All	75.9
14455	361	145	5. All	75.9
14456	361	13	5. All	75.9
14457	361	625	5. All	75.9
14458	361	302	5. All	66
14459	361	130	5. All	66
14460	361	456	5. All	66
14461	361	88	5. All	66
14462	361	221	5. All	66
14463	361	55	5. All	66
14464	361	128	5. All	66
14465	362	19	3. Six Months	100
14466	362	1712	4. More Than Six Months	100
14467	362	30	4. More Than Six Months	100
14468	362	1712	5. All	100
14469	362	19	5. All	76.3
14470	362	30	5. All	68.4
14471	363	341	3. Six Months	100
14472	363	1713	4. More Than Six Months	100
14473	363	1714	4. More Than Six Months	89.4
14474	363	1	4. More Than Six Months	89.4
14475	363	1714	5. All	100
14476	363	1713	5. All	74.9
14477	363	1	5. All	66.5
14478	363	341	5. All	66.5
14479	364	171	4. More Than Six Months	100
14480	364	31	4. More Than Six Months	89.1
14481	364	30	4. More Than Six Months	89.1
14482	364	171	5. All	100
14483	364	31	5. All	89
14484	364	30	5. All	89
14485	364	216	5. All	89
14486	365	1715	4. More Than Six Months	100
14487	365	568	4. More Than Six Months	100
14488	365	1715	5. All	100
14489	365	568	5. All	100
14490	365	146	5. All	67.1
14491	366	49	3. Six Months	100
14492	366	699	3. Six Months	100
14493	366	594	3. Six Months	100
14494	366	302	4. More Than Six Months	100
14495	366	65	4. More Than Six Months	91.8
14496	366	381	4. More Than Six Months	91.8
14497	366	9	4. More Than Six Months	80.3
14498	366	126	4. More Than Six Months	80.3
14499	366	130	4. More Than Six Months	80.3
14500	366	677	4. More Than Six Months	80.3
14501	366	59	4. More Than Six Months	80.3
14502	366	113	4. More Than Six Months	80.3
14503	366	220	4. More Than Six Months	80.3
14504	366	302	5. All	100
14505	366	65	5. All	91.4
14506	366	381	5. All	91.4
14507	366	59	5. All	91.4
14508	366	220	5. All	91.4
14509	366	49	5. All	91.4
14510	366	126	5. All	79.4
14511	366	9	5. All	79.4
14512	366	130	5. All	79.4
14513	366	677	5. All	79.4
14514	366	113	5. All	79.4
14515	366	699	5. All	79.4
14516	366	594	5. All	79.4
14517	366	31	5. All	79.4
14518	367	452	1. Thirty Days	100
14519	367	452	2. Three Months	100
14520	367	13	2. Three Months	87.9
14521	367	108	2. Three Months	81.7
14522	367	31	2. Three Months	73
14523	367	452	3. Six Months	100
14524	367	13	3. Six Months	85.6
14525	367	108	3. Six Months	85.6
14526	367	31	3. Six Months	66.7
14527	367	30	4. More Than Six Months	100
14528	367	312	4. More Than Six Months	100
14529	367	452	4. More Than Six Months	96.2
14530	367	31	4. More Than Six Months	91.8
14531	367	13	4. More Than Six Months	86.3
14532	367	60	4. More Than Six Months	86.3
14533	367	220	4. More Than Six Months	69.3
14534	367	1716	4. More Than Six Months	69.3
14535	367	1717	4. More Than Six Months	69.3
14536	367	108	4. More Than Six Months	69.3
14537	367	768	4. More Than Six Months	69.3
14538	367	452	5. All	100
14539	367	1717	5. All	89.9
14540	367	1716	5. All	89.9
14541	367	13	5. All	87.6
14542	367	30	5. All	85.1
14543	367	312	5. All	85.1
14544	367	31	5. All	82.2
14545	367	108	5. All	82.2
14546	367	60	5. All	75
14547	367	220	5. All	55.3
14548	367	768	5. All	55.3
14549	367	884	5. All	55.3
14550	367	92	5. All	55.3
14551	368	1718	3. Six Months	100
14552	368	1719	4. More Than Six Months	100
14553	368	119	4. More Than Six Months	100
14554	368	858	4. More Than Six Months	90.5
14555	368	856	4. More Than Six Months	84.2
14556	368	333	4. More Than Six Months	84.2
14557	368	1043	4. More Than Six Months	84.2
14558	368	1720	4. More Than Six Months	84.2
14559	368	198	4. More Than Six Months	84.2
14560	368	311	4. More Than Six Months	84.2
14561	368	138	4. More Than Six Months	76
14562	368	576	4. More Than Six Months	76
14563	368	113	4. More Than Six Months	76
14564	368	417	4. More Than Six Months	76
14565	368	35	4. More Than Six Months	76
14566	368	1721	4. More Than Six Months	76
14567	368	1722	4. More Than Six Months	76
14568	368	665	4. More Than Six Months	76
14569	368	1373	4. More Than Six Months	64.6
14570	368	1723	4. More Than Six Months	64.6
14571	368	1724	4. More Than Six Months	64.6
14572	368	1725	4. More Than Six Months	64.6
14573	368	1153	4. More Than Six Months	64.6
14574	368	773	4. More Than Six Months	64.6
14575	368	1726	4. More Than Six Months	64.6
14576	368	153	4. More Than Six Months	64.6
14577	368	1727	4. More Than Six Months	64.6
14578	368	1	4. More Than Six Months	64.6
14579	368	1728	4. More Than Six Months	64.6
14580	368	1729	4. More Than Six Months	64.6
14581	368	1730	4. More Than Six Months	64.6
14582	368	142	4. More Than Six Months	64.6
14583	368	28	4. More Than Six Months	64.6
14584	368	469	4. More Than Six Months	64.6
14585	368	491	4. More Than Six Months	64.6
14586	368	1731	4. More Than Six Months	64.6
14587	368	171	4. More Than Six Months	64.6
14588	368	1703	4. More Than Six Months	64.6
14589	368	130	4. More Than Six Months	64.6
14590	368	146	4. More Than Six Months	64.6
14591	368	1719	5. All	100
14592	368	1720	5. All	94.5
14593	368	1722	5. All	92.4
14594	368	1721	5. All	92.4
14595	368	1718	5. All	90
14596	368	1373	5. All	90
14597	368	1729	5. All	90
14598	368	1723	5. All	90
14599	368	1725	5. All	90
14600	368	1153	5. All	90
14601	368	1724	5. All	90
14602	368	1728	5. All	90
14603	368	1726	5. All	90
14604	368	1727	5. All	90
14605	368	773	5. All	90
14606	368	119	5. All	84.5
14607	368	858	5. All	72.9
14608	368	198	5. All	67.5
14609	368	311	5. All	67.5
14610	368	856	5. All	67.5
14611	368	333	5. All	67.5
14612	368	1043	5. All	67.5
14613	368	417	5. All	60.4
14614	368	576	5. All	60.4
14615	368	665	5. All	60.4
14616	368	35	5. All	60.4
14617	368	138	5. All	60.4
14618	368	113	5. All	60.4
14619	368	153	5. All	50.5
14620	368	142	5. All	50.5
14621	368	146	5. All	50.5
14622	368	1703	5. All	50.5
14623	368	469	5. All	50.5
14624	368	1731	5. All	50.5
14625	368	130	5. All	50.5
14626	368	1	5. All	50.5
14627	368	1730	5. All	50.5
14628	368	171	5. All	50.5
14629	368	491	5. All	50.5
14630	368	28	5. All	50.5
14631	368	511	5. All	50.5
14632	369	1332	2. Three Months	100
14633	369	59	3. Six Months	100
14634	369	1332	3. Six Months	89.4
14635	369	384	4. More Than Six Months	100
14636	369	1	4. More Than Six Months	86.4
14637	369	221	4. More Than Six Months	86.4
14638	369	444	4. More Than Six Months	69.5
14639	369	45	4. More Than Six Months	69.5
14640	369	4	4. More Than Six Months	69.5
14641	369	1467	4. More Than Six Months	69.5
14642	369	2	4. More Than Six Months	69.5
14643	369	108	4. More Than Six Months	69.5
14644	370	23	1. Thirty Days	100
14645	370	23	2. Three Months	100
14646	370	130	2. Three Months	80.6
14647	370	23	3. Six Months	100
14648	370	130	3. Six Months	85.6
14649	370	23	4. More Than Six Months	100
14650	370	130	4. More Than Six Months	100
14651	370	23	5. All	100
14652	370	130	5. All	94.3
14653	370	31	5. All	64.7
14654	371	220	4. More Than Six Months	100
14655	371	186	4. More Than Six Months	89.5
14656	371	751	4. More Than Six Months	89.5
14657	371	1732	4. More Than Six Months	89.5
14658	371	220	5. All	100
14659	371	751	5. All	100
14660	371	186	5. All	89.3
14661	371	1732	5. All	89.3
14662	372	699	3. Six Months	100
14663	372	881	3. Six Months	100
14664	372	699	4. More Than Six Months	100
14665	372	699	5. All	100
14666	372	881	5. All	77.2
14667	373	1733	4. More Than Six Months	100
14668	373	329	4. More Than Six Months	70.5
14669	373	1060	4. More Than Six Months	53.6
14670	373	911	4. More Than Six Months	53.6
14671	373	234	4. More Than Six Months	53.6
14672	373	1733	5. All	100
14673	373	329	5. All	68.2
14674	373	234	5. All	56.4
14675	373	1060	5. All	51.5
14676	373	911	5. All	51.5
14677	373	122	5. All	44.6
14678	374	289	4. More Than Six Months	100
14679	374	146	4. More Than Six Months	100
14680	374	1734	4. More Than Six Months	100
14681	374	126	4. More Than Six Months	100
14682	374	1734	5. All	100
14683	374	146	5. All	66
14684	374	289	5. All	66
14685	374	126	5. All	66
14686	375	563	2. Three Months	100
14687	375	50	2. Three Months	100
14688	375	12	3. Six Months	100
14689	375	106	3. Six Months	91.9
14690	375	1618	3. Six Months	91.9
14691	375	51	3. Six Months	91.9
14692	375	1507	3. Six Months	91.9
14693	375	318	3. Six Months	91.9
14694	375	107	3. Six Months	80.5
14695	375	142	3. Six Months	80.5
14696	375	1735	3. Six Months	80.5
14697	375	563	3. Six Months	80.5
14698	375	50	3. Six Months	80.5
14699	375	23	4. More Than Six Months	100
14700	375	31	4. More Than Six Months	100
14701	375	225	4. More Than Six Months	91.4
14702	375	142	4. More Than Six Months	91.4
14703	375	1736	4. More Than Six Months	91.4
14704	375	187	4. More Than Six Months	79.2
14705	375	1737	4. More Than Six Months	79.2
14706	375	7	4. More Than Six Months	79.2
14707	375	137	4. More Than Six Months	79.2
14708	375	1738	4. More Than Six Months	79.2
14709	375	332	4. More Than Six Months	79.2
14710	375	130	4. More Than Six Months	79.2
14711	375	146	4. More Than Six Months	79.2
14712	375	77	4. More Than Six Months	79.2
14713	375	326	4. More Than Six Months	79.2
14714	375	1736	5. All	100
14715	375	1738	5. All	97.6
14716	375	142	5. All	80.5
14717	375	31	5. All	75
14718	375	23	5. All	75
14719	375	51	5. All	75
14720	375	225	5. All	75
14721	375	12	5. All	75
14722	375	1507	5. All	67.9
14723	375	1618	5. All	67.9
14724	375	106	5. All	67.9
14725	375	107	5. All	67.9
14726	375	318	5. All	67.9
14727	375	1739	5. All	58
14728	375	899	5. All	58
14729	375	33	5. All	58
14730	375	328	5. All	58
14731	375	1735	5. All	58
14732	375	563	5. All	58
14733	375	1	5. All	58
14734	375	77	5. All	58
14735	375	137	5. All	58
14736	375	326	5. All	58
14737	375	146	5. All	58
14738	375	130	5. All	58
14739	375	332	5. All	58
14740	375	7	5. All	58
14741	375	1737	5. All	58
14742	375	187	5. All	58
14743	375	113	5. All	58
14744	375	50	5. All	58
14745	376	673	4. More Than Six Months	100
14746	376	58	4. More Than Six Months	100
14747	376	673	5. All	100
14748	376	58	5. All	100
14749	377	1070	3. Six Months	100
14750	377	1070	4. More Than Six Months	100
14751	377	1070	5. All	100
14752	378	142	4. More Than Six Months	100
14753	378	1174	4. More Than Six Months	100
14754	378	1740	4. More Than Six Months	100
14755	378	1174	5. All	100
14756	378	1740	5. All	100
14757	378	2	5. All	100
14758	378	142	5. All	100
14759	379	38	1. Thirty Days	100
14760	379	222	1. Thirty Days	100
14761	379	2	1. Thirty Days	100
14762	379	13	2. Three Months	100
14763	379	38	2. Three Months	100
14764	379	1471	2. Three Months	86.9
14765	379	22	2. Three Months	86.9
14766	379	37	2. Three Months	86.9
14767	379	959	2. Three Months	86.9
14768	379	326	2. Three Months	86.9
14769	379	73	2. Three Months	86.9
14770	379	113	2. Three Months	86.9
14771	379	222	2. Three Months	86.9
14772	379	914	2. Three Months	86.9
14773	379	2	2. Three Months	86.9
14774	379	1741	3. Six Months	100
14775	379	13	3. Six Months	94.2
14776	379	7	3. Six Months	82
14777	379	254	3. Six Months	82
14778	379	1742	3. Six Months	82
14779	379	2	3. Six Months	82
14780	379	14	3. Six Months	76.3
14781	379	482	3. Six Months	76.3
14782	379	38	3. Six Months	68.8
14783	379	914	3. Six Months	68.8
14784	379	959	3. Six Months	68.8
14785	379	73	3. Six Months	68.8
14786	379	62	3. Six Months	68.8
14787	379	326	3. Six Months	68.8
14788	379	20	3. Six Months	68.8
14789	379	164	3. Six Months	68.8
14790	379	237	3. Six Months	68.8
14791	379	1743	3. Six Months	58.4
14792	379	138	3. Six Months	58.4
14793	379	1257	3. Six Months	58.4
14794	379	22	3. Six Months	58.4
14795	379	184	3. Six Months	58.4
14796	379	113	3. Six Months	58.4
14797	379	222	3. Six Months	58.4
14798	379	37	3. Six Months	58.4
14799	379	109	3. Six Months	58.4
14800	379	1300	3. Six Months	58.4
14801	379	30	3. Six Months	58.4
14802	379	1471	3. Six Months	58.4
14803	379	3	3. Six Months	58.4
14804	379	72	3. Six Months	58.4
14805	379	43	3. Six Months	58.4
14806	379	963	3. Six Months	58.4
14807	379	63	3. Six Months	58.4
14808	379	18	3. Six Months	58.4
14809	379	340	3. Six Months	58.4
14810	379	13	4. More Than Six Months	81.1
14811	379	14	4. More Than Six Months	74.3
14812	379	7	4. More Than Six Months	68.3
14813	379	1	4. More Than Six Months	68.3
14814	379	18	4. More Than Six Months	62.3
14815	379	15	4. More Than Six Months	60.8
14816	379	31	4. More Than Six Months	60.8
14817	379	6	4. More Than Six Months	60.8
14818	379	139	4. More Than Six Months	60.8
14819	379	2	4. More Than Six Months	60.8
14820	379	3	4. More Than Six Months	59.2
14821	379	326	4. More Than Six Months	57.4
14822	379	17	4. More Than Six Months	57.4
14935	379	28	5. All	54.4
14823	379	79	4. More Than Six Months	57.4
14824	379	20	4. More Than Six Months	55.5
14825	379	23	4. More Than Six Months	55.5
14826	379	1744	4. More Than Six Months	55.5
14827	379	10	4. More Than Six Months	53.3
14828	379	28	4. More Than Six Months	53.3
14829	379	19	4. More Than Six Months	53.3
14830	379	63	4. More Than Six Months	50.8
14831	379	38	4. More Than Six Months	50.8
14832	379	12	4. More Than Six Months	48
14833	379	142	4. More Than Six Months	48
14834	379	27	4. More Than Six Months	48
14835	379	37	4. More Than Six Months	48
14836	379	36	4. More Than Six Months	48
14837	379	152	4. More Than Six Months	48
14838	379	35	4. More Than Six Months	48
14839	379	1158	4. More Than Six Months	44.6
14840	379	254	4. More Than Six Months	44.6
14841	379	983	4. More Than Six Months	44.6
14842	379	109	4. More Than Six Months	44.6
14843	379	313	4. More Than Six Months	44.6
14844	379	34	4. More Than Six Months	44.6
14845	379	1431	4. More Than Six Months	44.6
14846	379	568	4. More Than Six Months	44.6
14847	379	336	4. More Than Six Months	44.6
14848	379	73	4. More Than Six Months	40.6
14849	379	137	4. More Than Six Months	40.6
14850	379	67	4. More Than Six Months	40.6
14851	379	184	4. More Than Six Months	40.6
14852	379	110	4. More Than Six Months	40.6
14853	379	53	4. More Than Six Months	40.6
14854	379	113	4. More Than Six Months	40.6
14855	379	22	4. More Than Six Months	40.6
14856	379	314	4. More Than Six Months	35.3
14857	379	582	4. More Than Six Months	35.3
14858	379	50	4. More Than Six Months	35.3
14859	379	332	4. More Than Six Months	35.3
14860	379	1499	4. More Than Six Months	35.3
14861	379	306	4. More Than Six Months	35.3
14862	379	1745	4. More Than Six Months	35.3
14863	379	156	4. More Than Six Months	35.3
14864	379	153	4. More Than Six Months	35.3
14865	379	170	4. More Than Six Months	35.3
14866	379	26	4. More Than Six Months	35.3
14867	379	111	4. More Than Six Months	35.3
14868	379	1509	4. More Than Six Months	35.3
14869	379	172	4. More Than Six Months	35.3
14870	379	118	4. More Than Six Months	35.3
14871	379	854	4. More Than Six Months	35.3
14872	379	491	4. More Than Six Months	35.3
14873	379	30	4. More Than Six Months	35.3
14874	379	46	4. More Than Six Months	35.3
14875	379	421	4. More Than Six Months	35.3
14876	379	68	4. More Than Six Months	35.3
14877	379	1746	4. More Than Six Months	35.3
14878	379	1082	4. More Than Six Months	35.3
14879	379	39	4. More Than Six Months	35.3
14880	379	62	4. More Than Six Months	35.3
14881	379	222	4. More Than Six Months	35.3
14882	379	181	4. More Than Six Months	35.3
14883	379	1093	4. More Than Six Months	28.1
14884	379	537	4. More Than Six Months	28.1
14885	379	851	4. More Than Six Months	28.1
14886	379	75	4. More Than Six Months	28.1
14887	379	1747	4. More Than Six Months	28.1
14888	379	87	4. More Than Six Months	28.1
14889	379	1352	4. More Than Six Months	28.1
14890	379	103	4. More Than Six Months	28.1
14891	379	1748	4. More Than Six Months	28.1
14892	379	1749	4. More Than Six Months	28.1
14893	379	49	4. More Than Six Months	28.1
14894	379	150	4. More Than Six Months	28.1
14895	379	116	4. More Than Six Months	28.1
14896	379	619	4. More Than Six Months	28.1
14897	379	338	4. More Than Six Months	28.1
14898	379	557	4. More Than Six Months	28.1
14899	379	363	4. More Than Six Months	28.1
14900	379	8	4. More Than Six Months	28.1
14901	379	1127	4. More Than Six Months	28.1
14902	379	196	4. More Than Six Months	28.1
14903	379	173	4. More Than Six Months	28.1
14904	379	1483	4. More Than Six Months	28.1
14905	379	878	4. More Than Six Months	28.1
14906	379	57	4. More Than Six Months	28.1
14907	379	157	4. More Than Six Months	28.1
14908	379	89	4. More Than Six Months	28.1
14909	379	681	4. More Than Six Months	28.1
14910	379	13	5. All	84.5
14911	379	14	5. All	76.6
14912	379	7	5. All	72.2
14913	379	1	5. All	68.6
14914	379	2	5. All	66.5
14915	379	18	5. All	64.1
14916	379	31	5. All	61.4
14917	379	6	5. All	61.4
14918	379	326	5. All	61.4
14919	379	3	5. All	61.4
14920	379	15	5. All	61.4
14921	379	1750	5. All	59.9
14922	379	139	5. All	59.9
14923	379	1751	5. All	59.9
14924	379	20	5. All	59.9
14925	379	23	5. All	56.4
14926	379	79	5. All	56.4
14927	379	17	5. All	56.4
14928	379	577	5. All	56.4
14929	379	1752	5. All	56.4
14930	379	254	5. All	56.4
14931	379	38	5. All	56.4
14932	379	1753	5. All	56.4
14933	379	1754	5. All	56.4
14934	379	1755	5. All	56.4
14936	379	1744	5. All	54.4
14937	379	10	5. All	54.4
14938	379	63	5. All	54.4
14939	379	37	5. All	52.2
14940	379	19	5. All	52.2
14941	379	35	5. All	49.7
14942	379	36	5. All	49.7
14943	379	73	5. All	49.7
14944	379	109	5. All	49.7
14945	379	152	5. All	49.7
14946	379	142	5. All	49.7
14947	379	313	5. All	46.8
14948	379	62	5. All	46.8
14949	379	12	5. All	46.8
14950	379	27	5. All	46.8
14951	379	113	5. All	46.8
14952	379	22	5. All	46.8
14953	379	336	5. All	46.8
14954	379	222	5. All	43.4
14955	379	34	5. All	43.4
14956	379	138	5. All	43.4
14957	379	67	5. All	43.4
14958	379	983	5. All	43.4
14959	379	568	5. All	43.4
14960	379	30	5. All	43.4
14961	379	1431	5. All	43.4
14962	379	137	5. All	43.4
14963	379	491	5. All	39.2
14964	379	306	5. All	39.2
14965	379	421	5. All	39.2
14966	379	110	5. All	39.2
14967	379	172	5. All	39.2
14968	379	646	5. All	39.2
14969	379	854	5. All	39.2
14970	379	582	5. All	39.2
14971	379	111	5. All	39.2
14972	379	156	5. All	39.2
14973	379	53	5. All	39.2
14974	379	68	5. All	39.2
14975	379	363	5. All	33.9
14976	379	118	5. All	33.9
14977	379	50	5. All	33.9
14978	379	153	5. All	33.9
14979	379	49	5. All	33.9
14980	379	103	5. All	33.9
14981	379	170	5. All	33.9
14982	379	1483	5. All	33.9
14983	379	116	5. All	33.9
14984	379	39	5. All	33.9
14985	379	332	5. All	33.9
14986	379	75	5. All	33.9
14987	379	46	5. All	33.9
14988	379	21	5. All	33.9
14989	379	1499	5. All	33.9
14990	379	87	5. All	33.9
14991	379	1082	5. All	33.9
14992	379	150	5. All	33.9
14993	379	89	5. All	26.5
14994	379	557	5. All	26.5
14995	379	537	5. All	26.5
14996	379	196	5. All	26.5
14997	379	1748	5. All	26.5
14998	379	619	5. All	26.5
14999	379	173	5. All	26.5
15000	379	44	5. All	26.5
15001	379	1749	5. All	26.5
15002	379	45	5. All	26.5
15003	379	162	5. All	26.5
15004	379	1093	5. All	26.5
15005	379	157	5. All	26.5
15006	379	47	5. All	26.5
15007	379	338	5. All	26.5
15008	379	8	5. All	26.5
15009	379	32	5. All	26.5
15010	380	1	4. More Than Six Months	100
15011	380	20	4. More Than Six Months	89.2
15012	380	38	4. More Than Six Months	89.2
15013	380	1	5. All	100
15014	380	20	5. All	88.9
15015	380	13	5. All	88.9
15016	380	38	5. All	88.9
15017	380	47	5. All	88.9
15018	381	34	4. More Than Six Months	100
15019	381	7	4. More Than Six Months	100
15020	382	519	2. Three Months	100
15021	382	1619	2. Three Months	88.9
15022	382	113	2. Three Months	88.9
15023	382	2	2. Three Months	88.9
15024	382	1740	2. Three Months	88.9
15025	382	519	3. Six Months	100
15026	382	13	3. Six Months	100
15027	382	2	3. Six Months	100
15028	382	113	3. Six Months	100
15029	382	1619	3. Six Months	87.9
15030	382	302	3. Six Months	87.9
15031	382	1740	3. Six Months	87.9
15032	382	133	3. Six Months	87.9
15033	382	1560	4. More Than Six Months	100
15034	382	1	4. More Than Six Months	88
15035	382	32	4. More Than Six Months	88
15036	382	1756	4. More Than Six Months	88
15037	382	1656	4. More Than Six Months	88
15038	382	22	4. More Than Six Months	88
15039	382	1656	5. All	100
15040	382	113	5. All	78.1
15041	382	1560	5. All	71.3
15042	382	2	5. All	71.3
15043	382	13	5. All	71.3
15044	382	519	5. All	71.3
15045	382	1756	5. All	61.6
15046	382	302	5. All	61.6
15047	382	133	5. All	61.6
15048	382	1740	5. All	61.6
15049	382	49	5. All	61.6
15050	382	403	5. All	61.6
15051	382	1619	5. All	61.6
15052	382	26	5. All	61.6
15053	382	139	5. All	61.6
15054	382	91	5. All	61.6
15055	382	22	5. All	61.6
15056	382	32	5. All	61.6
15057	382	1	5. All	61.6
15058	382	293	5. All	61.6
15059	383	126	2. Three Months	100
15060	383	126	3. Six Months	100
15061	383	1757	4. More Than Six Months	100
15062	383	641	4. More Than Six Months	100
15063	383	61	4. More Than Six Months	100
15064	383	827	4. More Than Six Months	100
15186	386	91	5. All	54.1
15065	383	899	4. More Than Six Months	100
15066	383	233	4. More Than Six Months	100
15067	383	190	4. More Than Six Months	100
15068	383	130	4. More Than Six Months	100
15069	383	31	4. More Than Six Months	100
15070	383	560	4. More Than Six Months	100
15071	383	1522	4. More Than Six Months	100
15072	383	51	4. More Than Six Months	100
15073	383	744	4. More Than Six Months	100
15074	383	58	4. More Than Six Months	100
15075	383	126	5. All	100
15076	383	641	5. All	97.9
15077	383	1757	5. All	97.9
15078	383	61	5. All	62.4
15079	383	827	5. All	62.4
15080	383	899	5. All	62.4
15081	383	233	5. All	62.4
15082	383	130	5. All	62.4
15083	383	190	5. All	62.4
15084	383	31	5. All	62.4
15085	383	560	5. All	62.4
15086	383	1522	5. All	62.4
15087	383	51	5. All	62.4
15088	383	744	5. All	62.4
15089	383	58	5. All	62.4
15090	384	1684	4. More Than Six Months	100
15091	384	61	4. More Than Six Months	100
15092	384	1684	5. All	100
15093	384	61	5. All	100
15094	384	137	5. All	100
15095	385	166	3. Six Months	100
15096	385	58	4. More Than Six Months	100
15097	385	126	4. More Than Six Months	59.9
15098	385	58	5. All	100
15099	385	126	5. All	58.6
15100	385	166	5. All	58.6
15101	385	302	5. All	58.6
15102	386	1351	2. Three Months	100
15103	386	94	2. Three Months	100
15104	386	4	2. Three Months	100
15105	386	146	2. Three Months	89
15106	386	58	3. Six Months	100
15107	386	1351	3. Six Months	96.3
15108	386	94	3. Six Months	86.4
15109	386	412	3. Six Months	86.4
15110	386	4	3. Six Months	79.4
15111	386	146	3. Six Months	69.6
15112	386	2	3. Six Months	69.6
15113	386	30	4. More Than Six Months	100
15114	386	33	4. More Than Six Months	84.7
15115	386	31	4. More Than Six Months	84.7
15116	386	4	4. More Than Six Months	80.1
15117	386	35	4. More Than Six Months	80.1
15118	386	128	4. More Than Six Months	80.1
15119	386	94	4. More Than Six Months	80.1
15120	386	326	4. More Than Six Months	74.5
15121	386	3	4. More Than Six Months	74.5
15122	386	1758	4. More Than Six Months	74.5
15123	386	735	4. More Than Six Months	74.5
15124	386	1	4. More Than Six Months	74.5
15125	386	154	4. More Than Six Months	74.5
15126	386	130	4. More Than Six Months	74.5
15127	386	28	4. More Than Six Months	67.2
15128	386	299	4. More Than Six Months	67.2
15129	386	412	4. More Than Six Months	67.2
15130	386	558	4. More Than Six Months	67.2
15131	386	1353	4. More Than Six Months	57.1
15132	386	249	4. More Than Six Months	57.1
15133	386	308	4. More Than Six Months	57.1
15134	386	336	4. More Than Six Months	57.1
15135	386	38	4. More Than Six Months	57.1
15136	386	91	4. More Than Six Months	57.1
15137	386	1759	4. More Than Six Months	57.1
15138	386	1760	4. More Than Six Months	57.1
15139	386	141	4. More Than Six Months	57.1
15140	386	43	4. More Than Six Months	57.1
15141	386	53	4. More Than Six Months	57.1
15142	386	673	4. More Than Six Months	57.1
15143	386	1593	4. More Than Six Months	57.1
15144	386	65	4. More Than Six Months	57.1
15145	386	183	4. More Than Six Months	57.1
15146	386	148	4. More Than Six Months	57.1
15147	386	315	4. More Than Six Months	57.1
15148	386	1761	4. More Than Six Months	57.1
15149	386	30	5. All	100
15150	386	1759	5. All	95.3
15151	386	1760	5. All	95.3
15152	386	94	5. All	92.6
15153	386	58	5. All	89.6
15154	386	4	5. All	89.6
15155	386	412	5. All	86.1
15156	386	1351	5. All	86.1
15157	386	33	5. All	82.2
15158	386	31	5. All	82.2
15159	386	128	5. All	82.2
15160	386	35	5. All	77.5
15161	386	130	5. All	77.5
15162	386	1	5. All	77.5
15163	386	154	5. All	71.8
15164	386	1758	5. All	71.8
15165	386	3	5. All	71.8
15166	386	326	5. All	71.8
15167	386	735	5. All	71.8
15168	386	28	5. All	71.8
15169	386	38	5. All	64.4
15170	386	299	5. All	64.4
15171	386	558	5. All	64.4
15172	386	2	5. All	64.4
15173	386	249	5. All	54.1
15174	386	1593	5. All	54.1
15175	386	113	5. All	54.1
15176	386	308	5. All	54.1
15177	386	146	5. All	54.1
15178	386	1111	5. All	54.1
15179	386	452	5. All	54.1
15180	386	65	5. All	54.1
15181	386	19	5. All	54.1
15182	386	183	5. All	54.1
15183	386	1761	5. All	54.1
15184	386	336	5. All	54.1
15185	386	148	5. All	54.1
15187	386	141	5. All	54.1
15188	386	673	5. All	54.1
15189	386	1353	5. All	54.1
15190	386	43	5. All	54.1
15191	386	53	5. All	54.1
15192	386	315	5. All	54.1
15193	386	333	5. All	54.1
15194	386	229	5. All	54.1
15195	387	65	4. More Than Six Months	100
15196	387	68	4. More Than Six Months	100
15197	387	434	4. More Than Six Months	88.5
15198	387	137	4. More Than Six Months	88.5
15199	387	65	5. All	100
15200	387	68	5. All	100
15201	387	434	5. All	88.4
15202	387	137	5. All	88.4
15203	388	133	3. Six Months	100
15204	388	130	4. More Than Six Months	100
15205	388	1	4. More Than Six Months	100
15206	388	642	4. More Than Six Months	100
15207	388	94	4. More Than Six Months	100
15208	388	642	5. All	100
15209	388	130	5. All	66.1
15210	388	1	5. All	66.1
15211	388	94	5. All	66.1
15212	388	133	5. All	66.1
15213	389	1762	4. More Than Six Months	100
15214	389	1354	4. More Than Six Months	89.9
15215	389	17	4. More Than Six Months	89.9
15216	389	1762	5. All	100
15217	389	1354	5. All	98.1
15218	389	17	5. All	65.3
15219	390	745	4. More Than Six Months	100
15220	390	1763	4. More Than Six Months	89.6
15221	390	130	4. More Than Six Months	82.2
15222	390	389	4. More Than Six Months	71.9
15223	390	4	4. More Than Six Months	71.9
15224	390	712	4. More Than Six Months	71.9
15225	390	1560	4. More Than Six Months	71.9
15226	390	1764	4. More Than Six Months	71.9
15227	390	354	4. More Than Six Months	71.9
15228	390	134	4. More Than Six Months	71.9
15229	390	1765	4. More Than Six Months	71.9
15230	390	611	4. More Than Six Months	71.9
15231	390	745	5. All	100
15232	390	1763	5. All	89.5
15233	390	130	5. All	82.1
15234	390	134	5. All	82.1
15235	390	1764	5. All	71.6
15236	390	389	5. All	71.6
15237	390	4	5. All	71.6
15238	390	1560	5. All	71.6
15239	390	712	5. All	71.6
15240	390	354	5. All	71.6
15241	390	1765	5. All	71.6
15242	390	611	5. All	71.6
15243	391	1156	4. More Than Six Months	100
15244	391	1766	4. More Than Six Months	100
15245	391	503	4. More Than Six Months	100
15246	391	1	4. More Than Six Months	73.4
15247	391	30	4. More Than Six Months	64.4
15248	391	31	4. More Than Six Months	64.4
15249	391	19	4. More Than Six Months	64.4
15250	391	1767	4. More Than Six Months	64.4
15251	391	1767	5. All	100
15252	391	1766	5. All	100
15253	391	1156	5. All	100
15254	391	503	5. All	100
15255	391	1	5. All	73
15256	391	30	5. All	63.9
15257	391	31	5. All	63.9
15258	391	19	5. All	63.9
15259	392	348	4. More Than Six Months	100
15260	392	198	4. More Than Six Months	100
15261	392	325	4. More Than Six Months	90.1
15262	392	130	4. More Than Six Months	90.1
15263	392	348	5. All	100
15264	392	198	5. All	100
15265	392	130	5. All	89.5
15266	392	325	5. All	89.5
15267	392	1481	5. All	89.5
15268	393	1	2. Three Months	100
15269	393	1	3. Six Months	100
15270	393	846	4. More Than Six Months	100
15271	393	1	4. More Than Six Months	100
15272	393	1768	4. More Than Six Months	89.2
15273	393	128	4. More Than Six Months	89.2
15274	393	1768	5. All	100
15275	393	1	5. All	85.4
15276	393	846	5. All	74.7
15277	393	128	5. All	66.2
15278	394	130	1. Thirty Days	100
15279	394	30	1. Thirty Days	86
15280	394	318	1. Thirty Days	86
15281	394	59	1. Thirty Days	86
15282	394	262	1. Thirty Days	86
15283	394	22	1. Thirty Days	74.9
15284	394	4	1. Thirty Days	74.9
15285	394	302	1. Thirty Days	74.9
15286	394	293	1. Thirty Days	74.9
15287	394	332	1. Thirty Days	74.9
15288	394	128	1. Thirty Days	74.9
15289	394	457	1. Thirty Days	74.9
15290	394	640	1. Thirty Days	74.9
15291	394	558	1. Thirty Days	74.9
15292	394	381	2. Three Months	100
15293	394	113	2. Three Months	98.3
15294	394	130	2. Three Months	98.3
15295	394	636	2. Three Months	94.5
15296	394	751	2. Three Months	94.5
15297	394	1326	2. Three Months	92.3
15298	394	184	2. Three Months	90
15299	394	59	2. Three Months	84.5
15300	394	30	2. Three Months	77.3
15301	394	4	2. Three Months	77.3
15302	394	22	2. Three Months	77.3
15303	394	315	2. Three Months	72.8
15304	394	558	2. Three Months	72.8
15305	394	401	2. Three Months	72.8
15306	394	318	2. Three Months	72.8
15307	394	148	2. Three Months	72.8
15308	394	262	2. Three Months	72.8
15309	394	108	2. Three Months	67.3
15310	394	302	2. Three Months	67.3
15311	394	239	2. Three Months	67.3
15312	394	26	2. Three Months	60.3
15313	394	345	2. Three Months	60.3
15314	394	128	2. Three Months	60.3
15315	394	67	2. Three Months	60.3
15316	394	472	2. Three Months	60.3
15317	394	28	2. Three Months	60.3
15318	394	168	2. Three Months	60.3
15319	394	607	2. Three Months	60.3
15320	394	134	2. Three Months	60.3
15321	394	126	2. Three Months	60.3
15322	394	255	2. Three Months	60.3
15323	394	749	2. Three Months	60.3
15324	394	1149	2. Three Months	60.3
15325	394	2	2. Three Months	50.3
15326	394	457	2. Three Months	50.3
15327	394	301	2. Three Months	50.3
15328	394	640	2. Three Months	50.3
15329	394	332	2. Three Months	50.3
15330	394	293	2. Three Months	50.3
15331	394	1015	2. Three Months	50.3
15332	394	533	2. Three Months	50.3
15333	394	139	2. Three Months	50.3
15334	394	889	2. Three Months	50.3
15335	394	186	2. Three Months	50.3
15336	394	94	2. Three Months	50.3
15337	394	19	2. Three Months	50.3
15338	394	164	2. Three Months	50.3
15339	394	18	2. Three Months	50.3
15340	394	341	2. Three Months	50.3
15341	394	13	2. Three Months	50.3
15342	394	1357	2. Three Months	50.3
15343	394	133	2. Three Months	50.3
15344	394	140	2. Three Months	50.3
15345	394	113	3. Six Months	100
15346	394	59	3. Six Months	98.6
15347	394	130	3. Six Months	95.7
15348	394	381	3. Six Months	94
15349	394	4	3. Six Months	90.4
15350	394	636	3. Six Months	90.4
15351	394	184	3. Six Months	90.4
15352	394	751	3. Six Months	88.4
15353	394	1326	3. Six Months	88.4
15354	394	318	3. Six Months	86.2
15355	394	1769	3. Six Months	83.8
15356	394	522	3. Six Months	83.8
15357	394	315	3. Six Months	81.1
15358	394	607	3. Six Months	78.2
15359	394	134	3. Six Months	78.2
15360	394	22	3. Six Months	78.2
15361	394	168	3. Six Months	74.8
15362	394	302	3. Six Months	74.8
15363	394	30	3. Six Months	74.8
15364	394	401	3. Six Months	70.9
15365	394	472	3. Six Months	70.9
15366	394	114	3. Six Months	70.9
15367	394	558	3. Six Months	70.9
15368	394	126	3. Six Months	70.9
15369	394	94	3. Six Months	70.9
15370	394	262	3. Six Months	66.3
15371	394	255	3. Six Months	66.3
15372	394	148	3. Six Months	66.3
15373	394	198	3. Six Months	66.3
15374	394	28	3. Six Months	66.3
15375	394	239	3. Six Months	66.3
15376	394	316	3. Six Months	66.3
15377	394	43	3. Six Months	66.3
15378	394	53	3. Six Months	60.7
15379	394	749	3. Six Months	60.7
15380	394	58	3. Six Months	60.7
15381	394	332	3. Six Months	60.7
15382	394	67	3. Six Months	60.7
15383	394	108	3. Six Months	60.7
15384	394	1015	3. Six Months	60.7
15385	394	293	3. Six Months	60.7
15386	394	45	3. Six Months	60.7
15387	394	233	3. Six Months	60.7
15388	394	914	3. Six Months	53.5
15389	394	186	3. Six Months	53.5
15390	394	1018	3. Six Months	53.5
15391	394	345	3. Six Months	53.5
15392	394	74	3. Six Months	53.5
15393	394	1149	3. Six Months	53.5
15394	394	13	3. Six Months	53.5
15395	394	301	3. Six Months	53.5
15396	394	326	3. Six Months	53.5
15397	394	533	3. Six Months	53.5
15398	394	308	3. Six Months	53.5
15399	394	1087	3. Six Months	53.5
15400	394	133	3. Six Months	53.5
15401	394	31	3. Six Months	53.5
15402	394	26	3. Six Months	53.5
15403	394	622	3. Six Months	53.5
15404	394	258	3. Six Months	53.5
15405	394	814	3. Six Months	53.5
15406	394	19	3. Six Months	53.5
15407	394	220	3. Six Months	53.5
15408	394	194	3. Six Months	43.5
15409	394	1770	3. Six Months	43.5
15410	394	164	3. Six Months	43.5
15411	394	889	3. Six Months	43.5
15412	394	145	3. Six Months	43.5
15413	394	117	3. Six Months	43.5
15414	394	196	3. Six Months	43.5
15415	394	201	3. Six Months	43.5
15416	394	517	3. Six Months	43.5
15417	394	1771	3. Six Months	43.5
15418	394	774	3. Six Months	43.5
15419	394	1357	3. Six Months	43.5
15420	394	122	3. Six Months	43.5
15421	394	341	3. Six Months	43.5
15422	394	65	3. Six Months	43.5
15423	394	313	3. Six Months	43.5
15424	394	50	3. Six Months	43.5
15425	394	1704	3. Six Months	43.5
15426	394	797	3. Six Months	43.5
15427	394	845	3. Six Months	43.5
15428	394	427	3. Six Months	43.5
15429	394	1772	3. Six Months	43.5
15430	394	248	3. Six Months	43.5
15431	394	9	3. Six Months	43.5
15432	394	833	3. Six Months	43.5
15433	394	1773	3. Six Months	43.5
15434	394	68	3. Six Months	43.5
15435	394	271	3. Six Months	43.5
15436	394	132	3. Six Months	43.5
15437	394	1035	3. Six Months	43.5
15438	394	834	3. Six Months	43.5
15439	394	387	3. Six Months	43.5
15440	394	342	3. Six Months	43.5
15441	394	219	3. Six Months	43.5
15442	394	18	3. Six Months	43.5
15443	394	35	3. Six Months	43.5
15444	394	1	3. Six Months	43.5
15445	394	4	4. More Than Six Months	100
15446	394	315	4. More Than Six Months	99.2
15447	394	130	4. More Than Six Months	93.4
15448	394	58	4. More Than Six Months	91.9
15449	394	30	4. More Than Six Months	84.2
15450	394	173	4. More Than Six Months	79.1
15451	394	145	4. More Than Six Months	79.1
15452	394	117	4. More Than Six Months	77.1
15453	394	318	4. More Than Six Months	73.8
15454	394	19	4. More Than Six Months	73.8
15455	394	134	4. More Than Six Months	72.5
15456	394	196	4. More Than Six Months	72.5
15457	394	108	4. More Than Six Months	72.5
15458	394	186	4. More Than Six Months	72.5
15459	394	133	4. More Than Six Months	69.8
15460	394	1	4. More Than Six Months	68.4
15461	394	28	4. More Than Six Months	68.4
15462	394	113	4. More Than Six Months	66.8
15463	394	142	4. More Than Six Months	66.8
15464	394	67	4. More Than Six Months	66.8
15465	394	342	4. More Than Six Months	65.1
15466	394	43	4. More Than Six Months	65.1
15467	394	31	4. More Than Six Months	65.1
15468	394	26	4. More Than Six Months	63.3
15469	394	141	4. More Than Six Months	63.3
15470	394	13	4. More Than Six Months	63.3
15471	394	2	4. More Than Six Months	61.3
15472	394	50	4. More Than Six Months	61.3
15473	394	308	4. More Than Six Months	61.3
15474	394	68	4. More Than Six Months	61.3
15475	394	49	4. More Than Six Months	61.3
15476	394	140	4. More Than Six Months	59.1
15477	394	335	4. More Than Six Months	59.1
15478	394	154	4. More Than Six Months	59.1
15479	394	222	4. More Than Six Months	59.1
15480	394	168	4. More Than Six Months	59.1
15481	394	35	4. More Than Six Months	56.7
15482	394	148	4. More Than Six Months	56.7
15483	394	23	4. More Than Six Months	56.7
15484	394	184	4. More Than Six Months	56.7
15485	394	136	4. More Than Six Months	56.7
15486	394	180	4. More Than Six Months	54.1
15487	394	509	4. More Than Six Months	54.1
15488	394	87	4. More Than Six Months	54.1
15489	394	139	4. More Than Six Months	54.1
15490	394	150	4. More Than Six Months	54.1
15491	394	65	4. More Than Six Months	51.1
15492	394	114	4. More Than Six Months	51.1
15493	394	53	4. More Than Six Months	51.1
15494	394	22	4. More Than Six Months	51.1
15495	394	188	4. More Than Six Months	51.1
15496	394	440	4. More Than Six Months	51.1
15497	394	612	4. More Than Six Months	47.6
15498	394	18	4. More Than Six Months	47.6
15499	394	309	4. More Than Six Months	47.6
15500	394	673	4. More Than Six Months	47.6
15501	394	27	4. More Than Six Months	47.6
15502	394	191	4. More Than Six Months	47.6
15503	394	10	4. More Than Six Months	47.6
15504	394	344	4. More Than Six Months	47.6
15505	394	255	4. More Than Six Months	47.6
15506	394	106	4. More Than Six Months	47.6
15507	394	77	4. More Than Six Months	47.6
15508	394	197	4. More Than Six Months	47.6
15509	394	34	4. More Than Six Months	47.6
15510	394	241	4. More Than Six Months	47.6
15511	394	171	4. More Than Six Months	43.5
15512	394	244	4. More Than Six Months	43.5
15513	394	416	4. More Than Six Months	43.5
15514	394	1116	4. More Than Six Months	43.5
15515	394	611	4. More Than Six Months	43.5
15516	394	75	4. More Than Six Months	43.5
15517	394	759	4. More Than Six Months	43.5
15518	394	122	4. More Than Six Months	43.5
15519	394	155	4. More Than Six Months	43.5
15520	394	166	4. More Than Six Months	38.5
15521	394	137	4. More Than Six Months	38.5
15522	394	345	4. More Than Six Months	38.5
15523	394	351	4. More Than Six Months	38.5
15524	394	143	4. More Than Six Months	38.5
15525	394	192	4. More Than Six Months	38.5
15526	394	1774	4. More Than Six Months	38.5
15527	394	176	4. More Than Six Months	38.5
15528	394	774	4. More Than Six Months	38.5
15529	394	12	4. More Than Six Months	38.5
15530	394	73	4. More Than Six Months	38.5
15531	394	711	4. More Than Six Months	32.3
15532	394	414	4. More Than Six Months	32.3
15533	394	118	4. More Than Six Months	32.3
15534	394	15	4. More Than Six Months	32.3
15535	394	156	4. More Than Six Months	32.3
15536	394	350	4. More Than Six Months	32.3
15537	394	60	4. More Than Six Months	32.3
15538	394	403	4. More Than Six Months	32.3
15539	394	183	4. More Than Six Months	32.3
15540	394	47	4. More Than Six Months	23.8
15541	394	21	4. More Than Six Months	23.8
15542	394	348	4. More Than Six Months	23.8
15543	394	353	4. More Than Six Months	23.8
15544	394	354	4. More Than Six Months	23.8
15545	394	130	5. All	96
15546	394	58	5. All	89.6
15547	394	30	5. All	84.8
15548	394	113	5. All	82.2
15549	394	145	5. All	76.9
15550	394	134	5. All	76.9
15551	394	173	5. All	76
15552	394	117	5. All	75.1
15553	394	19	5. All	73.1
15554	394	184	5. All	73.1
15555	394	186	5. All	72.1
15556	394	28	5. All	71
15557	394	196	5. All	71
15558	394	133	5. All	69.8
15559	394	67	5. All	68.6
15560	394	1	5. All	67.4
15561	394	168	5. All	67.4
15562	394	31	5. All	66
15563	394	342	5. All	64.6
15564	394	142	5. All	64.6
15565	394	26	5. All	64.6
15566	394	22	5. All	64.6
15567	394	13	5. All	64.6
15568	394	331	5. All	63
15569	394	148	5. All	63
15570	394	141	5. All	61.4
15571	394	140	5. All	61.4
15572	394	68	5. All	61.4
15573	394	2	5. All	61.4
15574	394	50	5. All	61.4
15575	394	49	5. All	59.6
15576	394	35	5. All	57.6
15577	394	154	5. All	57.6
15578	394	255	5. All	57.6
15579	394	335	5. All	57.6
15580	394	332	5. All	55.5
15581	394	222	5. All	55.5
15582	394	139	5. All	55.5
15583	394	150	5. All	53.2
15584	394	136	5. All	53.2
15585	394	65	5. All	53.2
15586	394	23	5. All	53.2
15587	394	344	5. All	50.6
15588	394	188	5. All	50.6
15589	394	18	5. All	50.6
15590	394	180	5. All	50.6
15591	394	87	5. All	50.6
15592	394	106	5. All	47.6
15593	394	345	5. All	47.6
15594	394	122	5. All	47.6
15595	394	77	5. All	47.6
15596	394	440	5. All	47.6
15597	394	612	5. All	47.6
15598	394	191	5. All	47.6
15599	394	309	5. All	47.6
15600	394	27	5. All	44.2
15601	394	75	5. All	44.2
15602	394	197	5. All	44.2
15603	394	673	5. All	44.2
15604	394	155	5. All	44.2
15605	394	952	5. All	44.2
15606	394	416	5. All	44.2
15607	394	774	5. All	44.2
15608	394	171	5. All	44.2
15609	394	34	5. All	44.2
15610	394	10	5. All	44.2
15611	394	81	5. All	40.2
15612	394	1116	5. All	40.2
15613	394	192	5. All	40.2
15614	394	143	5. All	40.2
15615	394	244	5. All	40.2
15616	394	759	5. All	40.2
15617	394	137	5. All	40.2
15618	394	183	5. All	35.4
15619	394	1774	5. All	35.4
15620	394	73	5. All	35.4
15621	394	403	5. All	35.4
15622	394	704	5. All	35.4
15623	394	60	5. All	35.4
15624	394	176	5. All	35.4
15625	394	118	5. All	35.4
15626	394	351	5. All	35.4
15627	394	159	5. All	35.4
15628	394	166	5. All	35.4
15629	394	156	5. All	29.3
15630	394	350	5. All	29.3
15631	394	36	5. All	29.3
15632	394	151	5. All	29.3
15633	394	182	5. All	29.3
15634	394	189	5. All	29.3
15635	394	144	5. All	29.3
15636	394	354	5. All	21.2
15637	394	348	5. All	21.2
15638	394	353	5. All	21.2
15639	394	187	5. All	21.2
15640	394	356	5. All	21.2
15641	394	79	5. All	21.2
15642	394	149	5. All	21.2
15643	394	146	5. All	21.2
15644	394	1299	5. All	21.2
15645	395	220	4. More Than Six Months	100
15646	395	453	4. More Than Six Months	83.6
15647	395	220	5. All	100
15648	395	453	5. All	88.2
15649	396	13	3. Six Months	100
15650	396	30	4. More Than Six Months	100
15651	396	303	4. More Than Six Months	97.7
15652	396	13	4. More Than Six Months	92.2
15653	396	972	4. More Than Six Months	85.1
15654	396	54	4. More Than Six Months	85.1
15655	396	19	4. More Than Six Months	80.6
15656	396	183	4. More Than Six Months	80.6
15657	396	206	4. More Than Six Months	80.6
15658	396	1775	4. More Than Six Months	75.2
15659	396	74	4. More Than Six Months	75.2
15660	396	1776	4. More Than Six Months	75.2
15661	396	4	4. More Than Six Months	75.2
15662	396	1777	4. More Than Six Months	75.2
15663	396	49	4. More Than Six Months	75.2
15664	396	1437	4. More Than Six Months	75.2
15665	396	126	4. More Than Six Months	68.1
15666	396	603	4. More Than Six Months	68.1
15667	396	1778	4. More Than Six Months	68.1
15668	396	117	4. More Than Six Months	68.1
15669	396	1522	4. More Than Six Months	58.2
15670	396	707	4. More Than Six Months	58.2
15671	396	214	4. More Than Six Months	58.2
15672	396	302	4. More Than Six Months	58.2
15673	396	60	4. More Than Six Months	58.2
15674	396	326	4. More Than Six Months	58.2
15675	396	712	4. More Than Six Months	58.2
15676	396	91	4. More Than Six Months	58.2
15677	396	319	4. More Than Six Months	58.2
15678	396	1779	4. More Than Six Months	58.2
15679	396	521	4. More Than Six Months	58.2
15680	396	303	5. All	100
15681	396	30	5. All	100
15682	396	13	5. All	97.6
15683	396	54	5. All	85
15684	396	972	5. All	85
15685	396	19	5. All	80.5
15686	396	49	5. All	80.5
15687	396	183	5. All	80.5
15688	396	206	5. All	80.5
15689	396	1776	5. All	75
15690	396	4	5. All	75
15691	396	1437	5. All	75
15692	396	1775	5. All	75
15693	396	1777	5. All	75
15694	396	74	5. All	75
15695	396	91	5. All	67.9
15696	396	117	5. All	67.9
15697	396	1779	5. All	67.9
15698	396	1778	5. All	67.9
15699	396	126	5. All	67.9
15700	396	603	5. All	67.9
15701	396	302	5. All	57.9
15702	396	214	5. All	57.9
15703	396	712	5. All	57.9
15704	396	319	5. All	57.9
15705	396	1522	5. All	57.9
15706	396	521	5. All	57.9
15707	396	326	5. All	57.9
15708	396	707	5. All	57.9
15709	396	60	5. All	57.9
15710	396	1780	5. All	57.9
15711	396	53	5. All	57.9
15712	397	898	3. Six Months	100
15713	397	898	4. More Than Six Months	100
15714	397	60	4. More Than Six Months	96.1
15715	397	1	4. More Than Six Months	76.6
15716	397	898	5. All	100
15717	397	60	5. All	90.3
15718	397	1	5. All	79.7
15719	398	1781	4. More Than Six Months	100
15720	398	1436	4. More Than Six Months	100
15721	398	1626	4. More Than Six Months	100
15722	398	1781	5. All	100
15723	398	1436	5. All	68.7
15724	398	1626	5. All	68.7
15725	399	188	4. More Than Six Months	100
15726	399	1688	4. More Than Six Months	73.8
15727	399	188	5. All	100
15728	399	1688	5. All	73.5
15729	400	22	4. More Than Six Months	100
15730	400	211	4. More Than Six Months	100
15731	400	1414	4. More Than Six Months	100
15732	400	1414	5. All	100
15733	400	211	5. All	89.2
15734	400	22	5. All	89.2
15735	400	33	5. All	89.2
15736	400	28	5. All	89.2
15737	401	1782	4. More Than Six Months	100
15738	401	1783	4. More Than Six Months	100
15739	401	1784	4. More Than Six Months	100
15740	401	1785	4. More Than Six Months	100
15741	401	759	4. More Than Six Months	100
15742	401	1783	5. All	100
15743	401	1785	5. All	100
15744	401	1784	5. All	100
15745	401	1782	5. All	100
15746	401	759	5. All	64.3
15747	402	31	3. Six Months	100
15748	402	31	4. More Than Six Months	100
15749	402	130	4. More Than Six Months	93.1
15750	402	1	4. More Than Six Months	83.3
15751	402	1786	4. More Than Six Months	83.3
15752	402	1786	5. All	100
15753	402	31	5. All	89.3
15754	402	130	5. All	74.8
15755	402	1	5. All	66.4
15756	403	1787	2. Three Months	100
15757	403	1788	2. Three Months	93.4
15758	403	30	2. Three Months	84.1
15759	403	30	3. Six Months	100
15760	403	1788	3. Six Months	86.8
15761	403	1787	3. Six Months	86.8
15762	403	1015	3. Six Months	80
15763	403	417	3. Six Months	70.5
15764	403	9	3. Six Months	70.5
15765	403	382	3. Six Months	70.5
15766	403	139	3. Six Months	70.5
15767	403	1789	3. Six Months	70.5
15768	403	31	4. More Than Six Months	100
15769	403	30	4. More Than Six Months	85
15770	403	1790	4. More Than Six Months	80.6
15771	403	9	4. More Than Six Months	66.8
15772	403	1015	4. More Than Six Months	66.8
15773	403	18	4. More Than Six Months	66.8
15774	403	4	4. More Than Six Months	63.2
15775	403	454	4. More Than Six Months	63.2
15776	403	417	4. More Than Six Months	58.8
15777	403	2	4. More Than Six Months	58.8
15778	403	10	4. More Than Six Months	58.8
15779	403	58	4. More Than Six Months	53.1
15780	403	255	4. More Than Six Months	53.1
15781	403	428	4. More Than Six Months	53.1
15782	403	332	4. More Than Six Months	53.1
15783	403	1791	4. More Than Six Months	53.1
15784	403	32	4. More Than Six Months	53.1
15785	403	1792	4. More Than Six Months	53.1
15786	403	1793	4. More Than Six Months	45.1
15787	403	594	4. More Than Six Months	45.1
15788	403	1	4. More Than Six Months	45.1
15789	403	108	4. More Than Six Months	45.1
15790	403	459	4. More Than Six Months	45.1
15791	403	43	4. More Than Six Months	45.1
15792	403	22	4. More Than Six Months	45.1
15793	403	19	4. More Than Six Months	45.1
15794	403	625	4. More Than Six Months	45.1
15795	403	846	4. More Than Six Months	45.1
15796	403	60	4. More Than Six Months	45.1
15797	403	131	4. More Than Six Months	45.1
15798	403	65	4. More Than Six Months	45.1
15799	403	31	5. All	100
15800	403	30	5. All	91.8
15801	403	1790	5. All	81.2
15802	403	1015	5. All	73.8
15803	403	9	5. All	71.5
15804	403	4	5. All	65.7
15805	403	417	5. All	65.7
15806	403	18	5. All	65.7
15807	403	1788	5. All	62
15808	403	454	5. All	62
15809	403	2	5. All	57.5
15810	403	10	5. All	57.5
15811	403	1787	5. All	57.5
15812	403	58	5. All	57.5
15813	403	43	5. All	51.8
15814	403	255	5. All	51.8
15815	403	32	5. All	51.8
15816	403	1791	5. All	51.8
15817	403	625	5. All	51.8
15818	403	428	5. All	51.8
15819	403	1792	5. All	51.8
15820	403	332	5. All	51.8
15821	403	1710	5. All	43.7
15822	403	28	5. All	43.7
15823	403	1789	5. All	43.7
15824	403	65	5. All	43.7
15825	403	1794	5. All	43.7
15826	403	139	5. All	43.7
15827	403	382	5. All	43.7
15828	403	49	5. All	43.7
15829	403	594	5. All	43.7
15830	403	60	5. All	43.7
15831	403	846	5. All	43.7
15832	403	1	5. All	43.7
15833	403	22	5. All	43.7
15834	403	108	5. All	43.7
15835	403	459	5. All	43.7
15836	403	1793	5. All	43.7
15837	403	19	5. All	43.7
15838	403	131	5. All	43.7
15839	403	1795	5. All	43.7
15840	404	302	4. More Than Six Months	100
15841	404	130	4. More Than Six Months	94.8
15842	404	953	4. More Than Six Months	88.1
15843	404	19	4. More Than Six Months	78.6
15844	404	1053	4. More Than Six Months	78.6
15845	404	302	5. All	100
15846	404	130	5. All	94.8
15847	404	953	5. All	88.1
15848	404	19	5. All	78.6
15849	404	1053	5. All	78.6
15850	405	569	4. More Than Six Months	100
15851	405	1796	4. More Than Six Months	100
15852	405	113	4. More Than Six Months	100
15853	405	1796	5. All	100
15854	405	569	5. All	100
15855	405	113	5. All	67
15856	406	1797	4. More Than Six Months	100
15857	406	1506	4. More Than Six Months	100
15858	406	1798	4. More Than Six Months	100
15859	406	1799	4. More Than Six Months	100
15860	406	1798	5. All	100
15861	406	1506	5. All	100
15862	406	1797	5. All	100
15863	406	1799	5. All	100
15864	407	538	4. More Than Six Months	100
15865	407	33	4. More Than Six Months	79.3
15866	407	1800	4. More Than Six Months	79.3
15867	407	168	4. More Than Six Months	69.3
15868	407	969	4. More Than Six Months	69.3
15869	407	310	4. More Than Six Months	69.3
15870	407	659	4. More Than Six Months	69.3
15871	407	65	4. More Than Six Months	69.3
15872	407	146	4. More Than Six Months	69.3
15873	407	128	4. More Than Six Months	69.3
15874	407	538	5. All	100
15875	407	1800	5. All	93.3
15876	407	659	5. All	91.3
15877	407	33	5. All	65.4
15878	407	128	5. All	65.4
15879	407	146	5. All	56.8
15880	407	969	5. All	56.8
15881	407	168	5. All	56.8
15882	407	310	5. All	56.8
15883	407	65	5. All	56.8
15884	407	596	5. All	56.8
15885	407	160	5. All	56.8
15886	407	892	5. All	56.8
15887	408	220	2. Three Months	100
15888	408	220	3. Six Months	100
15889	408	130	4. More Than Six Months	100
15890	408	1801	4. More Than Six Months	72.3
15891	408	1802	4. More Than Six Months	72.3
15892	408	1803	4. More Than Six Months	72.3
15893	408	33	4. More Than Six Months	72.3
15894	408	1802	5. All	100
15895	408	1801	5. All	100
15896	408	1803	5. All	100
15897	408	130	5. All	92.1
15898	408	40	5. All	64.4
15899	408	33	5. All	64.4
15900	408	1264	5. All	64.4
15901	408	220	5. All	64.4
15902	409	239	3. Six Months	100
15903	409	122	3. Six Months	83.6
15904	409	1202	4. More Than Six Months	100
15905	409	192	4. More Than Six Months	91.9
15906	409	239	4. More Than Six Months	79
15907	409	145	4. More Than Six Months	74.1
15908	409	341	4. More Than Six Months	74.1
15909	409	311	4. More Than Six Months	74.1
15910	409	1804	4. More Than Six Months	67.8
15911	409	1805	4. More Than Six Months	67.8
15912	409	629	4. More Than Six Months	67.8
15913	409	411	4. More Than Six Months	67.8
15914	409	384	4. More Than Six Months	58.9
15915	409	1358	4. More Than Six Months	58.9
15916	409	229	4. More Than Six Months	58.9
15917	409	475	4. More Than Six Months	58.9
15918	409	160	4. More Than Six Months	58.9
15919	409	1594	4. More Than Six Months	58.9
15920	409	1020	4. More Than Six Months	58.9
15921	409	8	4. More Than Six Months	58.9
15922	409	122	4. More Than Six Months	58.9
15923	409	693	4. More Than Six Months	58.9
15924	409	1	4. More Than Six Months	58.9
15925	409	392	4. More Than Six Months	58.9
15926	409	1202	5. All	100
15927	409	311	5. All	100
15928	409	341	5. All	98.1
15929	409	1805	5. All	96
15930	409	192	5. All	93.8
15931	409	160	5. All	93.8
15932	409	475	5. All	93.8
15933	409	392	5. All	93.8
15934	409	1594	5. All	93.8
15935	409	8	5. All	93.8
15936	409	1020	5. All	93.8
15937	409	239	5. All	91.3
15938	409	145	5. All	72.1
15939	409	122	5. All	72.1
15940	409	629	5. All	65.3
15941	409	1804	5. All	65.3
15942	409	411	5. All	65.3
15943	409	384	5. All	55.7
15944	409	229	5. All	55.7
15945	409	693	5. All	55.7
15946	409	1358	5. All	55.7
15947	409	302	5. All	55.7
15948	409	1	5. All	55.7
15949	410	233	1. Thirty Days	100
15950	410	533	1. Thirty Days	100
15951	410	1525	1. Thirty Days	92
15952	410	1137	1. Thirty Days	92
15953	410	214	1. Thirty Days	80.7
15954	410	549	1. Thirty Days	80.7
15955	410	639	1. Thirty Days	80.7
15956	410	329	1. Thirty Days	80.7
15957	410	991	2. Three Months	100
15958	410	233	2. Three Months	98.5
15959	410	533	2. Three Months	96.8
15960	410	543	2. Three Months	91.1
15961	410	32	2. Three Months	91.1
15962	410	1806	2. Three Months	88.8
15963	410	639	2. Three Months	88.8
15964	410	315	2. Three Months	86.3
15965	410	214	2. Three Months	83.5
15966	410	1525	2. Three Months	83.5
15967	410	549	2. Three Months	76.6
15968	410	1807	2. Three Months	76.6
15969	410	199	2. Three Months	76.6
15970	410	508	2. Three Months	72.3
15971	410	928	2. Three Months	72.3
15972	410	546	2. Three Months	72.3
15973	410	239	2. Three Months	72.3
15974	410	130	2. Three Months	67
15975	410	637	2. Three Months	67
15976	410	1281	2. Three Months	67
15977	410	4	2. Three Months	67
15978	410	329	2. Three Months	60.1
15979	410	673	2. Three Months	60.1
15980	410	1137	2. Three Months	60.1
15981	410	173	2. Three Months	60.1
15982	410	638	2. Three Months	60.1
15983	410	219	2. Three Months	60.1
15984	410	545	2. Three Months	60.1
15985	410	1164	2. Three Months	60.1
15986	410	58	2. Three Months	50.6
15987	410	305	2. Three Months	50.6
15988	410	410	2. Three Months	50.6
15989	410	311	2. Three Months	50.6
15990	410	826	2. Three Months	50.6
15991	410	281	2. Three Months	50.6
15992	410	153	2. Three Months	50.6
15993	410	660	2. Three Months	50.6
15994	410	1060	2. Three Months	50.6
15995	410	65	2. Three Months	50.6
15996	410	1808	2. Three Months	50.6
15997	410	128	2. Three Months	50.6
15998	410	507	2. Three Months	50.6
15999	410	262	2. Three Months	50.6
16000	410	884	2. Three Months	50.6
16001	410	596	2. Three Months	50.6
16002	410	94	2. Three Months	50.6
16003	410	166	2. Three Months	50.6
16004	410	308	2. Three Months	50.6
16005	410	345	2. Three Months	50.6
16006	410	639	3. Six Months	100
16007	410	233	3. Six Months	99
16008	410	32	3. Six Months	97
16009	410	533	3. Six Months	97
16010	410	991	3. Six Months	93.6
16011	410	4	3. Six Months	88
16012	410	508	3. Six Months	88
16013	410	214	3. Six Months	88
16014	410	549	3. Six Months	84.7
16015	410	315	3. Six Months	82.8
16016	410	1525	3. Six Months	82.8
16017	410	1809	3. Six Months	80.7
16018	410	543	3. Six Months	80.7
16019	410	1806	3. Six Months	80.7
16020	410	1807	3. Six Months	80.7
16021	410	45	3. Six Months	78.5
16022	410	1	3. Six Months	78.5
16023	410	928	3. Six Months	78.5
16024	410	173	3. Six Months	76
16025	410	199	3. Six Months	76
16026	410	546	3. Six Months	76
16027	410	239	3. Six Months	73.3
16028	410	219	3. Six Months	73.3
16029	410	22	3. Six Months	70.2
16030	410	168	3. Six Months	70.2
16031	410	329	3. Six Months	66.6
16032	410	308	3. Six Months	66.6
16033	410	1281	3. Six Months	66.6
16034	410	166	3. Six Months	62.3
16035	410	130	3. Six Months	62.3
16036	410	637	3. Six Months	62.3
16037	410	341	3. Six Months	62.3
16038	410	1174	3. Six Months	62.3
16039	410	1673	3. Six Months	62.3
16040	410	133	3. Six Months	57.1
16041	410	128	3. Six Months	57.1
16042	410	638	3. Six Months	57.1
16043	410	545	3. Six Months	57.1
16044	410	153	3. Six Months	57.1
16045	410	325	3. Six Months	57.1
16046	410	65	3. Six Months	50.4
16047	410	410	3. Six Months	50.4
16048	410	1164	3. Six Months	50.4
16049	410	1087	3. Six Months	50.4
16050	410	305	3. Six Months	50.4
16051	410	500	3. Six Months	50.4
16052	410	311	3. Six Months	50.4
16053	410	814	3. Six Months	50.4
16054	410	673	3. Six Months	50.4
16055	410	144	3. Six Months	50.4
16056	410	262	3. Six Months	50.4
16057	410	114	3. Six Months	50.4
16058	410	135	3. Six Months	50.4
16059	410	1175	3. Six Months	50.4
16060	410	539	3. Six Months	50.4
16061	410	1137	3. Six Months	50.4
16062	410	621	3. Six Months	50.4
16063	410	1808	3. Six Months	50.4
16064	410	1060	3. Six Months	50.4
16065	410	58	3. Six Months	41.1
16066	410	1810	3. Six Months	41.1
16067	410	1155	3. Six Months	41.1
16068	410	507	3. Six Months	41.1
16069	410	826	3. Six Months	41.1
16070	410	660	3. Six Months	41.1
16071	410	797	3. Six Months	41.1
16072	410	19	3. Six Months	41.1
16073	410	766	3. Six Months	41.1
16074	410	281	3. Six Months	41.1
16075	410	134	3. Six Months	41.1
16076	410	884	3. Six Months	41.1
16077	410	1375	3. Six Months	41.1
16078	410	1384	3. Six Months	41.1
16079	410	749	3. Six Months	41.1
16080	410	198	3. Six Months	41.1
16081	410	54	3. Six Months	41.1
16082	410	220	3. Six Months	41.1
16083	410	629	3. Six Months	41.1
16084	410	685	3. Six Months	41.1
16085	410	596	3. Six Months	41.1
16086	410	1811	3. Six Months	41.1
16087	410	61	3. Six Months	41.1
16088	410	1487	3. Six Months	41.1
16089	410	312	3. Six Months	41.1
16090	410	935	3. Six Months	41.1
16091	410	94	3. Six Months	41.1
16092	410	345	3. Six Months	41.1
16093	410	13	4. More Than Six Months	90.4
16094	410	173	4. More Than Six Months	70.3
16095	410	168	4. More Than Six Months	69.3
16096	410	34	4. More Than Six Months	66
16097	410	23	4. More Than Six Months	66
16098	410	1	4. More Than Six Months	66
16099	410	18	4. More Than Six Months	66
16100	410	130	4. More Than Six Months	63.5
16101	410	113	4. More Than Six Months	63.5
16102	410	17	4. More Than Six Months	62.2
16103	410	28	4. More Than Six Months	62.2
16104	410	57	4. More Than Six Months	62.2
16105	410	54	4. More Than Six Months	60.7
16106	410	144	4. More Than Six Months	60.7
16107	410	77	4. More Than Six Months	60.7
16108	410	332	4. More Than Six Months	59.2
16109	410	67	4. More Than Six Months	59.2
16110	410	65	4. More Than Six Months	59.2
16111	410	31	4. More Than Six Months	59.2
16112	410	137	4. More Than Six Months	59.2
16113	410	87	4. More Than Six Months	59.2
16114	410	20	4. More Than Six Months	57.5
16115	410	2	4. More Than Six Months	57.5
16116	410	33	4. More Than Six Months	57.5
16117	410	63	4. More Than Six Months	55.7
16118	410	22	4. More Than Six Months	55.7
16119	410	37	4. More Than Six Months	55.7
16120	410	68	4. More Than Six Months	55.7
16121	410	143	4. More Than Six Months	53.7
16122	410	153	4. More Than Six Months	53.7
16123	410	49	4. More Than Six Months	53.7
16124	410	10	4. More Than Six Months	51.4
16125	410	139	4. More Than Six Months	51.4
16126	410	30	4. More Than Six Months	51.4
16127	410	19	4. More Than Six Months	51.4
16128	410	14	4. More Than Six Months	51.4
16129	410	35	4. More Than Six Months	51.4
16130	410	58	4. More Than Six Months	51.4
16131	410	134	4. More Than Six Months	51.4
16132	410	60	4. More Than Six Months	49
16133	410	335	4. More Than Six Months	49
16134	410	36	4. More Than Six Months	49
16135	410	147	4. More Than Six Months	49
16136	410	117	4. More Than Six Months	49
16137	410	161	4. More Than Six Months	46.2
16138	410	136	4. More Than Six Months	46.2
16139	410	197	4. More Than Six Months	43
16140	410	138	4. More Than Six Months	43
16141	410	222	4. More Than Six Months	43
16142	410	152	4. More Than Six Months	43
16143	410	303	4. More Than Six Months	43
16144	410	171	4. More Than Six Months	43
16145	410	39	4. More Than Six Months	39.2
16146	410	344	4. More Than Six Months	39.2
16147	410	349	4. More Than Six Months	39.2
16148	410	149	4. More Than Six Months	39.2
16149	410	146	4. More Than Six Months	39.2
16150	410	141	4. More Than Six Months	34.6
16151	410	145	4. More Than Six Months	34.6
16152	410	180	4. More Than Six Months	34.6
16153	410	342	4. More Than Six Months	34.6
16154	410	157	4. More Than Six Months	34.6
16155	410	133	4. More Than Six Months	34.6
16156	410	178	4. More Than Six Months	34.6
16157	410	150	4. More Than Six Months	34.6
16158	410	61	4. More Than Six Months	34.6
16159	410	255	4. More Than Six Months	34.6
16160	410	331	4. More Than Six Months	34.6
16161	410	140	4. More Than Six Months	34.6
16162	410	172	4. More Than Six Months	34.6
16163	410	345	4. More Than Six Months	34.6
16164	410	27	4. More Than Six Months	34.6
16165	410	390	4. More Than Six Months	28.9
16166	410	343	4. More Than Six Months	28.9
16167	410	156	4. More Than Six Months	28.9
16168	410	158	4. More Than Six Months	28.9
16169	410	759	4. More Than Six Months	28.9
16170	410	166	4. More Than Six Months	28.9
16171	410	195	4. More Than Six Months	28.9
16172	410	165	4. More Than Six Months	28.9
16173	410	79	4. More Than Six Months	28.9
16174	410	184	4. More Than Six Months	28.9
16175	410	73	4. More Than Six Months	28.9
16176	410	151	4. More Than Six Months	28.9
16177	410	142	4. More Than Six Months	28.9
16178	410	352	4. More Than Six Months	21.1
16179	410	155	4. More Than Six Months	21.1
16180	410	106	4. More Than Six Months	21.1
16181	410	403	4. More Than Six Months	21.1
16182	410	169	4. More Than Six Months	21.1
16183	410	192	4. More Than Six Months	21.1
16184	410	160	4. More Than Six Months	21.1
16185	410	354	4. More Than Six Months	21.1
16186	410	164	4. More Than Six Months	21.1
16187	410	181	4. More Than Six Months	21.1
16188	410	665	4. More Than Six Months	21.1
16189	410	176	4. More Than Six Months	21.1
16190	410	75	4. More Than Six Months	21.1
16191	410	673	4. More Than Six Months	21.1
16192	410	584	4. More Than Six Months	21.1
16193	410	13	5. All	89.1
16194	410	1	5. All	76.3
16195	410	173	5. All	73.2
16196	410	168	5. All	71
16197	410	22	5. All	69.5
16198	410	144	5. All	68.7
16199	410	65	5. All	67.8
16200	410	17	5. All	66.9
16201	410	33	5. All	64
16202	410	68	5. All	62.9
16203	410	134	5. All	62.9
16204	410	18	5. All	61.8
16205	410	34	5. All	61.8
16206	410	23	5. All	61.8
16207	410	335	5. All	60.6
16208	410	113	5. All	60.6
16209	410	54	5. All	59.3
16210	410	117	5. All	59.3
16211	410	60	5. All	59.3
16212	410	57	5. All	59.3
16213	410	28	5. All	57.9
16214	410	136	5. All	57.9
16215	410	87	5. All	56.5
16216	410	67	5. All	56.5
16217	410	77	5. All	56.5
16218	410	31	5. All	56.5
16219	410	153	5. All	56.5
16220	410	92	5. All	56.5
16221	410	145	5. All	54.9
16222	410	255	5. All	54.9
16223	410	332	5. All	54.9
16224	410	137	5. All	54.9
16225	410	150	5. All	53.3
16226	410	331	5. All	53.3
16227	410	2	5. All	53.3
16228	410	20	5. All	53.3
16229	410	167	5. All	53.3
16230	410	58	5. All	51.4
16231	410	37	5. All	51.4
16232	410	19	5. All	51.4
16233	410	196	5. All	51.4
16234	410	151	5. All	51.4
16235	410	49	5. All	51.4
16236	410	63	5. All	51.4
16237	410	158	5. All	51.4
16238	410	35	5. All	49.5
16239	410	30	5. All	49.5
16240	410	143	5. All	49.5
16241	410	330	5. All	49.5
16242	410	348	5. All	49.5
16243	410	10	5. All	47.3
16244	410	139	5. All	47.3
16245	410	14	5. All	47.3
16246	410	166	5. All	44.8
16247	410	133	5. All	44.8
16248	410	36	5. All	44.8
16249	410	147	5. All	44.8
16250	410	161	5. All	42
16251	410	171	5. All	42
16252	410	138	5. All	38.9
16253	410	152	5. All	38.9
16254	410	222	5. All	38.9
16255	410	345	5. All	38.9
16256	410	197	5. All	38.9
16257	410	61	5. All	38.9
16258	410	39	5. All	35.2
16259	410	146	5. All	35.2
16260	410	349	5. All	35.2
16261	410	140	5. All	35.2
16262	410	149	5. All	35.2
16263	410	178	5. All	30.7
16264	410	157	5. All	30.7
16265	410	141	5. All	30.7
16266	410	184	5. All	30.7
16267	410	180	5. All	30.7
16268	410	342	5. All	30.7
16269	410	172	5. All	30.7
16270	410	390	5. All	25
16271	410	73	5. All	25
16272	410	343	5. All	25
16273	410	79	5. All	25
16274	410	142	5. All	25
16275	410	759	5. All	25
16276	410	195	5. All	25
16277	410	165	5. All	25
16278	410	354	5. All	25
16279	410	156	5. All	25
16280	410	584	5. All	17.7
16281	410	164	5. All	17.7
16282	410	403	5. All	17.7
16283	410	118	5. All	17.7
16284	410	181	5. All	17.7
16285	410	192	5. All	17.7
16286	410	176	5. All	17.7
16287	410	352	5. All	17.7
16288	410	169	5. All	17.7
16289	410	155	5. All	17.7
16290	410	106	5. All	17.7
16291	410	189	5. All	17.7
16292	410	160	5. All	17.7
16293	411	384	3. Six Months	100
16294	411	384	4. More Than Six Months	100
16295	411	679	4. More Than Six Months	64.9
16296	411	1765	4. More Than Six Months	64.9
16297	411	1	4. More Than Six Months	64.9
16298	411	384	5. All	100
16299	411	1765	5. All	94.6
16300	411	679	5. All	61.7
16301	411	1	5. All	61.7
16302	411	31	5. All	61.7
16303	412	1734	2. Three Months	100
16304	412	131	2. Three Months	100
16305	412	262	3. Six Months	100
16306	412	1734	3. Six Months	100
16307	412	131	3. Six Months	100
16308	412	4	4. More Than Six Months	100
16309	412	19	4. More Than Six Months	100
16310	412	1812	4. More Than Six Months	100
16311	412	1813	4. More Than Six Months	100
16312	412	1814	4. More Than Six Months	100
16313	412	1813	5. All	100
16314	412	1812	5. All	100
16315	412	1814	5. All	100
16316	412	4	5. All	72.1
16317	412	19	5. All	62.7
16318	412	106	5. All	62.7
16319	412	262	5. All	62.7
16320	412	481	5. All	62.7
16321	412	1734	5. All	62.7
16322	412	131	5. All	62.7
16323	413	763	1. Thirty Days	100
16324	413	1815	2. Three Months	100
16325	413	1788	2. Three Months	100
16326	413	763	2. Three Months	100
16327	413	1506	3. Six Months	100
16328	413	980	3. Six Months	100
16329	413	1815	3. Six Months	89.2
16330	413	1788	3. Six Months	89.2
16331	413	763	3. Six Months	89.2
16332	413	1816	4. More Than Six Months	100
16333	413	1817	4. More Than Six Months	100
16334	413	332	4. More Than Six Months	73.6
16335	413	763	4. More Than Six Months	73.6
16336	413	13	4. More Than Six Months	73.6
16337	413	1	4. More Than Six Months	64.8
16338	413	966	4. More Than Six Months	64.8
16339	413	1788	4. More Than Six Months	64.8
16340	413	1817	5. All	100
16341	413	1816	5. All	100
16342	413	763	5. All	84.2
16343	413	1788	5. All	79.1
16344	413	1506	5. All	79.1
16345	413	332	5. All	72.5
16346	413	13	5. All	72.5
16347	413	980	5. All	72.5
16348	413	1	5. All	63.3
16349	413	966	5. All	63.3
16350	413	1815	5. All	63.3
16351	414	1818	4. More Than Six Months	100
16352	414	198	4. More Than Six Months	89.8
16353	414	1283	4. More Than Six Months	89.8
16354	414	32	4. More Than Six Months	89.8
16355	414	1818	5. All	100
16356	414	198	5. All	89.8
16357	414	1283	5. All	89.8
16358	414	32	5. All	89.8
16359	415	2	1. Thirty Days	100
16360	415	2	2. Three Months	100
16361	415	2	3. Six Months	100
16362	415	431	3. Six Months	80.4
16363	415	2	4. More Than Six Months	100
16364	415	183	4. More Than Six Months	94.9
16365	415	87	4. More Than Six Months	78.9
16366	415	2	5. All	100
16367	415	183	5. All	85.6
16368	415	87	5. All	66.7
16369	415	431	5. All	66.7
16370	416	225	4. More Than Six Months	100
16371	416	440	4. More Than Six Months	92.3
16372	416	4	4. More Than Six Months	92.3
16373	416	117	4. More Than Six Months	81.6
16374	416	225	5. All	100
16375	416	440	5. All	92.3
16376	416	4	5. All	92.3
16377	416	117	5. All	81.3
16378	416	61	5. All	81.3
16379	417	40	4. More Than Six Months	100
16380	417	40	5. All	100
16381	418	158	3. Six Months	100
16382	418	1819	4. More Than Six Months	100
16383	418	1820	4. More Than Six Months	90.3
16384	418	323	4. More Than Six Months	90.3
16385	418	1819	5. All	100
16386	418	158	5. All	88
16387	418	1820	5. All	66.2
16388	418	323	5. All	66.2
16389	419	1057	4. More Than Six Months	100
16390	419	1284	4. More Than Six Months	84.4
16391	419	1057	5. All	100
16392	419	1284	5. All	84.4
16393	420	68	4. More Than Six Months	100
16394	420	144	4. More Than Six Months	100
16395	420	65	4. More Than Six Months	100
16396	420	303	4. More Than Six Months	100
16397	420	65	5. All	100
16398	420	68	5. All	89
16399	420	303	5. All	89
16400	420	144	5. All	89
16401	420	30	5. All	89
16402	421	617	3. Six Months	100
16403	421	12	4. More Than Six Months	100
16404	421	139	4. More Than Six Months	100
16405	421	65	4. More Than Six Months	92.4
16406	421	108	4. More Than Six Months	92.4
16407	421	423	4. More Than Six Months	92.4
16408	421	475	4. More Than Six Months	92.4
16409	421	1821	4. More Than Six Months	92.4
16410	421	688	4. More Than Six Months	92.4
16411	421	309	4. More Than Six Months	92.4
16412	421	69	4. More Than Six Months	92.4
16413	421	383	4. More Than Six Months	81.8
16414	421	12	5. All	100
16415	421	139	5. All	100
16416	421	69	5. All	92.3
16417	421	423	5. All	92.3
16418	421	475	5. All	92.3
16419	421	1821	5. All	92.3
16420	421	309	5. All	92.3
16421	421	65	5. All	92.3
16422	421	688	5. All	92.3
16423	421	108	5. All	92.3
16424	421	383	5. All	81.5
16425	421	617	5. All	81.5
16426	422	659	4. More Than Six Months	100
16427	422	1822	4. More Than Six Months	100
16428	422	1822	5. All	100
16429	422	659	5. All	74.7
16430	423	225	1. Thirty Days	100
16431	423	644	1. Thirty Days	100
16432	423	225	2. Three Months	100
16433	423	644	2. Three Months	100
16434	423	225	3. Six Months	100
16435	423	340	3. Six Months	90.5
16436	423	644	3. Six Months	90.5
16437	423	751	4. More Than Six Months	100
16438	423	905	4. More Than Six Months	84.6
16439	423	94	4. More Than Six Months	84.6
16440	423	423	4. More Than Six Months	79.7
16441	423	145	4. More Than Six Months	73.3
16442	423	644	4. More Than Six Months	73.3
16443	423	225	4. More Than Six Months	73.3
16444	423	748	4. More Than Six Months	73.3
16445	423	1626	4. More Than Six Months	64.3
16446	423	248	4. More Than Six Months	64.3
16447	423	1702	4. More Than Six Months	64.3
16448	423	607	4. More Than Six Months	64.3
16449	423	130	4. More Than Six Months	64.3
16450	423	359	4. More Than Six Months	64.3
16451	423	751	5. All	100
16452	423	225	5. All	88.5
16453	423	905	5. All	84.4
16454	423	423	5. All	84.4
16455	423	644	5. All	84.4
16456	423	94	5. All	84.4
16457	423	145	5. All	72.9
16458	423	1702	5. All	72.9
16459	423	748	5. All	72.9
16460	423	1626	5. All	63.8
16461	423	607	5. All	63.8
16462	423	130	5. All	63.8
16463	423	340	5. All	63.8
16464	423	359	5. All	63.8
16465	423	248	5. All	63.8
16466	424	303	2. Three Months	100
16467	424	303	3. Six Months	100
16468	424	1823	4. More Than Six Months	100
16469	424	1824	4. More Than Six Months	100
16470	424	1823	5. All	100
16471	424	1824	5. All	66.4
16472	424	2	5. All	66.4
16473	424	28	5. All	66.4
16474	424	130	5. All	66.4
16475	424	303	5. All	66.4
16476	425	1825	2. Three Months	100
16477	425	1826	3. Six Months	100
16478	425	1825	3. Six Months	90.6
16479	425	1827	4. More Than Six Months	100
16480	425	1826	4. More Than Six Months	97.5
16481	425	1828	4. More Than Six Months	94.6
16482	425	1825	4. More Than Six Months	94.6
16483	425	1829	4. More Than Six Months	82.5
16484	425	1826	5. All	100
16485	425	1827	5. All	98.9
16486	425	1825	5. All	97.8
16487	425	1828	5. All	96.5
16488	425	1829	5. All	92.4
16489	426	39	4. More Than Six Months	100
16490	426	23	4. More Than Six Months	89.2
16491	426	1830	4. More Than Six Months	89.2
16492	426	30	4. More Than Six Months	89.2
16493	426	1830	5. All	100
16494	426	39	5. All	74.7
16495	426	23	5. All	66.2
16496	426	30	5. All	66.2
16497	427	549	1. Thirty Days	100
16498	427	637	1. Thirty Days	100
16499	427	549	2. Three Months	100
16500	427	28	2. Three Months	87.8
16501	427	30	2. Three Months	87.8
16502	427	508	2. Three Months	87.8
16503	427	638	2. Three Months	83.4
16504	427	183	2. Three Months	83.4
16505	427	13	2. Three Months	78.1
16506	427	637	2. Three Months	78.1
16507	427	53	2. Three Months	78.1
16508	427	1	2. Three Months	78.1
16509	427	1831	2. Three Months	78.1
16510	427	546	2. Three Months	71.2
16511	427	58	2. Three Months	71.2
16512	427	65	2. Three Months	61.5
16513	427	4	2. Three Months	61.5
16514	427	130	2. Three Months	61.5
16515	427	1657	2. Three Months	61.5
16516	427	62	2. Three Months	61.5
16517	427	1416	2. Three Months	61.5
16518	427	305	2. Three Months	61.5
16519	427	1831	3. Six Months	100
16520	427	549	3. Six Months	90.3
16521	427	28	3. Six Months	83
16522	427	508	3. Six Months	78.2
16523	427	30	3. Six Months	78.2
16524	427	13	3. Six Months	75.3
16525	427	130	3. Six Months	72
16526	427	1	3. Six Months	72
16527	427	31	3. Six Months	68.1
16528	427	638	3. Six Months	68.1
16529	427	183	3. Six Months	68.1
16530	427	637	3. Six Months	68.1
16531	427	4	3. Six Months	63.3
16532	427	53	3. Six Months	63.3
16533	427	58	3. Six Months	63.3
16534	427	65	3. Six Months	63.3
16535	427	546	3. Six Months	57.1
16536	427	129	3. Six Months	57.1
16537	427	133	3. Six Months	57.1
16538	427	639	3. Six Months	57.1
16539	427	884	3. Six Months	48.5
16540	427	128	3. Six Months	48.5
16541	427	26	3. Six Months	48.5
16542	427	168	3. Six Months	48.5
16543	427	64	3. Six Months	48.5
16544	427	113	3. Six Months	48.5
16545	427	18	3. Six Months	48.5
16546	427	500	3. Six Months	48.5
16547	427	1657	3. Six Months	48.5
16548	427	62	3. Six Months	48.5
16549	427	1416	3. Six Months	48.5
16550	427	305	3. Six Months	48.5
16551	427	13	4. More Than Six Months	100
16552	427	129	4. More Than Six Months	82.4
16553	427	1	4. More Than Six Months	82.4
16554	427	18	4. More Than Six Months	82.4
16555	427	65	4. More Than Six Months	82.4
16556	427	117	4. More Than Six Months	82.4
16557	427	113	4. More Than Six Months	77.8
16558	427	168	4. More Than Six Months	72.2
16559	427	1832	4. More Than Six Months	72.2
16560	427	19	4. More Than Six Months	72.2
16561	427	28	4. More Than Six Months	64.9
16562	427	363	4. More Than Six Months	64.9
16563	427	884	4. More Than Six Months	64.9
16564	427	2	4. More Than Six Months	64.9
16565	427	869	4. More Than Six Months	64.9
16566	427	1261	4. More Than Six Months	64.9
16567	427	30	4. More Than Six Months	64.9
16568	427	549	4. More Than Six Months	64.9
16569	427	340	4. More Than Six Months	64.9
16570	427	107	4. More Than Six Months	64.9
16571	427	27	4. More Than Six Months	64.9
16572	427	173	4. More Than Six Months	64.9
16573	427	318	4. More Than Six Months	64.9
16574	427	1626	4. More Than Six Months	54.7
16575	427	795	4. More Than Six Months	54.7
16576	427	186	4. More Than Six Months	54.7
16577	427	22	4. More Than Six Months	54.7
16578	427	14	4. More Than Six Months	54.7
16579	427	144	4. More Than Six Months	54.7
16580	427	154	4. More Than Six Months	54.7
16581	427	130	4. More Than Six Months	54.7
16582	427	642	4. More Than Six Months	54.7
16583	427	1833	4. More Than Six Months	54.7
16584	427	313	4. More Than Six Months	54.7
16585	427	1834	4. More Than Six Months	54.7
16586	427	887	4. More Than Six Months	54.7
16587	427	1835	4. More Than Six Months	54.7
16588	427	1836	4. More Than Six Months	54.7
16589	427	791	4. More Than Six Months	54.7
16590	427	1837	4. More Than Six Months	54.7
16591	427	77	4. More Than Six Months	54.7
16592	427	104	4. More Than Six Months	54.7
16593	427	31	4. More Than Six Months	54.7
16594	427	640	4. More Than Six Months	54.7
16595	427	406	4. More Than Six Months	54.7
16596	427	1035	4. More Than Six Months	54.7
16597	427	74	4. More Than Six Months	54.7
16598	427	17	4. More Than Six Months	54.7
16599	427	508	4. More Than Six Months	54.7
16600	427	1831	5. All	100
16601	427	13	5. All	96.5
16602	427	129	5. All	93.8
16603	427	549	5. All	93.8
16604	427	28	5. All	87.4
16605	427	1	5. All	85.5
16606	427	1832	5. All	85.5
16607	427	30	5. All	83.4
16608	427	1261	5. All	83.4
16609	427	1834	5. All	81.1
16610	427	791	5. All	81.1
16611	427	65	5. All	81.1
16612	427	1837	5. All	81.1
16613	427	1835	5. All	81.1
16614	427	508	5. All	81.1
16615	427	1836	5. All	81.1
16616	427	887	5. All	81.1
16617	427	130	5. All	75.8
16618	427	18	5. All	75.8
16619	427	113	5. All	72.6
16620	427	117	5. All	72.6
16621	427	31	5. All	72.6
16622	427	168	5. All	68.9
16623	427	183	5. All	68.9
16624	427	4	5. All	64.6
16625	427	58	5. All	64.6
16626	427	884	5. All	64.6
16627	427	637	5. All	64.6
16628	427	19	5. All	64.6
16629	427	638	5. All	64.6
16630	427	107	5. All	59.3
16631	427	53	5. All	59.3
16632	427	318	5. All	59.3
16633	427	639	5. All	59.3
16634	427	27	5. All	59.3
16635	427	2	5. All	59.3
16636	427	133	5. All	52.5
16637	427	128	5. All	52.5
16638	427	546	5. All	52.5
16639	427	186	5. All	52.5
16640	427	26	5. All	52.5
16641	427	17	5. All	52.5
16642	427	869	5. All	52.5
16643	427	154	5. All	52.5
16644	427	173	5. All	52.5
16645	427	363	5. All	52.5
16646	427	340	5. All	52.5
16647	427	104	5. All	52.5
16648	427	21	5. All	42.9
16649	427	1155	5. All	42.9
16650	427	144	5. All	42.9
16651	427	1416	5. All	42.9
16652	427	62	5. All	42.9
16653	427	914	5. All	42.9
16654	427	1657	5. All	42.9
16655	427	50	5. All	42.9
16656	427	106	5. All	42.9
16657	427	611	5. All	42.9
16658	427	64	5. All	42.9
16659	427	500	5. All	42.9
16660	427	137	5. All	42.9
16661	427	606	5. All	42.9
16662	427	642	5. All	42.9
16663	427	313	5. All	42.9
16664	427	1626	5. All	42.9
16665	427	36	5. All	42.9
16666	427	74	5. All	42.9
16667	427	1035	5. All	42.9
16668	427	640	5. All	42.9
16669	427	406	5. All	42.9
16670	427	795	5. All	42.9
16671	427	1833	5. All	42.9
16672	427	22	5. All	42.9
16673	427	14	5. All	42.9
16674	427	328	5. All	42.9
16675	427	109	5. All	42.9
16676	427	60	5. All	42.9
16677	427	15	5. All	42.9
16678	427	38	5. All	42.9
16679	427	403	5. All	42.9
16680	427	77	5. All	42.9
16681	427	655	5. All	42.9
16682	427	35	5. All	42.9
16683	427	305	5. All	42.9
16684	428	319	2. Three Months	100
16685	428	579	3. Six Months	100
16686	428	319	3. Six Months	89.9
16687	428	1777	3. Six Months	89.9
16688	428	3	4. More Than Six Months	100
16689	428	31	4. More Than Six Months	100
16690	428	319	4. More Than Six Months	100
16691	428	23	4. More Than Six Months	92.6
16692	428	319	5. All	100
16693	428	3	5. All	95.6
16694	428	31	5. All	90.2
16695	428	23	5. All	83.2
16696	428	579	5. All	83.2
16697	428	60	5. All	73.3
16698	428	1777	5. All	73.3
16699	429	77	4. More Than Six Months	100
16700	429	1	4. More Than Six Months	95.2
16701	429	13	4. More Than Six Months	89.2
16702	429	318	4. More Than Six Months	81.6
16703	429	154	4. More Than Six Months	70.9
16704	429	87	4. More Than Six Months	70.9
16705	429	117	4. More Than Six Months	70.9
16706	429	130	4. More Than Six Months	70.9
16707	429	18	4. More Than Six Months	70.9
16708	429	1838	4. More Than Six Months	70.9
16709	429	979	4. More Than Six Months	70.9
16710	429	1839	4. More Than Six Months	70.9
16711	429	81	4. More Than Six Months	70.9
16712	429	106	4. More Than Six Months	70.9
16713	429	9	4. More Than Six Months	70.9
16714	429	19	4. More Than Six Months	70.9
16715	429	1839	5. All	100
16716	429	1838	5. All	100
16717	429	979	5. All	100
16718	429	77	5. All	87.6
16719	429	1	5. All	83.2
16720	429	13	5. All	77.8
16721	429	318	5. All	70.9
16722	429	130	5. All	61.1
16723	429	248	5. All	61.1
16724	429	117	5. All	61.1
16725	429	87	5. All	61.1
16726	429	154	5. All	61.1
16727	429	18	5. All	61.1
16728	429	106	5. All	61.1
16729	429	9	5. All	61.1
16730	429	19	5. All	61.1
16731	429	315	5. All	61.1
16732	429	330	5. All	61.1
16733	429	135	5. All	61.1
16734	429	81	5. All	61.1
16735	430	113	1. Thirty Days	100
16736	430	130	2. Three Months	100
16737	430	58	2. Three Months	93.7
16738	430	4	2. Three Months	93.7
16739	430	68	2. Three Months	85.7
16740	430	1331	2. Three Months	85.7
16741	430	193	2. Three Months	85.7
16742	430	1603	2. Three Months	85.7
16743	430	106	2. Three Months	85.7
16744	430	138	2. Three Months	85.7
16745	430	113	2. Three Months	85.7
16746	430	332	2. Three Months	85.7
16747	430	30	2. Three Months	85.7
16748	430	117	2. Three Months	74.3
16749	430	340	2. Three Months	74.3
16750	430	335	2. Three Months	74.3
16751	430	31	2. Three Months	74.3
16752	430	13	2. Three Months	74.3
16753	430	135	2. Three Months	74.3
16754	430	130	3. Six Months	100
16755	430	30	3. Six Months	100
16756	430	68	3. Six Months	100
16757	430	58	3. Six Months	95.7
16758	430	117	3. Six Months	90.5
16759	430	4	3. Six Months	90.5
16760	430	106	3. Six Months	84.2
16761	430	31	3. Six Months	84.2
16762	430	135	3. Six Months	84.2
16763	430	1331	3. Six Months	84.2
16764	430	113	3. Six Months	84.2
16765	430	332	3. Six Months	84.2
16766	430	13	3. Six Months	84.2
16767	430	193	3. Six Months	76.1
16768	430	1603	3. Six Months	76.1
16769	430	138	3. Six Months	76.1
16770	430	335	3. Six Months	76.1
16771	430	45	3. Six Months	76.1
16772	430	19	3. Six Months	76.1
16773	430	73	3. Six Months	64.8
16774	430	340	3. Six Months	64.8
16775	430	173	3. Six Months	64.8
16776	430	28	3. Six Months	64.8
16777	430	496	3. Six Months	64.8
16778	430	543	3. Six Months	64.8
16779	430	249	3. Six Months	64.8
16780	430	199	3. Six Months	64.8
16781	430	159	3. Six Months	64.8
16782	430	77	3. Six Months	64.8
16783	430	88	3. Six Months	64.8
16784	430	196	3. Six Months	64.8
16785	430	30	4. More Than Six Months	100
16786	430	130	4. More Than Six Months	94.8
16787	430	1334	4. More Than Six Months	91.7
16788	430	31	4. More Than Six Months	86.1
16789	430	1	4. More Than Six Months	84
16790	430	113	4. More Than Six Months	79
16791	430	65	4. More Than Six Months	79
16792	430	108	4. More Than Six Months	76.1
16793	430	19	4. More Than Six Months	76.1
16794	430	335	4. More Than Six Months	76.1
16795	430	142	4. More Than Six Months	76.1
16796	430	22	4. More Than Six Months	76.1
16797	430	58	4. More Than Six Months	72.8
16798	430	13	4. More Than Six Months	72.8
16799	430	144	4. More Than Six Months	69
16800	430	833	4. More Than Six Months	69
16801	430	625	4. More Than Six Months	69
16802	430	3	4. More Than Six Months	69
16803	430	15	4. More Than Six Months	69
16804	430	159	4. More Than Six Months	64.5
16805	430	128	4. More Than Six Months	64.5
16806	430	107	4. More Than Six Months	64.5
16807	430	305	4. More Than Six Months	64.5
16808	430	43	4. More Than Six Months	64.5
16809	430	330	4. More Than Six Months	64.5
16810	430	146	4. More Than Six Months	64.5
16811	430	196	4. More Than Six Months	64.5
16812	430	154	4. More Than Six Months	64.5
16813	430	172	4. More Than Six Months	64.5
16814	430	145	4. More Than Six Months	59
16815	430	54	4. More Than Six Months	59
16816	430	77	4. More Than Six Months	59
16817	430	303	4. More Than Six Months	59
16818	430	117	4. More Than Six Months	59
16819	430	73	4. More Than Six Months	59
16820	430	214	4. More Than Six Months	59
16821	430	2	4. More Than Six Months	59
16822	430	45	4. More Than Six Months	59
16823	430	74	4. More Than Six Months	59
16824	430	315	4. More Than Six Months	59
16825	430	28	4. More Than Six Months	59
16826	430	18	4. More Than Six Months	59
16827	430	4	4. More Than Six Months	59
16828	430	332	4. More Than Six Months	59
16829	430	1186	4. More Than Six Months	52
16830	430	137	4. More Than Six Months	52
16831	430	116	4. More Than Six Months	52
16832	430	318	4. More Than Six Months	52
16833	430	160	4. More Than Six Months	52
16834	430	173	4. More Than Six Months	52
16835	430	983	4. More Than Six Months	52
16836	430	249	4. More Than Six Months	52
16837	430	1489	4. More Than Six Months	52
16838	430	1519	4. More Than Six Months	52
16839	430	9	4. More Than Six Months	52
16840	430	222	4. More Than Six Months	52
16841	430	972	4. More Than Six Months	52
16842	430	914	4. More Than Six Months	52
16843	430	68	4. More Than Six Months	52
16844	430	540	4. More Than Six Months	52
16845	430	354	4. More Than Six Months	52
16846	430	326	4. More Than Six Months	52
16847	430	35	4. More Than Six Months	52
16848	430	143	4. More Than Six Months	52
16849	430	134	4. More Than Six Months	52
16850	430	539	4. More Than Six Months	42.2
16851	430	141	4. More Than Six Months	42.2
16852	430	497	4. More Than Six Months	42.2
16853	430	299	4. More Than Six Months	42.2
16854	430	342	4. More Than Six Months	42.2
16855	430	867	4. More Than Six Months	42.2
16856	430	258	4. More Than Six Months	42.2
16857	430	25	4. More Than Six Months	42.2
16858	430	849	4. More Than Six Months	42.2
16859	430	481	4. More Than Six Months	42.2
16860	430	46	4. More Than Six Months	42.2
16861	430	109	4. More Than Six Months	42.2
16862	430	1215	4. More Than Six Months	42.2
16863	430	593	4. More Than Six Months	42.2
16864	430	34	4. More Than Six Months	42.2
16865	430	270	4. More Than Six Months	42.2
16866	430	14	4. More Than Six Months	42.2
16867	430	153	4. More Than Six Months	42.2
16868	430	23	4. More Than Six Months	42.2
16869	430	343	4. More Than Six Months	42.2
16870	430	27	4. More Than Six Months	42.2
16871	430	241	4. More Than Six Months	42.2
16872	430	38	4. More Than Six Months	42.2
16873	430	126	4. More Than Six Months	42.2
16874	430	1360	4. More Than Six Months	42.2
16875	430	351	4. More Than Six Months	42.2
16876	430	1419	4. More Than Six Months	42.2
16877	430	225	4. More Than Six Months	42.2
16878	430	573	4. More Than Six Months	42.2
16879	430	709	4. More Than Six Months	42.2
16880	430	426	4. More Than Six Months	42.2
16881	430	1771	4. More Than Six Months	42.2
16882	430	47	4. More Than Six Months	42.2
16883	430	32	4. More Than Six Months	42.2
16884	430	349	4. More Than Six Months	42.2
16885	430	30	5. All	100
16886	430	130	5. All	96.3
16887	430	31	5. All	86.5
16888	430	1334	5. All	84.9
16889	430	58	5. All	81.5
16890	430	113	5. All	81.5
16891	430	1	5. All	79.5
16892	430	13	5. All	77.4
16893	430	19	5. All	77.4
16894	430	335	5. All	77.4
16895	430	1191	5. All	77.4
16896	430	1840	5. All	75.1
16897	430	1841	5. All	75.1
16898	430	1842	5. All	75.1
16899	430	758	5. All	75.1
16900	430	72	5. All	75.1
16901	430	1843	5. All	75.1
16902	430	1844	5. All	75.1
16903	430	68	5. All	75.1
16904	430	108	5. All	72.6
16905	430	117	5. All	72.6
16906	430	65	5. All	72.6
16907	430	4	5. All	72.6
16908	430	22	5. All	72.6
16909	430	332	5. All	69.8
16910	430	142	5. All	69.8
16911	430	144	5. All	66.5
16912	430	45	5. All	66.5
16913	430	159	5. All	66.5
16914	430	3	5. All	66.5
16915	430	196	5. All	66.5
16916	430	15	5. All	62.8
16917	430	625	5. All	62.8
16918	430	833	5. All	62.8
16919	430	28	5. All	62.8
16920	430	128	5. All	62.8
16921	430	73	5. All	62.8
16922	430	77	5. All	62.8
16923	430	43	5. All	58.5
16924	430	305	5. All	58.5
16925	430	249	5. All	58.5
16926	430	154	5. All	58.5
16927	430	18	5. All	58.5
16928	430	107	5. All	58.5
16929	430	145	5. All	58.5
16930	430	146	5. All	58.5
16931	430	173	5. All	58.5
16932	430	172	5. All	58.5
16933	430	330	5. All	58.5
16934	430	74	5. All	58.5
16935	430	2	5. All	53.1
16936	430	214	5. All	53.1
16937	430	303	5. All	53.1
16938	430	134	5. All	53.1
16939	430	114	5. All	53.1
16940	430	972	5. All	53.1
16941	430	315	5. All	53.1
16942	430	983	5. All	46.3
16943	430	1519	5. All	46.3
16944	430	338	5. All	46.3
16945	430	540	5. All	46.3
16946	430	35	5. All	46.3
16947	430	914	5. All	46.3
16948	430	137	5. All	46.3
16949	430	326	5. All	46.3
16950	430	354	5. All	46.3
16951	430	539	5. All	46.3
16952	430	351	5. All	46.3
16953	430	426	5. All	46.3
16954	430	160	5. All	46.3
16955	430	318	5. All	46.3
16956	430	9	5. All	46.3
16957	430	222	5. All	46.3
16958	430	143	5. All	46.3
16959	430	14	5. All	36.8
16960	430	497	5. All	36.8
16961	430	481	5. All	36.8
16962	430	867	5. All	36.8
16963	430	1419	5. All	36.8
16964	430	593	5. All	36.8
16965	430	299	5. All	36.8
16966	430	349	5. All	36.8
16967	430	1360	5. All	36.8
16968	430	153	5. All	36.8
16969	430	27	5. All	36.8
16970	430	34	5. All	36.8
16971	430	109	5. All	36.8
16972	430	343	5. All	36.8
16973	430	342	5. All	36.8
16974	430	47	5. All	36.8
16975	430	709	5. All	36.8
16976	430	241	5. All	36.8
16977	430	32	5. All	36.8
16978	430	38	5. All	36.8
16979	430	25	5. All	36.8
16980	430	1771	5. All	36.8
16981	430	136	5. All	36.8
16982	430	23	5. All	36.8
16983	430	270	5. All	36.8
16984	430	126	5. All	36.8
16985	431	17	2. Three Months	100
16986	431	17	3. Six Months	100
16987	431	249	3. Six Months	100
16988	431	314	4. More Than Six Months	100
16989	431	32	4. More Than Six Months	88.5
16990	431	145	4. More Than Six Months	85.2
16991	431	392	4. More Than Six Months	81.4
16992	431	336	4. More Than Six Months	81.4
16993	431	63	4. More Than Six Months	81.4
16994	431	1845	4. More Than Six Months	61.9
16995	431	28	4. More Than Six Months	61.9
16996	431	314	5. All	100
16997	431	1845	5. All	96
16998	431	32	5. All	88.2
16999	431	145	5. All	84.8
17000	431	392	5. All	84.8
17001	431	336	5. All	80.9
17002	431	63	5. All	80.9
17003	431	249	5. All	69.7
17004	431	28	5. All	60.8
17005	431	17	5. All	60.8
17006	432	54	4. More Than Six Months	100
17007	432	54	5. All	100
17008	432	22	5. All	100
17009	433	362	3. Six Months	100
17010	433	258	3. Six Months	100
17011	433	75	4. More Than Six Months	100
17012	433	258	4. More Than Six Months	84.6
17013	433	362	4. More Than Six Months	81.2
17014	433	19	4. More Than Six Months	77.1
17015	433	65	4. More Than Six Months	65.8
17016	433	1846	4. More Than Six Months	65.8
17017	433	1847	4. More Than Six Months	65.8
17018	433	60	4. More Than Six Months	65.8
17019	433	1848	4. More Than Six Months	65.8
17020	433	636	4. More Than Six Months	56.8
17021	433	206	4. More Than Six Months	56.8
17022	433	726	4. More Than Six Months	56.8
17023	433	559	4. More Than Six Months	56.8
17024	433	1849	4. More Than Six Months	56.8
17025	433	1758	4. More Than Six Months	56.8
17026	433	1323	4. More Than Six Months	56.8
17027	433	1850	4. More Than Six Months	56.8
17028	433	1851	4. More Than Six Months	56.8
17029	433	1792	4. More Than Six Months	56.8
17030	433	59	4. More Than Six Months	56.8
17031	433	88	4. More Than Six Months	56.8
17032	433	27	4. More Than Six Months	56.8
17033	433	75	5. All	100
17034	433	1846	5. All	94.3
17035	433	1848	5. All	94.3
17036	433	1847	5. All	94.3
17037	433	1851	5. All	92
17038	433	1850	5. All	92
17039	433	559	5. All	92
17040	433	1323	5. All	92
17041	433	1758	5. All	92
17042	433	1849	5. All	92
17043	433	636	5. All	92
17044	433	258	5. All	89.5
17045	433	362	5. All	86.7
17046	433	19	5. All	75.5
17047	433	65	5. All	70.2
17048	433	726	5. All	63.4
17049	433	60	5. All	63.4
17050	433	59	5. All	53.9
17051	433	1792	5. All	53.9
17052	433	88	5. All	53.9
17053	433	206	5. All	53.9
17054	433	27	5. All	53.9
17055	433	1852	5. All	53.9
17056	433	313	5. All	53.9
17057	434	665	2. Three Months	100
17058	434	302	2. Three Months	73.9
17059	434	688	2. Three Months	65.7
17060	434	665	3. Six Months	100
17061	434	302	3. Six Months	78.4
17062	434	688	3. Six Months	72.3
17063	434	1853	3. Six Months	63.7
17064	434	427	3. Six Months	63.7
17065	434	26	3. Six Months	63.7
17066	434	4	4. More Than Six Months	100
17067	434	436	4. More Than Six Months	82.9
17068	434	144	4. More Than Six Months	82.9
17069	434	665	5. All	100
17070	434	4	5. All	77.5
17071	434	302	5. All	77.5
17072	434	427	5. All	71.1
17073	434	688	5. All	71.1
17074	434	436	5. All	62.1
17075	434	144	5. All	62.1
17076	434	1853	5. All	62.1
17077	434	229	5. All	62.1
17078	434	26	5. All	62.1
17079	435	1854	4. More Than Six Months	100
17080	435	1854	5. All	100
17081	436	453	3. Six Months	100
17082	436	484	4. More Than Six Months	100
17083	436	1102	4. More Than Six Months	86.1
17084	436	1855	4. More Than Six Months	86.1
17085	436	1188	4. More Than Six Months	86.1
17086	436	185	4. More Than Six Months	75
17087	436	222	4. More Than Six Months	75
17088	436	1375	4. More Than Six Months	75
17089	436	1672	4. More Than Six Months	75
17090	436	32	4. More Than Six Months	75
17091	436	363	4. More Than Six Months	75
17092	436	22	4. More Than Six Months	75
17093	436	28	4. More Than Six Months	75
17094	436	573	4. More Than Six Months	75
17095	436	18	4. More Than Six Months	75
17096	436	1188	5. All	100
17097	436	484	5. All	86
17098	436	1102	5. All	70.1
17099	436	1855	5. All	70.1
17100	436	1672	5. All	70.1
17101	436	185	5. All	60.8
17102	436	222	5. All	60.8
17103	436	1375	5. All	60.8
17104	436	32	5. All	60.8
17105	436	363	5. All	60.8
17106	436	573	5. All	60.8
17107	436	453	5. All	60.8
17108	436	22	5. All	60.8
17109	436	28	5. All	60.8
17110	436	18	5. All	60.8
17111	437	225	2. Three Months	100
17112	437	843	2. Three Months	100
17113	437	538	3. Six Months	100
17114	437	225	3. Six Months	79.9
17115	437	843	3. Six Months	79.9
17116	437	168	3. Six Months	79.9
17117	437	132	4. More Than Six Months	100
17118	437	1856	4. More Than Six Months	89.6
17119	437	225	4. More Than Six Months	89.6
17120	437	1856	5. All	100
17121	437	538	5. All	85.3
17122	437	225	5. All	80.6
17123	437	132	5. All	74.5
17124	437	843	5. All	65.9
17125	437	168	5. All	65.9
17126	438	13	3. Six Months	100
17127	438	13	4. More Than Six Months	100
17128	438	13	5. All	100
17129	439	497	2. Three Months	100
17130	439	1044	3. Six Months	100
17131	439	497	3. Six Months	100
17132	439	4	4. More Than Six Months	100
17133	439	497	4. More Than Six Months	88.2
17134	439	65	4. More Than Six Months	88.2
17135	439	4	5. All	100
17136	439	497	5. All	100
17137	439	65	5. All	87.8
17138	439	1044	5. All	87.8
17139	439	619	5. All	78.1
17140	439	173	5. All	78.1
17141	439	214	5. All	78.1
17142	440	775	4. More Than Six Months	100
17143	440	255	4. More Than Six Months	83.2
17144	440	1857	4. More Than Six Months	83.2
17145	440	881	4. More Than Six Months	83.2
17146	440	775	5. All	100
17147	440	255	5. All	83.1
17148	440	1857	5. All	83.1
17149	440	881	5. All	83.1
17150	441	38	2. Three Months	100
17151	441	13	3. Six Months	100
17152	441	38	3. Six Months	100
17153	441	1858	4. More Than Six Months	100
17154	441	13	4. More Than Six Months	94.6
17155	441	20	4. More Than Six Months	83.1
17156	441	37	4. More Than Six Months	77.6
17157	441	109	4. More Than Six Months	77.6
17158	441	77	4. More Than Six Months	77.6
17159	441	14	4. More Than Six Months	70.6
17160	441	31	4. More Than Six Months	70.6
17161	441	60	4. More Than Six Months	70.6
17162	441	47	4. More Than Six Months	70.6
17163	441	15	4. More Than Six Months	70.6
17164	441	108	4. More Than Six Months	70.6
17165	441	30	4. More Than Six Months	70.6
17166	441	10	4. More Than Six Months	60.8
17167	441	1499	4. More Than Six Months	60.8
17168	441	17	4. More Than Six Months	60.8
17169	441	349	4. More Than Six Months	60.8
17170	441	139	4. More Than Six Months	60.8
17171	441	103	4. More Than Six Months	60.8
17172	441	23	4. More Than Six Months	60.8
17173	441	70	4. More Than Six Months	60.8
17174	441	13	5. All	100
17175	441	1858	5. All	100
17176	441	20	5. All	82.8
17177	441	109	5. All	77.2
17178	441	77	5. All	77.2
17179	441	37	5. All	77.2
17180	441	47	5. All	77.2
17181	441	38	5. All	70.1
17182	441	108	5. All	70.1
17183	441	30	5. All	70.1
17184	441	15	5. All	70.1
17185	441	60	5. All	70.1
17186	441	31	5. All	70.1
17187	441	14	5. All	70.1
17188	441	349	5. All	60.1
17189	441	23	5. All	60.1
17190	441	582	5. All	60.1
17191	441	103	5. All	60.1
17192	441	139	5. All	60.1
17193	441	17	5. All	60.1
17194	441	10	5. All	60.1
17195	441	1499	5. All	60.1
17196	441	70	5. All	60.1
17197	441	1082	5. All	60.1
17198	441	65	5. All	60.1
17199	442	241	4. More Than Six Months	100
17200	442	221	4. More Than Six Months	73.5
17201	442	13	4. More Than Six Months	60.3
17202	442	17	4. More Than Six Months	60.3
17203	442	558	4. More Than Six Months	60.3
17204	442	241	5. All	100
17205	442	221	5. All	73.5
17206	442	13	5. All	60.2
17207	442	558	5. All	60.2
17208	442	17	5. All	60.2
17209	443	1859	4. More Than Six Months	100
17210	443	1860	4. More Than Six Months	100
17211	443	651	4. More Than Six Months	100
17212	443	406	4. More Than Six Months	100
17213	443	406	5. All	100
17214	443	651	5. All	100
17215	443	1860	5. All	100
17216	443	1859	5. All	100
17217	444	332	1. Thirty Days	100
17218	444	332	2. Three Months	100
17219	444	332	3. Six Months	100
17220	444	13	4. More Than Six Months	100
17221	444	593	4. More Than Six Months	89.7
17222	444	13	5. All	100
17223	444	593	5. All	89.3
17224	444	332	5. All	89.3
17225	445	870	1. Thirty Days	100
17226	445	1814	1. Thirty Days	85.8
17227	445	427	1. Thirty Days	71.5
17228	445	870	2. Three Months	100
17229	445	1814	2. Three Months	85.5
17230	445	427	2. Three Months	71
17231	445	870	3. Six Months	100
17232	445	135	3. Six Months	97
17233	445	1861	3. Six Months	84.4
17234	445	1814	3. Six Months	84.4
17235	445	150	3. Six Months	77.9
17236	445	31	3. Six Months	68.8
17237	445	471	3. Six Months	68.8
17238	445	427	3. Six Months	68.8
17239	445	106	4. More Than Six Months	100
17240	445	77	4. More Than Six Months	87.2
17241	445	126	4. More Than Six Months	78.2
17242	445	17	4. More Than Six Months	74.2
17243	445	239	4. More Than Six Months	69.2
17244	445	1480	4. More Than Six Months	69.2
17245	445	58	4. More Than Six Months	69.2
17246	445	35	4. More Than Six Months	62.9
17247	445	173	4. More Than Six Months	62.9
17248	445	19	4. More Than Six Months	62.9
17249	445	4	4. More Than Six Months	62.9
17250	445	328	4. More Than Six Months	53.9
17251	445	180	4. More Than Six Months	53.9
17252	445	475	4. More Than Six Months	53.9
17253	445	301	4. More Than Six Months	53.9
17254	445	386	4. More Than Six Months	53.9
17255	445	384	4. More Than Six Months	53.9
17256	445	833	4. More Than Six Months	53.9
17257	445	556	4. More Than Six Months	53.9
17258	445	1115	4. More Than Six Months	53.9
17259	445	342	4. More Than Six Months	53.9
17260	445	8	4. More Than Six Months	53.9
17261	445	1862	4. More Than Six Months	53.9
17262	445	39	4. More Than Six Months	53.9
17263	445	26	4. More Than Six Months	53.9
17264	445	185	4. More Than Six Months	53.9
17265	445	1697	4. More Than Six Months	53.9
17266	445	114	4. More Than Six Months	53.9
17267	445	1594	4. More Than Six Months	53.9
17268	445	340	4. More Than Six Months	53.9
17269	445	34	4. More Than Six Months	53.9
17270	445	348	4. More Than Six Months	53.9
17271	445	91	4. More Than Six Months	53.9
17272	445	330	4. More Than Six Months	53.9
17273	445	233	4. More Than Six Months	53.9
17274	445	28	4. More Than Six Months	53.9
17275	445	137	4. More Than Six Months	53.9
17276	445	3	4. More Than Six Months	53.9
17277	445	1863	4. More Than Six Months	53.9
17278	445	230	4. More Than Six Months	53.9
17279	445	113	4. More Than Six Months	53.9
17280	445	1864	4. More Than Six Months	53.9
17281	445	73	4. More Than Six Months	53.9
17282	445	2	4. More Than Six Months	53.9
17283	445	1106	4. More Than Six Months	53.9
17284	445	1865	4. More Than Six Months	53.9
17285	445	1324	4. More Than Six Months	53.9
17286	445	1264	4. More Than Six Months	53.9
17287	445	150	4. More Than Six Months	53.9
17288	445	106	5. All	100
17289	445	58	5. All	91.3
17290	445	4	5. All	91.3
17291	445	19	5. All	89.1
17292	445	35	5. All	89.1
17293	445	34	5. All	86.7
17294	445	1264	5. All	86.7
17295	445	342	5. All	86.7
17296	445	833	5. All	86.7
17297	445	348	5. All	86.7
17298	445	91	5. All	86.7
17299	445	1106	5. All	86.7
17300	445	1697	5. All	86.7
17301	445	114	5. All	86.7
17302	445	475	5. All	86.7
17303	445	301	5. All	86.7
17304	445	386	5. All	86.7
17305	445	328	5. All	86.7
17306	445	556	5. All	86.7
17307	445	1115	5. All	86.7
17308	445	384	5. All	86.7
17309	445	330	5. All	86.7
17310	445	180	5. All	86.7
17311	445	1864	5. All	86.7
17312	445	8	5. All	86.7
17313	445	28	5. All	86.7
17314	445	137	5. All	86.7
17315	445	3	5. All	86.7
17316	445	340	5. All	86.7
17317	445	1863	5. All	86.7
17318	445	113	5. All	86.7
17319	445	233	5. All	86.7
17320	445	73	5. All	86.7
17321	445	1865	5. All	86.7
17322	445	1324	5. All	86.7
17323	445	230	5. All	86.7
17324	445	1594	5. All	86.7
17325	445	2	5. All	86.7
17326	445	77	5. All	84.1
17327	445	870	5. All	81.1
17328	445	135	5. All	81.1
17329	445	126	5. All	77.8
17330	445	150	5. All	69.4
17331	445	239	5. All	69.4
17332	445	17	5. All	69.4
17333	445	1861	5. All	63.8
17334	445	1814	5. All	63.8
17335	445	1480	5. All	63.8
17336	445	173	5. All	56.6
17337	445	26	5. All	46.6
17338	445	185	5. All	46.6
17339	445	39	5. All	46.6
17340	445	1862	5. All	46.6
17341	445	31	5. All	46.6
17342	445	471	5. All	46.6
17343	445	13	5. All	46.6
17344	445	427	5. All	46.6
17345	446	65	2. Three Months	100
17346	446	65	3. Six Months	100
17347	446	1393	4. More Than Six Months	100
17348	446	315	4. More Than Six Months	100
17349	446	130	4. More Than Six Months	100
17350	446	726	4. More Than Six Months	100
17351	446	58	4. More Than Six Months	100
17352	446	333	4. More Than Six Months	100
17353	446	65	5. All	100
17354	446	726	5. All	88
17355	446	333	5. All	88
17356	446	58	5. All	88
17357	446	1393	5. All	88
17358	446	130	5. All	88
17359	446	315	5. All	88
17360	446	140	5. All	88
17361	447	21	4. More Than Six Months	100
17362	447	1866	4. More Than Six Months	100
17363	447	1019	4. More Than Six Months	100
17364	447	28	4. More Than Six Months	100
17365	447	28	5. All	100
17366	447	1019	5. All	100
17367	447	1866	5. All	100
17368	447	21	5. All	100
17369	448	302	1. Thirty Days	100
17370	448	302	2. Three Months	100
17371	448	302	3. Six Months	100
17372	448	255	4. More Than Six Months	100
17373	448	828	4. More Than Six Months	100
17374	448	220	4. More Than Six Months	100
17375	448	302	5. All	100
17376	448	255	5. All	89.7
17377	448	828	5. All	89.7
17378	448	220	5. All	89.7
17379	449	198	4. More Than Six Months	100
17380	449	113	4. More Than Six Months	91
17381	449	249	4. More Than Six Months	91
17382	449	414	4. More Than Six Months	85.1
17383	449	754	4. More Than Six Months	85.1
17384	449	58	4. More Than Six Months	85.1
17385	449	1867	4. More Than Six Months	77.4
17386	449	1868	4. More Than Six Months	77.4
17387	449	429	4. More Than Six Months	77.4
17388	449	711	4. More Than Six Months	66.6
17389	449	1869	4. More Than Six Months	66.6
17390	449	12	4. More Than Six Months	66.6
17391	449	1870	4. More Than Six Months	66.6
17392	449	546	4. More Than Six Months	66.6
17393	449	53	4. More Than Six Months	66.6
17394	449	417	4. More Than Six Months	66.6
17395	449	1871	4. More Than Six Months	66.6
17396	449	1872	4. More Than Six Months	66.6
17397	449	1337	4. More Than Six Months	66.6
17398	449	1045	4. More Than Six Months	66.6
17399	449	458	4. More Than Six Months	66.6
17400	449	1105	4. More Than Six Months	66.6
17401	449	743	4. More Than Six Months	66.6
17402	449	895	4. More Than Six Months	66.6
17403	449	39	4. More Than Six Months	66.6
17404	449	1873	4. More Than Six Months	66.6
17405	449	415	4. More Than Six Months	66.6
17406	449	1874	4. More Than Six Months	66.6
17407	449	1875	4. More Than Six Months	66.6
17408	449	888	4. More Than Six Months	66.6
17409	449	177	4. More Than Six Months	66.6
17410	449	945	4. More Than Six Months	66.6
17411	449	255	4. More Than Six Months	66.6
17412	449	106	4. More Than Six Months	66.6
17413	449	331	4. More Than Six Months	66.6
17414	449	233	4. More Than Six Months	66.6
17415	449	130	4. More Than Six Months	66.6
17416	449	1327	4. More Than Six Months	66.6
17417	449	31	4. More Than Six Months	66.6
17418	449	665	4. More Than Six Months	66.6
17419	449	145	4. More Than Six Months	66.6
17420	449	628	4. More Than Six Months	66.6
17421	449	1876	4. More Than Six Months	66.6
17422	449	1692	4. More Than Six Months	66.6
17423	449	123	4. More Than Six Months	66.6
17424	449	192	4. More Than Six Months	66.6
17425	449	160	4. More Than Six Months	66.6
17426	449	947	4. More Than Six Months	66.6
17427	449	228	4. More Than Six Months	66.6
17428	449	198	5. All	100
17429	449	249	5. All	96.3
17430	449	113	5. All	96.3
17431	449	754	5. All	94.2
17432	449	1867	5. All	94.2
17433	449	58	5. All	94.2
17434	449	414	5. All	94.2
17435	449	429	5. All	91.9
17436	449	130	5. All	91.9
17437	449	1868	5. All	91.9
17438	449	1870	5. All	89.4
17439	449	1875	5. All	89.4
17440	449	888	5. All	89.4
17441	449	417	5. All	89.4
17442	449	1874	5. All	89.4
17443	449	1869	5. All	89.4
17444	449	123	5. All	89.4
17445	449	1871	5. All	89.4
17446	449	546	5. All	89.4
17447	449	1872	5. All	89.4
17448	449	743	5. All	89.4
17449	449	1873	5. All	89.4
17450	449	945	5. All	89.4
17451	449	1876	5. All	89.4
17452	449	1337	5. All	89.4
17453	449	458	5. All	89.4
17454	449	895	5. All	89.4
17455	449	628	5. All	89.4
17456	449	255	5. All	89.4
17457	449	415	5. All	89.4
17458	449	106	5. All	89.4
17459	449	31	5. All	89.4
17460	449	145	5. All	89.4
17461	449	192	5. All	89.4
17462	449	160	5. All	89.4
17463	449	177	5. All	89.4
17464	449	39	5. All	89.4
17465	449	331	5. All	89.4
17466	449	1327	5. All	89.4
17467	449	665	5. All	89.4
17468	449	1692	5. All	89.4
17469	449	12	5. All	89.4
17470	449	53	5. All	89.4
17471	449	711	5. All	89.4
17472	449	1105	5. All	89.4
17473	449	228	5. All	89.4
17474	449	233	5. All	89.4
17475	449	947	5. All	89.4
17476	449	1045	5. All	89.4
17477	449	341	5. All	47.6
17478	449	4	5. All	47.6
17479	449	135	5. All	47.6
17480	450	249	2. Three Months	100
17481	450	22	2. Three Months	100
17482	450	196	3. Six Months	100
17483	450	249	3. Six Months	89.1
17484	450	22	3. Six Months	89.1
17485	450	13	4. More Than Six Months	100
17486	450	30	4. More Than Six Months	78
17487	450	35	4. More Than Six Months	76
17488	450	37	4. More Than Six Months	72.5
17489	450	28	4. More Than Six Months	71.1
17490	450	34	4. More Than Six Months	71.1
17491	450	23	4. More Than Six Months	71.1
17492	450	19	4. More Than Six Months	69.8
17493	450	1	4. More Than Six Months	66.7
17494	450	54	4. More Than Six Months	66.7
17495	450	7	4. More Than Six Months	65
17496	450	137	4. More Than Six Months	65
17497	450	10	4. More Than Six Months	65
17498	450	14	4. More Than Six Months	63.1
17499	450	68	4. More Than Six Months	63.1
17500	450	31	4. More Than Six Months	63.1
17501	450	17	4. More Than Six Months	63.1
17502	450	58	4. More Than Six Months	63.1
17503	450	18	4. More Than Six Months	63.1
17504	450	92	4. More Than Six Months	61
17505	450	139	4. More Than Six Months	61
17506	450	77	4. More Than Six Months	58.8
17507	450	65	4. More Than Six Months	56.2
17508	450	57	4. More Than Six Months	56.2
17509	450	113	4. More Than Six Months	56.2
17510	450	147	4. More Than Six Months	56.2
17511	450	63	4. More Than Six Months	53.4
17512	450	130	4. More Than Six Months	53.4
17513	450	150	4. More Than Six Months	53.4
17514	450	36	4. More Than Six Months	53.4
17515	450	20	4. More Than Six Months	53.4
17516	450	185	4. More Than Six Months	53.4
17517	450	22	4. More Than Six Months	53.4
17518	450	138	4. More Than Six Months	50.1
17519	450	67	4. More Than Six Months	50.1
17520	450	39	4. More Than Six Months	50.1
17521	450	21	4. More Than Six Months	50.1
17522	450	149	4. More Than Six Months	50.1
17523	450	2	4. More Than Six Months	50.1
17524	450	33	4. More Than Six Months	50.1
17525	450	49	4. More Than Six Months	50.1
17526	450	153	4. More Than Six Months	46.2
17527	450	73	4. More Than Six Months	46.2
17528	450	60	4. More Than Six Months	46.2
17529	450	87	4. More Than Six Months	46.2
17530	450	335	4. More Than Six Months	46.2
17531	450	197	4. More Than Six Months	46.2
17532	450	161	4. More Than Six Months	46.2
17533	450	255	4. More Than Six Months	46.2
17534	450	353	4. More Than Six Months	41.5
17535	450	142	4. More Than Six Months	41.5
17536	450	254	4. More Than Six Months	41.5
17537	450	349	4. More Than Six Months	41.5
17538	450	346	4. More Than Six Months	41.5
17539	450	332	4. More Than Six Months	41.5
17540	450	152	4. More Than Six Months	41.5
17541	450	157	4. More Than Six Months	41.5
17542	450	196	4. More Than Six Months	41.5
17543	450	140	4. More Than Six Months	41.5
17544	450	222	4. More Than Six Months	35.4
17545	450	163	4. More Than Six Months	35.4
17546	450	1653	4. More Than Six Months	35.4
17547	450	180	4. More Than Six Months	35.4
17548	450	75	4. More Than Six Months	35.4
17549	450	79	4. More Than Six Months	35.4
17550	450	1106	4. More Than Six Months	35.4
17551	450	106	4. More Than Six Months	35.4
17552	450	144	4. More Than Six Months	35.4
17553	450	167	4. More Than Six Months	35.4
17554	450	164	4. More Than Six Months	35.4
17555	450	156	4. More Than Six Months	35.4
17556	450	117	4. More Than Six Months	35.4
17557	450	74	4. More Than Six Months	35.4
17558	450	158	4. More Than Six Months	35.4
17559	450	118	4. More Than Six Months	35.4
17560	450	303	4. More Than Six Months	27.2
17561	450	673	4. More Than Six Months	27.2
17562	450	90	4. More Than Six Months	27.2
17563	450	1110	4. More Than Six Months	27.2
17564	450	145	4. More Than Six Months	27.2
17565	450	344	4. More Than Six Months	27.2
17566	450	154	4. More Than Six Months	27.2
17567	450	171	4. More Than Six Months	27.2
17568	450	330	4. More Than Six Months	27.2
17569	450	612	4. More Than Six Months	27.2
17570	450	155	4. More Than Six Months	27.2
17571	450	188	4. More Than Six Months	27.2
17572	450	133	4. More Than Six Months	27.2
17573	450	184	4. More Than Six Months	27.2
17574	450	166	4. More Than Six Months	27.2
17575	450	179	4. More Than Six Months	27.2
17576	450	1069	4. More Than Six Months	27.2
17577	450	181	4. More Than Six Months	27.2
17578	450	390	4. More Than Six Months	27.2
17579	450	148	4. More Than Six Months	27.2
17580	450	345	4. More Than Six Months	27.2
17581	450	183	4. More Than Six Months	27.2
17582	450	170	4. More Than Six Months	27.2
17583	450	134	4. More Than Six Months	27.2
17584	450	343	4. More Than Six Months	27.2
17585	450	13	5. All	100
17586	450	30	5. All	75.8
17587	450	35	5. All	73.8
17588	450	17	5. All	72.7
17589	450	92	5. All	71.5
17590	450	77	5. All	70.3
17591	450	37	5. All	70.3
17592	450	28	5. All	70.3
17593	450	34	5. All	69
17594	450	23	5. All	69
17595	450	130	5. All	67.7
17596	450	19	5. All	67.7
17597	450	54	5. All	64.6
17598	450	335	5. All	64.6
17599	450	1	5. All	64.6
17600	450	137	5. All	62.9
17601	450	31	5. All	62.9
17602	450	349	5. All	62.9
17603	450	10	5. All	62.9
17604	450	18	5. All	62.9
17605	450	14	5. All	62.9
17606	450	58	5. All	61.1
17607	450	68	5. All	61.1
17608	450	139	5. All	59.1
17609	450	22	5. All	56.9
17610	450	65	5. All	54.4
17611	450	113	5. All	54.4
17612	450	147	5. All	54.4
17613	450	57	5. All	54.4
17614	450	196	5. All	51.6
17615	450	36	5. All	51.6
17616	450	63	5. All	51.6
17617	450	185	5. All	51.6
17618	450	20	5. All	51.6
17619	450	49	5. All	51.6
17620	450	150	5. All	51.6
17621	450	67	5. All	48.3
17622	450	138	5. All	48.3
17623	450	33	5. All	48.3
17624	450	149	5. All	48.3
17625	450	39	5. All	48.3
17626	450	2	5. All	48.3
17627	450	197	5. All	44.5
17628	450	161	5. All	44.5
17629	450	87	5. All	44.5
17630	450	255	5. All	44.5
17631	450	73	5. All	44.5
17632	450	60	5. All	44.5
17633	450	153	5. All	44.5
17634	450	346	5. All	39.9
17635	450	142	5. All	39.9
17636	450	152	5. All	39.9
17637	450	117	5. All	39.9
17638	450	157	5. All	39.9
17639	450	140	5. All	39.9
17640	450	332	5. All	39.9
17641	450	254	5. All	39.9
17642	450	180	5. All	39.9
17643	450	353	5. All	39.9
17644	450	74	5. All	39.9
17645	450	75	5. All	34
17646	450	163	5. All	34
17647	450	222	5. All	34
17648	450	1653	5. All	34
17649	450	79	5. All	34
17650	450	118	5. All	34
17651	450	158	5. All	34
17652	450	144	5. All	34
17653	450	106	5. All	34
17654	450	156	5. All	34
17655	450	164	5. All	34
17656	450	167	5. All	34
17657	450	178	5. All	25.9
17658	450	154	5. All	25.9
17659	450	343	5. All	25.9
17660	450	348	5. All	25.9
17661	450	171	5. All	25.9
17662	450	145	5. All	25.9
17663	450	90	5. All	25.9
17664	450	330	5. All	25.9
17665	450	344	5. All	25.9
17666	450	612	5. All	25.9
17667	450	133	5. All	25.9
17668	450	184	5. All	25.9
17669	450	189	5. All	25.9
17670	450	166	5. All	25.9
17671	450	1069	5. All	25.9
17672	450	179	5. All	25.9
17673	450	390	5. All	25.9
17674	450	148	5. All	25.9
17675	450	181	5. All	25.9
17676	450	345	5. All	25.9
17677	450	183	5. All	25.9
17678	450	170	5. All	25.9
17679	450	50	5. All	25.9
17680	450	134	5. All	25.9
17681	450	354	5. All	25.9
17682	450	188	5. All	25.9
17683	450	155	5. All	25.9
17684	450	673	5. All	25.9
17685	451	521	1. Thirty Days	100
17686	451	1328	1. Thirty Days	100
17687	451	91	1. Thirty Days	100
17688	451	905	1. Thirty Days	88.1
17689	451	408	1. Thirty Days	88.1
17690	451	4	1. Thirty Days	88.1
17691	451	471	1. Thirty Days	88.1
17692	451	579	1. Thirty Days	88.1
17693	451	30	1. Thirty Days	88.1
17694	451	594	1. Thirty Days	88.1
17695	451	94	1. Thirty Days	88.1
17696	451	408	2. Three Months	100
17697	451	1777	2. Three Months	93.6
17698	451	497	2. Three Months	89.6
17699	451	521	2. Three Months	89.6
17700	451	579	2. Three Months	85
17701	451	60	2. Three Months	85
17702	451	319	2. Three Months	79.3
17703	451	30	2. Three Months	79.3
17704	451	1328	2. Three Months	79.3
17705	451	65	2. Three Months	79.3
17706	451	94	2. Three Months	79.3
17707	451	594	2. Three Months	71.9
17708	451	117	2. Three Months	71.9
17709	451	905	2. Three Months	71.9
17710	451	58	2. Three Months	71.9
17711	451	1877	2. Three Months	71.9
17712	451	596	2. Three Months	71.9
17713	451	1486	2. Three Months	71.9
17714	451	91	2. Three Months	71.9
17715	451	1878	2. Three Months	61.6
17716	451	1692	2. Three Months	61.6
17717	451	164	2. Three Months	61.6
17718	451	214	2. Three Months	61.6
17719	451	326	2. Three Months	61.6
17720	451	1879	2. Three Months	61.6
17721	451	114	2. Three Months	61.6
17722	451	215	2. Three Months	61.6
17723	451	3	2. Three Months	61.6
17724	451	202	2. Three Months	61.6
17725	451	4	2. Three Months	61.6
17726	451	471	2. Three Months	61.6
17727	451	34	2. Three Months	61.6
17728	451	399	2. Three Months	61.6
17729	451	579	3. Six Months	100
17730	451	1777	3. Six Months	100
17731	451	408	3. Six Months	95.4
17732	451	497	3. Six Months	87.5
17733	451	30	3. Six Months	85
17734	451	202	3. Six Months	85
17735	451	521	3. Six Months	82.2
17736	451	60	3. Six Months	79
17737	451	319	3. Six Months	79
17738	451	1328	3. Six Months	75.4
17739	451	326	3. Six Months	75.4
17740	451	1486	3. Six Months	75.4
17741	451	65	3. Six Months	71.1
17742	451	1692	3. Six Months	71.1
17743	451	596	3. Six Months	71.1
17744	451	58	3. Six Months	71.1
17745	451	1878	3. Six Months	71.1
17746	451	91	3. Six Months	71.1
17747	451	114	3. Six Months	71.1
17748	451	198	3. Six Months	71.1
17749	451	117	3. Six Months	65.8
17750	451	23	3. Six Months	65.8
17751	451	3	3. Six Months	65.8
17752	451	94	3. Six Months	65.8
17753	451	594	3. Six Months	65.8
17754	451	214	3. Six Months	65.8
17755	451	342	3. Six Months	59
17756	451	301	3. Six Months	59
17757	451	905	3. Six Months	59
17758	451	1877	3. Six Months	59
17759	451	77	3. Six Months	59
17760	451	1558	3. Six Months	59
17761	451	215	3. Six Months	59
17762	451	34	3. Six Months	59
17763	451	303	3. Six Months	59
17764	451	1879	3. Six Months	49.5
17765	451	983	3. Six Months	49.5
17766	451	471	3. Six Months	49.5
17767	451	673	3. Six Months	49.5
17768	451	4	3. Six Months	49.5
17769	451	151	3. Six Months	49.5
17770	451	164	3. Six Months	49.5
17771	451	827	3. Six Months	49.5
17772	451	134	3. Six Months	49.5
17773	451	19	3. Six Months	49.5
17774	451	199	3. Six Months	49.5
17775	451	183	3. Six Months	49.5
17776	451	137	3. Six Months	49.5
17777	451	399	3. Six Months	49.5
17778	451	1777	4. More Than Six Months	100
17779	451	579	4. More Than Six Months	95.7
17780	451	319	4. More Than Six Months	91.8
17781	451	202	4. More Than Six Months	90.8
17782	451	408	4. More Than Six Months	87.8
17783	451	521	4. More Than Six Months	84.8
17784	451	215	4. More Than Six Months	84.8
17785	451	326	4. More Than Six Months	84.3
17786	451	198	4. More Than Six Months	82.8
17787	451	3	4. More Than Six Months	82.8
17788	451	60	4. More Than Six Months	81.8
17789	451	1486	4. More Than Six Months	81.2
17790	451	30	4. More Than Six Months	78.8
17791	451	58	4. More Than Six Months	78.8
17792	451	13	4. More Than Six Months	78.2
17793	451	65	4. More Than Six Months	77.5
17794	451	31	4. More Than Six Months	76.1
17795	451	4	4. More Than Six Months	76.1
17796	451	1692	4. More Than Six Months	73.8
17797	451	905	4. More Than Six Months	71.1
17798	451	113	4. More Than Six Months	70.2
17799	451	19	4. More Than Six Months	67
17800	451	497	4. More Than Six Months	67
17801	451	303	4. More Than Six Months	65.8
17802	451	68	4. More Than Six Months	64.5
17803	451	594	4. More Than Six Months	64.5
17804	451	1880	4. More Than Six Months	64.5
17805	451	1878	4. More Than Six Months	63.2
17806	451	23	4. More Than Six Months	63.2
17807	451	130	4. More Than Six Months	60.2
17808	451	199	4. More Than Six Months	60.2
17809	451	337	4. More Than Six Months	60.2
17810	451	180	4. More Than Six Months	60.2
17811	451	205	4. More Than Six Months	56.6
17812	451	399	4. More Than Six Months	56.6
17813	451	1	4. More Than Six Months	56.6
17814	451	137	4. More Than Six Months	56.6
17815	451	134	4. More Than Six Months	54.5
17816	451	145	4. More Than Six Months	54.5
17817	451	1879	4. More Than Six Months	54.5
17818	451	983	4. More Than Six Months	52.2
17819	451	1881	4. More Than Six Months	52.2
17820	451	183	4. More Than Six Months	52.2
17821	451	91	4. More Than Six Months	52.2
17822	451	163	4. More Than Six Months	52.2
17823	451	301	4. More Than Six Months	49.6
17824	451	1519	4. More Than Six Months	49.6
17825	451	1558	4. More Than Six Months	49.6
17826	451	1521	4. More Than Six Months	46.6
17827	451	77	4. More Than Six Months	46.6
17828	451	61	4. More Than Six Months	46.6
17829	451	254	4. More Than Six Months	46.6
17830	451	342	4. More Than Six Months	46.6
17831	451	48	4. More Than Six Months	46.6
17832	451	114	4. More Than Six Months	46.6
17833	451	35	4. More Than Six Months	46.6
17834	451	596	4. More Than Six Months	43
17835	451	8	4. More Than Six Months	43
17836	451	517	4. More Than Six Months	43
17837	451	603	4. More Than Six Months	43
17838	451	59	4. More Than Six Months	43
17839	451	57	4. More Than Six Months	43
17840	451	32	4. More Than Six Months	43
17841	451	117	4. More Than Six Months	43
17842	451	1882	4. More Than Six Months	43
17843	451	1810	4. More Than Six Months	38.7
17844	451	131	4. More Than Six Months	38.7
17845	451	1420	4. More Than Six Months	38.7
17846	451	1105	4. More Than Six Months	38.7
17847	451	222	4. More Than Six Months	38.7
17848	451	14	4. More Than Six Months	38.7
17849	451	25	4. More Than Six Months	38.7
17850	451	302	4. More Than Six Months	38.7
17851	451	38	4. More Than Six Months	38.7
17852	451	53	4. More Than Six Months	33.2
17853	451	108	4. More Than Six Months	33.2
17854	451	127	4. More Than Six Months	33.2
17855	451	673	4. More Than Six Months	33.2
17856	451	422	4. More Than Six Months	33.2
17857	451	576	4. More Than Six Months	33.2
17858	451	810	4. More Than Six Months	33.2
17859	451	62	4. More Than Six Months	33.2
17860	451	118	4. More Than Six Months	33.2
17861	451	593	4. More Than Six Months	33.2
17862	451	1603	4. More Than Six Months	33.2
17863	451	34	4. More Than Six Months	33.2
17864	451	249	4. More Than Six Months	33.2
17865	451	63	4. More Than Six Months	25.6
17866	451	74	4. More Than Six Months	25.6
17867	451	28	4. More Than Six Months	25.6
17868	451	1883	4. More Than Six Months	25.6
17869	451	1884	4. More Than Six Months	25.6
17870	451	92	4. More Than Six Months	25.6
17871	451	1054	4. More Than Six Months	25.6
17872	451	128	4. More Than Six Months	25.6
17873	451	1885	4. More Than Six Months	25.6
17874	451	509	4. More Than Six Months	25.6
17875	451	530	4. More Than Six Months	25.6
17876	451	644	4. More Than Six Months	25.6
17877	451	1430	4. More Than Six Months	25.6
17878	451	1777	5. All	100
17879	451	579	5. All	95.2
17880	451	202	5. All	89.2
17881	451	408	5. All	88.3
17882	451	521	5. All	83.9
17883	451	326	5. All	82.3
17884	451	215	5. All	81.9
17885	451	198	5. All	81
17886	451	60	5. All	81
17887	451	3	5. All	80.6
17888	451	1486	5. All	80.1
17889	451	30	5. All	79.7
17890	451	58	5. All	77.6
17891	451	65	5. All	76.6
17892	451	13	5. All	74.8
17893	451	4	5. All	73.5
17894	451	31	5. All	72.9
17895	451	1692	5. All	72.9
17896	451	497	5. All	72.2
17897	451	905	5. All	69.9
17898	451	113	5. All	67.4
17899	451	594	5. All	65.4
17900	451	303	5. All	65.4
17901	451	19	5. All	65.4
17902	451	23	5. All	64.4
17903	451	1880	5. All	62.2
17904	451	68	5. All	62.2
17905	451	199	5. All	59.6
17906	451	130	5. All	58.2
17907	451	337	5. All	58.2
17908	451	91	5. All	58.2
17909	451	180	5. All	56.7
17910	451	137	5. All	56.7
17911	451	399	5. All	56.7
17912	451	134	5. All	55
17913	451	114	5. All	55
17914	451	1	5. All	55
17915	451	1879	5. All	55
17916	451	596	5. All	53.2
17917	451	301	5. All	53.2
17918	451	983	5. All	53.2
17919	451	183	5. All	53.2
17920	451	145	5. All	53.2
17921	451	1558	5. All	53.2
17922	451	77	5. All	51.2
17923	451	1881	5. All	51.2
17924	451	342	5. All	51.2
17925	451	117	5. All	51.2
17926	451	163	5. All	51.2
17927	451	35	5. All	46.4
17928	451	1882	5. All	43.5
17929	451	48	5. All	43.5
17930	451	32	5. All	43.5
17931	451	34	5. All	43.5
17932	451	254	5. All	43.5
17933	451	61	5. All	43.5
17934	451	57	5. All	43.5
17935	451	59	5. All	40.1
17936	451	131	5. All	40.1
17937	451	517	5. All	40.1
17938	451	8	5. All	40.1
17939	451	25	5. All	40.1
17940	451	673	5. All	40.1
17941	451	38	5. All	40.1
17942	451	1105	5. All	40.1
17943	451	1420	5. All	40.1
17944	451	302	5. All	35.9
17945	451	159	5. All	35.9
17946	451	108	5. All	35.9
17947	451	169	5. All	35.9
17948	451	14	5. All	35.9
17949	451	222	5. All	35.9
17950	451	20	5. All	35.9
17951	451	422	5. All	35.9
17952	451	338	5. All	35.9
17953	451	216	5. All	30.6
17954	451	593	5. All	30.6
17955	451	127	5. All	30.6
17956	451	249	5. All	30.6
17957	451	1603	5. All	30.6
17958	451	62	5. All	30.6
17959	451	53	5. All	30.6
17960	451	128	5. All	30.6
17961	451	118	5. All	30.6
17962	451	1884	5. All	23.3
17963	451	74	5. All	23.3
17964	451	28	5. All	23.3
17965	451	63	5. All	23.3
17966	451	1054	5. All	23.3
17967	451	54	5. All	23.3
17968	451	10	5. All	23.3
17969	451	1885	5. All	23.3
17970	451	332	5. All	23.3
17971	451	92	5. All	23.3
17972	451	7	5. All	23.3
17973	451	240	5. All	23.3
17974	451	530	5. All	23.3
17975	451	644	5. All	23.3
17976	451	230	5. All	23.3
17977	451	509	5. All	23.3
17978	452	1283	2. Three Months	100
17979	452	1283	3. Six Months	100
17980	452	341	4. More Than Six Months	100
17981	452	1879	4. More Than Six Months	86.4
17982	452	318	4. More Than Six Months	86.4
17983	452	1297	4. More Than Six Months	75.7
17984	452	1886	4. More Than Six Months	75.7
17985	452	133	4. More Than Six Months	75.7
17986	452	704	4. More Than Six Months	75.7
17987	452	201	4. More Than Six Months	75.7
17988	452	198	4. More Than Six Months	75.7
17989	452	202	4. More Than Six Months	75.7
17990	452	58	4. More Than Six Months	75.7
17991	452	127	4. More Than Six Months	75.7
17992	452	1807	4. More Than Six Months	75.7
17993	452	38	4. More Than Six Months	75.7
17994	452	65	4. More Than Six Months	75.7
17995	452	1747	4. More Than Six Months	75.7
17996	452	1887	4. More Than Six Months	75.7
17997	452	128	4. More Than Six Months	75.7
17998	452	711	4. More Than Six Months	75.7
17999	452	1888	4. More Than Six Months	75.7
18000	452	27	4. More Than Six Months	75.7
18001	452	53	4. More Than Six Months	75.7
18002	452	18	4. More Than Six Months	75.7
18003	452	126	4. More Than Six Months	75.7
18004	452	1889	4. More Than Six Months	75.7
18005	452	30	4. More Than Six Months	75.7
18006	452	13	4. More Than Six Months	75.7
18007	452	1188	4. More Than Six Months	75.7
18008	452	1879	5. All	100
18009	452	1886	5. All	100
18010	452	318	5. All	100
18011	452	13	5. All	97.5
18012	452	30	5. All	97.5
18013	452	1887	5. All	97.5
18014	452	127	5. All	97.5
18015	452	1888	5. All	97.5
18016	452	1807	5. All	97.5
18017	452	1747	5. All	97.5
18018	452	202	5. All	97.5
18019	452	126	5. All	97.5
18020	452	201	5. All	97.5
18021	452	198	5. All	97.5
18022	452	128	5. All	97.5
18023	452	38	5. All	97.5
18024	452	711	5. All	97.5
18025	452	53	5. All	97.5
18026	452	1889	5. All	97.5
18027	452	27	5. All	97.5
18028	452	133	5. All	97.5
18029	452	704	5. All	97.5
18030	452	58	5. All	97.5
18031	452	65	5. All	97.5
18032	452	18	5. All	97.5
18033	452	1283	5. All	97.5
18034	452	341	5. All	79.5
18035	452	1297	5. All	55.8
18036	452	1188	5. All	55.8
18037	453	229	4. More Than Six Months	100
18038	453	96	4. More Than Six Months	90.3
18039	453	314	4. More Than Six Months	90.3
18040	453	229	5. All	100
18041	453	96	5. All	90.1
18042	453	314	5. All	90.1
18043	453	385	5. All	90.1
18044	454	1890	4. More Than Six Months	100
18045	454	1891	4. More Than Six Months	87.7
18046	454	1146	4. More Than Six Months	78
18047	454	130	4. More Than Six Months	78
18048	454	58	4. More Than Six Months	78
18049	454	1890	5. All	100
18050	454	130	5. All	70.3
18051	454	1891	5. All	70.3
18052	454	1146	5. All	62.2
18053	454	58	5. All	62.2
18054	454	21	5. All	62.2
18055	455	337	4. More Than Six Months	100
18056	455	1892	4. More Than Six Months	100
18057	455	425	4. More Than Six Months	100
18058	455	1892	5. All	100
18059	455	425	5. All	100
18060	455	337	5. All	67.3
18061	456	7	4. More Than Six Months	100
18062	456	77	4. More Than Six Months	88.3
18063	456	96	4. More Than Six Months	88.3
18064	456	427	4. More Than Six Months	88.3
18065	456	228	4. More Than Six Months	88.3
18066	456	60	4. More Than Six Months	88.3
18067	456	355	4. More Than Six Months	88.3
18068	456	313	4. More Than Six Months	88.3
18069	456	584	4. More Than Six Months	88.3
18070	456	113	4. More Than Six Months	88.3
18071	456	52	4. More Than Six Months	88.3
18072	456	1100	4. More Than Six Months	88.3
18073	456	303	4. More Than Six Months	88.3
18074	456	68	4. More Than Six Months	88.3
18075	456	31	4. More Than Six Months	88.3
18076	456	315	4. More Than Six Months	88.3
18077	456	130	4. More Than Six Months	88.3
18078	456	318	4. More Than Six Months	88.3
18079	456	53	4. More Than Six Months	88.3
18080	456	4	4. More Than Six Months	88.3
18081	456	1503	4. More Than Six Months	88.3
18082	456	7	5. All	100
18083	456	4	5. All	97.6
18084	456	1100	5. All	97.6
18085	456	1503	5. All	97.6
18086	456	228	5. All	97.6
18087	456	313	5. All	97.6
18088	456	52	5. All	97.6
18089	456	315	5. All	97.6
18090	456	318	5. All	97.6
18091	456	53	5. All	97.6
18092	456	77	5. All	97.6
18093	456	31	5. All	97.6
18094	456	96	5. All	97.6
18095	456	303	5. All	97.6
18096	456	130	5. All	97.6
18097	456	60	5. All	97.6
18098	456	584	5. All	97.6
18099	456	355	5. All	97.6
18100	456	113	5. All	97.6
18101	456	68	5. All	97.6
18102	456	427	5. All	97.6
18103	457	1703	3. Six Months	100
18104	457	313	3. Six Months	88.5
18105	457	1017	4. More Than Six Months	100
18106	457	58	4. More Than Six Months	93.5
18107	457	153	4. More Than Six Months	85.1
18108	457	1022	4. More Than Six Months	85.1
18109	457	1015	4. More Than Six Months	85.1
18110	457	332	4. More Than Six Months	85.1
18111	457	9	4. More Than Six Months	85.1
18112	457	113	4. More Than Six Months	73.3
18113	457	895	4. More Than Six Months	73.3
18114	457	149	4. More Than Six Months	73.3
18115	457	1893	4. More Than Six Months	73.3
18116	457	26	4. More Than Six Months	73.3
18117	457	181	4. More Than Six Months	73.3
18118	457	117	4. More Than Six Months	73.3
18119	457	651	4. More Than Six Months	73.3
18120	457	131	4. More Than Six Months	73.3
18121	457	1894	4. More Than Six Months	73.3
18122	457	1895	4. More Than Six Months	73.3
18123	457	87	4. More Than Six Months	73.3
18124	457	130	4. More Than Six Months	73.3
18125	457	346	4. More Than Six Months	73.3
18126	457	621	4. More Than Six Months	73.3
18127	457	173	4. More Than Six Months	73.3
18128	457	1896	4. More Than Six Months	73.3
18129	457	143	4. More Than Six Months	73.3
18130	457	19	4. More Than Six Months	73.3
18131	457	135	4. More Than Six Months	73.3
18132	457	1703	5. All	100
18133	457	58	5. All	100
18134	457	1017	5. All	100
18135	457	1022	5. All	93.4
18136	457	153	5. All	84.8
18137	457	1015	5. All	84.8
18138	457	26	5. All	84.8
18139	457	9	5. All	84.8
18140	457	313	5. All	84.8
18141	457	332	5. All	84.8
18142	457	181	5. All	72.8
18143	457	135	5. All	72.8
18144	457	149	5. All	72.8
18145	457	1893	5. All	72.8
18146	457	4	5. All	72.8
18147	457	87	5. All	72.8
18148	457	131	5. All	72.8
18149	457	19	5. All	72.8
18150	457	117	5. All	72.8
18151	457	346	5. All	72.8
18152	457	173	5. All	72.8
18153	457	651	5. All	72.8
18154	457	895	5. All	72.8
18155	457	1894	5. All	72.8
18156	457	1895	5. All	72.8
18157	457	130	5. All	72.8
18158	457	621	5. All	72.8
18159	457	1896	5. All	72.8
18160	457	143	5. All	72.8
18161	457	113	5. All	72.8
18162	457	490	5. All	72.8
18163	458	519	2. Three Months	100
18164	458	113	3. Six Months	100
18165	458	1897	3. Six Months	100
18166	458	198	3. Six Months	100
18167	458	519	3. Six Months	100
18168	458	225	4. More Than Six Months	100
18169	458	410	4. More Than Six Months	100
18170	458	329	4. More Than Six Months	100
18171	458	881	4. More Than Six Months	100
18172	458	334	4. More Than Six Months	100
18173	458	201	4. More Than Six Months	87.1
18174	458	1898	4. More Than Six Months	87.1
18175	458	354	4. More Than Six Months	87.1
18176	458	637	4. More Than Six Months	87.1
18177	458	1899	4. More Than Six Months	87.1
18178	458	4	4. More Than Six Months	87.1
18179	458	154	4. More Than Six Months	87.1
18180	458	30	4. More Than Six Months	87.1
18181	458	175	4. More Than Six Months	87.1
18182	458	209	4. More Than Six Months	87.1
18183	458	1899	5. All	100
18184	458	519	5. All	70.6
18185	458	410	5. All	70.6
18186	458	329	5. All	70.6
18187	458	881	5. All	70.6
18188	458	334	5. All	70.6
18189	458	198	5. All	70.6
18190	458	225	5. All	70.6
18191	458	209	5. All	60.8
18192	458	171	5. All	60.8
18193	458	134	5. All	60.8
18194	458	1897	5. All	60.8
18195	458	113	5. All	60.8
18196	458	637	5. All	60.8
18197	458	175	5. All	60.8
18198	458	354	5. All	60.8
18199	458	30	5. All	60.8
18200	458	4	5. All	60.8
18201	458	1898	5. All	60.8
18202	458	201	5. All	60.8
18203	458	154	5. All	60.8
18204	459	410	4. More Than Six Months	100
18205	459	572	4. More Than Six Months	100
18206	459	1	4. More Than Six Months	100
18207	459	572	5. All	100
18208	459	410	5. All	66.8
18209	459	1	5. All	66.8
18210	460	31	4. More Than Six Months	100
18211	460	4	4. More Than Six Months	100
18212	460	49	4. More Than Six Months	100
18213	460	31	5. All	100
18214	460	4	5. All	89.3
18215	460	49	5. All	89.3
18216	461	642	4. More Than Six Months	100
18217	461	135	4. More Than Six Months	92.7
18218	461	640	4. More Than Six Months	82.4
18219	461	637	4. More Than Six Months	82.4
18220	461	642	5. All	100
18221	461	135	5. All	92.7
18222	461	640	5. All	82.4
18223	461	637	5. All	82.4
18224	462	1900	4. More Than Six Months	100
18225	462	1901	4. More Than Six Months	100
18226	462	1900	5. All	100
18227	462	1901	5. All	100
18228	463	58	1. Thirty Days	100
18229	463	68	1. Thirty Days	100
18230	463	65	1. Thirty Days	100
18231	463	184	1. Thirty Days	100
18232	463	299	1. Thirty Days	100
18233	463	627	1. Thirty Days	100
18234	463	255	2. Three Months	100
18235	463	160	2. Three Months	91.5
18236	463	627	2. Three Months	79.5
18237	463	139	2. Three Months	79.5
18238	463	143	2. Three Months	79.5
18239	463	299	2. Three Months	79.5
18240	463	184	2. Three Months	79.5
18241	463	65	2. Three Months	79.5
18242	463	363	2. Three Months	79.5
18243	463	68	2. Three Months	79.5
18244	463	21	2. Three Months	79.5
18245	463	58	2. Three Months	79.5
18246	463	4	2. Three Months	79.5
18247	463	1902	2. Three Months	79.5
18248	463	30	2. Three Months	79.5
18249	463	113	2. Three Months	79.5
18250	463	10	2. Three Months	79.5
18251	463	1	2. Three Months	79.5
18252	463	65	3. Six Months	100
18253	463	4	3. Six Months	94.7
18254	463	21	3. Six Months	94.7
18255	463	255	3. Six Months	94.7
18256	463	30	3. Six Months	88.2
18257	463	58	3. Six Months	88.2
18258	463	192	3. Six Months	88.2
18259	463	68	3. Six Months	79.9
18260	463	139	3. Six Months	79.9
18261	463	160	3. Six Months	79.9
18262	463	143	3. Six Months	79.9
18263	463	999	3. Six Months	79.9
18264	463	13	3. Six Months	79.9
18265	463	1902	3. Six Months	79.9
18266	463	1	3. Six Months	79.9
18267	463	32	3. Six Months	68.1
18268	463	161	3. Six Months	68.1
18269	463	137	3. Six Months	68.1
18270	463	363	3. Six Months	68.1
18271	463	126	3. Six Months	68.1
18272	463	184	3. Six Months	68.1
18273	463	299	3. Six Months	68.1
18274	463	28	3. Six Months	68.1
18275	463	878	3. Six Months	68.1
18276	463	326	3. Six Months	68.1
18277	463	10	3. Six Months	68.1
18278	463	113	3. Six Months	68.1
18279	463	1261	3. Six Months	68.1
18280	463	893	3. Six Months	68.1
18281	463	1903	3. Six Months	68.1
18282	463	135	3. Six Months	68.1
18283	463	54	3. Six Months	68.1
18284	463	50	3. Six Months	68.1
18285	463	144	3. Six Months	68.1
18286	463	107	3. Six Months	68.1
18287	463	22	3. Six Months	68.1
18288	463	627	3. Six Months	68.1
18289	463	10	4. More Than Six Months	100
18290	463	19	4. More Than Six Months	96.2
18291	463	22	4. More Than Six Months	96.2
18292	463	1	4. More Than Six Months	95.1
18293	463	31	4. More Than Six Months	90.3
18294	463	30	4. More Than Six Months	89
18295	463	65	4. More Than Six Months	89
18296	463	126	4. More Than Six Months	87.5
18297	463	3	4. More Than Six Months	86
18298	463	113	4. More Than Six Months	84.4
18299	463	4	4. More Than Six Months	80.7
18300	463	416	4. More Than Six Months	80.7
18301	463	58	4. More Than Six Months	80.7
18302	463	13	4. More Than Six Months	80.7
18303	463	54	4. More Than Six Months	76.4
18304	463	15	4. More Than Six Months	76.4
18305	463	18	4. More Than Six Months	76.4
18306	463	35	4. More Than Six Months	73.9
18307	463	161	4. More Than Six Months	73.9
18308	463	878	4. More Than Six Months	73.9
18309	463	68	4. More Than Six Months	73.9
18310	463	21	4. More Than Six Months	67.9
18311	463	168	4. More Than Six Months	67.9
18312	463	924	4. More Than Six Months	67.9
18313	463	23	4. More Than Six Months	64.2
18314	463	17	4. More Than Six Months	64.2
18315	463	1904	4. More Than Six Months	64.2
18316	463	12	4. More Than Six Months	64.2
18317	463	171	4. More Than Six Months	64.2
18318	463	77	4. More Than Six Months	64.2
18319	463	117	4. More Than Six Months	59.9
18320	463	644	4. More Than Six Months	59.9
18321	463	144	4. More Than Six Months	59.9
18322	463	153	4. More Than Six Months	59.9
18323	463	142	4. More Than Six Months	59.9
18324	463	196	4. More Than Six Months	59.9
18325	463	914	4. More Than Six Months	59.9
18326	463	160	4. More Than Six Months	59.9
18327	463	314	4. More Than Six Months	54.7
18328	463	2	4. More Than Six Months	54.7
18329	463	186	4. More Than Six Months	54.7
18330	463	173	4. More Than Six Months	54.7
18331	463	1905	4. More Than Six Months	54.7
18332	463	157	4. More Than Six Months	54.7
18333	463	512	4. More Than Six Months	54.7
18334	463	136	4. More Than Six Months	54.7
18335	463	185	4. More Than Six Months	54.7
18336	463	573	4. More Than Six Months	54.7
18337	463	40	4. More Than Six Months	54.7
18338	463	33	4. More Than Six Months	54.7
18339	463	222	4. More Than Six Months	54.7
18340	463	50	4. More Than Six Months	54.7
18341	463	176	4. More Than Six Months	54.7
18342	463	317	4. More Than Six Months	54.7
18343	463	254	4. More Than Six Months	54.7
18344	463	14	4. More Than Six Months	54.7
18345	463	1331	4. More Than Six Months	47.9
18346	463	106	4. More Than Six Months	47.9
18347	463	1539	4. More Than Six Months	47.9
18348	463	335	4. More Than Six Months	47.9
18349	463	37	4. More Than Six Months	47.9
18350	463	39	4. More Than Six Months	47.9
18351	463	255	4. More Than Six Months	47.9
18352	463	1906	4. More Than Six Months	47.9
18353	463	28	4. More Than Six Months	47.9
18354	463	138	4. More Than Six Months	47.9
18355	463	119	4. More Than Six Months	47.9
18356	463	202	4. More Than Six Months	47.9
18357	463	150	4. More Than Six Months	47.9
18358	463	1593	4. More Than Six Months	47.9
18359	463	63	4. More Than Six Months	47.9
18360	463	55	4. More Than Six Months	47.9
18361	463	332	4. More Than Six Months	47.9
18362	463	1902	4. More Than Six Months	47.9
18363	463	32	4. More Than Six Months	47.9
18364	463	140	4. More Than Six Months	47.9
18365	463	59	4. More Than Six Months	47.9
18366	463	72	4. More Than Six Months	38.5
18367	463	155	4. More Than Six Months	38.5
18368	463	1710	4. More Than Six Months	38.5
18369	463	680	4. More Than Six Months	38.5
18370	463	338	4. More Than Six Months	38.5
18371	463	1044	4. More Than Six Months	38.5
18372	463	26	4. More Than Six Months	38.5
18373	463	1907	4. More Than Six Months	38.5
18374	463	521	4. More Than Six Months	38.5
18375	463	188	4. More Than Six Months	38.5
18376	463	43	4. More Than Six Months	38.5
18377	463	530	4. More Than Six Months	38.5
18378	463	1040	4. More Than Six Months	38.5
18379	463	1908	4. More Than Six Months	38.5
18380	463	118	4. More Than Six Months	38.5
18381	463	87	4. More Than Six Months	38.5
18382	463	147	4. More Than Six Months	38.5
18383	463	184	4. More Than Six Months	38.5
18384	463	139	4. More Than Six Months	38.5
18385	463	103	4. More Than Six Months	38.5
18386	463	1909	4. More Than Six Months	38.5
18387	463	885	4. More Than Six Months	38.5
18388	463	1493	4. More Than Six Months	38.5
18389	463	10	5. All	100
18390	463	1	5. All	96.4
18391	463	22	5. All	96.4
18392	463	19	5. All	94.4
18393	463	65	5. All	94.4
18394	463	30	5. All	92.2
18395	463	126	5. All	88.5
18396	463	31	5. All	88.5
18397	463	4	5. All	87.2
18398	463	113	5. All	85.7
18399	463	3	5. All	85.7
18400	463	58	5. All	85.7
18401	463	13	5. All	84.1
18402	463	1904	5. All	82.5
18403	463	416	5. All	80.7
18404	463	54	5. All	78.8
18405	463	21	5. All	78.8
18406	463	68	5. All	78.8
18407	463	15	5. All	76.7
18408	463	878	5. All	76.7
18409	463	161	5. All	76.7
18410	463	1593	5. All	76.7
18411	463	35	5. All	74.4
18412	463	18	5. All	74.4
18413	463	458	5. All	74.4
18414	463	160	5. All	69.1
18415	463	255	5. All	69.1
18416	463	924	5. All	65.9
18417	463	168	5. All	65.9
18418	463	77	5. All	65.9
18419	463	17	5. All	65.9
18420	463	144	5. All	65.9
18421	463	23	5. All	62.2
18422	463	644	5. All	62.2
18423	463	1902	5. All	62.2
18424	463	50	5. All	62.2
18425	463	12	5. All	62.2
18426	463	171	5. All	62.2
18427	463	94	5. All	62.2
18428	463	222	5. All	57.8
18429	463	153	5. All	57.8
18430	463	117	5. All	57.8
18431	463	196	5. All	57.8
18432	463	185	5. All	57.8
18433	463	32	5. All	57.8
18434	463	317	5. All	57.8
18435	463	142	5. All	57.8
18436	463	186	5. All	57.8
18437	463	136	5. All	57.8
18438	463	28	5. All	57.8
18439	463	139	5. All	57.8
18440	463	33	5. All	57.8
18441	463	914	5. All	57.8
18442	463	573	5. All	52.5
18443	463	1905	5. All	52.5
18444	463	40	5. All	52.5
18445	463	14	5. All	52.5
18446	463	314	5. All	52.5
18447	463	239	5. All	52.5
18448	463	1331	5. All	52.5
18449	463	254	5. All	52.5
18450	463	63	5. All	52.5
18451	463	173	5. All	52.5
18452	463	2	5. All	52.5
18453	463	176	5. All	52.5
18454	463	512	5. All	52.5
18455	463	332	5. All	52.5
18456	463	184	5. All	52.5
18457	463	157	5. All	52.5
18458	463	37	5. All	52.5
18459	463	1539	5. All	45.7
18460	463	119	5. All	45.7
18461	463	140	5. All	45.7
18462	463	150	5. All	45.7
18463	463	106	5. All	45.7
18464	463	1710	5. All	45.7
18465	463	655	5. All	45.7
18466	463	45	5. All	45.7
18467	463	59	5. All	45.7
18468	463	147	5. All	45.7
18469	463	335	5. All	45.7
18470	463	1906	5. All	45.7
18471	463	27	5. All	45.7
18472	463	43	5. All	45.7
18473	463	55	5. All	45.7
18474	463	72	5. All	36.3
18475	463	1044	5. All	36.3
18476	463	87	5. All	36.3
18477	463	521	5. All	36.3
18478	463	103	5. All	36.3
18479	463	1040	5. All	36.3
18480	463	530	5. All	36.3
18481	463	680	5. All	36.3
18482	463	338	5. All	36.3
18483	463	118	5. All	36.3
18484	463	1908	5. All	36.3
18485	463	155	5. All	36.3
18486	463	188	5. All	36.3
18487	463	96	5. All	36.3
18488	463	1493	5. All	36.3
18489	464	1910	2. Three Months	100
18490	464	389	2. Three Months	83.5
18491	464	1910	3. Six Months	100
18492	464	389	3. Six Months	82.7
18493	464	1911	4. More Than Six Months	100
18494	464	590	4. More Than Six Months	100
18495	464	1910	4. More Than Six Months	93.5
18496	464	282	4. More Than Six Months	93.5
18497	464	327	4. More Than Six Months	85
18498	464	1912	4. More Than Six Months	73.2
18499	464	28	4. More Than Six Months	73.2
18500	464	4	4. More Than Six Months	73.2
18501	464	305	4. More Than Six Months	73.2
18502	464	146	4. More Than Six Months	73.2
18503	464	1913	4. More Than Six Months	73.2
18504	464	153	4. More Than Six Months	73.2
18505	464	1914	4. More Than Six Months	73.2
18506	464	1915	4. More Than Six Months	73.2
18507	464	1916	4. More Than Six Months	73.2
18508	464	1772	4. More Than Six Months	73.2
18509	464	1060	4. More Than Six Months	73.2
18510	464	1332	4. More Than Six Months	73.2
18511	464	181	4. More Than Six Months	73.2
18512	464	79	4. More Than Six Months	73.2
18513	464	422	4. More Than Six Months	73.2
18514	464	1772	5. All	100
18515	464	1912	5. All	100
18516	464	1915	5. All	100
18517	464	1914	5. All	100
18518	464	1916	5. All	100
18519	464	1910	5. All	94.3
18520	464	1911	5. All	82.2
18521	464	590	5. All	82.2
18522	464	282	5. All	76.5
18523	464	327	5. All	69.2
18524	464	146	5. All	69.2
18525	464	1332	5. All	58.9
18526	464	1060	5. All	58.9
18527	464	79	5. All	58.9
18528	464	153	5. All	58.9
18529	464	28	5. All	58.9
18530	464	305	5. All	58.9
18531	464	4	5. All	58.9
18532	464	1913	5. All	58.9
18533	464	181	5. All	58.9
18534	464	143	5. All	58.9
18535	464	422	5. All	58.9
18536	464	389	5. All	58.9
18537	464	2	5. All	58.9
18538	465	35	4. More Than Six Months	100
18539	465	1917	4. More Than Six Months	100
18540	465	1918	4. More Than Six Months	100
18541	465	1917	5. All	100
18542	465	1918	5. All	100
18543	465	35	5. All	66
18544	466	202	2. Three Months	100
18545	466	1	3. Six Months	100
18546	466	135	3. Six Months	79.6
18547	466	202	3. Six Months	79.6
18548	466	1	4. More Than Six Months	100
18549	466	1623	4. More Than Six Months	73.2
18550	466	94	4. More Than Six Months	73.2
18551	466	583	4. More Than Six Months	64.9
18552	466	1	5. All	100
18553	466	1623	5. All	72.5
18554	466	94	5. All	72.5
18555	466	583	5. All	58.8
18556	466	156	5. All	58.8
18557	466	135	5. All	58.8
18558	466	6	5. All	58.8
18559	466	412	5. All	58.8
18560	466	202	5. All	58.8
18561	467	113	2. Three Months	100
18562	467	27	2. Three Months	81.6
18563	467	161	2. Three Months	72.7
18564	467	113	3. Six Months	100
18565	467	161	3. Six Months	87.5
18566	467	27	3. Six Months	81.1
18567	467	19	3. Six Months	72
18568	467	161	4. More Than Six Months	100
18569	467	134	4. More Than Six Months	76.2
18570	467	1072	4. More Than Six Months	72.6
18571	467	113	4. More Than Six Months	68.2
18572	467	680	4. More Than Six Months	68.2
18573	467	653	4. More Than Six Months	68.2
18574	467	1	4. More Than Six Months	54.6
18575	467	65	4. More Than Six Months	54.6
18576	467	1919	4. More Than Six Months	54.6
18577	467	28	4. More Than Six Months	54.6
18578	467	35	4. More Than Six Months	54.6
18579	467	34	4. More Than Six Months	54.6
18580	467	142	4. More Than Six Months	54.6
18581	467	161	5. All	100
18582	467	113	5. All	84.5
18583	467	1919	5. All	82.6
18584	467	134	5. All	72.5
18585	467	653	5. All	68.9
18586	467	1072	5. All	68.9
18587	467	680	5. All	64.5
18588	467	35	5. All	58.8
18589	467	65	5. All	58.8
18590	467	27	5. All	58.8
18591	467	28	5. All	50.8
18592	467	1	5. All	50.8
18593	467	34	5. All	50.8
18594	467	33	5. All	50.8
18595	467	53	5. All	50.8
18596	467	154	5. All	50.8
18597	467	19	5. All	50.8
18598	467	142	5. All	50.8
18599	468	32	2. Three Months	100
18600	468	32	3. Six Months	100
18601	468	321	4. More Than Six Months	100
18602	468	1027	4. More Than Six Months	100
18603	468	1365	4. More Than Six Months	100
18604	468	832	4. More Than Six Months	100
18605	468	478	4. More Than Six Months	100
18606	468	729	4. More Than Six Months	100
18607	468	1920	4. More Than Six Months	100
18608	468	1365	5. All	100
18609	468	321	5. All	88.5
18610	468	1027	5. All	88.5
18611	468	832	5. All	88.5
18612	468	478	5. All	88.5
18613	468	729	5. All	88.5
18614	468	1920	5. All	88.5
18615	468	470	5. All	88.5
18616	468	32	5. All	88.5
18617	469	762	2. Three Months	100
18618	469	133	2. Three Months	100
18619	469	124	3. Six Months	100
18620	469	762	3. Six Months	100
18621	469	133	3. Six Months	100
18622	469	1060	4. More Than Six Months	100
18623	469	242	4. More Than Six Months	85.5
18624	469	139	4. More Than Six Months	78
18625	469	13	4. More Than Six Months	78
18626	469	54	4. More Than Six Months	78
18627	469	625	4. More Than Six Months	67.6
18628	469	30	4. More Than Six Months	67.6
18629	469	452	4. More Than Six Months	67.6
18630	469	37	4. More Than Six Months	67.6
18631	469	349	4. More Than Six Months	67.6
18632	469	18	4. More Than Six Months	67.6
18633	469	1787	4. More Than Six Months	67.6
18634	469	1921	4. More Than Six Months	67.6
18635	469	1181	4. More Than Six Months	67.6
18636	469	1922	4. More Than Six Months	67.6
18637	469	1923	4. More Than Six Months	67.6
18638	469	212	4. More Than Six Months	67.6
18639	469	1181	5. All	100
18640	469	1921	5. All	100
18641	469	1787	5. All	100
18642	469	1922	5. All	100
18643	469	1923	5. All	100
18644	469	1060	5. All	94.4
18645	469	242	5. All	77.1
18646	469	212	5. All	69.9
18647	469	13	5. All	69.9
18648	469	139	5. All	69.9
18649	469	54	5. All	69.9
18650	469	625	5. All	59.8
18651	469	349	5. All	59.8
18652	469	30	5. All	59.8
18653	469	452	5. All	59.8
18654	469	37	5. All	59.8
18655	469	18	5. All	59.8
18656	469	117	5. All	59.8
18657	469	62	5. All	59.8
18658	469	530	5. All	59.8
18659	469	124	5. All	59.8
18660	469	130	5. All	59.8
18661	469	762	5. All	59.8
18662	469	133	5. All	59.8
18663	470	153	4. More Than Six Months	100
18664	470	119	4. More Than Six Months	72
18665	470	153	5. All	100
18666	470	119	5. All	71.5
18667	470	53	5. All	71.5
18668	470	30	5. All	71.5
\.


--
-- Data for Name: question_topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_topics (question_id, topic_id) FROM stdin;
1	1
1	2
2	1
2	3
2	2
3	1
3	4
4	1
4	5
4	6
4	7
4	8
5	5
5	6
5	7
5	9
6	10
6	2
6	11
6	12
7	1
7	13
7	3
7	14
7	15
8	1
8	13
8	4
8	16
8	14
9	1
9	16
10	10
10	2
10	12
11	10
11	17
12	13
12	10
12	4
13	1
13	13
14	10
15	1
15	10
15	4
16	1
16	13
16	2
17	13
17	10
17	18
18	18
18	19
19	4
19	18
19	2
20	10
21	1
21	18
21	20
21	14
22	1
22	8
22	21
23	1
23	4
23	14
24	1
24	22
24	14
24	15
25	10
25	2
25	6
26	1
26	16
27	4
27	18
28	1
28	4
28	14
29	10
29	2
30	13
30	18
30	23
31	18
31	24
32	1
32	25
33	13
33	18
33	26
34	27
34	10
34	11
35	1
35	4
35	20
36	1
36	10
37	1
37	4
38	13
38	18
38	14
39	1
39	2
40	4
40	18
41	1
41	4
41	20
41	14
42	10
42	16
43	1
43	2
44	1
44	16
45	1
45	2
45	6
46	1
46	13
46	14
47	1
47	10
47	28
47	29
48	1
49	1
49	16
50	18
50	2
51	1
51	13
51	24
51	30
52	1
52	13
52	14
52	15
53	27
53	11
54	1
54	10
54	8
55	1
55	10
55	11
55	31
55	21
56	10
57	1
57	4
58	1
58	14
59	1
59	16
59	2
60	4
60	18
61	1
61	20
62	1
62	13
62	14
63	4
63	18
63	32
64	13
64	18
64	23
64	15
65	1
65	13
65	18
65	14
66	27
67	10
67	16
68	18
68	2
68	26
69	1
69	13
69	20
69	14
71	1
71	13
71	18
71	26
72	27
72	4
73	10
73	11
74	1
74	16
74	8
75	1
75	2
76	1
76	4
76	16
76	14
77	1
77	16
77	3
78	1
78	10
79	10
79	2
79	33
80	34
81	13
81	27
81	4
82	1
82	22
83	1
83	13
83	14
83	35
84	13
84	18
85	1
85	2
86	10
86	21
87	1
87	4
88	4
88	18
88	2
89	1
89	13
89	14
89	36
90	1
90	22
91	4
91	18
91	2
92	37
92	5
92	6
92	38
93	10
93	18
94	10
94	18
94	24
95	13
95	10
95	2
95	35
96	10
96	18
97	18
97	24
98	1
99	1
99	21
99	25
100	1
101	1
101	21
101	15
102	1
102	18
103	1
103	16
104	18
104	39
104	32
104	40
105	1
105	2
105	6
105	8
106	13
106	10
106	18
107	1
107	24
107	30
108	1
108	3
108	14
108	35
108	41
109	34
110	10
110	2
110	12
111	34
112	18
112	23
113	1
113	4
113	2
113	24
113	30
114	37
114	5
114	6
114	38
115	1
115	4
115	20
116	18
116	2
117	1
117	16
118	1
118	4
119	1
119	24
119	21
120	10
120	2
120	33
122	1
122	2
122	9
122	42
123	34
124	1
124	13
125	18
126	18
126	24
126	11
127	1
127	13
127	18
127	19
127	14
127	35
127	43
127	15
128	1
128	13
128	3
128	14
128	35
128	43
128	15
128	41
129	1
129	13
129	15
130	13
130	27
130	44
130	45
131	13
131	18
131	23
132	1
132	2
132	5
132	6
132	9
132	42
132	12
132	8
133	13
133	18
133	6
134	13
134	18
134	23
135	1
135	6
135	8
136	18
136	2
137	27
137	11
138	1
138	13
138	8
139	1
139	2
139	20
140	1
140	26
141	1
141	26
142	1
142	4
142	14
143	1
143	2
143	20
144	1
144	13
144	8
145	27
145	3
145	35
145	46
146	1
146	13
147	1
147	16
148	1
148	13
148	3
148	37
148	38
149	10
149	22
150	1
150	26
150	22
151	27
151	11
152	18
153	1
153	24
153	30
154	27
154	11
155	27
156	1
156	4
156	14
157	1
157	4
157	14
158	18
159	37
159	6
159	38
160	18
160	2
160	20
160	11
161	18
162	27
162	4
163	37
163	5
163	6
163	38
164	27
164	4
165	24
165	37
165	5
165	38
166	1
167	1
167	13
167	26
167	8
168	1
168	18
168	21
169	37
169	5
169	38
170	37
170	5
170	6
170	38
171	18
171	2
171	24
172	10
172	18
172	22
172	21
173	1
173	18
173	26
173	5
173	8
174	26
175	13
175	18
175	23
176	1
176	8
176	21
177	10
177	11
178	1
178	16
179	27
179	4
180	37
180	5
180	47
180	38
181	1
181	2
181	8
182	37
182	5
182	6
182	38
183	18
183	24
184	1
184	26
185	18
186	18
186	26
187	1
187	26
187	22
188	10
188	2
188	37
188	47
188	38
189	1
189	2
189	24
189	8
189	30
190	27
190	4
191	1
191	26
191	14
192	10
192	18
192	21
193	1
193	13
193	3
193	37
193	38
194	1
194	3
194	37
194	47
194	38
195	37
195	5
195	6
195	38
196	1
196	26
197	37
197	6
197	38
198	1
198	13
198	10
198	44
198	48
199	1
199	16
199	44
199	31
199	49
200	1
200	13
200	18
200	19
201	1
201	13
201	10
201	44
201	48
202	4
202	18
203	18
204	13
204	18
204	24
204	11
205	44
205	31
205	49
206	4
206	18
206	24
206	21
207	1
207	14
208	1
208	25
209	1
209	16
210	1
210	2
211	1
211	13
212	1
212	16
213	18
213	24
214	1
214	4
214	14
215	13
215	4
215	18
215	23
216	1
216	20
217	18
217	20
218	10
218	21
219	37
219	5
219	47
219	38
220	4
220	44
220	14
220	35
220	49
221	1
221	16
221	23
221	25
222	1
222	2
222	20
223	1
223	20
223	14
224	1
224	13
224	18
224	9
224	44
224	42
224	8
225	1
225	16
225	2
225	14
226	1
226	13
226	44
226	21
227	1
227	13
227	18
227	37
227	5
227	6
228	1
228	4
228	44
228	50
229	1
229	13
229	44
229	8
229	21
230	1
230	13
230	18
230	19
231	1
231	21
232	1
232	22
232	6
232	8
233	1
233	18
233	5
233	6
233	9
233	42
234	2
234	5
234	6
234	9
234	35
234	51
235	1
235	2
235	26
235	6
235	12
235	8
236	1
236	52
236	14
236	35
237	1
237	13
237	23
238	13
238	27
238	44
238	45
239	1
239	18
239	26
239	19
239	8
240	1
240	23
240	14
240	43
240	53
241	1
241	2
241	8
242	10
242	18
242	21
243	13
243	18
243	44
243	19
244	13
244	10
244	18
245	10
245	2
246	22
246	5
246	6
247	9
248	13
248	18
248	16
248	44
249	24
249	37
249	5
249	44
249	31
249	50
250	1
250	6
250	8
251	18
251	22
252	18
252	24
252	5
253	1
253	13
253	22
253	6
253	8
254	1
254	22
255	18
255	2
255	11
256	1
256	6
256	9
257	1
257	10
257	18
257	20
257	14
258	10
258	18
258	21
259	13
259	18
259	39
259	40
260	10
261	3
261	22
262	1
262	5
262	6
262	7
262	8
263	1
263	13
263	25
264	1
264	13
265	1
265	13
266	1
266	20
266	14
266	25
267	1
267	22
267	25
268	1
268	13
269	1
269	24
269	37
269	47
269	30
269	38
270	13
270	18
270	20
271	1
271	13
271	15
272	5
272	9
272	54
273	1
273	20
273	9
273	14
273	35
274	1
274	20
274	14
275	1
275	20
275	14
276	5
276	6
276	9
276	35
276	51
277	1
277	2
278	1
278	10
278	15
278	29
279	1
279	13
279	20
279	14
279	35
280	1
280	16
280	3
280	55
280	56
280	46
280	53
281	1
281	2
281	20
282	1
282	2
282	8
283	1
283	2
283	31
283	23
283	35
283	57
284	13
284	18
284	44
284	19
285	5
285	6
285	7
285	9
286	1
286	13
286	18
286	22
286	25
287	13
287	18
287	15
288	5
288	6
288	7
288	9
289	1
289	5
289	6
289	8
290	1
290	13
290	37
290	5
290	38
291	1
291	18
291	20
292	1
292	13
292	25
293	18
293	2
293	24
293	20
294	1
294	13
294	15
295	1
295	13
295	18
295	44
295	35
295	53
296	1
296	21
297	10
297	21
298	1
298	16
299	13
299	18
299	20
299	14
299	35
299	15
300	1
300	13
300	2
300	20
300	28
300	25
301	37
301	5
301	38
302	1
302	4
302	20
302	14
302	35
302	25
303	24
303	44
304	1
304	18
304	2
304	5
304	19
305	13
305	27
305	44
305	45
306	10
306	18
306	21
307	37
307	5
307	6
307	38
308	10
308	18
308	24
308	11
309	1
309	13
309	18
309	9
309	42
310	1
310	20
311	5
311	6
311	7
311	9
312	1
312	13
312	14
313	1
313	31
313	23
313	35
313	57
314	10
314	18
314	11
315	5
315	6
315	9
315	42
316	1
316	5
316	6
316	8
317	1
317	4
317	16
317	22
318	5
318	6
318	9
318	42
319	1
320	1
320	16
320	14
321	10
321	33
321	28
322	5
322	6
322	9
322	42
323	44
323	21
323	15
324	10
325	13
325	18
325	44
325	19
325	14
326	1
326	13
326	25
327	1
327	13
327	23
327	14
328	1
328	10
328	3
328	58
328	14
328	35
328	41
329	1
329	18
329	5
329	6
329	7
329	9
329	51
330	13
330	27
331	1
331	13
331	18
331	2
331	26
331	19
331	12
332	1
332	13
332	7
333	18
333	37
333	5
333	6
333	44
333	38
334	1
334	24
334	30
335	1
335	13
335	18
335	2
335	19
335	12
336	1
336	13
336	10
336	16
336	22
336	14
337	1
337	10
337	24
338	13
338	18
338	31
338	15
339	1
339	18
339	16
339	25
340	37
340	5
340	38
341	1
341	10
341	16
341	25
341	48
342	2
342	37
342	5
342	38
343	18
343	2
343	26
344	27
344	4
344	24
344	11
345	1
345	2
345	8
346	1
346	20
347	10
347	11
348	13
348	5
348	6
348	9
349	13
349	27
349	4
350	13
350	27
350	4
351	26
351	37
351	5
351	38
352	2
352	26
352	37
352	47
352	38
353	37
353	5
353	47
353	38
354	18
354	2
355	26
356	18
357	10
357	26
357	22
358	18
358	2
359	3
359	22
360	1
360	13
360	44
360	35
360	8
360	53
361	2
361	25
362	13
362	18
362	15
362	25
363	18
363	32
364	1
364	22
365	13
365	18
365	20
365	14
366	10
366	21
366	29
367	1
367	13
368	37
368	5
368	6
368	9
369	10
369	16
369	33
369	29
370	1
370	14
370	28
371	18
372	1
372	13
372	23
372	35
373	1
373	10
373	22
374	1
374	13
374	20
374	15
375	1
375	16
375	22
375	56
376	1
376	20
377	1
377	20
377	8
378	34
379	34
380	1
380	10
380	58
380	23
380	14
381	13
381	5
381	6
381	7
381	40
382	2
383	1
383	2
383	20
384	1
384	18
384	16
384	19
384	14
384	35
385	1
385	5
385	6
385	8
386	1
386	18
387	1
387	4
387	16
387	14
388	37
388	5
388	38
389	1
389	6
389	8
390	27
390	24
390	37
390	5
390	38
391	1
391	13
391	4
391	18
391	44
392	1
392	8
392	21
393	27
394	34
395	1
395	20
395	22
396	1
396	22
397	1
397	22
398	1
398	24
398	21
399	13
399	18
399	23
400	13
400	10
400	15
401	1
401	6
401	8
402	13
402	44
402	49
403	1
403	2
404	1
404	2
405	1
405	13
405	18
405	21
406	1
406	20
406	35
406	53
407	1
407	2
407	20
408	1
408	4
408	16
408	23
408	14
408	35
409	44
409	35
409	53
410	1
410	13
410	20
410	14
410	35
410	15
411	1
411	13
411	27
411	44
411	40
412	1
412	27
412	44
412	31
413	1
413	13
413	23
413	35
414	13
414	18
414	44
414	19
415	1
415	16
415	14
415	35
415	8
416	4
416	18
417	18
418	24
418	44
418	31
419	1
419	13
419	21
420	1
420	18
421	4
421	18
422	1
422	4
422	16
423	1
423	10
423	18
423	59
423	60
424	37
424	5
424	6
424	38
425	10
425	20
426	27
426	37
426	5
426	6
426	38
427	1
427	6
427	8
428	1
428	13
428	18
429	1
429	10
429	14
429	8
430	1
430	18
430	20
430	19
430	14
431	1
431	44
431	8
431	25
432	1
432	8
432	21
433	1
433	2
433	31
433	35
433	57
434	1
434	4
434	16
434	2
434	22
434	53
434	61
435	1
435	10
435	20
435	14
435	35
435	60
436	5
436	6
436	7
436	9
437	1
437	37
437	38
438	1
438	10
438	2
438	33
438	25
439	1
439	2
439	20
440	1
440	5
440	6
440	7
440	8
441	2
441	31
441	21
442	18
442	16
442	23
442	25
443	18
443	24
443	21
444	18
444	2
445	37
445	47
445	38
446	37
446	5
446	47
446	38
447	10
447	2
448	1
448	20
448	14
449	27
449	11
450	13
450	18
450	20
450	35
450	15
451	1
451	16
452	1
452	44
452	31
452	49
453	37
453	44
453	47
453	35
453	38
453	49
454	1
454	13
454	9
455	27
456	27
456	5
456	45
457	1
457	16
458	18
458	24
458	21
459	18
459	2
459	32
460	34
461	1
461	24
462	13
462	44
462	35
462	49
462	53
463	1
463	13
463	44
463	31
463	21
464	1
464	13
464	18
464	14
465	1
465	16
465	5
465	6
465	7
465	8
466	1
466	13
466	18
466	14
466	15
467	1
467	8
468	1
468	6
468	9
469	1
469	16
469	2
469	14
470	34
471	13
471	4
471	37
471	38
472	18
472	5
472	44
472	19
473	1
473	18
473	25
474	1
474	13
474	28
475	1
475	13
475	4
475	18
475	2
475	14
476	1
476	13
476	16
476	44
477	10
477	18
477	2
477	32
478	1
478	18
478	24
479	2
480	13
480	18
480	23
481	1
481	4
481	20
481	14
482	1
482	2
483	1
483	6
483	9
483	35
483	8
483	51
484	1
484	10
484	18
484	26
485	22
485	9
485	35
485	28
485	51
486	1
486	7
486	14
487	1
487	18
487	2
487	9
487	19
487	51
488	1
488	13
488	10
488	20
489	1
489	18
489	9
489	51
490	1
490	13
490	25
491	1
491	16
492	10
493	10
493	2
493	11
494	1
494	26
494	9
495	1
495	13
495	18
495	15
496	18
496	24
497	4
497	18
497	20
498	1
498	10
499	34
500	1
500	39
500	32
500	40
501	10
501	11
502	18
503	1
503	39
503	32
503	40
504	1
504	21
505	1
505	55
505	56
505	21
506	1
506	18
506	19
506	39
506	32
506	40
507	1
507	18
507	19
507	39
507	32
507	40
508	1
508	16
508	55
508	56
509	1
509	16
509	23
509	25
510	10
511	1
511	2
511	24
511	30
512	1
512	10
513	1
513	2
514	2
515	18
515	2
515	24
515	6
515	12
516	1
516	13
516	2
517	13
517	18
517	3
517	23
518	2
518	20
518	22
518	12
519	1
519	16
519	2
519	20
519	25
520	1
520	2
520	23
521	13
521	18
522	18
522	20
522	32
523	1
523	2
523	20
523	35
524	5
524	9
524	42
525	1
525	8
525	25
526	1
526	10
526	21
527	18
527	15
528	1
528	13
528	14
528	35
528	21
529	5
529	19
530	27
530	4
530	24
530	11
531	13
531	18
531	20
531	15
532	1
532	24
532	14
532	30
533	1
533	13
533	6
534	18
534	2
535	1
535	2
535	37
535	5
536	1
536	2
536	20
536	22
536	37
536	14
537	1
537	9
537	35
537	51
538	1
538	4
538	20
538	14
539	37
539	5
539	38
540	1
540	2
541	1
541	13
541	16
541	20
541	35
542	27
542	18
542	24
542	44
542	21
542	45
543	1
543	5
543	6
543	8
544	44
544	21
545	1
545	13
545	10
545	15
546	1
546	13
546	28
547	1
547	4
547	20
547	14
548	1
548	8
548	21
549	1
549	4
549	8
550	1
550	56
550	53
551	1
551	10
552	1
552	20
552	14
553	18
553	21
554	1
555	18
555	23
555	28
555	25
556	1
556	13
556	18
556	14
557	34
558	1
558	5
558	6
558	7
558	8
559	13
559	44
559	14
560	18
560	24
561	10
561	22
562	1
562	4
562	16
562	20
562	14
563	1
563	20
563	14
564	1
564	16
564	59
565	1
565	23
566	26
566	5
566	6
566	9
567	13
567	18
567	44
568	1
569	1
569	28
570	13
570	10
571	13
571	37
571	5
571	6
571	14
571	38
572	1
573	4
573	18
574	1
574	21
575	1
575	13
576	13
576	4
576	18
576	20
577	13
577	18
577	15
578	1
578	14
579	1
580	1
581	34
582	34
583	1
583	14
583	36
584	27
584	3
584	37
584	47
584	38
585	1
585	13
585	20
586	2
586	9
586	12
587	1
587	10
587	20
587	29
588	1
588	10
588	2
588	33
588	25
589	13
589	18
590	1
590	4
590	35
590	21
591	1
591	20
591	14
592	1
592	13
592	25
593	4
593	18
594	13
594	18
594	23
595	13
595	18
595	15
596	5
596	9
596	62
597	1
597	13
597	18
597	14
597	35
598	1
598	13
598	18
598	19
598	40
599	1
599	6
599	14
599	35
599	8
600	1
600	13
600	22
601	1
601	5
601	6
601	8
602	34
604	5
604	6
604	7
604	9
605	1
605	14
605	35
606	1
606	4
606	8
606	21
607	10
607	18
607	24
607	11
608	2
609	1
609	10
609	2
610	13
610	27
611	1
611	2
612	27
612	4
612	3
612	14
612	46
613	18
613	24
613	20
613	30
614	37
614	5
614	38
615	10
615	18
615	20
615	60
616	18
616	2
617	1
617	13
617	10
617	58
617	14
618	4
618	18
619	1
619	16
619	3
619	8
620	2
620	37
620	5
620	9
621	1
621	13
621	18
621	6
622	10
622	16
622	20
623	1
623	2
624	1
624	2
624	25
625	1
625	13
626	1
626	2
626	26
626	22
626	12
626	61
627	18
627	24
627	20
627	30
628	1
628	6
628	35
628	8
629	1
629	13
629	44
629	21
630	1
630	5
630	6
630	8
631	18
631	21
632	18
632	21
633	1
633	13
633	15
634	34
635	34
636	18
636	20
636	35
637	1
637	13
637	8
637	15
638	1
639	1
639	31
639	23
639	35
639	53
639	57
640	18
640	16
640	28
641	1
641	2
641	12
642	1
642	13
642	18
642	19
643	1
643	13
643	16
643	14
643	25
643	53
644	1
644	2
644	20
644	14
645	1
645	10
646	1
646	13
646	4
646	16
646	14
647	1
647	10
647	14
647	35
647	8
647	25
648	18
648	26
648	37
648	5
648	38
649	1
649	10
650	1
650	16
650	53
651	1
651	13
651	10
651	20
653	13
653	18
653	15
654	13
654	18
654	24
654	21
655	1
655	10
655	18
655	14
656	1
656	16
656	2
656	20
657	1
657	13
657	23
658	1
659	18
660	1
660	10
660	5
660	6
660	9
660	58
661	34
662	1
662	13
662	23
663	1
663	8
664	1
664	13
664	16
664	44
664	31
664	53
665	1
665	13
665	10
665	58
666	1
666	10
666	2
666	11
666	60
667	34
668	1
668	10
668	2
668	60
669	18
670	18
670	2
671	1
671	4
671	18
672	10
672	18
672	2
673	1
673	16
674	1
674	10
674	58
675	18
676	10
676	28
677	1
677	27
677	24
677	44
677	45
677	49
678	1
678	16
678	20
678	14
678	25
679	1
679	2
679	26
679	22
679	61
680	18
680	24
680	20
680	30
681	18
681	2
682	1
682	14
682	35
683	13
683	18
683	23
683	15
684	13
684	4
684	37
684	5
684	6
684	47
684	38
685	18
685	2
686	1
686	4
686	14
687	1
687	2
688	6
689	1
689	16
690	2
691	1
691	13
691	23
692	20
692	5
692	6
692	7
692	9
693	26
693	59
694	18
694	5
694	44
694	19
694	14
694	35
694	49
695	1
695	13
695	4
695	16
695	2
695	14
695	15
696	1
696	10
696	58
696	48
697	1
697	16
697	2
697	23
697	39
697	40
698	5
698	6
698	9
698	42
699	5
699	6
699	9
699	42
700	2
701	1
701	2
702	1
702	10
702	22
702	8
703	1
703	26
703	22
703	28
704	13
704	18
704	26
704	6
705	10
705	28
706	1
706	27
706	44
706	31
706	49
707	1
707	2
708	1
708	7
708	9
708	42
708	14
708	8
709	27
709	37
709	5
709	6
709	38
710	1
710	13
710	8
711	1
711	3
711	55
711	56
711	52
711	35
711	53
712	1
712	13
712	25
713	2
714	10
714	2
715	1
715	24
715	30
716	18
717	13
717	18
717	14
718	1
718	20
718	14
718	35
719	1
719	5
719	6
719	8
720	1
720	13
720	37
720	38
721	34
722	1
722	6
722	9
722	35
722	8
722	51
723	22
724	22
725	18
725	7
726	10
727	1
727	24
727	44
728	1
729	34
730	10
730	14
731	34
732	1
732	16
732	5
732	6
732	7
732	35
732	8
733	1
733	44
733	31
733	50
734	1
734	2
735	13
735	18
736	1
736	35
736	21
737	10
737	16
738	1
738	2
738	55
738	56
739	5
739	6
739	7
739	9
740	10
740	21
741	1
741	4
741	18
741	19
741	32
742	37
742	5
742	32
742	38
742	40
743	13
743	27
743	44
743	45
745	1
745	13
745	25
746	1
746	4
746	16
746	14
747	13
747	18
747	24
747	14
748	1
748	8
748	21
749	1
749	5
749	6
749	8
750	1
750	2
750	26
750	22
750	12
750	61
751	1
751	13
751	16
751	44
752	18
752	16
752	2
752	39
752	63
752	40
753	18
753	16
753	23
753	39
753	63
753	40
754	13
754	27
754	44
754	35
755	37
755	47
755	11
755	38
756	1
756	20
757	44
757	56
757	53
758	1
758	4
758	16
758	20
758	31
758	14
758	57
759	18
759	2
760	1
760	24
760	30
761	1
761	10
762	1
762	20
762	14
762	15
763	18
763	11
764	10
764	2
764	33
765	34
766	1
766	16
766	20
766	23
766	14
766	25
767	10
767	20
768	13
768	18
768	15
769	1
769	18
769	44
770	1
770	26
770	22
770	8
771	1
771	13
771	18
771	26
771	7
772	1
772	13
772	25
773	1
773	2
774	18
774	37
774	5
774	38
775	1
775	13
775	20
775	23
775	14
775	35
776	5
776	6
776	64
777	44
777	56
777	53
778	1
778	4
778	2
778	28
779	34
780	1
780	13
780	44
781	16
781	44
781	53
782	37
782	5
782	6
782	38
783	1
783	13
783	18
783	20
783	15
784	4
784	18
785	37
785	5
785	6
786	1
786	13
786	18
786	15
787	1
787	13
787	18
788	1
788	2
788	8
789	1
789	10
789	58
790	37
790	5
790	47
790	38
791	1
791	13
791	18
792	10
792	18
793	1
793	10
793	14
794	1
794	8
794	21
795	2
795	37
795	5
795	38
796	1
796	2
797	1
797	20
797	14
797	35
798	1
798	2
798	8
799	1
799	5
799	6
799	7
799	9
799	42
800	1
800	16
800	23
800	14
801	34
802	1
802	4
802	16
803	1
803	13
803	23
803	25
804	19
805	1
805	2
806	1
806	20
806	14
806	28
806	25
807	13
807	18
807	20
807	14
807	15
808	1
808	20
808	14
808	35
809	1
809	21
810	1
810	13
810	4
810	14
811	1
811	22
811	7
811	9
812	13
812	18
812	22
812	25
813	1
813	13
813	14
813	36
814	1
814	7
814	9
814	65
815	1
815	18
815	3
815	14
815	35
815	66
815	41
816	1
816	2
816	25
817	1
817	20
817	22
817	25
818	1
818	13
818	8
818	21
819	10
819	16
820	1
820	2
820	22
820	37
820	5
820	12
821	1
821	16
821	8
822	1
822	2
822	20
822	14
823	1
823	2
823	8
824	1
824	4
824	16
824	24
824	30
825	1
825	18
825	2
825	22
825	61
826	1
826	23
826	25
827	10
827	67
827	48
827	68
828	1
828	2
828	24
828	6
828	7
828	35
828	8
828	30
829	1
829	10
829	3
829	2
829	37
829	7
829	47
829	12
829	33
829	38
830	18
830	2
830	39
830	32
830	40
831	1
831	21
832	1
832	2
832	8
833	13
833	37
833	5
833	6
833	38
834	1
834	2
834	20
834	37
834	38
835	24
835	44
835	31
836	18
836	20
836	28
837	13
837	18
837	23
838	13
838	18
838	20
838	14
838	15
839	1
839	2
840	1
840	16
840	22
840	56
841	1
842	1
842	35
842	21
843	1
843	16
843	5
843	6
843	7
843	35
843	8
844	1
844	16
844	8
844	25
844	53
845	1
845	20
845	35
846	34
847	1
847	18
848	13
848	37
848	5
848	6
848	14
848	38
849	1
849	13
849	10
849	23
849	25
850	18
850	26
850	6
851	34
852	1
852	16
853	34
854	34
855	10
855	18
855	2
855	11
855	12
856	1
856	2
856	8
857	18
857	24
857	20
857	30
858	1
858	24
858	14
858	21
859	1
859	28
860	1
860	16
860	20
860	14
861	1
861	16
861	23
861	25
862	1
862	16
862	23
862	14
862	25
863	1
863	4
863	16
863	14
863	25
864	1
864	20
865	1
865	13
865	22
866	1
866	16
867	1
867	13
867	23
868	1
868	10
868	58
868	14
868	53
869	1
869	13
869	15
870	18
870	20
870	35
871	1
871	2
871	37
871	5
872	13
872	18
872	22
873	37
873	5
873	9
873	19
874	1
874	9
874	35
874	51
875	1
875	20
875	14
875	8
876	1
876	21
877	1
877	10
877	2
877	25
878	10
878	18
879	5
879	6
879	9
880	13
880	18
880	22
881	1
881	20
881	14
881	35
882	13
882	18
882	20
883	37
883	5
883	6
883	38
884	1
884	6
884	8
885	10
885	4
885	18
886	1
886	14
886	35
887	1
887	37
887	5
887	38
888	13
888	18
888	15
889	1
889	13
889	5
889	6
889	7
889	9
890	13
890	18
890	15
891	1
891	4
891	16
891	20
891	14
892	1
892	25
893	13
893	18
894	1
895	1
895	5
895	6
895	7
895	8
896	1
896	14
896	43
896	66
897	1
897	6
897	8
898	4
898	9
898	59
899	34
900	34
901	1
901	13
901	21
902	13
902	18
902	44
902	19
903	1
903	18
903	32
904	1
904	5
904	6
904	7
904	8
905	1
905	4
905	52
906	4
906	18
906	16
907	1
907	20
907	14
907	35
908	1
908	16
908	5
908	6
908	7
908	35
908	8
909	37
909	5
910	1
910	13
910	18
910	5
910	6
910	7
911	18
911	26
911	6
912	18
912	6
913	1
913	20
913	14
914	1
914	2
915	18
915	2
916	1
916	2
916	8
917	1
917	24
917	30
918	18
918	2
918	25
919	1
919	2
919	24
919	20
919	30
920	44
920	35
921	18
921	5
921	6
921	59
922	1
922	13
923	1
923	13
923	5
923	6
923	7
923	9
924	13
924	18
925	13
925	18
925	26
926	1
926	13
926	18
926	22
926	19
927	1
927	10
927	29
928	1
928	13
928	7
929	1
929	20
929	14
930	1
930	20
931	9
932	1
932	20
932	14
933	1
933	13
934	18
934	2
934	32
935	18
935	19
935	39
935	63
935	40
936	1
936	18
936	2
937	1
937	10
937	2
937	60
938	16
938	22
938	37
938	38
939	1
939	13
939	18
939	44
939	19
940	1
940	13
940	20
941	1
941	23
942	1
942	4
942	14
943	1
943	2
943	26
943	22
943	61
944	2
944	37
944	5
944	38
945	22
946	10
947	27
947	44
948	18
948	2
948	23
949	1
950	1
950	4
950	20
950	14
951	5
951	6
952	13
952	18
952	23
953	1
953	14
954	1
954	16
954	20
954	14
955	1
955	6
955	8
956	1
956	22
956	14
957	1
957	2
957	20
958	1
958	14
958	35
959	34
960	37
960	5
960	38
961	1
961	10
961	14
961	8
963	1
963	25
964	18
964	26
965	10
966	10
967	10
967	26
967	6
968	2
968	9
968	51
969	4
969	18
969	24
969	20
970	1
970	23
971	1
971	10
971	20
972	5
972	6
972	9
973	13
973	18
973	39
973	15
973	40
974	1
974	7
974	14
975	18
975	14
976	1
976	13
976	4
976	14
977	1
977	21
978	10
978	29
979	18
979	20
980	18
981	1
981	13
981	20
981	14
981	15
982	1
982	13
982	15
983	1
983	16
983	23
983	25
984	2
984	22
984	12
985	18
985	21
986	13
986	18
986	15
987	4
987	18
988	1
988	8
989	13
989	18
989	24
989	20
989	35
990	18
990	24
990	21
991	1
991	16
991	44
991	56
991	53
992	1
992	4
992	20
992	14
993	1
993	20
994	1
994	10
994	2
995	1
995	13
995	20
995	15
996	1
996	2
996	8
997	1
997	20
997	23
997	25
998	1
998	4
998	24
998	20
998	30
999	1
999	2
999	8
1000	1
1000	4
1000	16
1000	14
1001	1
1001	6
1001	35
1001	8
1002	1
1002	24
1002	31
1002	21
1003	13
1003	37
1003	5
1003	6
1003	38
1004	1
1004	20
1004	14
1005	37
1005	5
1005	6
1005	38
1006	1
1006	2
1007	1
1007	20
1008	26
1008	6
1009	1
1009	13
1009	22
1010	1
1010	10
1010	18
1010	2
1010	24
1010	12
1011	1
1011	13
1011	44
1011	35
1011	53
1012	9
1012	35
1012	51
1013	1
1013	16
1014	1
1014	16
1015	1
1015	2
1016	1
1016	2
1017	37
1017	5
1017	38
1018	1
1018	20
1018	14
1019	1
1019	20
1019	14
1019	35
1020	1
1020	3
1020	2
1020	31
1020	57
1021	1
1021	35
1022	1
1022	14
1022	35
1022	21
1022	25
1023	34
1024	2
1025	1
1025	22
1025	17
1026	1
1026	18
1026	2
1027	1
1027	18
1027	2
1027	20
1028	10
1028	21
1029	1
1029	10
1029	14
1030	2
1030	37
1030	5
1031	1
1031	20
1031	14
1032	1
1032	18
1033	10
1033	28
1034	1
1034	21
1035	1
1035	2
1036	18
1036	20
1036	14
1037	18
1037	22
1037	21
1038	1
1038	8
1038	21
1039	1
1039	26
1039	8
1040	1
1040	13
1040	20
1040	22
1041	1
1041	2
1041	6
1041	8
1042	1
1042	16
1042	3
1042	55
1042	56
1042	46
1042	53
1043	18
1043	2
1043	20
1044	18
1044	24
1045	5
1045	6
1045	7
1045	9
1046	10
1046	18
1047	1
1047	21
1048	1
1048	14
1049	1
1049	13
1049	4
1049	44
1050	10
1050	16
1051	1
1051	13
1052	1
1052	13
1052	14
1052	35
1053	1
1053	23
1054	18
1054	21
1055	1
1055	21
1055	25
1056	18
1057	13
1057	18
1058	1
1058	27
1058	44
1058	31
1059	1
1059	26
1060	1
1060	2
1060	26
1060	22
1060	61
1061	18
1061	26
1061	24
1061	20
1062	1
1062	13
1062	15
1062	28
1063	1
1063	2
1063	55
1063	56
1064	1
1064	14
1065	10
1065	22
1065	11
1066	10
1066	11
1067	10
1067	16
1067	29
1068	5
1068	9
1068	62
1069	1
1069	2
1070	1
1070	5
1070	6
1071	10
1071	16
1071	2
1072	10
1072	18
1072	21
1073	13
1073	10
1073	69
1073	48
1074	1
1074	20
1075	1
1075	22
1075	25
1076	1
1076	13
1076	14
1076	21
1077	13
1077	10
1077	18
1077	2
1078	1
1078	4
1078	16
1078	14
1079	1
1079	18
1080	1
1080	13
1080	22
1080	19
1081	1
1081	13
1081	18
1081	5
1081	6
1081	9
1081	42
1082	10
1082	22
1082	11
1083	1
1083	16
1083	6
1083	8
1084	34
1085	1
1085	25
1086	1
1086	13
1087	1
1087	13
1087	14
1087	35
1087	21
1088	2
1089	1
1089	16
1091	44
1091	31
1091	35
1091	49
1091	53
1092	13
1092	18
1092	22
1092	14
1093	34
1094	1
1094	2
1094	26
1095	1
1095	2
1095	24
1095	30
1095	53
1096	1
1096	31
1096	21
1097	27
1098	1
1098	13
1098	20
1098	14
1099	1
1099	13
1099	44
1099	15
1100	5
1100	6
1100	7
1100	9
1102	1
1102	16
1102	6
1102	7
1102	35
1102	8
1103	18
1103	26
1103	37
1103	5
1103	38
1104	10
1104	18
1104	26
1105	37
1105	5
1105	47
1105	38
1106	34
1107	1
1107	18
1107	11
1108	22
1109	27
1109	14
1110	34
1111	13
1111	18
1111	22
1111	23
1111	39
1111	40
1112	1
1112	21
1112	59
1113	10
1113	58
1114	1
1114	21
1114	59
1115	1
1115	13
1115	18
1116	1
1117	1
1117	20
1117	14
1118	1
1118	4
1118	16
1118	14
1119	2
1120	18
1121	24
1121	37
1121	5
1121	38
1122	13
1122	4
1122	18
1123	1
1123	44
1123	50
1124	4
1124	24
1124	37
1124	5
1124	47
1124	35
1124	38
1125	1
1125	13
1125	18
1125	44
1126	10
1126	2
1126	26
1126	12
1126	60
1127	10
1128	1
1128	16
1129	1
1129	44
1129	55
1129	56
1130	37
1130	6
1130	38
1131	1
1131	10
1132	1
1132	13
1132	18
1133	37
1133	5
1133	6
1133	38
1134	1
1134	13
1134	22
1134	14
1135	18
1135	21
1136	1
1136	13
1136	18
1136	20
1136	14
1136	15
1137	1
1137	37
1137	9
1137	42
1138	1
1138	10
1138	16
1138	20
1138	14
1138	35
1139	2
1139	6
1139	12
1140	34
1141	34
1142	34
1143	34
1144	34
1145	1
1145	18
1145	21
1146	10
1146	2
1146	20
1146	17
1147	37
1147	6
1147	38
1148	1
1148	13
1148	6
1148	9
1148	14
1149	1
1149	13
1149	18
1149	19
1149	32
1150	1
1150	10
1150	22
1150	17
1150	60
1151	34
1152	34
1153	10
1153	18
1153	2
1154	1
1154	13
1154	18
1154	16
1154	14
1155	1
1155	14
1155	25
1155	53
1156	18
1156	2
1156	22
1156	61
1157	18
1157	24
1157	11
1158	1
1158	3
1158	14
1158	35
1158	46
1158	43
1158	66
1158	36
1159	1
1160	1
1160	20
1160	8
1161	1
1161	10
1162	10
1163	18
1163	23
1164	1
1164	10
1164	26
1165	18
1165	20
1166	1
1166	14
1166	35
1167	1
1167	28
1168	10
1169	10
1169	22
1170	13
1170	9
1171	10
1171	20
1172	20
1172	9
1172	14
1172	35
1173	1
1173	2
1173	8
1173	25
1174	1
1174	18
1174	37
1174	5
1174	9
1174	42
1175	1
1175	18
1176	37
1176	5
1176	38
1177	1
1177	24
1177	30
1178	1
1178	14
1179	1
1179	20
1179	8
1180	1
1180	14
1180	36
1181	14
1181	35
1182	1
1182	23
1183	1
1183	16
1183	14
1183	25
1184	18
1184	16
1184	23
1184	25
1185	10
1185	2
1186	1
1186	13
1186	23
1187	18
1187	20
1188	18
1188	23
1189	1
1189	13
1189	18
1189	22
1189	15
1190	1
1190	20
1190	14
1191	1
1191	4
1191	20
1191	14
1191	35
1191	25
1192	1
1192	4
1192	22
1192	8
1192	21
1193	34
1194	1
1194	55
1194	56
1195	18
1195	2
1196	1
1196	22
1197	18
1197	2
1197	23
1198	2
1198	25
1199	1
1199	20
1199	14
1199	25
1200	1
1200	10
1200	8
1200	29
1201	1
1201	16
1201	24
1201	30
1201	53
1202	2
1202	20
1202	22
1203	34
1204	1
1205	1
1205	55
1205	56
1206	1
1206	14
1206	8
1207	1
1207	4
1207	21
1208	1
1208	25
1209	1
1209	16
1209	22
1210	1
1210	21
1211	1
1211	10
1211	14
1212	1
1212	13
1213	13
1213	18
1213	15
1214	1
1214	25
1215	18
1215	24
1215	21
1216	1
1216	20
1216	22
1216	8
1217	1
1217	16
1217	8
1217	25
1218	1
1218	21
1219	1
1219	13
1219	2
1219	15
1220	1
1220	13
1220	14
1220	15
1221	37
1221	5
1221	38
1222	1
1222	13
1222	8
1223	37
1223	5
1223	38
1224	24
1224	44
1224	30
1224	49
1225	1
1225	13
1225	14
1225	15
1225	28
1226	1
1226	44
1226	8
1227	1
1227	10
1227	29
1228	27
1229	1
1229	2
1229	22
1229	37
1229	5
1229	61
1230	1
1230	14
1230	15
1231	1
1231	16
1231	20
1232	1
1232	20
1232	14
1233	1
1233	10
1233	2
1233	29
1234	1
1234	16
1234	24
1234	55
1234	56
1234	35
1234	30
1235	1
1235	6
1235	53
1236	10
1236	2
1236	33
1236	29
1237	1
1237	3
1237	2
1237	56
1238	1
1238	4
1238	21
1239	10
1239	20
1240	1
1240	18
1240	20
1241	1
1241	2
1241	14
1242	1
1243	34
1244	1
1244	18
1244	2
1244	26
1244	22
1244	61
1245	1
1245	20
1245	35
1246	1
1246	7
1246	25
1246	53
1247	1
1247	13
1247	24
1247	30
1247	25
1248	1
1248	13
1248	18
1248	14
1249	1
1249	13
1249	10
1249	2
1249	26
1249	14
1249	33
1250	10
1250	2
1251	1
1251	20
1251	14
1252	13
1252	18
1253	10
1253	20
1254	1
1254	10
1254	2
1254	25
1254	60
1255	10
1255	20
1256	37
1256	5
1256	6
1256	38
1257	34
1258	18
1259	1
1259	16
1259	31
1259	23
1259	35
1259	25
1259	57
1260	1
1260	24
1260	7
1260	30
1261	1
1261	20
1261	14
1261	35
1262	13
1262	44
1262	31
1262	15
1262	49
1263	18
1263	24
1264	1
1264	13
1264	18
1265	1
1265	37
1265	5
1265	6
1265	9
1266	1
1266	2
1266	8
1267	1
1267	4
1267	16
1267	20
1267	14
1267	28
1267	25
1268	1
1268	4
1268	2
1268	20
1269	1
1269	13
1269	15
1270	1
1270	2
1271	13
1271	10
1271	18
1271	24
1271	11
1272	18
1272	20
1272	14
1272	36
1273	1
1273	2
1274	13
1274	10
1274	18
1274	25
1275	1
1275	2
1275	26
1275	22
1275	5
1275	61
1276	1
1276	5
1276	9
1277	1
1278	1
1278	10
1279	1
1279	13
1279	18
1279	2
1279	26
1279	22
1279	12
1279	61
1280	10
1280	2
1280	33
1281	1
1281	10
1281	44
1281	48
1282	1
1282	13
1282	18
1282	14
1283	10
1283	18
1283	20
1283	60
1284	13
1284	18
1284	15
1285	1
1286	10
1286	2
1286	26
1287	10
1287	18
1288	1
1288	20
1288	35
1289	10
1289	18
1289	20
1290	1
1290	13
1290	18
1290	14
1290	53
1291	13
1291	18
1291	15
1292	34
1293	18
1293	5
1293	6
1293	28
1294	18
1294	20
1295	1
1295	4
1295	6
1295	7
1295	14
1295	35
1295	8
1296	37
1296	5
1296	6
1296	38
1297	18
1297	24
1297	21
1298	18
1298	24
1298	20
1299	1
1299	24
1299	30
1300	10
1301	1
1301	13
1301	18
1301	15
1302	1
1302	18
1302	44
1302	19
1302	49
1303	1
1303	2
1303	14
1304	1
1304	8
1305	37
1305	5
1305	6
1306	37
1306	5
1306	6
1307	27
1307	4
1307	24
1308	27
1308	21
1309	37
1309	5
1309	6
1309	38
1310	1
1310	13
1310	18
1310	2
1311	37
1311	5
1311	47
1311	38
1312	1
1312	13
1312	22
1312	15
1313	27
1313	10
1313	24
1314	1
1314	13
1314	37
1314	5
1314	6
1314	44
1315	13
1315	2
1315	9
1315	42
1315	12
1315	15
1316	1
1316	37
1316	5
1316	55
1316	56
1317	1
1317	2
1318	5
1318	6
1318	9
1318	42
1319	5
1319	9
1320	13
1320	9
1321	1
1321	6
1321	8
1322	1
1322	26
1322	22
1322	28
1323	1
1323	13
1323	18
1323	14
1324	1
1324	13
1324	18
1324	15
1325	1
1325	4
1326	10
1326	20
1327	1
1327	31
1327	21
1328	1
1329	1
1329	10
1330	18
1330	20
1331	1
1331	8
1331	21
1332	1
1332	2
1333	1
1333	2
1333	14
1334	27
1334	24
1334	44
1334	45
1334	53
1335	24
1335	5
1335	6
1336	1
1336	16
1337	1
1337	35
1338	1
1338	10
1338	4
1338	14
1339	37
1339	5
1339	38
1340	37
1340	5
1340	38
1341	1
1341	13
1341	18
1341	5
1341	6
1341	7
1341	14
1342	1
1342	2
1343	1
1343	35
1344	26
1345	1
1345	56
1345	28
1345	25
1346	37
1346	5
1346	38
1347	10
1347	2
1347	22
1347	12
1347	60
1347	61
1348	1
1348	18
1349	1
1349	16
1350	37
1350	47
1350	38
1351	64
1352	10
1352	16
1353	64
1354	18
1354	20
1355	1
1355	10
1355	25
1356	1
1356	2
1357	1
1357	13
1357	8
1358	10
1358	4
1358	16
1359	1
1359	35
1359	21
1360	4
1360	18
1360	2
1360	20
1361	1
1361	10
1361	14
1361	35
1361	29
1362	1
1362	13
1362	4
1362	44
1362	49
1363	24
1363	37
1363	44
1363	47
1363	38
1363	50
1364	1
1364	18
1364	26
1364	28
1365	1
1365	13
1365	23
1365	14
1365	15
1366	1
1366	4
1366	24
1366	20
1366	14
1366	30
1367	1
1367	13
1368	18
1369	1
1369	13
1370	1
1370	10
1370	2
1370	22
1370	61
1371	18
1371	22
1371	7
1372	1
1372	16
1372	20
1372	23
1372	14
1372	25
1373	1
1373	4
1373	2
1373	22
1373	14
1373	61
1374	37
1374	6
1374	38
1375	10
1375	5
1375	6
1376	1
1376	2
1376	26
1376	22
1376	61
1377	1
1377	28
1378	34
1379	1
1379	13
1379	37
1379	5
1379	6
1379	7
1379	9
1380	1
1380	2
1381	13
1381	18
1381	2
1382	18
1382	2
1383	10
1383	21
1384	1
1384	31
1384	23
1384	57
1385	2
1385	5
1385	6
1385	9
1386	1
1386	16
1387	1
1387	8
1387	21
1388	1
1388	16
1389	1
1389	16
1389	20
1389	35
1390	1
1390	13
1390	18
1391	13
1391	10
1391	18
1391	33
1391	15
1392	1
1392	2
1392	24
1392	20
1392	30
1393	27
1393	10
1394	1
1394	20
1394	35
1395	1
1395	20
1395	22
1396	1
1396	10
1396	2
1396	22
1396	61
1397	1
1397	13
1397	22
1397	5
1397	19
1398	70
1399	1
1399	13
1399	5
1399	6
1399	7
1399	8
1400	1
1400	10
1400	58
1401	1
1402	1
1402	2
1402	22
1403	1
1403	8
1403	21
1404	1
1404	2
1404	22
1404	61
1405	1
1405	2
1406	1
1406	13
1406	8
1406	25
1407	1
1407	16
1407	2
1407	20
1407	14
1408	1
1408	10
1408	22
1409	1
1409	10
1409	22
1409	28
1410	10
1410	2
1410	33
1411	1
1411	13
1411	16
1411	23
1412	13
1412	18
1412	23
1413	9
1414	10
1414	20
1415	1
1415	20
1415	14
1416	37
1416	5
1416	38
1417	13
1417	18
1417	14
1418	37
1418	5
1418	47
1418	38
1419	18
1419	24
1419	20
1420	1
1420	13
1420	10
1420	25
1421	16
1421	37
1421	5
1421	47
1421	38
1422	1
1422	20
1422	14
1422	35
1422	25
1423	1
1423	16
1424	18
1424	2
1425	1
1425	5
1425	6
1425	8
1425	59
1426	1
1426	44
1426	25
1427	13
1427	10
1427	69
1427	48
1428	18
1429	27
1429	24
1429	37
1429	5
1429	47
1429	38
1429	45
1430	1
1430	4
1431	1
1431	8
1432	13
1432	18
1432	15
1434	34
1435	1
1435	10
1435	26
1435	22
1435	33
1435	28
1436	10
1436	2
1436	17
1436	68
1437	1
1437	5
1437	8
1438	1
1438	2
1438	22
1438	61
1439	10
1439	20
1440	1
1440	3
1441	1
1441	2
1441	22
1441	61
1442	10
1442	21
1443	34
1444	1
1445	1
1445	4
1445	14
1445	28
1446	13
1446	18
1446	2
1446	15
1447	1
1447	2
1448	1
1448	2
1448	22
1449	1
1449	22
1449	23
1450	1
1450	22
1450	23
1451	1
1451	18
1451	2
1451	63
1452	1
1452	13
1452	10
1452	33
1452	15
1453	13
1453	18
1453	15
1454	37
1454	5
1454	6
1454	38
1455	1
1455	10
1455	20
1455	14
1455	29
1456	1
1456	13
1456	16
1456	23
1456	25
1457	18
1457	24
1457	20
1457	31
1458	1
1458	10
1458	20
1459	1
1459	27
1459	24
1459	30
1460	1
1460	2
1460	14
1461	1
1461	13
1461	25
1462	1
1462	13
1463	1
1463	16
1463	55
1464	1
1464	13
1464	10
1464	2
1464	26
1464	22
1464	58
1464	61
1465	1
1465	16
1465	3
1465	55
1465	56
1465	46
1465	53
1466	1
1466	2
1467	1
1467	13
1467	23
1467	15
1468	18
1468	24
1469	1
1469	4
1469	18
1469	16
1470	37
1470	5
1470	6
1470	38
1471	1
1471	10
1471	14
1472	18
1472	32
1473	13
1473	37
1473	5
1473	6
1474	1
1474	13
1474	16
1474	2
1474	14
1475	2
1476	2
1477	18
1477	24
1478	1
1478	16
1478	25
1479	1
1480	13
1480	10
1480	18
1482	1
1482	14
1483	34
1484	9
1484	44
1484	35
1484	51
1485	1
1485	13
1485	18
1485	44
1485	14
1486	1
1486	13
1486	10
1487	13
1487	24
1487	44
1487	53
1488	18
1488	24
1489	1
1489	23
1490	1
1490	2
1490	56
1490	31
1490	35
1490	25
1490	57
1491	1
1491	5
1491	6
1491	7
1491	8
1492	18
1492	20
1493	1
1493	8
1493	25
1494	1
1494	16
1494	44
1494	55
1494	56
1495	13
1495	18
1495	23
1496	1
1496	13
1496	14
1496	35
1497	27
1497	10
1497	69
1497	48
1498	2
1498	22
1499	13
1499	18
1499	14
1499	35
1499	43
1499	15
1500	27
1500	4
1501	64
1502	10
1502	58
1503	1
1503	24
1503	37
1503	47
1503	11
1503	30
1503	38
1504	27
1504	10
1504	24
1505	2
1505	37
1505	11
1505	12
1505	38
1506	13
1506	10
1506	18
1506	33
1506	15
1507	1
1507	13
1507	16
1507	14
1508	1
1508	13
1508	18
1508	44
1509	1
1509	8
1510	18
1511	4
1511	18
1511	24
1512	34
1513	1
1513	2
1513	20
1514	13
1514	18
1514	15
1515	1
1515	21
1516	1
1516	16
1517	18
1517	2
1518	1
1518	13
1518	35
1520	2
1520	37
1520	5
1520	38
1521	1
1522	34
1523	4
1523	18
1523	16
1523	39
1523	32
1523	40
1524	4
1524	18
1524	16
1524	39
1524	32
1524	40
1525	1
1525	3
1525	37
1525	8
1526	1
1526	13
1526	25
1527	1
1527	2
1527	12
1528	5
1528	6
1528	9
1528	42
1529	1
1529	18
1529	26
1529	22
1530	1
1530	13
1530	18
1530	5
1530	6
1530	7
1530	14
1531	1
1531	5
1531	9
1531	42
1532	1
1532	18
1532	15
1533	1
1533	13
1533	16
1533	20
1533	14
1534	1
1534	13
1534	10
1534	24
1534	23
1535	1
1535	18
1535	26
1535	21
1536	18
1536	2
1536	21
1537	1
1537	16
1537	2
1537	20
1538	4
1538	18
1538	20
1539	1
1539	15
1539	25
1540	1
1540	16
1540	20
1540	14
1541	1
1541	2
1542	10
1542	20
1542	11
1543	10
1543	28
1544	1
1544	10
1544	29
1545	1
1545	20
1545	14
1545	25
1547	1
1547	4
1548	1
1548	22
1548	23
1549	1
1549	16
1549	2
1549	20
1549	25
1550	1
1550	13
1550	14
1551	1
1551	4
1552	1
1552	21
1553	22
1554	10
1554	33
1555	1
1555	2
1555	8
1556	1
1556	18
1556	22
1556	9
1556	42
1556	28
1557	1
1557	13
1557	20
1557	35
1558	13
1558	37
1558	5
1558	38
1559	34
1560	13
1560	5
1560	7
1560	9
1561	9
1561	35
1561	51
1562	1
1562	55
1562	56
1562	14
1563	37
1563	5
1563	38
1564	37
1564	6
1564	44
1564	38
1565	1
1565	13
1565	25
1566	10
1566	29
1567	18
1567	2
1568	1
1568	16
1568	23
1568	25
1569	4
1569	18
1569	16
1569	20
1570	5
1570	6
1570	7
1570	9
1571	1
1571	24
1571	20
1571	14
1571	30
1572	1
1572	13
1572	18
1572	19
1572	14
1573	18
1573	28
1574	34
1575	2
1576	34
1577	34
1578	34
1579	34
1580	1
1580	4
1580	20
1580	14
1581	1
1581	4
1581	16
1581	14
1581	35
1582	1
1582	13
1582	18
1582	2
1582	19
1583	34
1584	34
1585	1
1585	8
1585	21
1586	1
1586	24
1586	20
1586	14
1586	30
1587	13
1587	18
1587	14
1587	15
1588	1
1588	16
1588	14
1589	10
1589	18
1589	23
1590	10
1590	58
1591	1
1591	4
1591	16
1591	14
1592	10
1592	20
1592	14
1592	35
1593	1
1593	13
1593	8
1593	21
1594	10
1594	22
1594	11
1595	10
1595	28
1596	1
1596	35
1597	1
1597	10
1598	1
1598	13
1598	4
1598	14
1598	15
1599	10
1600	13
1600	18
1601	1
1601	13
1601	16
1601	44
1601	56
1602	1
1602	4
1603	1
1603	14
1603	8
1604	10
1604	18
1604	22
1605	1
1605	16
1605	2
1605	14
1605	35
1606	18
1606	2
1606	24
1607	10
1607	28
1608	1
1608	13
1608	18
1609	13
1609	18
1609	14
1609	15
1610	1
1610	21
1611	1
1611	13
1611	18
1611	44
1611	8
1612	1
1612	13
1612	37
1612	5
1612	6
1613	1
1613	18
1613	5
1613	6
1613	9
1614	1
1614	20
1614	8
1615	18
1616	1
1616	13
1616	5
1617	1
1617	5
1617	6
1617	7
1617	8
1618	1
1618	13
1619	1
1619	4
1619	16
1619	25
1620	34
1621	1
1621	13
1621	18
1621	22
1621	15
1622	1
1622	2
1622	8
1623	18
1623	15
1624	1
1624	13
1624	20
1625	34
1626	1
1626	8
1627	1
1627	10
1627	56
1628	1
1628	10
1628	2
1629	1
1629	2
1629	56
1630	10
1630	33
1631	1
1631	20
1632	13
1632	18
1632	16
1632	23
1632	15
1633	1
1633	20
1633	8
1633	25
1634	1
1634	13
1634	10
1634	58
1634	28
1635	10
1636	10
1636	33
1637	1
1637	2
1637	14
1638	13
1638	18
1639	10
1639	33
1639	28
1640	1
1640	13
1640	18
1640	44
1640	19
1641	1
1641	13
1641	18
1642	1
1642	13
1642	16
1643	1
1643	25
1644	18
1644	2
1644	20
1645	13
1645	18
1645	44
1645	40
1646	1
1646	16
1646	28
1647	18
1647	20
1647	15
1648	18
1648	16
1649	37
1649	5
1649	6
1649	38
1650	1
1650	16
1650	22
1650	56
1651	13
1651	37
1651	5
1651	6
1651	38
1652	1
1652	26
1653	24
1653	37
1653	5
1653	38
1654	1
1654	25
1655	10
1655	2
1656	1
1656	10
1656	33
1657	1
1657	13
1657	18
1657	16
1657	2
1657	19
1657	14
1658	1
1658	16
1659	1
1659	24
1659	30
1660	1
1660	24
1660	30
1661	1
1661	23
1662	1
1662	23
1663	16
1663	59
1664	1
1664	9
1664	35
1664	51
1665	1
1665	20
1665	35
1665	53
1666	1
1666	2
1666	14
1667	10
1667	18
1667	33
1668	1
1668	2
1668	8
1669	1
1669	10
1669	20
1669	15
1669	60
1670	13
1670	37
1670	5
1670	6
1670	15
1671	18
1671	21
1672	1
1672	20
1673	1
1673	16
1673	8
1673	59
1674	1
1674	2
1674	22
1674	8
1674	61
1675	1
1675	2
1675	55
1675	28
1675	25
1676	34
1677	18
1677	24
1677	20
1678	4
1678	18
1679	10
1679	18
1679	2
1679	33
1680	18
1680	20
1681	37
1681	5
1681	6
1681	9
1682	2
1682	12
1683	1
1683	16
1683	15
1684	1
1684	4
1684	16
1684	14
1685	34
1686	1
1686	55
1686	56
1687	1
1687	16
1687	20
1688	1
1688	7
1688	8
1689	13
1689	18
1689	44
1689	53
1690	13
1690	18
1690	20
1690	14
1690	15
1691	1
1691	16
1691	24
1691	20
1691	14
1692	4
1692	18
1693	1
1693	2
1694	10
1694	2
1694	12
1695	4
1695	18
1695	20
1696	18
1696	24
1696	37
1696	38
1697	1
1697	13
1697	18
1698	1
1698	18
1698	14
1699	18
1699	24
1699	11
1700	1
1700	13
1700	16
1700	2
1701	13
1701	37
1701	5
1701	44
1702	1
1702	18
1702	5
1702	19
1703	37
1703	5
1703	38
1704	9
1704	42
1705	1
1705	10
1705	16
1706	37
1706	5
1706	38
1707	1
1707	13
1707	2
1708	1
1708	13
1708	2
1709	1
1709	13
1709	4
1709	16
1709	20
1709	15
1710	4
1710	18
1711	18
1711	20
1712	13
1712	18
1713	1
1713	2
1713	20
1713	14
1714	10
1714	2
1714	37
1714	38
1714	60
1715	27
1715	37
1715	5
1715	38
1716	34
1717	34
1718	1
1718	16
1718	2
1718	14
1719	1
1719	37
1719	9
1719	71
1720	1
1720	13
1720	20
1720	22
1721	1
1721	10
1721	2
1721	26
1721	22
1721	29
1721	61
1722	13
1722	10
1722	26
1722	15
1722	28
1723	2
1723	37
1723	5
1724	1
1724	10
1724	37
1724	5
1724	28
1725	1
1725	13
1725	18
1725	15
1725	25
1726	18
1726	22
1727	1
1727	2
1728	18
1728	39
1728	32
1728	40
1729	18
1729	39
1729	32
1729	40
1730	10
1730	2
1730	37
1730	5
1730	29
1731	1
1731	13
1732	2
1733	18
1733	25
1734	1
1734	18
1734	7
1734	9
1735	1
1735	2
1735	26
1735	22
1735	61
1736	1
1736	14
1737	1
1737	2
1737	20
1737	14
1738	1
1738	25
1739	18
1739	24
1739	20
1740	1
1740	10
1740	44
1740	49
1740	25
1741	1
1741	8
1741	21
1742	1
1742	2
1742	22
1742	61
1744	1
1744	2
1744	22
1745	10
1745	22
1746	1
1746	13
1746	10
1746	15
1747	4
1747	18
1747	32
1748	1
1748	13
1748	15
1749	1
1750	10
1751	1
1752	10
1752	58
1753	1
1754	1
1754	35
1754	21
1755	18
1755	2
1756	37
1756	5
1756	6
1756	38
1757	10
1757	20
1758	13
1758	18
1758	15
1759	34
1760	18
1761	1
1761	10
1761	20
1761	14
1762	18
1762	23
1763	2
1763	22
1763	37
1763	5
1763	61
1764	1
1764	22
1764	31
1764	23
1764	25
1765	1
1765	37
1765	5
1766	1
1766	10
1766	16
1766	29
1767	22
1768	1
1769	18
1769	2
1770	34
1771	37
1771	5
1771	38
1772	1
1772	20
1772	14
1772	35
1772	8
1773	1
1773	10
1773	18
1773	16
1773	2
1774	1
1774	16
1774	14
1775	1
1775	13
1776	1
1776	13
1776	28
1777	1
1777	2
1777	23
1778	1
1778	2
1778	8
1779	1
1779	23
1779	14
1780	18
1781	18
1781	2
1782	1
1782	2
1782	22
1782	61
1783	1
1783	13
1783	18
1783	22
1784	1
1784	22
1784	17
1785	1
1785	56
1786	1
1786	13
1786	18
1787	10
1787	20
1787	28
1788	13
1788	18
1788	15
1789	1
1789	13
1789	10
1789	15
1790	1
1790	24
1790	21
1791	1
1791	20
1792	18
1792	23
1793	1
1793	4
1793	16
1793	14
1794	13
1794	18
1794	15
1795	1
1795	2
1795	8
1796	1
1796	2
1797	1
1797	13
1797	25
1798	1
1798	2
1799	1
1799	26
1799	22
1799	28
1800	37
1800	5
1800	6
1800	38
1801	13
1801	44
1801	14
1801	35
1801	49
1802	34
1803	1
1803	10
1803	2
1803	68
1804	1
1804	16
1804	14
1804	25
1805	1
1805	2
1806	1
1806	5
1806	6
1806	9
1806	35
1806	8
1806	51
1807	10
1807	18
1808	1
1808	13
1808	44
1808	31
1808	49
1809	1
1809	2
1811	18
1811	2
1812	1
1812	16
1812	2
1813	1
1813	13
1813	5
1813	6
1814	1
1814	2
1814	6
1814	8
1815	1
1815	20
1815	25
1816	1
1816	10
1816	55
1816	56
1816	58
1816	14
1817	1
1817	10
1817	55
1817	56
1817	58
1817	14
1817	28
1818	1
1818	10
1818	29
1819	18
1819	20
1819	31
1821	1
1821	10
1821	58
1822	1
1822	18
1822	25
1823	1
1823	22
1823	19
1824	5
1824	6
1824	9
1825	10
1825	18
1826	1
1826	20
1826	14
1827	1
1827	21
1828	10
1828	18
1829	10
1829	18
1830	1
1830	13
1830	14
1830	15
1831	1
1831	2
1831	12
1831	8
1832	1
1832	21
1833	1
1833	13
1833	14
1833	35
1833	21
1834	1
1834	13
1834	18
1834	8
1835	10
1835	2
1835	17
1835	60
1836	1
1836	20
1837	1
1837	20
1837	14
1838	2
1838	20
1839	1
1839	10
1840	1
1840	20
1840	14
1841	1
1841	16
1841	3
1841	55
1841	56
1841	46
1841	53
1842	1
1842	10
1842	20
1843	18
1843	2
1843	63
1844	34
1845	34
1846	1
1846	8
1846	25
1847	34
1848	10
1848	20
1849	18
1850	1
1850	2
1851	34
1852	34
1853	1
1853	13
1853	20
1853	14
1854	13
1854	18
1854	15
1855	1
1855	2
1855	20
1856	5
1856	6
1856	9
1856	35
1856	51
1857	2
1858	10
1858	28
1859	34
1860	34
1861	1
1861	10
1862	1
1862	6
1862	8
1863	37
1863	5
1863	6
1863	47
1863	38
1864	1
1864	13
1864	27
1864	44
1864	40
1865	1
1865	13
1865	18
1866	2
1867	13
1867	16
1867	44
1867	14
1867	53
1868	34
1869	34
1870	34
1871	34
1872	18
1873	1
1873	20
1874	34
1875	13
1875	18
1875	6
1876	1
1876	13
1877	13
1877	18
1877	23
1878	1
1878	13
1878	22
1879	1
1879	13
1879	18
1880	1
1880	20
1880	44
1881	1
1881	13
1881	4
1881	16
1881	14
1882	1
1882	2
1882	23
1884	1
1884	13
1885	13
1885	18
1886	1
1886	14
1887	18
1887	26
1887	22
1888	1
1888	13
1888	18
1889	34
1890	18
1890	20
1891	1
1891	20
1892	10
1893	1
1893	4
1893	24
1893	30
1894	1
1894	16
1894	20
1894	55
1894	56
1894	14
1894	53
1895	1
1895	4
1895	16
1895	14
1896	2
1896	37
1896	5
1896	47
1896	38
1897	37
1897	5
1897	38
1898	1
1898	16
1898	8
1899	18
1899	2
1900	1
1900	2
1900	24
1900	20
1900	30
1901	1
1901	24
1901	20
1901	30
1902	1
1903	1
1903	2
1903	26
1903	22
1903	61
1904	1
1904	14
1905	1
1906	1
1906	10
1906	21
1906	33
1907	18
1907	20
1908	1
1908	4
1908	16
1908	14
1909	13
1909	18
1910	1
1910	25
1911	1
1911	13
1911	18
1912	1
1912	13
1912	10
1912	29
1913	1
1913	10
1913	58
1914	6
1914	9
1915	1
1915	10
1915	22
1915	17
1915	25
1916	10
1916	18
1916	2
1917	34
1918	34
1919	27
1920	34
1921	10
1921	18
1922	1
1922	13
1922	22
1922	19
1922	23
1923	1
1923	13
1923	22
1923	19
1923	23
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, title, difficulty, acceptance_rate, link) FROM stdin;
1	Best Time to Buy and Sell Stock	EASY	0.5525962294861477	https://leetcode.com/problems/best-time-to-buy-and-sell-stock
2	Maximum Subarray	MEDIUM	0.5209980487725024	https://leetcode.com/problems/maximum-subarray
3	Move Zeroes	EASY	0.6280403369085903	https://leetcode.com/problems/move-zeroes
4	Number of Islands	MEDIUM	0.6232001096557939	https://leetcode.com/problems/number-of-islands
5	Divide Nodes Into the Maximum Number of Groups	HARD	0.6736557431799484	https://leetcode.com/problems/divide-nodes-into-the-maximum-number-of-groups
6	Fibonacci Number	EASY	0.7294492271152765	https://leetcode.com/problems/fibonacci-number
7	Majority Element	EASY	0.657403169331404	https://leetcode.com/problems/majority-element
8	Intersection of Two Arrays	EASY	0.7647431845238689	https://leetcode.com/problems/intersection-of-two-arrays
9	Koko Eating Bananas	MEDIUM	0.4906724004144251	https://leetcode.com/problems/koko-eating-bananas
10	Climbing Stairs	EASY	0.5354071218159873	https://leetcode.com/problems/climbing-stairs
11	Bulb Switcher	MEDIUM	0.540826122720978	https://leetcode.com/problems/bulb-switcher
12	Happy Number	EASY	0.580726470983853	https://leetcode.com/problems/happy-number
13	Two Sum	EASY	0.5577700019986414	https://leetcode.com/problems/two-sum
14	Palindrome Number	EASY	0.5922453952673293	https://leetcode.com/problems/palindrome-number
15	Rotate Array	MEDIUM	0.4302138810363553	https://leetcode.com/problems/rotate-array
16	Delete and Earn	MEDIUM	0.5672788571185733	https://leetcode.com/problems/delete-and-earn
17	Roman to Integer	EASY	0.6486630367350482	https://leetcode.com/problems/roman-to-integer
18	Longest Common Prefix	EASY	0.4548309746701015	https://leetcode.com/problems/longest-common-prefix
19	Longest Palindromic Substring	MEDIUM	0.3584611319731286	https://leetcode.com/problems/longest-palindromic-substring
20	Reverse Integer	MEDIUM	0.3030894236484883	https://leetcode.com/problems/reverse-integer
21	Largest Number	MEDIUM	0.412803811932624	https://leetcode.com/problems/largest-number
22	Spiral Matrix	MEDIUM	0.539397306376751	https://leetcode.com/problems/spiral-matrix
23	Merge Sorted Array	EASY	0.5291953057434996	https://leetcode.com/problems/merge-sorted-array
24	Sort Integers by The Number of 1 Bits	EASY	0.7868399685247711	https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits
25	Perfect Squares	MEDIUM	0.5567219809781053	https://leetcode.com/problems/perfect-squares
26	Find Peak Element	MEDIUM	0.465092325586426	https://leetcode.com/problems/find-peak-element
27	Reverse Words in a String	MEDIUM	0.5191330387431672	https://leetcode.com/problems/reverse-words-in-a-string
28	3Sum	MEDIUM	0.3707095726470262	https://leetcode.com/problems/3sum
29	Integer Break	MEDIUM	0.6114190176740073	https://leetcode.com/problems/integer-break
30	Longest Substring Without Repeating Characters	MEDIUM	0.3693616993918762	https://leetcode.com/problems/longest-substring-without-repeating-characters
31	Valid Parentheses	EASY	0.423228386337435	https://leetcode.com/problems/valid-parentheses
32	Product of Array Except Self	MEDIUM	0.6777997386898901	https://leetcode.com/problems/product-of-array-except-self
33	Letter Combinations of a Phone Number	MEDIUM	0.6385757274954061	https://leetcode.com/problems/letter-combinations-of-a-phone-number
34	Add Two Numbers	MEDIUM	0.4622509481999829	https://leetcode.com/problems/add-two-numbers
35	Container With Most Water	MEDIUM	0.5778283257455421	https://leetcode.com/problems/container-with-most-water
36	Plus One	EASY	0.475476411109977	https://leetcode.com/problems/plus-one
37	Remove Duplicates from Sorted Array	EASY	0.6035555860093221	https://leetcode.com/problems/remove-duplicates-from-sorted-array
38	Valid Anagram	EASY	0.6666090586972462	https://leetcode.com/problems/valid-anagram
39	Pascal's Triangle	EASY	0.7702155451607752	https://leetcode.com/problems/pascals-triangle
40	Reverse Vowels of a String	EASY	0.5818743809957564	https://leetcode.com/problems/reverse-vowels-of-a-string
41	Assign Cookies	EASY	0.5387630018736772	https://leetcode.com/problems/assign-cookies
42	Nth Digit	MEDIUM	0.3570350823124534	https://leetcode.com/problems/nth-digit
43	House Robber	MEDIUM	0.5230498170963667	https://leetcode.com/problems/house-robber
44	Peak Index in a Mountain Array	MEDIUM	0.6756950201420634	https://leetcode.com/problems/peak-index-in-a-mountain-array
45	Coin Change	MEDIUM	0.4649548699901508	https://leetcode.com/problems/coin-change
46	Sort Array by Increasing Frequency	EASY	0.802688099698792	https://leetcode.com/problems/sort-array-by-increasing-frequency
47	Count Primes	MEDIUM	0.347906460282023	https://leetcode.com/problems/count-primes
48	Max Consecutive Ones	EASY	0.6248245679658861	https://leetcode.com/problems/max-consecutive-ones
49	Find First and Last Position of Element in Sorted Array	MEDIUM	0.4682879632615302	https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array
50	Edit Distance	MEDIUM	0.5878980645167777	https://leetcode.com/problems/edit-distance
51	Next Greater Element I	EASY	0.7451247376157817	https://leetcode.com/problems/next-greater-element-i
52	Majority Element II	MEDIUM	0.5438038643985776	https://leetcode.com/problems/majority-element-ii
53	Reverse Linked List	EASY	0.7920658147104805	https://leetcode.com/problems/reverse-linked-list
54	Rotate Image	MEDIUM	0.7790164128488621	https://leetcode.com/problems/rotate-image
55	Find the Winner of the Circular Game	MEDIUM	0.8206656341049726	https://leetcode.com/problems/find-the-winner-of-the-circular-game
56	Perfect Number	EASY	0.4489272110098634	https://leetcode.com/problems/perfect-number
57	Remove Element	EASY	0.6003166682334926	https://leetcode.com/problems/remove-element
58	Merge Intervals	MEDIUM	0.4939523867784192	https://leetcode.com/problems/merge-intervals
59	Longest Increasing Subsequence	MEDIUM	0.5780836795005291	https://leetcode.com/problems/longest-increasing-subsequence
60	Valid Palindrome	EASY	0.5096352873238165	https://leetcode.com/problems/valid-palindrome
61	Candy	HARD	0.4669985426363719	https://leetcode.com/problems/candy
62	Contains Duplicate	EASY	0.6323637027239968	https://leetcode.com/problems/contains-duplicate
63	Find the Index of the First Occurrence in a String	EASY	0.4497159475497443	https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string
64	Substrings of Size Three with Distinct Characters	EASY	0.7545459484913246	https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters
65	Group Anagrams	MEDIUM	0.7092883921583564	https://leetcode.com/problems/group-anagrams
66	Remove Duplicates from Sorted List	EASY	0.5487083600303359	https://leetcode.com/problems/remove-duplicates-from-sorted-list
67	Sqrt(x)	EASY	0.4037183318664056	https://leetcode.com/problems/sqrtx
68	Generate Parentheses	MEDIUM	0.7713288194751687	https://leetcode.com/problems/generate-parentheses
69	Find Original Array From Doubled Array	MEDIUM	0.4048035031687653	https://leetcode.com/problems/find-original-array-from-doubled-array
70	Create Hello World Function	EASY	0.8212977812647828	https://leetcode.com/problems/create-hello-world-function
71	Find Unique Binary String	MEDIUM	0.7936404826036025	https://leetcode.com/problems/find-unique-binary-string
72	Middle of the Linked List	EASY	0.805816977306921	https://leetcode.com/problems/middle-of-the-linked-list
73	Pow(x, n)	MEDIUM	0.3702320169895338	https://leetcode.com/problems/powx-n
74	Search a 2D Matrix	MEDIUM	0.5228964498029818	https://leetcode.com/problems/search-a-2d-matrix
75	Maximum Product Subarray	MEDIUM	0.3494166666314909	https://leetcode.com/problems/maximum-product-subarray
76	Count Pairs Whose Sum is Less than Target	EASY	0.8749486239271467	https://leetcode.com/problems/count-pairs-whose-sum-is-less-than-target
77	Median of Two Sorted Arrays	HARD	0.4381457870347289	https://leetcode.com/problems/median-of-two-sorted-arrays
78	Average Value of Even Numbers That Are Divisible by Three	EASY	0.6171273472553038	https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three
79	Unique Paths	MEDIUM	0.6577289258301743	https://leetcode.com/problems/unique-paths
80	Rising Temperature	EASY	0.5018285447767862	https://leetcode.com/problems/rising-temperature
81	Intersection of Two Linked Lists	EASY	0.6112536319835228	https://leetcode.com/problems/intersection-of-two-linked-lists
82	Sum of Values at Indices With K Set Bits	EASY	0.8574056118113935	https://leetcode.com/problems/sum-of-values-at-indices-with-k-set-bits
83	Find Subsequence of Length K With the Largest Sum	EASY	0.4550501177444639	https://leetcode.com/problems/find-subsequence-of-length-k-with-the-largest-sum
84	Permutation Difference between Two Strings	EASY	0.8718108100471845	https://leetcode.com/problems/permutation-difference-between-two-strings
85	Min Cost Climbing Stairs	EASY	0.6719531222257235	https://leetcode.com/problems/min-cost-climbing-stairs
86	Count Operations to Obtain Zero	EASY	0.7488952285059014	https://leetcode.com/problems/count-operations-to-obtain-zero
87	Next Permutation	MEDIUM	0.4305775328017951	https://leetcode.com/problems/next-permutation
88	Palindromic Substrings	MEDIUM	0.716785649066935	https://leetcode.com/problems/palindromic-substrings
89	How Many Numbers Are Smaller Than the Current Number	EASY	0.871269383019646	https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number
90	Single Number II	MEDIUM	0.6522779397029894	https://leetcode.com/problems/single-number-ii
91	Is Subsequence	EASY	0.4838252167520537	https://leetcode.com/problems/is-subsequence
92	Maximum Depth of Binary Tree	EASY	0.7713809909365511	https://leetcode.com/problems/maximum-depth-of-binary-tree
93	Number of Days Between Two Dates	EASY	0.5135244857670509	https://leetcode.com/problems/number-of-days-between-two-dates
94	Basic Calculator II	MEDIUM	0.4581138691872612	https://leetcode.com/problems/basic-calculator-ii
95	Ugly Number II	MEDIUM	0.4925492738355708	https://leetcode.com/problems/ugly-number-ii
96	Excel Sheet Column Title	EASY	0.4357032576703931	https://leetcode.com/problems/excel-sheet-column-title
97	Make The String Great	EASY	0.6827752983137568	https://leetcode.com/problems/make-the-string-great
98	Minimum Right Shifts to Sort the Array	EASY	0.5670578736411085	https://leetcode.com/problems/minimum-right-shifts-to-sort-the-array
99	Ant on the Boundary	EASY	0.7373794071215576	https://leetcode.com/problems/ant-on-the-boundary
100	Maximum Area of Longest Diagonal Rectangle	EASY	0.3654547482773711	https://leetcode.com/problems/maximum-area-of-longest-diagonal-rectangle
101	Count Tested Devices After Test Operations	EASY	0.7841276445923887	https://leetcode.com/problems/count-tested-devices-after-test-operations
102	Truncate Sentence	EASY	0.8606791561237997	https://leetcode.com/problems/truncate-sentence
103	Binary Search	EASY	0.5956449173170992	https://leetcode.com/problems/binary-search
104	Shortest Palindrome	HARD	0.4065586491563125	https://leetcode.com/problems/shortest-palindrome
105	01 Matrix	MEDIUM	0.514765516483987	https://leetcode.com/problems/01-matrix
106	Integer to Roman	MEDIUM	0.6861928350336115	https://leetcode.com/problems/integer-to-roman
107	Daily Temperatures	MEDIUM	0.6736502832589849	https://leetcode.com/problems/daily-temperatures
108	Kth Largest Element in an Array	MEDIUM	0.6797703525274048	https://leetcode.com/problems/kth-largest-element-in-an-array
109	Second Highest Salary	MEDIUM	0.4386509018476088	https://leetcode.com/problems/second-highest-salary
110	N-th Tribonacci Number	EASY	0.635772214126963	https://leetcode.com/problems/n-th-tribonacci-number
111	Department Top Three Salaries	HARD	0.5777096577549421	https://leetcode.com/problems/department-top-three-salaries
112	Replace the Substring for Balanced String	MEDIUM	0.3957869695341877	https://leetcode.com/problems/replace-the-substring-for-balanced-string
113	Trapping Rain Water	HARD	0.651022298695307	https://leetcode.com/problems/trapping-rain-water
114	Binary Tree Right Side View	MEDIUM	0.6704285161286567	https://leetcode.com/problems/binary-tree-right-side-view
115	Merge Operations to Turn Array Into a Palindrome	MEDIUM	0.689995052707691	https://leetcode.com/problems/merge-operations-to-turn-array-into-a-palindrome
116	Longest Common Subsequence	MEDIUM	0.5824930968693021	https://leetcode.com/problems/longest-common-subsequence
117	Search in Rotated Sorted Array	MEDIUM	0.4283739714438305	https://leetcode.com/problems/search-in-rotated-sorted-array
118	Remove Duplicates from Sorted Array II	MEDIUM	0.6290213081051084	https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii
119	Asteroid Collision	MEDIUM	0.4550098688694731	https://leetcode.com/problems/asteroid-collision
120	Count All Valid Pickup and Delivery Options	HARD	0.6487702325025283	https://leetcode.com/problems/count-all-valid-pickup-and-delivery-options
121	Fill Missing Data	EASY	0.7231414467579705	https://leetcode.com/problems/fill-missing-data
122	Parallel Courses III	HARD	0.6674963944974485	https://leetcode.com/problems/parallel-courses-iii
123	Invalid Tweets	EASY	0.8551287418798992	https://leetcode.com/problems/invalid-tweets
124	Number of Divisible Triplet Sums	MEDIUM	0.6780637725701113	https://leetcode.com/problems/number-of-divisible-triplet-sums
125	Reformat Phone Number	EASY	0.669332106934101	https://leetcode.com/problems/reformat-phone-number
126	Decode String	MEDIUM	0.6115269783398165	https://leetcode.com/problems/decode-string
127	Top K Frequent Words	MEDIUM	0.592771260185311	https://leetcode.com/problems/top-k-frequent-words
128	Top K Frequent Elements	MEDIUM	0.6456596965737327	https://leetcode.com/problems/top-k-frequent-elements
129	Split the Array	EASY	0.5922734052667847	https://leetcode.com/problems/split-the-array
130	LRU Cache	MEDIUM	0.4521456257537392	https://leetcode.com/problems/lru-cache
131	Longest Repeating Character Replacement	MEDIUM	0.5721163769892559	https://leetcode.com/problems/longest-repeating-character-replacement
132	Longest Increasing Path in a Matrix	HARD	0.5534762586302827	https://leetcode.com/problems/longest-increasing-path-in-a-matrix
133	Word Ladder	HARD	0.4281182673737007	https://leetcode.com/problems/word-ladder
134	Minimum Window Substring	HARD	0.4535074763823223	https://leetcode.com/problems/minimum-window-substring
135	Rotting Oranges	MEDIUM	0.566184675573941	https://leetcode.com/problems/rotting-oranges
136	Decode Ways	MEDIUM	0.3653098286175434	https://leetcode.com/problems/decode-ways
137	Merge Two Sorted Lists	EASY	0.6684088801523707	https://leetcode.com/problems/merge-two-sorted-lists
138	Set Matrix Zeroes	MEDIUM	0.6070884864800216	https://leetcode.com/problems/set-matrix-zeroes
139	Jump Game	MEDIUM	0.3947919786729132	https://leetcode.com/problems/jump-game
140	Permutations	MEDIUM	0.8066012553007272	https://leetcode.com/problems/permutations
141	Combination Sum II	MEDIUM	0.5767453180420465	https://leetcode.com/problems/combination-sum-ii
142	Sort Colors	MEDIUM	0.675831142046278	https://leetcode.com/problems/sort-colors
143	Jump Game II	MEDIUM	0.415032966531176	https://leetcode.com/problems/jump-game-ii
144	Valid Sudoku	MEDIUM	0.6227675793740958	https://leetcode.com/problems/valid-sudoku
145	Merge k Sorted Lists	HARD	0.5677420052593406	https://leetcode.com/problems/merge-k-sorted-lists
146	First Missing Positive	HARD	0.4108465766394882	https://leetcode.com/problems/first-missing-positive
147	Search Insert Position	EASY	0.4901243579627091	https://leetcode.com/problems/search-insert-position
148	Construct Binary Tree from Preorder and Inorder Traversal	MEDIUM	0.6683774773521286	https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal
149	Divide Two Integers	MEDIUM	0.1839697508503305	https://leetcode.com/problems/divide-two-integers
150	Subsets	MEDIUM	0.8087956878508169	https://leetcode.com/problems/subsets
151	Swap Nodes in Pairs	MEDIUM	0.6720136828647639	https://leetcode.com/problems/swap-nodes-in-pairs
152	Length of Last Word	EASY	0.5631924456525931	https://leetcode.com/problems/length-of-last-word
153	Largest Rectangle in Histogram	HARD	0.4737769446459488	https://leetcode.com/problems/largest-rectangle-in-histogram
154	Reverse Nodes in k-Group	HARD	0.630436472551844	https://leetcode.com/problems/reverse-nodes-in-k-group
155	Reverse Linked List II	MEDIUM	0.495917143135072	https://leetcode.com/problems/reverse-linked-list-ii
156	4Sum	MEDIUM	0.3821900891354193	https://leetcode.com/problems/4sum
157	3Sum Closest	MEDIUM	0.468869600214817	https://leetcode.com/problems/3sum-closest
158	String to Integer (atoi)	MEDIUM	0.1922941979541227	https://leetcode.com/problems/string-to-integer-atoi
159	Binary Tree Zigzag Level Order Traversal	MEDIUM	0.6168283891746636	https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal
160	Wildcard Matching	HARD	0.2989832621421184	https://leetcode.com/problems/wildcard-matching
161	Zigzag Conversion	MEDIUM	0.5160678115303926	https://leetcode.com/problems/zigzag-conversion
162	Partition List	MEDIUM	0.5898677373641946	https://leetcode.com/problems/partition-list
163	Symmetric Tree	EASY	0.5927867908424697	https://leetcode.com/problems/symmetric-tree
164	Remove Nth Node From End of List	MEDIUM	0.4896105904273307	https://leetcode.com/problems/remove-nth-node-from-end-of-list
165	Binary Tree Inorder Traversal	EASY	0.7858399541084903	https://leetcode.com/problems/binary-tree-inorder-traversal
166	Insert Interval	MEDIUM	0.4347364546603863	https://leetcode.com/problems/insert-interval
167	Sudoku Solver	HARD	0.6390866531877745	https://leetcode.com/problems/sudoku-solver
168	Text Justification	HARD	0.4814993566410409	https://leetcode.com/problems/text-justification
169	Balanced Binary Tree	EASY	0.5534206156043029	https://leetcode.com/problems/balanced-binary-tree
170	Same Tree	EASY	0.6512685923910883	https://leetcode.com/problems/same-tree
171	Longest Valid Parentheses	HARD	0.3631311456770452	https://leetcode.com/problems/longest-valid-parentheses
172	Add Binary	EASY	0.5567702663015909	https://leetcode.com/problems/add-binary
173	Word Search	MEDIUM	0.4526693801123823	https://leetcode.com/problems/word-search
174	Combinations	MEDIUM	0.728964998447839	https://leetcode.com/problems/combinations
175	Substring with Concatenation of All Words	HARD	0.3299749970274807	https://leetcode.com/problems/substring-with-concatenation-of-all-words
176	Spiral Matrix II	MEDIUM	0.734312719680276	https://leetcode.com/problems/spiral-matrix-ii
177	Permutation Sequence	HARD	0.4994329004732563	https://leetcode.com/problems/permutation-sequence
178	Search in Rotated Sorted Array II	MEDIUM	0.3887964488253302	https://leetcode.com/problems/search-in-rotated-sorted-array-ii
179	Rotate List	MEDIUM	0.3994476663735721	https://leetcode.com/problems/rotate-list
180	Validate Binary Search Tree	MEDIUM	0.3438040355108531	https://leetcode.com/problems/validate-binary-search-tree
181	Unique Paths II	MEDIUM	0.4315438505851779	https://leetcode.com/problems/unique-paths-ii
182	Path Sum	EASY	0.5300475989532051	https://leetcode.com/problems/path-sum
183	Simplify Path	MEDIUM	0.4785434600375143	https://leetcode.com/problems/simplify-path
184	N-Queens	HARD	0.7281704967757537	https://leetcode.com/problems/n-queens
185	Count and Say	MEDIUM	0.6050656775612677	https://leetcode.com/problems/count-and-say
186	Restore IP Addresses	MEDIUM	0.531583393083398	https://leetcode.com/problems/restore-ip-addresses
187	Subsets II	MEDIUM	0.595072748658621	https://leetcode.com/problems/subsets-ii
188	Unique Binary Search Trees	MEDIUM	0.6244520536210353	https://leetcode.com/problems/unique-binary-search-trees
189	Maximal Rectangle	HARD	0.5370845822665518	https://leetcode.com/problems/maximal-rectangle
190	Remove Duplicates from Sorted List II	MEDIUM	0.4989080936318432	https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii
191	Permutations II	MEDIUM	0.615917727605333	https://leetcode.com/problems/permutations-ii
192	Multiply Strings	MEDIUM	0.4228943914738829	https://leetcode.com/problems/multiply-strings
193	Construct Binary Tree from Inorder and Postorder Traversal	MEDIUM	0.6608200104533679	https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal
194	Convert Sorted Array to Binary Search Tree	EASY	0.7407934506434607	https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree
195	Minimum Depth of Binary Tree	EASY	0.5066668022955421	https://leetcode.com/problems/minimum-depth-of-binary-tree
196	Combination Sum	MEDIUM	0.7467468656021409	https://leetcode.com/problems/combination-sum
197	Binary Tree Level Order Traversal	MEDIUM	0.7059657203049214	https://leetcode.com/problems/binary-tree-level-order-traversal
198	Insert Delete GetRandom O(1)	MEDIUM	0.5499189489424546	https://leetcode.com/problems/insert-delete-getrandom-o1
199	Design Hit Counter	MEDIUM	0.6920824458148753	https://leetcode.com/problems/design-hit-counter
200	Shortest Uncommon Substring in an Array	MEDIUM	0.482141410869037	https://leetcode.com/problems/shortest-uncommon-substring-in-an-array
201	Insert Delete GetRandom O(1) - Duplicates allowed	HARD	0.3577155976591297	https://leetcode.com/problems/insert-delete-getrandom-o1-duplicates-allowed
202	String Compression	MEDIUM	0.580915717497265	https://leetcode.com/problems/string-compression
203	String Compression III	MEDIUM	0.6681506980036712	https://leetcode.com/problems/string-compression-iii
204	Parse Lisp Expression	HARD	0.5275886554446347	https://leetcode.com/problems/parse-lisp-expression
205	Number of Recent Calls	EASY	0.7732793446019116	https://leetcode.com/problems/number-of-recent-calls
206	Backspace String Compare	EASY	0.4948172369227153	https://leetcode.com/problems/backspace-string-compare
207	Minimum Absolute Difference	EASY	0.7065237783248814	https://leetcode.com/problems/minimum-absolute-difference
208	Find Pivot Index	EASY	0.6057036695144293	https://leetcode.com/problems/find-pivot-index
209	Capacity To Ship Packages Within D Days	MEDIUM	0.7211784106475069	https://leetcode.com/problems/capacity-to-ship-packages-within-d-days
210	Triangle	MEDIUM	0.592942880327532	https://leetcode.com/problems/triangle
211	Brick Wall	MEDIUM	0.5585751978891821	https://leetcode.com/problems/brick-wall
212	Find the Smallest Divisor Given a Threshold	MEDIUM	0.6364604732557255	https://leetcode.com/problems/find-the-smallest-divisor-given-a-threshold
213	Reverse Substrings Between Each Pair of Parentheses	MEDIUM	0.717268529079912	https://leetcode.com/problems/reverse-substrings-between-each-pair-of-parentheses
214	Squares of a Sorted Array	EASY	0.7321916295529628	https://leetcode.com/problems/squares-of-a-sorted-array
215	Permutation in String	MEDIUM	0.4724778525765767	https://leetcode.com/problems/permutation-in-string
216	Can Place Flowers	EASY	0.2889916494677351	https://leetcode.com/problems/can-place-flowers
217	Lexicographically Smallest String After Substring Operation	MEDIUM	0.3234455453668943	https://leetcode.com/problems/lexicographically-smallest-string-after-substring-operation
218	Find the Child Who Has the Ball After K Seconds	EASY	0.6151708335223921	https://leetcode.com/problems/find-the-child-who-has-the-ball-after-k-seconds
219	Kth Smallest Element in a BST	MEDIUM	0.7532960571851453	https://leetcode.com/problems/kth-smallest-element-in-a-bst
220	Find Median from Data Stream	HARD	0.5327803532552068	https://leetcode.com/problems/find-median-from-data-stream
221	Subarray Product Less Than K	MEDIUM	0.5285344933981581	https://leetcode.com/problems/subarray-product-less-than-k
222	Best Time to Buy and Sell Stock II	MEDIUM	0.6950029224907471	https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii
223	Eliminate Maximum Number of Monsters	MEDIUM	0.5078612806993201	https://leetcode.com/problems/eliminate-maximum-number-of-monsters
224	Design Excel Sum Formula	HARD	0.4256816329246585	https://leetcode.com/problems/design-excel-sum-formula
225	Maximum Profit in Job Scheduling	HARD	0.5441735043380527	https://leetcode.com/problems/maximum-profit-in-job-scheduling
226	Simple Bank System	MEDIUM	0.6142935665806328	https://leetcode.com/problems/simple-bank-system
227	Smallest Common Region	MEDIUM	0.679230513317286	https://leetcode.com/problems/smallest-common-region
228	Flatten 2D Vector	MEDIUM	0.5013489435679918	https://leetcode.com/problems/flatten-2d-vector
229	Design Tic-Tac-Toe	MEDIUM	0.5860139660881724	https://leetcode.com/problems/design-tic-tac-toe
230	Palindrome Pairs	HARD	0.3624370777346535	https://leetcode.com/problems/palindrome-pairs
231	Pour Water	MEDIUM	0.4789066150457245	https://leetcode.com/problems/pour-water
232	Shortest Path to Get All Keys	HARD	0.537030042053839	https://leetcode.com/problems/shortest-path-to-get-all-keys
233	Alien Dictionary	HARD	0.3667370231009105	https://leetcode.com/problems/alien-dictionary
234	Cheapest Flights Within K Stops	MEDIUM	0.4039897286127686	https://leetcode.com/problems/cheapest-flights-within-k-stops
235	Sliding Puzzle	HARD	0.7313248932064185	https://leetcode.com/problems/sliding-puzzle
236	Employee Free Time	HARD	0.7259759595862569	https://leetcode.com/problems/employee-free-time
237	Contains Duplicate II	EASY	0.4904986450077176	https://leetcode.com/problems/contains-duplicate-ii
238	All O`one Data Structure	HARD	0.4413477976145218	https://leetcode.com/problems/all-oone-data-structure
239	Word Search II	HARD	0.3732633211647155	https://leetcode.com/problems/word-search-ii
240	Contains Duplicate III	HARD	0.2363329730162543	https://leetcode.com/problems/contains-duplicate-iii
241	Maximal Square	MEDIUM	0.4876133314788993	https://leetcode.com/problems/maximal-square
242	Robot Bounded In Circle	MEDIUM	0.5622965278408281	https://leetcode.com/problems/robot-bounded-in-circle
243	Design File System	MEDIUM	0.6413755041392486	https://leetcode.com/problems/design-file-system
244	Fraction to Recurring Decimal	MEDIUM	0.2622353839768554	https://leetcode.com/problems/fraction-to-recurring-decimal
245	Number of Ways to Build House of Cards	MEDIUM	0.6217366080061884	https://leetcode.com/problems/number-of-ways-to-build-house-of-cards
246	Pyramid Transition Matrix	MEDIUM	0.5291127410721871	https://leetcode.com/problems/pyramid-transition-matrix
247	Minimum Number of Vertices to Reach All Nodes	MEDIUM	0.8115726945174798	https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes
306	Fizz Buzz	EASY	0.7437053503971489	https://leetcode.com/problems/fizz-buzz
248	Time Based Key-Value Store	MEDIUM	0.4936626151018991	https://leetcode.com/problems/time-based-key-value-store
249	Flatten Nested List Iterator	MEDIUM	0.6522839525510098	https://leetcode.com/problems/flatten-nested-list-iterator
250	Shortest Path in Binary Matrix	MEDIUM	0.49788745758374	https://leetcode.com/problems/shortest-path-in-binary-matrix
251	IP to CIDR	MEDIUM	0.5492354970683057	https://leetcode.com/problems/ip-to-cidr
252	Mini Parser	MEDIUM	0.402139671636997	https://leetcode.com/problems/mini-parser
253	Minimum Number of Flips to Convert Binary Matrix to Zero Matrix	HARD	0.7195955875149401	https://leetcode.com/problems/minimum-number-of-flips-to-convert-binary-matrix-to-zero-matrix
254	Single Number	EASY	0.759688387220078	https://leetcode.com/problems/single-number
255	Regular Expression Matching	HARD	0.2928011632862837	https://leetcode.com/problems/regular-expression-matching
256	Maximum Candies You Can Get from Boxes	HARD	0.6877100758915674	https://leetcode.com/problems/maximum-candies-you-can-get-from-boxes
257	Minimize Rounding Error to Meet Target	MEDIUM	0.45439788115682	https://leetcode.com/problems/minimize-rounding-error-to-meet-target
258	Add Strings	EASY	0.5190382397212994	https://leetcode.com/problems/add-strings
259	Strings Differ by One Character	MEDIUM	0.4106843965036265	https://leetcode.com/problems/strings-differ-by-one-character
260	Convert to Base -2	MEDIUM	0.6126841577912198	https://leetcode.com/problems/convert-to-base-2
261	Reverse Bits	EASY	0.6320549868777902	https://leetcode.com/problems/reverse-bits
262	Making A Large Island	HARD	0.5489039898916876	https://leetcode.com/problems/making-a-large-island
263	Minimum Array Changes to Make Differences Equal	MEDIUM	0.2336824341092966	https://leetcode.com/problems/minimum-array-changes-to-make-differences-equal
264	Find the Number of Good Pairs II	MEDIUM	0.2609128849118322	https://leetcode.com/problems/find-the-number-of-good-pairs-ii
265	Find the Number of Good Pairs I	EASY	0.8565227850351946	https://leetcode.com/problems/find-the-number-of-good-pairs-i
266	Find Polygon With the Largest Perimeter	MEDIUM	0.653496586482751	https://leetcode.com/problems/find-polygon-with-the-largest-perimeter
267	XOR Queries of a Subarray	MEDIUM	0.7839745933101809	https://leetcode.com/problems/xor-queries-of-a-subarray
268	N-Repeated Element in Size 2N Array	EASY	0.7747973064210272	https://leetcode.com/problems/n-repeated-element-in-size-2n-array
269	Construct Binary Search Tree from Preorder Traversal	MEDIUM	0.8328129321513312	https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal
270	Longest Palindrome	EASY	0.5556746201695723	https://leetcode.com/problems/longest-palindrome
271	Pairs of Songs With Total Durations Divisible by 60	MEDIUM	0.5324771514259002	https://leetcode.com/problems/pairs-of-songs-with-total-durations-divisible-by-60
272	Critical Connections in a Network	HARD	0.5779132199611556	https://leetcode.com/problems/critical-connections-in-a-network
273	Maximum Star Sum of a Graph	MEDIUM	0.4082906207900401	https://leetcode.com/problems/maximum-star-sum-of-a-graph
274	Minimum Initial Energy to Finish Tasks	HARD	0.5934432893896278	https://leetcode.com/problems/minimum-initial-energy-to-finish-tasks
275	Minimum Processing Time	MEDIUM	0.6925539605494165	https://leetcode.com/problems/minimum-processing-time
276	Network Delay Time	MEDIUM	0.5744231558987412	https://leetcode.com/problems/network-delay-time
277	Dice Roll Simulation	HARD	0.5000364341198246	https://leetcode.com/problems/dice-roll-simulation
278	Number of Different Subsequences GCDs	HARD	0.4196167206588345	https://leetcode.com/problems/number-of-different-subsequences-gcds
279	Reduce Array Size to The Half	MEDIUM	0.6911509173608628	https://leetcode.com/problems/reduce-array-size-to-the-half
280	Create Sorted Array through Instructions	HARD	0.4009930951005474	https://leetcode.com/problems/create-sorted-array-through-instructions
281	Minimum Number of Taps to Open to Water a Garden	HARD	0.5071699397238966	https://leetcode.com/problems/minimum-number-of-taps-to-open-to-water-a-garden
282	Cherry Pickup	HARD	0.3786948581341589	https://leetcode.com/problems/cherry-pickup
283	Constrained Subsequence Sum	HARD	0.5639922109640583	https://leetcode.com/problems/constrained-subsequence-sum
284	Map Sum Pairs	MEDIUM	0.5674795970692788	https://leetcode.com/problems/map-sum-pairs
285	Number of Operations to Make Network Connected	MEDIUM	0.6466485432011189	https://leetcode.com/problems/number-of-operations-to-make-network-connected
286	Can Make Palindrome from Substring	MEDIUM	0.4022578431984033	https://leetcode.com/problems/can-make-palindrome-from-substring
287	Increasing Decreasing String	EASY	0.7675577861995971	https://leetcode.com/problems/increasing-decreasing-string
288	Distance to a Cycle in Undirected Graph	HARD	0.7293038570084666	https://leetcode.com/problems/distance-to-a-cycle-in-undirected-graph
289	Flood Fill	EASY	0.6647640296665365	https://leetcode.com/problems/flood-fill
290	Path Sum IV	MEDIUM	0.6265683229813664	https://leetcode.com/problems/path-sum-iv
291	Split Concatenated Strings	MEDIUM	0.4331808331326752	https://leetcode.com/problems/split-concatenated-strings
292	Split Array with Equal Sum	HARD	0.5005901986323673	https://leetcode.com/problems/split-array-with-equal-sum
293	Valid Parenthesis String	MEDIUM	0.3890942848440467	https://leetcode.com/problems/valid-parenthesis-string
294	Maximum Number of Pairs in Array	EASY	0.755399434671643	https://leetcode.com/problems/maximum-number-of-pairs-in-array
295	Design a Food Rating System	MEDIUM	0.4491788770279475	https://leetcode.com/problems/design-a-food-rating-system
296	Watering Plants	MEDIUM	0.7995625398726679	https://leetcode.com/problems/watering-plants
297	Water Bottles	EASY	0.7064889679772526	https://leetcode.com/problems/water-bottles
298	Minimum Time to Complete Trips	MEDIUM	0.3904397351223481	https://leetcode.com/problems/minimum-time-to-complete-trips
299	Reorganize String	MEDIUM	0.5619629406023937	https://leetcode.com/problems/reorganize-string
300	Maximum Frequency After Subarray Operation	MEDIUM	0.2657710280373832	https://leetcode.com/problems/maximum-frequency-after-subarray-operation
301	Lowest Common Ancestor of a Binary Tree	MEDIUM	0.6675499347216417	https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree
302	Meeting Rooms II	MEDIUM	0.521416981510797	https://leetcode.com/problems/meeting-rooms-ii
303	Min Stack	MEDIUM	0.5644510197289069	https://leetcode.com/problems/min-stack
304	Concatenated Words	HARD	0.494441201784672	https://leetcode.com/problems/concatenated-words
305	LFU Cache	HARD	0.4660898637811462	https://leetcode.com/problems/lfu-cache
307	Invert Binary Tree	EASY	0.7902164996931849	https://leetcode.com/problems/invert-binary-tree
308	Basic Calculator	HARD	0.4558962794405194	https://leetcode.com/problems/basic-calculator
309	Find All Possible Recipes from Given Supplies	MEDIUM	0.5646091593277981	https://leetcode.com/problems/find-all-possible-recipes-from-given-supplies
310	Minimum Equal Sum of Two Arrays After Replacing Zeros	MEDIUM	0.5016214325632321	https://leetcode.com/problems/minimum-equal-sum-of-two-arrays-after-replacing-zeros
311	Number of Provinces	MEDIUM	0.6865500056031655	https://leetcode.com/problems/number-of-provinces
312	Analyze User Website Visit Pattern	MEDIUM	0.4372699971913551	https://leetcode.com/problems/analyze-user-website-visit-pattern
313	Sliding Window Maximum	HARD	0.4760415274726645	https://leetcode.com/problems/sliding-window-maximum
314	Integer to English Words	HARD	0.3435478950195029	https://leetcode.com/problems/integer-to-english-words
315	Course Schedule II	MEDIUM	0.5342350291611208	https://leetcode.com/problems/course-schedule-ii
316	Pacific Atlantic Water Flow	MEDIUM	0.575339130930928	https://leetcode.com/problems/pacific-atlantic-water-flow
317	Find the Duplicate Number	MEDIUM	0.6283579203558779	https://leetcode.com/problems/find-the-duplicate-number
318	Course Schedule	MEDIUM	0.4923425308395746	https://leetcode.com/problems/course-schedule
319	Maximize Distance to Closest Person	MEDIUM	0.489872250307419	https://leetcode.com/problems/maximize-distance-to-closest-person
320	Magnetic Force Between Two Balls	MEDIUM	0.7134574135311467	https://leetcode.com/problems/magnetic-force-between-two-balls
321	Distribute Candies Among Children II	MEDIUM	0.5613428385962695	https://leetcode.com/problems/distribute-candies-among-children-ii
322	Find Eventual Safe States	MEDIUM	0.6864738064925369	https://leetcode.com/problems/find-eventual-safe-states
323	Design Parking System	EASY	0.870750002692428	https://leetcode.com/problems/design-parking-system
324	Divisible and Non-divisible Sums Difference	EASY	0.9127664581482016	https://leetcode.com/problems/divisible-and-non-divisible-sums-difference
325	Design In-Memory File System	HARD	0.4816948941663167	https://leetcode.com/problems/design-in-memory-file-system
326	Subarray Sum Equals K	MEDIUM	0.4547621523795086	https://leetcode.com/problems/subarray-sum-equals-k
327	Count Zero Request Servers	MEDIUM	0.3411690593813203	https://leetcode.com/problems/count-zero-request-servers
328	K Closest Points to Origin	MEDIUM	0.6793957161103558	https://leetcode.com/problems/k-closest-points-to-origin
329	Evaluate Division	MEDIUM	0.6314695091079937	https://leetcode.com/problems/evaluate-division
330	Copy List with Random Pointer	MEDIUM	0.6053669280147949	https://leetcode.com/problems/copy-list-with-random-pointer
331	Word Break II	HARD	0.5364536357075469	https://leetcode.com/problems/word-break-ii
332	Longest Consecutive Sequence	MEDIUM	0.4704082801866521	https://leetcode.com/problems/longest-consecutive-sequence
333	Serialize and Deserialize Binary Tree	HARD	0.5896945647013689	https://leetcode.com/problems/serialize-and-deserialize-binary-tree
334	Next Greater Element II	MEDIUM	0.6630234274642035	https://leetcode.com/problems/next-greater-element-ii
335	Word Break	MEDIUM	0.4827376415593891	https://leetcode.com/problems/word-break
336	Missing Number	EASY	0.7006534938999994	https://leetcode.com/problems/missing-number
337	Evaluate Reverse Polish Notation	MEDIUM	0.5495024017596329	https://leetcode.com/problems/evaluate-reverse-polish-notation
338	First Unique Character in a String	EASY	0.6369544511414408	https://leetcode.com/problems/first-unique-character-in-a-string
339	Plates Between Candles	MEDIUM	0.4666856756362479	https://leetcode.com/problems/plates-between-candles
340	Diameter of Binary Tree	EASY	0.6358636823587297	https://leetcode.com/problems/diameter-of-binary-tree
341	Random Pick with Weight	MEDIUM	0.4827836751158982	https://leetcode.com/problems/random-pick-with-weight
342	Binary Tree Maximum Path Sum	HARD	0.4122427095336609	https://leetcode.com/problems/binary-tree-maximum-path-sum
343	Palindrome Partitioning	MEDIUM	0.7212808256354587	https://leetcode.com/problems/palindrome-partitioning
344	Reorder List	MEDIUM	0.6250474980864169	https://leetcode.com/problems/reorder-list
345	Minimum Path Sum	MEDIUM	0.664814934885504	https://leetcode.com/problems/minimum-path-sum
346	Gas Station	MEDIUM	0.4638361778165814	https://leetcode.com/problems/gas-station
347	Count Good Numbers	MEDIUM	0.5663004270714034	https://leetcode.com/problems/count-good-numbers
348	Clone Graph	MEDIUM	0.6238574692944873	https://leetcode.com/problems/clone-graph
349	Linked List Cycle	EASY	0.5257062260569889	https://leetcode.com/problems/linked-list-cycle
350	Linked List Cycle II	MEDIUM	0.5493365914602291	https://leetcode.com/problems/linked-list-cycle-ii
351	Path Sum II	MEDIUM	0.6049772910946117	https://leetcode.com/problems/path-sum-ii
352	Unique Binary Search Trees II	MEDIUM	0.6039807221122715	https://leetcode.com/problems/unique-binary-search-trees-ii
353	Recover Binary Search Tree	MEDIUM	0.5632432520920791	https://leetcode.com/problems/recover-binary-search-tree
354	Interleaving String	MEDIUM	0.4217918033968859	https://leetcode.com/problems/interleaving-string
355	N-Queens II	HARD	0.7672955295381376	https://leetcode.com/problems/n-queens-ii
356	Valid Number	HARD	0.2156351250311539	https://leetcode.com/problems/valid-number
357	Gray Code	MEDIUM	0.6187231456205623	https://leetcode.com/problems/gray-code
358	Scramble String	HARD	0.4218190083551487	https://leetcode.com/problems/scramble-string
359	Number of 1 Bits	EASY	0.7450480575885099	https://leetcode.com/problems/number-of-1-bits
360	Design a 3D Binary Matrix with Efficient Layer Tracking	MEDIUM	0.6643356643356644	https://leetcode.com/problems/design-a-3d-binary-matrix-with-efficient-layer-tracking
361	Build Array Where You Can Find The Maximum Exactly K Comparisons	HARD	0.6675739518425989	https://leetcode.com/problems/build-array-where-you-can-find-the-maximum-exactly-k-comparisons
362	Number of Divisible Substrings	MEDIUM	0.734086999262718	https://leetcode.com/problems/number-of-divisible-substrings
363	Rotate String	EASY	0.6393965020022866	https://leetcode.com/problems/rotate-string
364	Minimum Number of Operations to Make Array XOR Equal to K	MEDIUM	0.8534717074376081	https://leetcode.com/problems/minimum-number-of-operations-to-make-array-xor-equal-to-k
365	Minimum Deletions to Make Character Frequencies Unique	MEDIUM	0.6129471469241242	https://leetcode.com/problems/minimum-deletions-to-make-character-frequencies-unique
366	Add Digits	EASY	0.6791264192015334	https://leetcode.com/problems/add-digits
367	Maximum Equal Frequency	HARD	0.374845333970087	https://leetcode.com/problems/maximum-equal-frequency
368	Minimum Fuel Cost to Report to the Capital	MEDIUM	0.6435778675036323	https://leetcode.com/problems/minimum-fuel-cost-to-report-to-the-capital
369	Ugly Number III	MEDIUM	0.3045001069756016	https://leetcode.com/problems/ugly-number-iii
370	Divide an Array Into Subarrays With Minimum Cost I	EASY	0.6578163145045879	https://leetcode.com/problems/divide-an-array-into-subarrays-with-minimum-cost-i
371	Percentage of Letter in String	EASY	0.7449277284179817	https://leetcode.com/problems/percentage-of-letter-in-string
372	Divide an Array Into Subarrays With Minimum Cost II	HARD	0.3040626621997829	https://leetcode.com/problems/divide-an-array-into-subarrays-with-minimum-cost-ii
373	Maximum XOR After Operations	MEDIUM	0.7929730322297742	https://leetcode.com/problems/maximum-xor-after-operations
374	Equal Sum Arrays With Minimum Number of Operations	MEDIUM	0.5393437505134651	https://leetcode.com/problems/equal-sum-arrays-with-minimum-number-of-operations
375	Find a Value of a Mysterious Function Closest to Target	HARD	0.4574925570625206	https://leetcode.com/problems/find-a-value-of-a-mysterious-function-closest-to-target
376	Maximize the Topmost Element After K Moves	MEDIUM	0.2348190186172053	https://leetcode.com/problems/maximize-the-topmost-element-after-k-moves
377	Reconstruct a 2-Row Binary Matrix	MEDIUM	0.4772217731480775	https://leetcode.com/problems/reconstruct-a-2-row-binary-matrix
378	The Number of Users That Are Eligible for Discount	EASY	0.5061860496221494	https://leetcode.com/problems/the-number-of-users-that-are-eligible-for-discount
379	The Users That Are Eligible for Discount	EASY	0.508151759865915	https://leetcode.com/problems/the-users-that-are-eligible-for-discount
380	Maximum Number of Visible Points	HARD	0.3767605072174815	https://leetcode.com/problems/maximum-number-of-visible-points
381	Number of Distinct Islands	MEDIUM	0.6225531873624047	https://leetcode.com/problems/number-of-distinct-islands
382	Race Car	HARD	0.4412431163672474	https://leetcode.com/problems/race-car
383	Video Stitching	MEDIUM	0.5199920692617804	https://leetcode.com/problems/video-stitching
384	Search Suggestions System	MEDIUM	0.6505022273267432	https://leetcode.com/problems/search-suggestions-system
385	Minesweeper	MEDIUM	0.6812440177509644	https://leetcode.com/problems/minesweeper
386	Shortest Word Distance	EASY	0.6594949449257005	https://leetcode.com/problems/shortest-word-distance
387	Heaters	MEDIUM	0.3995299191494197	https://leetcode.com/problems/heaters
388	Flip Equivalent Binary Trees	MEDIUM	0.696793256042999	https://leetcode.com/problems/flip-equivalent-binary-trees
389	Snakes and Ladders	MEDIUM	0.4779535373887946	https://leetcode.com/problems/snakes-and-ladders
390	Flatten Binary Tree to Linked List	MEDIUM	0.6851017952147065	https://leetcode.com/problems/flatten-binary-tree-to-linked-list
391	Shortest Word Distance II	MEDIUM	0.621334883686483	https://leetcode.com/problems/shortest-word-distance-ii
392	Game of Life	MEDIUM	0.7141499668480139	https://leetcode.com/problems/game-of-life
393	Insert into a Sorted Circular Linked List	MEDIUM	0.3812410472504833	https://leetcode.com/problems/insert-into-a-sorted-circular-linked-list
394	Classifying Triangles by Lengths	EASY	0.5082222606889389	https://leetcode.com/problems/classifying-triangles-by-lengths
395	Minimize OR of Remaining Elements Using Operations	HARD	0.2896179141872846	https://leetcode.com/problems/minimize-or-of-remaining-elements-using-operations
396	Construct the Minimum Bitwise Array II	MEDIUM	0.3486627673349109	https://leetcode.com/problems/construct-the-minimum-bitwise-array-ii
397	Construct the Minimum Bitwise Array I	EASY	0.7395921725937926	https://leetcode.com/problems/construct-the-minimum-bitwise-array-i
398	Validate Stack Sequences	MEDIUM	0.6969342482559882	https://leetcode.com/problems/validate-stack-sequences
399	Longest Substring with At Most K Distinct Characters	MEDIUM	0.4949671858164365	https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters
400	Maximum Number of Balls in a Box	EASY	0.742540030878883	https://leetcode.com/problems/maximum-number-of-balls-in-a-box
401	Shortest Path in a Grid with Obstacles Elimination	HARD	0.4560618259138108	https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles-elimination
402	Logger Rate Limiter	EASY	0.766103057053701	https://leetcode.com/problems/logger-rate-limiter
403	Best Time to Buy and Sell Stock III	HARD	0.5112087693447603	https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii
404	Best Time to Buy and Sell Stock IV	HARD	0.4708615439104682	https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv
405	Calculate Score After Performing Instructions	MEDIUM	0.5556368843981223	https://leetcode.com/problems/calculate-score-after-performing-instructions
406	Find Servers That Handled Most Number of Requests	HARD	0.4407547923322684	https://leetcode.com/problems/find-servers-that-handled-most-number-of-requests
407	Best Time to Buy and Sell Stock with Transaction Fee	MEDIUM	0.7050715532641945	https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee
408	Find K Closest Elements	MEDIUM	0.486686656754684	https://leetcode.com/problems/find-k-closest-elements
409	Exam Room	MEDIUM	0.4286717936493996	https://leetcode.com/problems/exam-room
410	Task Scheduler	MEDIUM	0.6153909539748507	https://leetcode.com/problems/task-scheduler
411	Design HashMap	EASY	0.6589390156242249	https://leetcode.com/problems/design-hashmap
412	Design Circular Queue	MEDIUM	0.5264418953615425	https://leetcode.com/problems/design-circular-queue
413	Sliding Window Median	HARD	0.3869205915247919	https://leetcode.com/problems/sliding-window-median
414	Implement Trie (Prefix Tree)	MEDIUM	0.679347462282349	https://leetcode.com/problems/implement-trie-prefix-tree
415	Kth Smallest Element in a Sorted Matrix	MEDIUM	0.6356660329525441	https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix
416	Compare Version Numbers	MEDIUM	0.4234711977763999	https://leetcode.com/problems/compare-version-numbers
417	Validate IP Address	MEDIUM	0.2781752462045336	https://leetcode.com/problems/validate-ip-address
418	Implement Queue using Stacks	EASY	0.6806072941218969	https://leetcode.com/problems/implement-queue-using-stacks
419	Walking Robot Simulation	MEDIUM	0.5823045930701047	https://leetcode.com/problems/walking-robot-simulation
420	Split Strings by Separator	EASY	0.7491123619831133	https://leetcode.com/problems/split-strings-by-separator
421	Reverse String	EASY	0.7976436563508422	https://leetcode.com/problems/reverse-string
422	Two Sum II - Input Array Is Sorted	MEDIUM	0.6340213036141924	https://leetcode.com/problems/two-sum-ii-input-array-is-sorted
423	Guess the Word	HARD	0.3765162794319245	https://leetcode.com/problems/guess-the-word
424	Find Largest Value in Each Tree Row	MEDIUM	0.6627273661494193	https://leetcode.com/problems/find-largest-value-in-each-tree-row
425	Distribute Money to Maximum Children	EASY	0.1945018764759487	https://leetcode.com/problems/distribute-money-to-maximum-children
426	Populating Next Right Pointers in Each Node	MEDIUM	0.6544147769490073	https://leetcode.com/problems/populating-next-right-pointers-in-each-node
427	Shortest Distance from All Buildings	HARD	0.443752767487823	https://leetcode.com/problems/shortest-distance-from-all-buildings
428	Find Duplicate File in System	MEDIUM	0.6757528599572867	https://leetcode.com/problems/find-duplicate-file-in-system
429	Best Meeting Point	HARD	0.6124969405912432	https://leetcode.com/problems/best-meeting-point
430	Word Abbreviation	HARD	0.6190250925545043	https://leetcode.com/problems/word-abbreviation
431	Range Sum Query 2D - Immutable	MEDIUM	0.5653032094178108	https://leetcode.com/problems/range-sum-query-2d-immutable
432	Cyclically Rotating a Grid	MEDIUM	0.5049956178790534	https://leetcode.com/problems/cyclically-rotating-a-grid
433	Jump Game VI	MEDIUM	0.4599694033656298	https://leetcode.com/problems/jump-game-vi
434	Partition Array Into Two Arrays to Minimize Sum Difference	HARD	0.2175272660052991	https://leetcode.com/problems/partition-array-into-two-arrays-to-minimize-sum-difference
435	Stone Game VI	MEDIUM	0.5906614232919549	https://leetcode.com/problems/stone-game-vi
436	Possible Bipartition	MEDIUM	0.5150784103207557	https://leetcode.com/problems/possible-bipartition
437	Cycle Length Queries in a Tree	HARD	0.5834553702182377	https://leetcode.com/problems/cycle-length-queries-in-a-tree
438	Find the Count of Monotonic Pairs I	HARD	0.4642378517893483	https://leetcode.com/problems/find-the-count-of-monotonic-pairs-i
439	Maximum Length of Subarray With Positive Product	MEDIUM	0.443941282723179	https://leetcode.com/problems/maximum-length-of-subarray-with-positive-product
440	Surrounded Regions	MEDIUM	0.4288642186165671	https://leetcode.com/problems/surrounded-regions
441	Number of People Aware of a Secret	MEDIUM	0.4636862359780561	https://leetcode.com/problems/number-of-people-aware-of-a-secret
442	Maximize the Confusion of an Exam	MEDIUM	0.6861245004961151	https://leetcode.com/problems/maximize-the-confusion-of-an-exam
443	Count Collisions on a Road	MEDIUM	0.4437803705532313	https://leetcode.com/problems/count-collisions-on-a-road
444	Minimum Insertion Steps to Make a String Palindrome	HARD	0.7242938226969341	https://leetcode.com/problems/minimum-insertion-steps-to-make-a-string-palindrome
445	Inorder Successor in BST II	MEDIUM	0.6100172051233034	https://leetcode.com/problems/inorder-successor-in-bst-ii
446	Inorder Successor in BST	MEDIUM	0.5066782117122497	https://leetcode.com/problems/inorder-successor-in-bst
447	Rotated Digits	MEDIUM	0.5642771951080989	https://leetcode.com/problems/rotated-digits
448	Maximum Units on a Truck	EASY	0.7425030722517598	https://leetcode.com/problems/maximum-units-on-a-truck
449	Remove Linked List Elements	EASY	0.5192129307896375	https://leetcode.com/problems/remove-linked-list-elements
450	Construct String With Repeat Limit	MEDIUM	0.7087761359183014	https://leetcode.com/problems/construct-string-with-repeat-limit
451	Missing Element in Sorted Array	MEDIUM	0.587648801207176	https://leetcode.com/problems/missing-element-in-sorted-array
452	Moving Average from Data Stream	EASY	0.7993791280727699	https://leetcode.com/problems/moving-average-from-data-stream
453	Kth Largest Element in a Stream	EASY	0.5985310691115552	https://leetcode.com/problems/kth-largest-element-in-a-stream
454	Find the Town Judge	EASY	0.500057919960555	https://leetcode.com/problems/find-the-town-judge
455	Merge In Between Linked Lists	MEDIUM	0.8230338483909592	https://leetcode.com/problems/merge-in-between-linked-lists
456	Flatten a Multilevel Doubly Linked List	MEDIUM	0.6131219516943955	https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list
457	Kth Missing Positive Number	EASY	0.6228373866165937	https://leetcode.com/problems/kth-missing-positive-number
458	Remove All Occurrences of a Substring	MEDIUM	0.7806968639516182	https://leetcode.com/problems/remove-all-occurrences-of-a-substring
459	Maximum Repeating Substring	EASY	0.3962144463908421	https://leetcode.com/problems/maximum-repeating-substring
460	The Number of Rich Customers	EASY	0.7749586938866951	https://leetcode.com/problems/the-number-of-rich-customers
461	Exclusive Time of Functions	MEDIUM	0.6479218958904363	https://leetcode.com/problems/exclusive-time-of-functions
462	Stock Price Fluctuation	MEDIUM	0.4816387154783381	https://leetcode.com/problems/stock-price-fluctuation
463	Design Snake Game	MEDIUM	0.3968485567576451	https://leetcode.com/problems/design-snake-game
464	High-Access Employees	MEDIUM	0.4612636964811507	https://leetcode.com/problems/high-access-employees
465	Last Day Where You Can Still Cross	HARD	0.6231939687413881	https://leetcode.com/problems/last-day-where-you-can-still-cross
466	Rank Teams by Votes	MEDIUM	0.5940446839336095	https://leetcode.com/problems/rank-teams-by-votes
467	Find the Width of Columns of a Grid	EASY	0.693232244841104	https://leetcode.com/problems/find-the-width-of-columns-of-a-grid
468	The Time When the Network Becomes Idle	MEDIUM	0.5372318622762673	https://leetcode.com/problems/the-time-when-the-network-becomes-idle
469	Russian Doll Envelopes	HARD	0.3732991914997274	https://leetcode.com/problems/russian-doll-envelopes
470	Nth Highest Salary	MEDIUM	0.380390316890866	https://leetcode.com/problems/nth-highest-salary
471	Lowest Common Ancestor of a Binary Tree III	MEDIUM	0.8246674945153157	https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree-iii
472	Design Add and Search Words Data Structure	MEDIUM	0.4706656098549707	https://leetcode.com/problems/design-add-and-search-words-data-structure
473	Count Vowel Strings in Ranges	MEDIUM	0.6786629908928055	https://leetcode.com/problems/count-vowel-strings-in-ranges
474	Maximum Square Area by Removing Fences From a Field	MEDIUM	0.2410700053616195	https://leetcode.com/problems/maximum-square-area-by-removing-fences-from-a-field
475	Longest String Chain	MEDIUM	0.6201512673699018	https://leetcode.com/problems/longest-string-chain
476	Online Election	MEDIUM	0.5184691560254644	https://leetcode.com/problems/online-election
477	String Transformation	HARD	0.2510979075174374	https://leetcode.com/problems/string-transformation
478	Crawler Log Folder	EASY	0.7160418239109896	https://leetcode.com/problems/crawler-log-folder
479	Count Vowels Permutation	HARD	0.61484920403603	https://leetcode.com/problems/count-vowels-permutation
480	Maximum Number of Occurrences of a Substring	MEDIUM	0.5342731408965465	https://leetcode.com/problems/maximum-number-of-occurrences-of-a-substring
481	Boats to Save People	MEDIUM	0.6030059688557481	https://leetcode.com/problems/boats-to-save-people
482	Tallest Billboard	HARD	0.5187288448273096	https://leetcode.com/problems/tallest-billboard
483	Minimum Time to Visit a Cell In a Grid	HARD	0.568054168958796	https://leetcode.com/problems/minimum-time-to-visit-a-cell-in-a-grid
484	Verbal Arithmetic Puzzle	HARD	0.3477800583342335	https://leetcode.com/problems/verbal-arithmetic-puzzle
485	Number of Possible Sets of Closing Branches	HARD	0.4844893500819224	https://leetcode.com/problems/number-of-possible-sets-of-closing-branches
486	Make Lexicographically Smallest Array by Swapping Elements	MEDIUM	0.6026879026047842	https://leetcode.com/problems/make-lexicographically-smallest-array-by-swapping-elements
487	Minimum Cost to Convert String II	HARD	0.2553901437371663	https://leetcode.com/problems/minimum-cost-to-convert-string-ii
488	Smallest Missing Non-negative Integer After Operations	MEDIUM	0.3987738925814309	https://leetcode.com/problems/smallest-missing-non-negative-integer-after-operations
489	Minimum Cost to Convert String I	MEDIUM	0.5755714079298737	https://leetcode.com/problems/minimum-cost-to-convert-string-i
490	Maximum Good Subarray Sum	MEDIUM	0.2028196432101957	https://leetcode.com/problems/maximum-good-subarray-sum
491	Single Element in a Sorted Array	MEDIUM	0.5920694527750138	https://leetcode.com/problems/single-element-in-a-sorted-array
492	Add Two Integers	EASY	0.8812230793897231	https://leetcode.com/problems/add-two-integers
493	Number of Digit One	HARD	0.3599159436598703	https://leetcode.com/problems/number-of-digit-one
494	Maximum Path Quality of a Graph	HARD	0.596989256918232	https://leetcode.com/problems/maximum-path-quality-of-a-graph
495	Find Words That Can Be Formed by Characters	EASY	0.7106771491390691	https://leetcode.com/problems/find-words-that-can-be-formed-by-characters
496	Remove All Adjacent Duplicates in String II	MEDIUM	0.5960309289922421	https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii
497	Valid Palindrome II	EASY	0.4302959770963336	https://leetcode.com/problems/valid-palindrome-ii
498	Missing Number In Arithmetic Progression	EASY	0.5211133764124538	https://leetcode.com/problems/missing-number-in-arithmetic-progression
499	Leetflex Banned Accounts	MEDIUM	0.6223738673229667	https://leetcode.com/problems/leetflex-banned-accounts
500	Number of Subarrays That Match a Pattern I	MEDIUM	0.6684595198334382	https://leetcode.com/problems/number-of-subarrays-that-match-a-pattern-i
501	Elimination Game	MEDIUM	0.4479893502122422	https://leetcode.com/problems/elimination-game
502	Number of Changing Keys	EASY	0.7970178853428329	https://leetcode.com/problems/number-of-changing-keys
503	Number of Subarrays That Match a Pattern II	HARD	0.322212333121424	https://leetcode.com/problems/number-of-subarrays-that-match-a-pattern-ii
504	Distribute Elements Into Two Arrays I	EASY	0.7297186224280118	https://leetcode.com/problems/distribute-elements-into-two-arrays-i
505	Distribute Elements Into Two Arrays II	HARD	0.2933888118354137	https://leetcode.com/problems/distribute-elements-into-two-arrays-ii
506	Count Prefix and Suffix Pairs I	EASY	0.7768949245817506	https://leetcode.com/problems/count-prefix-and-suffix-pairs-i
507	Count Prefix and Suffix Pairs II	HARD	0.2720387820263219	https://leetcode.com/problems/count-prefix-and-suffix-pairs-ii
508	Block Placement Queries	HARD	0.168902023187088	https://leetcode.com/problems/block-placement-queries
509	Minimum Size Subarray Sum	MEDIUM	0.4939095490430486	https://leetcode.com/problems/minimum-size-subarray-sum
510	Abbreviating the Product of a Range	HARD	0.2449149024491489	https://leetcode.com/problems/abbreviating-the-product-of-a-range
511	Sum of Subarray Minimums	MEDIUM	0.3762339004345656	https://leetcode.com/problems/sum-of-subarray-minimums
512	Add to Array-Form of Integer	EASY	0.4507483394218717	https://leetcode.com/problems/add-to-array-form-of-integer
513	Arithmetic Slices II - Subsequence	HARD	0.5454429945054945	https://leetcode.com/problems/arithmetic-slices-ii-subsequence
514	Out of Boundary Paths	MEDIUM	0.4814793718672228	https://leetcode.com/problems/out-of-boundary-paths
515	Zuma Game	HARD	0.3143958318464064	https://leetcode.com/problems/zuma-game
516	Length of Longest Fibonacci Subsequence	MEDIUM	0.575965163992327	https://leetcode.com/problems/length-of-longest-fibonacci-subsequence
517	Longest Substring with At Least K Repeating Characters	MEDIUM	0.4545230355341329	https://leetcode.com/problems/longest-substring-with-at-least-k-repeating-characters
518	Integer Replacement	MEDIUM	0.3652932795060555	https://leetcode.com/problems/integer-replacement
519	Split Array Largest Sum	HARD	0.5809995792229651	https://leetcode.com/problems/split-array-largest-sum
520	Arithmetic Slices	MEDIUM	0.6482642125781026	https://leetcode.com/problems/arithmetic-slices
521	Isomorphic Strings	EASY	0.4685800275723814	https://leetcode.com/problems/isomorphic-strings
522	Lexicographically Smallest Generated String	HARD	0.296344330064035	https://leetcode.com/problems/lexicographically-smallest-generated-string
523	Minimum Number of Refueling Stops	HARD	0.405574587771098	https://leetcode.com/problems/minimum-number-of-refueling-stops
524	Maximum Employees to Be Invited to a Meeting	HARD	0.6210808912817661	https://leetcode.com/problems/maximum-employees-to-be-invited-to-a-meeting
525	Count Submatrices with Top-Left Element and Sum Less Than k	MEDIUM	0.5723915766867506	https://leetcode.com/problems/count-submatrices-with-top-left-element-and-sum-less-than-k
526	Double Modular Exponentiation	MEDIUM	0.4710246360582307	https://leetcode.com/problems/double-modular-exponentiation
527	Furthest Point From Origin	EASY	0.6444120731849435	https://leetcode.com/problems/furthest-point-from-origin
528	Mark Elements on Array by Performing Queries	MEDIUM	0.4769432539403733	https://leetcode.com/problems/mark-elements-on-array-by-performing-queries
529	Lexicographical Numbers	MEDIUM	0.7597714941239238	https://leetcode.com/problems/lexicographical-numbers
530	Palindrome Linked List	EASY	0.5585939012301956	https://leetcode.com/problems/palindrome-linked-list
531	Largest Palindromic Number	MEDIUM	0.364732985875066	https://leetcode.com/problems/largest-palindromic-number
532	Car Fleet	MEDIUM	0.5347643805340839	https://leetcode.com/problems/car-fleet
533	Bus Routes	HARD	0.4695300579798596	https://leetcode.com/problems/bus-routes
534	Check if an Original String Exists Given Two Encoded Strings	HARD	0.4322933345532732	https://leetcode.com/problems/check-if-an-original-string-exists-given-two-encoded-strings
535	Maximum Subtree of the Same Color	MEDIUM	0.5692307692307692	https://leetcode.com/problems/maximum-subtree-of-the-same-color
536	Find the Maximum Sum of Node Values	HARD	0.6979865078996403	https://leetcode.com/problems/find-the-maximum-sum-of-node-values
537	Path with Maximum Probability	MEDIUM	0.6529407064392282	https://leetcode.com/problems/path-with-maximum-probability
538	Maximize Greatness of an Array	MEDIUM	0.5864617466875623	https://leetcode.com/problems/maximize-greatness-of-an-array
539	Boundary of Binary Tree	MEDIUM	0.4715862928790685	https://leetcode.com/problems/boundary-of-binary-tree
540	Maximum Profit From Trading Stocks	MEDIUM	0.4659311012728279	https://leetcode.com/problems/maximum-profit-from-trading-stocks
541	Avoid Flood in The City	MEDIUM	0.2739066722234919	https://leetcode.com/problems/avoid-flood-in-the-city
542	Design a Text Editor	HARD	0.4713807144713662	https://leetcode.com/problems/design-a-text-editor
543	The Maze	MEDIUM	0.5951548421014023	https://leetcode.com/problems/the-maze
544	Walking Robot Simulation II	MEDIUM	0.2507536943378198	https://leetcode.com/problems/walking-robot-simulation-ii
545	Count Nice Pairs in an Array	MEDIUM	0.4853582921277765	https://leetcode.com/problems/count-nice-pairs-in-an-array
546	Number of Black Blocks	MEDIUM	0.3861732264480743	https://leetcode.com/problems/number-of-black-blocks
547	Pancake Sorting	MEDIUM	0.7119131096022234	https://leetcode.com/problems/pancake-sorting
548	Available Captures for Rook	EASY	0.7036967165251763	https://leetcode.com/problems/available-captures-for-rook
549	Rotating the Box	MEDIUM	0.7909813050714205	https://leetcode.com/problems/rotating-the-box
550	Falling Squares	HARD	0.4628826064723501	https://leetcode.com/problems/falling-squares
551	Squirrel Simulation	MEDIUM	0.572498298162015	https://leetcode.com/problems/squirrel-simulation
552	Divide Array Into Arrays With Max Difference	MEDIUM	0.785050854640486	https://leetcode.com/problems/divide-array-into-arrays-with-max-difference
553	Generate Tag for Video Caption	EASY	0.3135055575293102	https://leetcode.com/problems/generate-tag-for-video-caption
554	Maximum Difference Between Increasing Elements	EASY	0.6610053682139234	https://leetcode.com/problems/maximum-difference-between-increasing-elements
555	Maximum Difference Between Even and Odd Frequency II	HARD	0.4928720842342105	https://leetcode.com/problems/maximum-difference-between-even-and-odd-frequency-ii
556	Invalid Transactions	MEDIUM	0.3127080304862309	https://leetcode.com/problems/invalid-transactions
557	Students and Examinations	EASY	0.604974385676898	https://leetcode.com/problems/students-and-examinations
558	Max Area of Island	MEDIUM	0.7316416136206765	https://leetcode.com/problems/max-area-of-island
559	Design A Leaderboard	MEDIUM	0.6796263446547431	https://leetcode.com/problems/design-a-leaderboard
560	Minimum Remove to Make Valid Parentheses	MEDIUM	0.7074654274676669	https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses
561	Sum of Two Integers	MEDIUM	0.5368178687075236	https://leetcode.com/problems/sum-of-two-integers
562	Valid Triangle Number	MEDIUM	0.5234449388412803	https://leetcode.com/problems/valid-triangle-number
563	Two City Scheduling	MEDIUM	0.6769210516989099	https://leetcode.com/problems/two-city-scheduling
564	Find in Mountain Array	HARD	0.4048309641569764	https://leetcode.com/problems/find-in-mountain-array
565	Count Subarrays Where Max Element Appears at Least K Times	MEDIUM	0.6250009586845314	https://leetcode.com/problems/count-subarrays-where-max-element-appears-at-least-k-times
566	All Paths From Source to Target	MEDIUM	0.8312447332675658	https://leetcode.com/problems/all-paths-from-source-to-target
567	Design Underground System	MEDIUM	0.7402814844281105	https://leetcode.com/problems/design-underground-system
568	Check if Array Is Sorted and Rotated	EASY	0.5507495223867797	https://leetcode.com/problems/check-if-array-is-sorted-and-rotated
569	Count Good Triplets	EASY	0.8548305888883868	https://leetcode.com/problems/count-good-triplets
570	Count Largest Group	EASY	0.7503976647031062	https://leetcode.com/problems/count-largest-group
571	Binary Tree Vertical Order Traversal	MEDIUM	0.5714118828755629	https://leetcode.com/problems/binary-tree-vertical-order-traversal
572	Count Equal and Divisible Pairs in an Array	EASY	0.8408333300919137	https://leetcode.com/problems/count-equal-and-divisible-pairs-in-an-array
573	Merge Strings Alternately	EASY	0.8222964639886224	https://leetcode.com/problems/merge-strings-alternately
574	Count Unhappy Friends	MEDIUM	0.6205294037914141	https://leetcode.com/problems/count-unhappy-friends
575	Unique Number of Occurrences	EASY	0.7828341214980583	https://leetcode.com/problems/unique-number-of-occurrences
576	Partition Labels	MEDIUM	0.8153346802689039	https://leetcode.com/problems/partition-labels
577	Remove Letter To Equalize Frequency	EASY	0.1820090792824141	https://leetcode.com/problems/remove-letter-to-equalize-frequency
578	Check if Grid can be Cut into Sections	MEDIUM	0.6837973859482197	https://leetcode.com/problems/check-if-grid-can-be-cut-into-sections
579	Summary Ranges	EASY	0.5302484768932422	https://leetcode.com/problems/summary-ranges
580	Maximum Value of an Ordered Triplet II	MEDIUM	0.5666629551274913	https://leetcode.com/problems/maximum-value-of-an-ordered-triplet-ii
581	Recyclable and Low Fat Products	EASY	0.8925494047235137	https://leetcode.com/problems/recyclable-and-low-fat-products
582	Article Views I	EASY	0.7714463570524588	https://leetcode.com/problems/article-views-i
583	H-Index	MEDIUM	0.4028673680316871	https://leetcode.com/problems/h-index
584	Convert Sorted List to Binary Search Tree	MEDIUM	0.6445920225309912	https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree
585	Minimum Number of Groups to Create a Valid Assignment	MEDIUM	0.2398086841075045	https://leetcode.com/problems/minimum-number-of-groups-to-create-a-valid-assignment
586	Count Visited Nodes in a Directed Graph	HARD	0.2894238635035643	https://leetcode.com/problems/count-visited-nodes-in-a-directed-graph
587	Minimize Length of Array Using Operations	MEDIUM	0.3486486486486486	https://leetcode.com/problems/minimize-length-of-array-using-operations
588	Find the Count of Monotonic Pairs II	HARD	0.2300009823504371	https://leetcode.com/problems/find-the-count-of-monotonic-pairs-ii
589	Count Vowel Substrings of a String	EASY	0.7148136172571481	https://leetcode.com/problems/count-vowel-substrings-of-a-string
590	Total Cost to Hire K Workers	MEDIUM	0.4310667498440424	https://leetcode.com/problems/total-cost-to-hire-k-workers
591	Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts	MEDIUM	0.4123031611359338	https://leetcode.com/problems/maximum-area-of-a-piece-of-cake-after-horizontal-and-vertical-cuts
592	Sum of Distances	MEDIUM	0.3125901714694278	https://leetcode.com/problems/sum-of-distances
593	Reverse Words in a String III	EASY	0.8365992603319267	https://leetcode.com/problems/reverse-words-in-a-string-iii
594	Find All Anagrams in a String	MEDIUM	0.5220075091652397	https://leetcode.com/problems/find-all-anagrams-in-a-string
595	Check if All Characters Have Equal Number of Occurrences	EASY	0.7869266398500473	https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences
596	Reconstruct Itinerary	HARD	0.4360560656471098	https://leetcode.com/problems/reconstruct-itinerary
597	Reward Top K Students	MEDIUM	0.4598559663446112	https://leetcode.com/problems/reward-top-k-students
598	Delete Duplicate Folders in System	HARD	0.5378519731628718	https://leetcode.com/problems/delete-duplicate-folders-in-system
599	K Highest Ranked Items Within a Price Range	MEDIUM	0.4482546298489083	https://leetcode.com/problems/k-highest-ranked-items-within-a-price-range
600	Two Out of Three	EASY	0.7658462504348121	https://leetcode.com/problems/two-out-of-three
601	Coloring A Border	MEDIUM	0.498215113583681	https://leetcode.com/problems/coloring-a-border
602	Order Two Columns Independently	MEDIUM	0.6097405900305188	https://leetcode.com/problems/order-two-columns-independently
603	Event Emitter	MEDIUM	0.7448014383989994	https://leetcode.com/problems/event-emitter
604	Redundant Connection	MEDIUM	0.6645611638154983	https://leetcode.com/problems/redundant-connection
605	Diagonal Traverse II	MEDIUM	0.5802072894694427	https://leetcode.com/problems/diagonal-traverse-ii
606	Candy Crush	MEDIUM	0.7737140091942899	https://leetcode.com/problems/candy-crush
607	Basic Calculator III	HARD	0.5246967071057193	https://leetcode.com/problems/basic-calculator-iii
608	Knight Dialer	MEDIUM	0.6120918922213703	https://leetcode.com/problems/knight-dialer
609	Count Strictly Increasing Subarrays	MEDIUM	0.712633953750705	https://leetcode.com/problems/count-strictly-increasing-subarrays
610	Remove Zero Sum Consecutive Nodes from Linked List	MEDIUM	0.5286406766600661	https://leetcode.com/problems/remove-zero-sum-consecutive-nodes-from-linked-list
611	House Robber II	MEDIUM	0.4356271757478365	https://leetcode.com/problems/house-robber-ii
612	Sort List	MEDIUM	0.618074922962942	https://leetcode.com/problems/sort-list
613	Smallest Subsequence of Distinct Characters	MEDIUM	0.6196004562783298	https://leetcode.com/problems/smallest-subsequence-of-distinct-characters
614	Number of Good Leaf Nodes Pairs	MEDIUM	0.7177471264367816	https://leetcode.com/problems/number-of-good-leaf-nodes-pairs
615	Sum Game	MEDIUM	0.4840779387431195	https://leetcode.com/problems/sum-game
616	Delete Operation for Two Strings	MEDIUM	0.6375419207771903	https://leetcode.com/problems/delete-operation-for-two-strings
617	Minimum Area Rectangle	MEDIUM	0.5500425559774781	https://leetcode.com/problems/minimum-area-rectangle
618	Count Binary Substrings	EASY	0.659166376012681	https://leetcode.com/problems/count-binary-substrings
619	Search a 2D Matrix II	MEDIUM	0.5522251243876155	https://leetcode.com/problems/search-a-2d-matrix-ii
620	Sum of Distances in Tree	HARD	0.653395424019089	https://leetcode.com/problems/sum-of-distances-in-tree
621	Open the Lock	MEDIUM	0.6074106348295799	https://leetcode.com/problems/open-the-lock
622	Maximum Value at a Given Index in a Bounded Array	MEDIUM	0.3885428476781023	https://leetcode.com/problems/maximum-value-at-a-given-index-in-a-bounded-array
623	First Day Where You Have Been in All the Rooms	MEDIUM	0.397044607098467	https://leetcode.com/problems/first-day-where-you-have-been-in-all-the-rooms
624	Find All Good Indices	MEDIUM	0.3985184360031191	https://leetcode.com/problems/find-all-good-indices
625	Degree of an Array	EASY	0.5742057825337067	https://leetcode.com/problems/degree-of-an-array
626	Partition to K Equal Sum Subsets	MEDIUM	0.3812602522279146	https://leetcode.com/problems/partition-to-k-equal-sum-subsets
627	Remove Duplicate Letters	MEDIUM	0.5135095841552992	https://leetcode.com/problems/remove-duplicate-letters
628	Trapping Rain Water II	HARD	0.588762524838287	https://leetcode.com/problems/trapping-rain-water-ii
629	Design Memory Allocator	MEDIUM	0.484441262323071	https://leetcode.com/problems/design-memory-allocator
630	Island Perimeter	EASY	0.7353943497919185	https://leetcode.com/problems/island-perimeter
631	Divide a String Into Groups of Size k	EASY	0.674969740982813	https://leetcode.com/problems/divide-a-string-into-groups-of-size-k
632	Reverse Degree of a String	EASY	0.8705975043652314	https://leetcode.com/problems/reverse-degree-of-a-string
633	Count Elements With Maximum Frequency	EASY	0.7792370150792628	https://leetcode.com/problems/count-elements-with-maximum-frequency
634	Number of Unique Subjects Taught by Each Teacher	EASY	0.8935578320377495	https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher
635	Exchange Seats	MEDIUM	0.7270890874290025	https://leetcode.com/problems/exchange-seats
636	Longest Happy String	MEDIUM	0.6546225631378025	https://leetcode.com/problems/longest-happy-string
637	Minimum Operations to Write the Letter Y on a Grid	MEDIUM	0.6194290206869442	https://leetcode.com/problems/minimum-operations-to-write-the-letter-y-on-a-grid
638	Number of Adjacent Elements With the Same Color	MEDIUM	0.5575544433923982	https://leetcode.com/problems/number-of-adjacent-elements-with-the-same-color
639	Longest Continuous Subarray With Absolute Diff Less Than or Equal to Limit	MEDIUM	0.5675056206933196	https://leetcode.com/problems/longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit
640	Split Message Based on Limit	HARD	0.4261603375527427	https://leetcode.com/problems/split-message-based-on-limit
641	Remove Boxes	HARD	0.4829246222061351	https://leetcode.com/problems/remove-boxes
642	Find the Length of the Longest Common Prefix	MEDIUM	0.564161205458434	https://leetcode.com/problems/find-the-length-of-the-longest-common-prefix
643	Number of Flowers in Full Bloom	HARD	0.5717535511066795	https://leetcode.com/problems/number-of-flowers-in-full-bloom
644	Non-overlapping Intervals	MEDIUM	0.5550284035532288	https://leetcode.com/problems/non-overlapping-intervals
645	Count Alternating Subarrays	MEDIUM	0.5631657997941757	https://leetcode.com/problems/count-alternating-subarrays
646	K-diff Pairs in an Array	MEDIUM	0.4465086848861965	https://leetcode.com/problems/k-diff-pairs-in-an-array
647	Get Biggest Three Rhombus Sums in a Grid	MEDIUM	0.4926696126852092	https://leetcode.com/problems/get-biggest-three-rhombus-sums-in-a-grid
648	Binary Tree Paths	EASY	0.6656317661585257	https://leetcode.com/problems/binary-tree-paths
649	Four Divisors	MEDIUM	0.4481659161589702	https://leetcode.com/problems/four-divisors
650	Minimum Absolute Difference Between Elements With Constraint	MEDIUM	0.3406636948984646	https://leetcode.com/problems/minimum-absolute-difference-between-elements-with-constraint
651	Rabbits in Forest	MEDIUM	0.5826704796321077	https://leetcode.com/problems/rabbits-in-forest
652	Counter	EASY	0.8224375327236066	https://leetcode.com/problems/counter
653	Bulls and Cows	MEDIUM	0.5138771783652719	https://leetcode.com/problems/bulls-and-cows
654	Find Mirror Score of a String	MEDIUM	0.3393199271016682	https://leetcode.com/problems/find-mirror-score-of-a-string
655	Minimum Time Difference	MEDIUM	0.623534335935315	https://leetcode.com/problems/minimum-time-difference
656	House Robber IV	MEDIUM	0.6515789686838721	https://leetcode.com/problems/house-robber-iv
657	Maximum Erasure Value	MEDIUM	0.5942006438410263	https://leetcode.com/problems/maximum-erasure-value
658	Non-decreasing Array	MEDIUM	0.2507915184147182	https://leetcode.com/problems/non-decreasing-array
659	Reformat Date	EASY	0.6733924354457822	https://leetcode.com/problems/reformat-date
660	Detonate the Maximum Bombs	MEDIUM	0.492066898115528	https://leetcode.com/problems/detonate-the-maximum-bombs
661	Active Users	MEDIUM	0.3660385155798	https://leetcode.com/problems/active-users
662	Number of Unique Flavors After Sharing K Candies	MEDIUM	0.597080998824099	https://leetcode.com/problems/number-of-unique-flavors-after-sharing-k-candies
663	Lucky Numbers in a Matrix	EASY	0.7990618901629731	https://leetcode.com/problems/lucky-numbers-in-a-matrix
664	Implement Router	MEDIUM	0.2178262846748522	https://leetcode.com/problems/implement-router
665	Max Points on a Line	HARD	0.2895514653845652	https://leetcode.com/problems/max-points-on-a-line
666	Predict the Winner	MEDIUM	0.5574273878146738	https://leetcode.com/problems/predict-the-winner
667	Find Third Transaction	MEDIUM	0.5385959339263025	https://leetcode.com/problems/find-third-transaction
668	Stone Game	MEDIUM	0.7160996447704545	https://leetcode.com/problems/stone-game
669	Number of Valid Words in a Sentence	EASY	0.2999482504677361	https://leetcode.com/problems/number-of-valid-words-in-a-sentence
670	Strange Printer	HARD	0.6077822803097354	https://leetcode.com/problems/strange-printer
671	Expressive Words	MEDIUM	0.4639251808359201	https://leetcode.com/problems/expressive-words
672	Count of Integers	HARD	0.3705763284916699	https://leetcode.com/problems/count-of-integers
673	Find Minimum in Rotated Sorted Array	MEDIUM	0.526482393510494	https://leetcode.com/problems/find-minimum-in-rotated-sorted-array
674	Find the Largest Area of Square Inside Two Rectangles	MEDIUM	0.4506096668270135	https://leetcode.com/problems/find-the-largest-area-of-square-inside-two-rectangles
675	Check if Binary String Has at Most One Segment of Ones	EASY	0.3902918338056159	https://leetcode.com/problems/check-if-binary-string-has-at-most-one-segment-of-ones
676	Sum of k-Mirror Numbers	HARD	0.4198277164878343	https://leetcode.com/problems/sum-of-k-mirror-numbers
677	Design Browser History	MEDIUM	0.7774686768883133	https://leetcode.com/problems/design-browser-history
678	Minimum Cost to Make Array Equal	HARD	0.4632379781368273	https://leetcode.com/problems/minimum-cost-to-make-array-equal
679	Beautiful Arrangement	MEDIUM	0.6452784543104094	https://leetcode.com/problems/beautiful-arrangement
680	Remove K Digits	MEDIUM	0.3494044611317414	https://leetcode.com/problems/remove-k-digits
681	Longest Palindromic Subsequence	MEDIUM	0.6409934421654807	https://leetcode.com/problems/longest-palindromic-subsequence
682	Maximum Product of Two Elements in an Array	EASY	0.8322491861778356	https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array
683	Number of Equal Count Substrings	MEDIUM	0.4466388150398784	https://leetcode.com/problems/number-of-equal-count-substrings
684	Two Sum IV - Input is a BST	EASY	0.6221872185096279	https://leetcode.com/problems/two-sum-iv-input-is-a-bst
685	Count Palindromic Subsequences	HARD	0.3930934242181234	https://leetcode.com/problems/count-palindromic-subsequences
686	Meeting Scheduler	MEDIUM	0.5522977372018112	https://leetcode.com/problems/meeting-scheduler
687	Longest Non-decreasing Subarray From Two Arrays	MEDIUM	0.2981855832758111	https://leetcode.com/problems/longest-non-decreasing-subarray-from-two-arrays
688	Minimum Knight Moves	MEDIUM	0.4132915677780459	https://leetcode.com/problems/minimum-knight-moves
689	Minimum Operations to Make Numbers Non-positive	HARD	0.4220088242927589	https://leetcode.com/problems/minimum-operations-to-make-numbers-non-positive
690	Number of Good Binary Strings	MEDIUM	0.5249371022643184	https://leetcode.com/problems/number-of-good-binary-strings
691	Length of Longest Subarray With at Most K Frequency	MEDIUM	0.5577122271225969	https://leetcode.com/problems/length-of-longest-subarray-with-at-most-k-frequency
692	Couples Holding Hands	HARD	0.5839613387880093	https://leetcode.com/problems/couples-holding-hands
693	Robot Room Cleaner	HARD	0.7752279751307165	https://leetcode.com/problems/robot-room-cleaner
694	Design Search Autocomplete System	HARD	0.4940635941634056	https://leetcode.com/problems/design-search-autocomplete-system
695	Maximum Total Damage With Spell Casting	MEDIUM	0.2774327122153209	https://leetcode.com/problems/maximum-total-damage-with-spell-casting
696	Best Position for a Service Centre	HARD	0.3487944380444229	https://leetcode.com/problems/best-position-for-a-service-centre
697	Maximum Length of Repeated Subarray	MEDIUM	0.5101333414238255	https://leetcode.com/problems/maximum-length-of-repeated-subarray
698	Sort Items by Groups Respecting Dependencies	HARD	0.6563638142659898	https://leetcode.com/problems/sort-items-by-groups-respecting-dependencies
699	Minimum Height Trees	MEDIUM	0.4201441291148571	https://leetcode.com/problems/minimum-height-trees
700	Count Ways To Build Good Strings	MEDIUM	0.592145182134194	https://leetcode.com/problems/count-ways-to-build-good-strings
701	Minimum Costs Using the Train Line	HARD	0.7759452936444088	https://leetcode.com/problems/minimum-costs-using-the-train-line
702	Transform to Chessboard	HARD	0.5055323081662516	https://leetcode.com/problems/transform-to-chessboard
703	Count Number of Maximum Bitwise-OR Subsets	MEDIUM	0.8794639313734468	https://leetcode.com/problems/count-number-of-maximum-bitwise-or-subsets
704	Word Ladder II	HARD	0.2715259291580063	https://leetcode.com/problems/word-ladder-ii
705	Consecutive Numbers Sum	HARD	0.420202765468534	https://leetcode.com/problems/consecutive-numbers-sum
706	Design Front Middle Back Queue	MEDIUM	0.5626833592193408	https://leetcode.com/problems/design-front-middle-back-queue
707	Paint House	MEDIUM	0.6373080782394743	https://leetcode.com/problems/paint-house
708	Rank Transform of a Matrix	HARD	0.4142347814604516	https://leetcode.com/problems/rank-transform-of-a-matrix
709	Populating Next Right Pointers in Each Node II	MEDIUM	0.5556620212908557	https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii
710	First Completely Painted Row or Column	MEDIUM	0.6392151838043829	https://leetcode.com/problems/first-completely-painted-row-or-column
711	The Skyline Problem	HARD	0.4396233271583687	https://leetcode.com/problems/the-skyline-problem
712	Subarray Sums Divisible by K	MEDIUM	0.5561771980621089	https://leetcode.com/problems/subarray-sums-divisible-by-k
713	Knight Probability in Chessboard	MEDIUM	0.5659459211311573	https://leetcode.com/problems/knight-probability-in-chessboard
714	Egg Drop With 2 Eggs and N Floors	MEDIUM	0.7373311247994203	https://leetcode.com/problems/egg-drop-with-2-eggs-and-n-floors
715	Number of Visible People in a Queue	HARD	0.7129705142972448	https://leetcode.com/problems/number-of-visible-people-in-a-queue
716	Check if Strings Can be Made Equal With Operations I	EASY	0.470779474689696	https://leetcode.com/problems/check-if-strings-can-be-made-equal-with-operations-i
717	Check if Strings Can be Made Equal With Operations II	MEDIUM	0.5522769560396188	https://leetcode.com/problems/check-if-strings-can-be-made-equal-with-operations-ii
718	Maximum Performance of a Team	HARD	0.4751514702683188	https://leetcode.com/problems/maximum-performance-of-a-team
719	Find All Groups of Farmland	MEDIUM	0.7548102383053839	https://leetcode.com/problems/find-all-groups-of-farmland
720	Create Binary Tree From Descriptions	MEDIUM	0.8164001540301169	https://leetcode.com/problems/create-binary-tree-from-descriptions
721	Group Employees of the Same Salary	MEDIUM	0.6631807047296024	https://leetcode.com/problems/group-employees-of-the-same-salary
722	Minimum Cost to Make at Least One Valid Path in a Grid	HARD	0.7070138694964163	https://leetcode.com/problems/minimum-cost-to-make-at-least-one-valid-path-in-a-grid
723	Number Complement	EASY	0.7033055757403649	https://leetcode.com/problems/number-complement
724	Complement of Base 10 Integer	EASY	0.6070765922229309	https://leetcode.com/problems/complement-of-base-10-integer
725	Lexicographically Smallest Equivalent String	MEDIUM	0.8102597266735775	https://leetcode.com/problems/lexicographically-smallest-equivalent-string
726	Reaching Points	HARD	0.336468882434809	https://leetcode.com/problems/reaching-points
727	Design a Stack With Increment Operation	MEDIUM	0.8013123593723671	https://leetcode.com/problems/design-a-stack-with-increment-operation
728	Count Subarrays of Length Three With a Condition	EASY	0.6194995076327956	https://leetcode.com/problems/count-subarrays-of-length-three-with-a-condition
729	Managers with at Least 5 Direct Reports	MEDIUM	0.4893967724084875	https://leetcode.com/problems/managers-with-at-least-5-direct-reports
730	Smallest Value of the Rearranged Number	MEDIUM	0.5272832058073377	https://leetcode.com/problems/smallest-value-of-the-rearranged-number
731	Product Sales Analysis I	EASY	0.845858108004177	https://leetcode.com/problems/product-sales-analysis-i
732	Path With Minimum Effort	MEDIUM	0.61418869074625	https://leetcode.com/problems/path-with-minimum-effort
733	Zigzag Iterator	MEDIUM	0.6575715893460048	https://leetcode.com/problems/zigzag-iterator
734	Check if There is a Valid Partition For The Array	MEDIUM	0.5196995580140459	https://leetcode.com/problems/check-if-there-is-a-valid-partition-for-the-array
735	Decode the Message	EASY	0.8541555470834922	https://leetcode.com/problems/decode-the-message
736	Number of Orders in the Backlog	MEDIUM	0.5196292359051828	https://leetcode.com/problems/number-of-orders-in-the-backlog
737	Reach a Number	MEDIUM	0.4389583072143981	https://leetcode.com/problems/reach-a-number
738	Number of Longest Increasing Subsequence	MEDIUM	0.499092190741395	https://leetcode.com/problems/number-of-longest-increasing-subsequence
739	Count Unreachable Pairs of Nodes in an Undirected Graph	MEDIUM	0.4933856658460681	https://leetcode.com/problems/count-unreachable-pairs-of-nodes-in-an-undirected-graph
740	Total Distance Traveled	EASY	0.4016833878179837	https://leetcode.com/problems/total-distance-traveled
741	Camelcase Matching	MEDIUM	0.63780016867149	https://leetcode.com/problems/camelcase-matching
742	Subtree of Another Tree	EASY	0.4998476418026165	https://leetcode.com/problems/subtree-of-another-tree
743	Design Authentication Manager	MEDIUM	0.5785379503322841	https://leetcode.com/problems/design-authentication-manager
744	Debounce	MEDIUM	0.9181616559881716	https://leetcode.com/problems/debounce
745	Count Subarrays With Median K	HARD	0.4553062885040102	https://leetcode.com/problems/count-subarrays-with-median-k
746	Minimum Time to Eat All Grains	HARD	0.3928338762214983	https://leetcode.com/problems/minimum-time-to-eat-all-grains
747	Number of Atoms	HARD	0.6500029349858701	https://leetcode.com/problems/number-of-atoms
748	Transpose Matrix	EASY	0.7433303551988469	https://leetcode.com/problems/transpose-matrix
749	Shortest Bridge	MEDIUM	0.5864849244498144	https://leetcode.com/problems/shortest-bridge
750	Shopping Offers	MEDIUM	0.5190263317700597	https://leetcode.com/problems/shopping-offers
751	Snapshot Array	MEDIUM	0.3666537538924564	https://leetcode.com/problems/snapshot-array
752	Longest Repeating Substring	MEDIUM	0.6306457934659812	https://leetcode.com/problems/longest-repeating-substring
753	Longest Duplicate Substring	HARD	0.3079820333128984	https://leetcode.com/problems/longest-duplicate-substring
754	Design Twitter	MEDIUM	0.4265238051053148	https://leetcode.com/problems/design-twitter
755	Split BST	MEDIUM	0.8241178043129567	https://leetcode.com/problems/split-bst
756	Increasing Triplet Subsequence	MEDIUM	0.3912497382273071	https://leetcode.com/problems/increasing-triplet-subsequence
757	Range Module	HARD	0.4419888641888101	https://leetcode.com/problems/range-module
758	Maximum Number of Tasks You Can Assign	HARD	0.506049588007545	https://leetcode.com/problems/maximum-number-of-tasks-you-can-assign
759	Distinct Subsequences	HARD	0.5009993949952919	https://leetcode.com/problems/distinct-subsequences
760	Buildings With an Ocean View	MEDIUM	0.807697531670367	https://leetcode.com/problems/buildings-with-an-ocean-view
761	Minimum Moves to Equal Array Elements	MEDIUM	0.577055426913269	https://leetcode.com/problems/minimum-moves-to-equal-array-elements
762	Minimum Increment to Make Array Unique	MEDIUM	0.603327781549441	https://leetcode.com/problems/minimum-increment-to-make-array-unique
763	Special Binary String	HARD	0.6351153721156971	https://leetcode.com/problems/special-binary-string
764	Number of Music Playlists	HARD	0.5997531912847676	https://leetcode.com/problems/number-of-music-playlists
765	Highest Grade For Each Student	MEDIUM	0.7112558614059526	https://leetcode.com/problems/highest-grade-for-each-student
766	Frequency of the Most Frequent Element	MEDIUM	0.4410334035974388	https://leetcode.com/problems/frequency-of-the-most-frequent-element
767	Monotone Increasing Digits	MEDIUM	0.4872377608676912	https://leetcode.com/problems/monotone-increasing-digits
768	Ransom Note	EASY	0.6452386002541316	https://leetcode.com/problems/ransom-note
769	Encode and Decode Strings	MEDIUM	0.4969946007931578	https://leetcode.com/problems/encode-and-decode-strings
770	Unique Paths III	HARD	0.8233339994005395	https://leetcode.com/problems/unique-paths-iii
771	Synonymous Sentences	MEDIUM	0.5657701813916468	https://leetcode.com/problems/synonymous-sentences
772	Minimum Moves to Make Array Complementary	MEDIUM	0.4216836919510251	https://leetcode.com/problems/minimum-moves-to-make-array-complementary
773	Number of Great Partitions	HARD	0.3226402936149945	https://leetcode.com/problems/number-of-great-partitions
774	Step-By-Step Directions From a Binary Tree Node to Another	MEDIUM	0.5630838477366256	https://leetcode.com/problems/step-by-step-directions-from-a-binary-tree-node-to-another
775	Smallest Range Covering Elements from K Lists	HARD	0.6974692747987687	https://leetcode.com/problems/smallest-range-covering-elements-from-k-lists
776	Web Crawler Multithreaded	MEDIUM	0.5009673573880699	https://leetcode.com/problems/web-crawler-multithreaded
777	Count Integers in Intervals	HARD	0.3416125060841183	https://leetcode.com/problems/count-integers-in-intervals
778	Longest Mountain in Array	MEDIUM	0.4107832017720806	https://leetcode.com/problems/longest-mountain-in-array
779	Second Degree Follower	MEDIUM	0.3999676139583839	https://leetcode.com/problems/second-degree-follower
780	Finding Pairs With a Certain Sum	MEDIUM	0.491882680060992	https://leetcode.com/problems/finding-pairs-with-a-certain-sum
781	Data Stream as Disjoint Intervals	HARD	0.5950108773030263	https://leetcode.com/problems/data-stream-as-disjoint-intervals
782	Closest Leaf in a Binary Tree	MEDIUM	0.4704793196402153	https://leetcode.com/problems/closest-leaf-in-a-binary-tree
783	Longest Palindrome by Concatenating Two Letter Words	MEDIUM	0.5370286650749474	https://leetcode.com/problems/longest-palindrome-by-concatenating-two-letter-words
784	Valid Word Abbreviation	EASY	0.3685165676961013	https://leetcode.com/problems/valid-word-abbreviation
785	Maximum Depth of N-ary Tree	EASY	0.7293402984873072	https://leetcode.com/problems/maximum-depth-of-n-ary-tree
786	Most Common Word	EASY	0.4457668953194325	https://leetcode.com/problems/most-common-word
787	People Whose List of Favorite Companies Is Not a Subset of Another List	MEDIUM	0.5940981861048789	https://leetcode.com/problems/people-whose-list-of-favorite-companies-is-not-a-subset-of-another-list
788	Maximum Vacation Days	HARD	0.4638178019415682	https://leetcode.com/problems/maximum-vacation-days
789	Check If It Is a Straight Line	EASY	0.3970238997875605	https://leetcode.com/problems/check-if-it-is-a-straight-line
790	Binary Search Tree to Greater Sum Tree	MEDIUM	0.8827398009436621	https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree
791	Odd String Difference	EASY	0.6106046482233423	https://leetcode.com/problems/odd-string-difference
792	Greatest Common Divisor of Strings	EASY	0.5272391455645378	https://leetcode.com/problems/greatest-common-divisor-of-strings
793	Maximum Building Height	HARD	0.3747919768765875	https://leetcode.com/problems/maximum-building-height
794	Spiral Matrix III	MEDIUM	0.8447629503336554	https://leetcode.com/problems/spiral-matrix-iii
795	Binary Tree Cameras	HARD	0.4718257360539049	https://leetcode.com/problems/binary-tree-cameras
796	Find Minimum Cost to Remove Array Elements	MEDIUM	0.1850419468078776	https://leetcode.com/problems/find-minimum-cost-to-remove-array-elements
797	Put Marbles in Bags	HARD	0.72440073755378	https://leetcode.com/problems/put-marbles-in-bags
798	Maximum Points Tourist Can Earn	MEDIUM	0.461489743499525	https://leetcode.com/problems/maximum-points-tourist-can-earn
799	Minimum Runes to Add to Cast Spell	HARD	0.4258649093904448	https://leetcode.com/problems/minimum-runes-to-add-to-cast-spell
800	Minimize Connected Groups by Inserting Interval	MEDIUM	0.5035282258064516	https://leetcode.com/problems/minimize-connected-groups-by-inserting-interval
801	Find Peak Calling Hours for Each City	MEDIUM	0.6175086929842504	https://leetcode.com/problems/find-peak-calling-hours-for-each-city
802	Count the Number of Incremovable Subarrays II	HARD	0.3898850394318673	https://leetcode.com/problems/count-the-number-of-incremovable-subarrays-ii
803	Minimum Size Subarray in Infinite Array	MEDIUM	0.3120843874856566	https://leetcode.com/problems/minimum-size-subarray-in-infinite-array
804	K-th Smallest in Lexicographical Order	HARD	0.4590489282185661	https://leetcode.com/problems/k-th-smallest-in-lexicographical-order
805	Painting the Walls	HARD	0.4851847868464569	https://leetcode.com/problems/painting-the-walls
806	Removing Minimum Number of Magic Beans	MEDIUM	0.436300971680093	https://leetcode.com/problems/removing-minimum-number-of-magic-beans
807	Minimum Number of Pushes to Type Word II	MEDIUM	0.79904918551877	https://leetcode.com/problems/minimum-number-of-pushes-to-type-word-ii
808	Maximum Subsequence Score	MEDIUM	0.5425202702418993	https://leetcode.com/problems/maximum-subsequence-score
809	Average Waiting Time	MEDIUM	0.7305169732865104	https://leetcode.com/problems/average-waiting-time
810	Max Number of K-Sum Pairs	MEDIUM	0.5626723988820814	https://leetcode.com/problems/max-number-of-k-sum-pairs
811	Minimum Cost Walk in Weighted Graph	HARD	0.6851442735134845	https://leetcode.com/problems/minimum-cost-walk-in-weighted-graph
812	Number of Wonderful Substrings	MEDIUM	0.6664800055231243	https://leetcode.com/problems/number-of-wonderful-substrings
813	Relative Sort Array	EASY	0.7492037718091799	https://leetcode.com/problems/relative-sort-array
814	Min Cost to Connect All Points	MEDIUM	0.6902176550628305	https://leetcode.com/problems/min-cost-to-connect-all-points
815	Query Kth Smallest Trimmed Number	MEDIUM	0.4557405560244507	https://leetcode.com/problems/query-kth-smallest-trimmed-number
816	Maximum Strength of K Disjoint Subarrays	HARD	0.2678887164868473	https://leetcode.com/problems/maximum-strength-of-k-disjoint-subarrays
817	Maximum OR	MEDIUM	0.4126409927902127	https://leetcode.com/problems/maximum-or
818	Equal Row and Column Pairs	MEDIUM	0.7050904124874572	https://leetcode.com/problems/equal-row-and-column-pairs
819	Kth Smallest Number in Multiplication Table	HARD	0.5287483212274201	https://leetcode.com/problems/kth-smallest-number-in-multiplication-table
820	Maximum Points After Collecting Coins From All Nodes	HARD	0.3575553600795502	https://leetcode.com/problems/maximum-points-after-collecting-coins-from-all-nodes
821	Median of a Row Wise Sorted Matrix	MEDIUM	0.697513421870585	https://leetcode.com/problems/median-of-a-row-wise-sorted-matrix
822	Greatest Sum Divisible by Three	MEDIUM	0.509215065450593	https://leetcode.com/problems/greatest-sum-divisible-by-three
823	Maximum Number of Points with Cost	MEDIUM	0.421347771439621	https://leetcode.com/problems/maximum-number-of-points-with-cost
824	Shortest Subarray to be Removed to Make Array Sorted	MEDIUM	0.514303641858321	https://leetcode.com/problems/shortest-subarray-to-be-removed-to-make-array-sorted
825	Find the Shortest Superstring	HARD	0.4430433414937703	https://leetcode.com/problems/find-the-shortest-superstring
826	Maximum Points You Can Obtain from Cards	MEDIUM	0.5563702302112898	https://leetcode.com/problems/maximum-points-you-can-obtain-from-cards
827	Implement Rand10() Using Rand7()	MEDIUM	0.4585972286873645	https://leetcode.com/problems/implement-rand10-using-rand7
828	Minimum Number of Visited Cells in a Grid	HARD	0.2276572430418584	https://leetcode.com/problems/minimum-number-of-visited-cells-in-a-grid
829	Number of Ways to Reorder Array to Get Same BST	HARD	0.5362005754802391	https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst
830	Maximum Deletions on a String	HARD	0.3456476513741377	https://leetcode.com/problems/maximum-deletions-on-a-string
831	Determine the Winner of a Bowling Game	EASY	0.357596387879643	https://leetcode.com/problems/determine-the-winner-of-a-bowling-game
832	Largest 1-Bordered Square	MEDIUM	0.5109808899476603	https://leetcode.com/problems/largest-1-bordered-square
833	All Nodes Distance K in Binary Tree	MEDIUM	0.6644216677823813	https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree
834	Make Costs of Paths Equal in a Binary Tree	MEDIUM	0.5674790143514757	https://leetcode.com/problems/make-costs-of-paths-equal-in-a-binary-tree
835	Implement Stack using Queues	EASY	0.6733897915056893	https://leetcode.com/problems/implement-stack-using-queues
836	Shortest String That Contains Three Strings	MEDIUM	0.3074737385913552	https://leetcode.com/problems/shortest-string-that-contains-three-strings
837	Number of Substrings Containing All Three Characters	MEDIUM	0.7317133743793961	https://leetcode.com/problems/number-of-substrings-containing-all-three-characters
838	Minimum Deletions to Make String K-Special	MEDIUM	0.4473010725379491	https://leetcode.com/problems/minimum-deletions-to-make-string-k-special
839	Find the Sum of the Power of All Subsequences	HARD	0.3658703363391598	https://leetcode.com/problems/find-the-sum-of-the-power-of-all-subsequences
840	Number of Subarrays With AND Value of K	HARD	0.3385943612572507	https://leetcode.com/problems/number-of-subarrays-with-and-value-of-k
841	Find the Maximum Divisibility Score	EASY	0.5045592705167173	https://leetcode.com/problems/find-the-maximum-divisibility-score
842	Take Gifts From the Richest Pile	EASY	0.7562443860270789	https://leetcode.com/problems/take-gifts-from-the-richest-pile
843	Swim in Rising Water	HARD	0.6285262869935629	https://leetcode.com/problems/swim-in-rising-water
844	Max Sum of Rectangle No Larger Than K	HARD	0.4467756978215975	https://leetcode.com/problems/max-sum-of-rectangle-no-larger-than-k
845	Furthest Building You Can Reach	MEDIUM	0.5037126005703128	https://leetcode.com/problems/furthest-building-you-can-reach
846	Consecutive Numbers	MEDIUM	0.4609716905528051	https://leetcode.com/problems/consecutive-numbers
847	Find Words Containing Character	EASY	0.906407278358498	https://leetcode.com/problems/find-words-containing-character
848	Vertical Order Traversal of a Binary Tree	HARD	0.5133055579720943	https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree
849	Count Number of Nice Subarrays	MEDIUM	0.7321007455952697	https://leetcode.com/problems/count-number-of-nice-subarrays
850	Remove Invalid Parentheses	HARD	0.4923142983365193	https://leetcode.com/problems/remove-invalid-parentheses
851	Delete Duplicate Emails	EASY	0.6432529647276789	https://leetcode.com/problems/delete-duplicate-emails
852	Minimum Time to Repair Cars	MEDIUM	0.5991672990715053	https://leetcode.com/problems/minimum-time-to-repair-cars
853	Change Null Values in a Table to the Previous Value	MEDIUM	0.5152052486922599	https://leetcode.com/problems/change-null-values-in-a-table-to-the-previous-value
854	Find Customer Referee	EASY	0.7170904181686228	https://leetcode.com/problems/find-customer-referee
855	Different Ways to Add Parentheses	MEDIUM	0.7235410628420519	https://leetcode.com/problems/different-ways-to-add-parentheses
856	Minimize the Difference Between Target and Chosen Elements	MEDIUM	0.3587066177158844	https://leetcode.com/problems/minimize-the-difference-between-target-and-chosen-elements
857	Smallest K-Length Subsequence With Occurrences of a Letter	HARD	0.3886850152905198	https://leetcode.com/problems/smallest-k-length-subsequence-with-occurrences-of-a-letter
858	Robot Collisions	HARD	0.5610641049690483	https://leetcode.com/problems/robot-collisions
859	Collecting Chocolates	MEDIUM	0.3362275010975074	https://leetcode.com/problems/collecting-chocolates
860	Maximum Running Time of N Computers	HARD	0.4984652362617595	https://leetcode.com/problems/maximum-running-time-of-n-computers
861	Maximum Fruits Harvested After at Most K Steps	HARD	0.3651762852077999	https://leetcode.com/problems/maximum-fruits-harvested-after-at-most-k-steps
862	Apply Operations to Maximize Frequency Score	HARD	0.3633111220428424	https://leetcode.com/problems/apply-operations-to-maximize-frequency-score
863	Maximum Coins Heroes Can Collect	MEDIUM	0.6841622503057481	https://leetcode.com/problems/maximum-coins-heroes-can-collect
864	Minimum Operations to Make the Array Increasing	EASY	0.8111434784392566	https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing
865	Minimum Operations to Collect Elements	EASY	0.6113210197345319	https://leetcode.com/problems/minimum-operations-to-collect-elements
866	Pour Water Between Buckets to Make Water Levels Equal	MEDIUM	0.6714846169729508	https://leetcode.com/problems/pour-water-between-buckets-to-make-water-levels-equal
867	Fruit Into Baskets	MEDIUM	0.4642786690056997	https://leetcode.com/problems/fruit-into-baskets
868	Minimize Manhattan Distances	HARD	0.3149616576929352	https://leetcode.com/problems/minimize-manhattan-distances
869	Check If Array Pairs Are Divisible by k	MEDIUM	0.4620177944733665	https://leetcode.com/problems/check-if-array-pairs-are-divisible-by-k
870	Strong Password Checker	HARD	0.1462254154266798	https://leetcode.com/problems/strong-password-checker
871	Difference Between Maximum and Minimum Price Sum	HARD	0.3183270902780164	https://leetcode.com/problems/difference-between-maximum-and-minimum-price-sum
872	Find Longest Awesome Substring	HARD	0.4524148811644358	https://leetcode.com/problems/find-longest-awesome-substring
873	Maximum XOR of Two Non-Overlapping Subtrees	HARD	0.4955277280858676	https://leetcode.com/problems/maximum-xor-of-two-non-overlapping-subtrees
874	Minimum Cost to Buy Apples	MEDIUM	0.671071953010279	https://leetcode.com/problems/minimum-cost-to-buy-apples
875	Largest Submatrix With Rearrangements	MEDIUM	0.7517110676865972	https://leetcode.com/problems/largest-submatrix-with-rearrangements
876	Find the Winner of an Array Game	MEDIUM	0.567408906882591	https://leetcode.com/problems/find-the-winner-of-an-array-game
877	Number of Sub-arrays With Odd Sum	MEDIUM	0.560402376129768	https://leetcode.com/problems/number-of-sub-arrays-with-odd-sum
878	Excel Sheet Column Number	EASY	0.6575291475554931	https://leetcode.com/problems/excel-sheet-column-number
879	Reorder Routes to Make All Paths Lead to the City Zero	MEDIUM	0.6503424773250566	https://leetcode.com/problems/reorder-routes-to-make-all-paths-lead-to-the-city-zero
880	Palindrome Permutation	EASY	0.6850934894703868	https://leetcode.com/problems/palindrome-permutation
881	IPO	HARD	0.5302045214082566	https://leetcode.com/problems/ipo
882	Optimal Partition of String	MEDIUM	0.7822723454148762	https://leetcode.com/problems/optimal-partition-of-string
883	Count Good Nodes in Binary Tree	MEDIUM	0.7349971749721809	https://leetcode.com/problems/count-good-nodes-in-binary-tree
884	Walls and Gates	MEDIUM	0.6296791509568449	https://leetcode.com/problems/walls-and-gates
885	Next Greater Element III	MEDIUM	0.3458663140376646	https://leetcode.com/problems/next-greater-element-iii
886	Single-Threaded CPU	MEDIUM	0.4648191183347267	https://leetcode.com/problems/single-threaded-cpu
887	Count Nodes With the Highest Score	MEDIUM	0.5126480395538692	https://leetcode.com/problems/count-nodes-with-the-highest-score
888	Minimum Number of Steps to Make Two Strings Anagram	MEDIUM	0.8215204393310427	https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram
889	Minimize Malware Spread	HARD	0.4244718413272332	https://leetcode.com/problems/minimize-malware-spread
890	Check if One String Swap Can Make Strings Equal	EASY	0.4945324577226417	https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal
891	Most Profit Assigning Work	MEDIUM	0.5593843602581683	https://leetcode.com/problems/most-profit-assigning-work
892	Ways to Make a Fair Array	MEDIUM	0.644989189340971	https://leetcode.com/problems/ways-to-make-a-fair-array
893	Buddy Strings	EASY	0.3364396985632856	https://leetcode.com/problems/buddy-strings
894	Find Nearest Point That Has the Same X or Y Coordinate	EASY	0.6943535233007477	https://leetcode.com/problems/find-nearest-point-that-has-the-same-x-or-y-coordinate
895	Count Sub Islands	MEDIUM	0.728263014007497	https://leetcode.com/problems/count-sub-islands
896	Maximum Gap	MEDIUM	0.4935672348350227	https://leetcode.com/problems/maximum-gap
897	Shortest Path to Get Food	MEDIUM	0.5669343417278341	https://leetcode.com/problems/shortest-path-to-get-food
898	Find the Celebrity	MEDIUM	0.4843840356335517	https://leetcode.com/problems/find-the-celebrity
899	Immediate Food Delivery II	MEDIUM	0.5431590135558603	https://leetcode.com/problems/immediate-food-delivery-ii
900	Immediate Food Delivery I	EASY	0.8091076226842031	https://leetcode.com/problems/immediate-food-delivery-i
901	Task Scheduler II	MEDIUM	0.5397256916203358	https://leetcode.com/problems/task-scheduler-ii
902	Implement Trie II (Prefix Tree)	MEDIUM	0.6308755998142511	https://leetcode.com/problems/implement-trie-ii-prefix-tree
903	Counting Words With a Given Prefix	EASY	0.8452511492869518	https://leetcode.com/problems/counting-words-with-a-given-prefix
904	Number of Closed Islands	MEDIUM	0.6670954007184992	https://leetcode.com/problems/number-of-closed-islands
905	Interval List Intersections	MEDIUM	0.7267720917127461	https://leetcode.com/problems/interval-list-intersections
906	Subsequence With the Minimum Score	HARD	0.326135438422599	https://leetcode.com/problems/subsequence-with-the-minimum-score
907	Mice and Cheese	MEDIUM	0.4730146436613456	https://leetcode.com/problems/mice-and-cheese
908	Path With Maximum Minimum Value	MEDIUM	0.5412731529408017	https://leetcode.com/problems/path-with-maximum-minimum-value
909	Diameter of N-Ary Tree	MEDIUM	0.7519435365202558	https://leetcode.com/problems/diameter-of-n-ary-tree
910	Similar String Groups	HARD	0.5538086793196406	https://leetcode.com/problems/similar-string-groups
911	Brace Expansion	MEDIUM	0.6672212978369384	https://leetcode.com/problems/brace-expansion
912	K-Similar Strings	HARD	0.400472407129053	https://leetcode.com/problems/k-similar-strings
913	Set Intersection Size At Least Two	HARD	0.4525535198979934	https://leetcode.com/problems/set-intersection-size-at-least-two
914	Partition Equal Subset Sum	MEDIUM	0.4844393368677416	https://leetcode.com/problems/partition-equal-subset-sum
915	Shortest Common Supersequence	HARD	0.6132098086836925	https://leetcode.com/problems/shortest-common-supersequence
916	Minimum Falling Path Sum	MEDIUM	0.6143995522039412	https://leetcode.com/problems/minimum-falling-path-sum
917	Final Prices With a Special Discount in a Shop	EASY	0.8330161578030366	https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop
918	Number of Ways to Select Buildings	MEDIUM	0.5047505427656327	https://leetcode.com/problems/number-of-ways-to-select-buildings
919	Minimum Number of Increments on Subarrays to Form a Target Array	HARD	0.724276749873114	https://leetcode.com/problems/minimum-number-of-increments-on-subarrays-to-form-a-target-array
920	Seat Reservation Manager	MEDIUM	0.6639500226519469	https://leetcode.com/problems/seat-reservation-manager
921	Web Crawler	MEDIUM	0.6876521792062333	https://leetcode.com/problems/web-crawler
922	Grid Illumination	HARD	0.3804456061737615	https://leetcode.com/problems/grid-illumination
923	Minimize Malware Spread II	HARD	0.4464651170529608	https://leetcode.com/problems/minimize-malware-spread-ii
924	Word Pattern	EASY	0.4306076461166752	https://leetcode.com/problems/word-pattern
925	Word Pattern II	MEDIUM	0.4860240848819029	https://leetcode.com/problems/word-pattern-ii
926	Number of Valid Words for Each Puzzle	HARD	0.471197042934319	https://leetcode.com/problems/number-of-valid-words-for-each-puzzle
927	Check If It Is a Good Array	HARD	0.6136037655804933	https://leetcode.com/problems/check-if-it-is-a-good-array
928	Number of Islands II	HARD	0.4012700022922468	https://leetcode.com/problems/number-of-islands-ii
929	Maximize Sum Of Array After K Negations	EASY	0.5238275789608325	https://leetcode.com/problems/maximize-sum-of-array-after-k-negations
930	Maximize Score After Pair Deletions	MEDIUM	0.6062992125984252	https://leetcode.com/problems/maximize-score-after-pair-deletions
931	Maximal Network Rank	MEDIUM	0.6547542413356314	https://leetcode.com/problems/maximal-network-rank
932	Subsequence of Size K With the Largest Even Sum	MEDIUM	0.3559148936170213	https://leetcode.com/problems/subsequence-of-size-k-with-the-largest-even-sum
933	Counting Elements	EASY	0.6046223903768713	https://leetcode.com/problems/counting-elements
934	Find All Good Strings	HARD	0.4370181344337062	https://leetcode.com/problems/find-all-good-strings
935	Number of Distinct Substrings in a String	MEDIUM	0.6454241948153967	https://leetcode.com/problems/number-of-distinct-substrings-in-a-string
936	Number of Ways to Form a Target String Given a Dictionary	HARD	0.5706421937156789	https://leetcode.com/problems/number-of-ways-to-form-a-target-string-given-a-dictionary
937	Stone Game VII	MEDIUM	0.5832279630840782	https://leetcode.com/problems/stone-game-vii
938	Count Complete Tree Nodes	EASY	0.6996765512992228	https://leetcode.com/problems/count-complete-tree-nodes
939	Encrypt and Decrypt Strings	HARD	0.3689486493650449	https://leetcode.com/problems/encrypt-and-decrypt-strings
940	Minimum Number of People to Teach	MEDIUM	0.4370178957112002	https://leetcode.com/problems/minimum-number-of-people-to-teach
941	K Radius Subarray Averages	MEDIUM	0.4595762325330679	https://leetcode.com/problems/k-radius-subarray-averages
942	Sort Array By Parity	EASY	0.7632307011030572	https://leetcode.com/problems/sort-array-by-parity
943	Matchsticks to Square	MEDIUM	0.4090607706354298	https://leetcode.com/problems/matchsticks-to-square
944	Longest ZigZag Path in a Binary Tree	MEDIUM	0.6663336087466134	https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree
945	Binary Gap	EASY	0.6465506874574097	https://leetcode.com/problems/binary-gap
946	Alternating Digit Sum	EASY	0.6843382048399503	https://leetcode.com/problems/alternating-digit-sum
947	Design Skiplist	HARD	0.5807262117036797	https://leetcode.com/problems/design-skiplist
948	Minimum Window Subsequence	HARD	0.4360614099707593	https://leetcode.com/problems/minimum-window-subsequence
949	Remove One Element to Make the Array Strictly Increasing	EASY	0.2871279849429479	https://leetcode.com/problems/remove-one-element-to-make-the-array-strictly-increasing
950	Minimize Maximum Pair Sum in Array	MEDIUM	0.8145595289564161	https://leetcode.com/problems/minimize-maximum-pair-sum-in-array
951	Nested List Weight Sum	MEDIUM	0.8554010162624628	https://leetcode.com/problems/nested-list-weight-sum
952	Longest Substring with At Most Two Distinct Characters	MEDIUM	0.5647354023576644	https://leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters
953	Meeting Rooms	EASY	0.5894718602542885	https://leetcode.com/problems/meeting-rooms
954	Maximum Tastiness of Candy Basket	MEDIUM	0.6614699820199097	https://leetcode.com/problems/maximum-tastiness-of-candy-basket
955	Nearest Exit from Entrance in Maze	MEDIUM	0.4756134353419486	https://leetcode.com/problems/nearest-exit-from-entrance-in-maze
956	Find if Array Can Be Sorted	MEDIUM	0.6654164634896618	https://leetcode.com/problems/find-if-array-can-be-sorted
957	Wiggle Subsequence	MEDIUM	0.4884717077094553	https://leetcode.com/problems/wiggle-subsequence
958	Relative Ranks	EASY	0.7330859773227	https://leetcode.com/problems/relative-ranks
959	Duplicate Emails	EASY	0.724494170203485	https://leetcode.com/problems/duplicate-emails
960	Maximum Difference Between Node and Ancestor	MEDIUM	0.7806040782239543	https://leetcode.com/problems/maximum-difference-between-node-and-ancestor
961	Minimum Operations to Make a Uni-Value Grid	MEDIUM	0.6746016970742127	https://leetcode.com/problems/minimum-operations-to-make-a-uni-value-grid
962	To Be Or Not To Be	EASY	0.6295807994256238	https://leetcode.com/problems/to-be-or-not-to-be
963	Running Sum of 1d Array	EASY	0.8696252419622045	https://leetcode.com/problems/running-sum-of-1d-array
964	Additive Number	MEDIUM	0.3254622700270529	https://leetcode.com/problems/additive-number
965	Self Dividing Numbers	EASY	0.7962262980034188	https://leetcode.com/problems/self-dividing-numbers
966	Angle Between Hands of a Clock	MEDIUM	0.6421501908804211	https://leetcode.com/problems/angle-between-hands-of-a-clock
967	Stepping Numbers	MEDIUM	0.4766837034691754	https://leetcode.com/problems/stepping-numbers
968	Find the City With the Smallest Number of Neighbors at a Threshold Distance	MEDIUM	0.7022963279294668	https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance
969	Minimum Number of Swaps to Make the String Balanced	MEDIUM	0.7796926022806927	https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced
970	Minimum Swaps to Group All 1's Together	MEDIUM	0.6108541758288527	https://leetcode.com/problems/minimum-swaps-to-group-all-1s-together
971	Minimum Replacements to Sort the Array	HARD	0.5324087646108167	https://leetcode.com/problems/minimum-replacements-to-sort-the-array
972	Keys and Rooms	MEDIUM	0.7467687157157744	https://leetcode.com/problems/keys-and-rooms
973	Unique Substrings With Equal Digit Frequency	MEDIUM	0.6411486580447782	https://leetcode.com/problems/unique-substrings-with-equal-digit-frequency
974	The Earliest Moment When Everyone Become Friends	MEDIUM	0.656983282716056	https://leetcode.com/problems/the-earliest-moment-when-everyone-become-friends
975	Rearrange Words in a Sentence	MEDIUM	0.6583426651735722	https://leetcode.com/problems/rearrange-words-in-a-sentence
976	Divide Players Into Teams of Equal Skill	MEDIUM	0.6892726777444839	https://leetcode.com/problems/divide-players-into-teams-of-equal-skill
977	Most Visited Sector in  a Circular Track	EASY	0.5910626136658872	https://leetcode.com/problems/most-visited-sector-in-a-circular-track
978	The kth Factor of n	MEDIUM	0.6957668800559188	https://leetcode.com/problems/the-kth-factor-of-n
979	Break a Palindrome	MEDIUM	0.515441720680916	https://leetcode.com/problems/break-a-palindrome
980	Valid Word	EASY	0.3871845347371215	https://leetcode.com/problems/valid-word
981	Least Number of Unique Integers after K Removals	MEDIUM	0.6341766250570863	https://leetcode.com/problems/least-number-of-unique-integers-after-k-removals
982	Count Number of Pairs With Absolute Difference K	EASY	0.8488583382642377	https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k
983	Max Consecutive Ones III	MEDIUM	0.659394298879811	https://leetcode.com/problems/max-consecutive-ones-iii
984	Minimum One Bit Operations to Make Integers Zero	HARD	0.73240710674027	https://leetcode.com/problems/minimum-one-bit-operations-to-make-integers-zero
1039	Path with Maximum Gold	MEDIUM	0.6813024554816962	https://leetcode.com/problems/path-with-maximum-gold
985	Minimum Number of Chairs in a Waiting Room	EASY	0.7833645625224912	https://leetcode.com/problems/minimum-number-of-chairs-in-a-waiting-room
986	Sum of Beauty of All Substrings	MEDIUM	0.708399002246187	https://leetcode.com/problems/sum-of-beauty-of-all-substrings
987	Last Substring in Lexicographical Order	HARD	0.3460103417700405	https://leetcode.com/problems/last-substring-in-lexicographical-order
988	Modify the Matrix	EASY	0.6830875645058072	https://leetcode.com/problems/modify-the-matrix
989	Lexicographically Minimum String After Removing Stars	MEDIUM	0.5096873744567401	https://leetcode.com/problems/lexicographically-minimum-string-after-removing-stars
990	Clear Digits	EASY	0.8259289027924613	https://leetcode.com/problems/clear-digits
991	My Calendar I	MEDIUM	0.5814631853246708	https://leetcode.com/problems/my-calendar-i
992	Bag of Tokens	MEDIUM	0.5918662223280171	https://leetcode.com/problems/bag-of-tokens
993	Transform Array to All Equal Elements	MEDIUM	0.315568937398068	https://leetcode.com/problems/transform-array-to-all-equal-elements
994	Ways to Split Array Into Good Subarrays	MEDIUM	0.3387961818897744	https://leetcode.com/problems/ways-to-split-array-into-good-subarrays
995	Minimum Total Cost to Make Arrays Unequal	HARD	0.4050688867604803	https://leetcode.com/problems/minimum-total-cost-to-make-arrays-unequal
996	Cherry Pickup II	HARD	0.7196542271599925	https://leetcode.com/problems/cherry-pickup-ii
997	Minimum Adjacent Swaps for K Consecutive Ones	HARD	0.4208017478234963	https://leetcode.com/problems/minimum-adjacent-swaps-for-k-consecutive-ones
998	Create Maximum Number	HARD	0.3249475515071097	https://leetcode.com/problems/create-maximum-number
999	Dungeon Game	HARD	0.3949585700362227	https://leetcode.com/problems/dungeon-game
1000	Find K-th Smallest Pair Distance	HARD	0.4579239829015915	https://leetcode.com/problems/find-k-th-smallest-pair-distance
1001	Cut Off Trees for Golf Event	HARD	0.3533426885924877	https://leetcode.com/problems/cut-off-trees-for-golf-event
1002	Number of Students Unable to Eat Lunch	EASY	0.7873290271095185	https://leetcode.com/problems/number-of-students-unable-to-eat-lunch
1003	Amount of Time for Binary Tree to Be Infected	MEDIUM	0.6373515517663223	https://leetcode.com/problems/amount-of-time-for-binary-tree-to-be-infected
1004	Minimum Number of Coins to be Added	MEDIUM	0.5669380799091082	https://leetcode.com/problems/minimum-number-of-coins-to-be-added
1005	Maximum Width of Binary Tree	MEDIUM	0.4412945133765235	https://leetcode.com/problems/maximum-width-of-binary-tree
1006	Burst Balloons	HARD	0.6131500044712985	https://leetcode.com/problems/burst-balloons
1007	Patching Array	HARD	0.5350511688984009	https://leetcode.com/problems/patching-array
1008	Numbers With Same Consecutive Differences	MEDIUM	0.5874121948872566	https://leetcode.com/problems/numbers-with-same-consecutive-differences
1009	Triples with Bitwise AND Equal To Zero	HARD	0.593273081502327	https://leetcode.com/problems/triples-with-bitwise-and-equal-to-zero
1010	The Score of Students Solving Math Expression	HARD	0.3321676932247168	https://leetcode.com/problems/the-score-of-students-solving-math-expression
1011	Design Movie Rental System	HARD	0.3550989216268999	https://leetcode.com/problems/design-movie-rental-system
1012	Minimum Cost to Reach City With Discounts	MEDIUM	0.5989514378011969	https://leetcode.com/problems/minimum-cost-to-reach-city-with-discounts
1013	Minimum Limit of Balls in a Bag	MEDIUM	0.6729582611405128	https://leetcode.com/problems/minimum-limit-of-balls-in-a-bag
1014	Minimum Number of Days to Make m Bouquets	MEDIUM	0.5546586206278776	https://leetcode.com/problems/minimum-number-of-days-to-make-m-bouquets
1015	Minimum Cost For Tickets	MEDIUM	0.6741371575291961	https://leetcode.com/problems/minimum-cost-for-tickets
1016	Filling Bookcase Shelves	MEDIUM	0.68655511990517	https://leetcode.com/problems/filling-bookcase-shelves
1017	Path Sum III	MEDIUM	0.460913846032227	https://leetcode.com/problems/path-sum-iii
1018	Minimum Number of Arrows to Burst Balloons	MEDIUM	0.6039233260349853	https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons
1019	Course Schedule III	HARD	0.4067244024219053	https://leetcode.com/problems/course-schedule-iii
1020	Maximum Sum Circular Subarray	MEDIUM	0.4766973516813795	https://leetcode.com/problems/maximum-sum-circular-subarray
1021	Last Stone Weight	EASY	0.6592869343167317	https://leetcode.com/problems/last-stone-weight
1022	Car Pooling	MEDIUM	0.560495041492097	https://leetcode.com/problems/car-pooling
1023	Percentage of Users Attended a Contest	EASY	0.5894214941113579	https://leetcode.com/problems/percentage-of-users-attended-a-contest
1024	Number of Ways to Paint N × 3 Grid	HARD	0.6503587524201552	https://leetcode.com/problems/number-of-ways-to-paint-n-3-grid
1025	Longest Subarray With Maximum Bitwise AND	MEDIUM	0.6181425057525985	https://leetcode.com/problems/longest-subarray-with-maximum-bitwise-and
1026	Longest Unequal Adjacent Groups Subsequence II	MEDIUM	0.5135262321144675	https://leetcode.com/problems/longest-unequal-adjacent-groups-subsequence-ii
1027	Longest Unequal Adjacent Groups Subsequence I	EASY	0.6756708309889311	https://leetcode.com/problems/longest-unequal-adjacent-groups-subsequence-i
1028	Find Three Consecutive Integers That Sum to a Given Number	MEDIUM	0.6461909267018064	https://leetcode.com/problems/find-three-consecutive-integers-that-sum-to-a-given-number
1029	Maximum Product of Three Numbers	EASY	0.453128811704281	https://leetcode.com/problems/maximum-product-of-three-numbers
1030	Maximize Sum of Weights after Edge Removals	HARD	0.2908775121991564	https://leetcode.com/problems/maximize-sum-of-weights-after-edge-removals
1031	Minimum Cost of Buying Candies With Discount	EASY	0.6220026757229598	https://leetcode.com/problems/minimum-cost-of-buying-candies-with-discount
1032	Delete Columns to Make Sorted	EASY	0.7477537485791238	https://leetcode.com/problems/delete-columns-to-make-sorted
1033	Minimum Cost to Set Cooking Time	MEDIUM	0.4099953000156666	https://leetcode.com/problems/minimum-cost-to-set-cooking-time
1034	Concatenation of Array	EASY	0.9048989107329092	https://leetcode.com/problems/concatenation-of-array
1035	Best Time to Buy and Sell Stock with Cooldown	MEDIUM	0.6040194963747181	https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown
1036	Maximum Number of Potholes That Can Be Fixed	MEDIUM	0.5321978913219789	https://leetcode.com/problems/maximum-number-of-potholes-that-can-be-fixed
1037	Number of Steps to Reduce a Number in Binary Representation to One	MEDIUM	0.613827202078772	https://leetcode.com/problems/number-of-steps-to-reduce-a-number-in-binary-representation-to-one
1038	Number of Spaces Cleaning Robot Cleaned	MEDIUM	0.6207148067104303	https://leetcode.com/problems/number-of-spaces-cleaning-robot-cleaned
1040	Cinema Seat Allocation	MEDIUM	0.4282515351585946	https://leetcode.com/problems/cinema-seat-allocation
1041	Minimum Moves to Spread Stones Over Grid	MEDIUM	0.4431801437482604	https://leetcode.com/problems/minimum-moves-to-spread-stones-over-grid
1042	Count of Smaller Numbers After Self	HARD	0.4287869938280897	https://leetcode.com/problems/count-of-smaller-numbers-after-self
1043	Minimum Number of Food Buckets to Feed the Hamsters	MEDIUM	0.4704461884638604	https://leetcode.com/problems/minimum-number-of-food-buckets-to-feed-the-hamsters
1044	Remove All Adjacent Duplicates In String	EASY	0.7159336923611213	https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string
1045	Number of Connected Components in an Undirected Graph	MEDIUM	0.6420134726680878	https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph
1046	The Number of Full Rounds You Have Played	MEDIUM	0.4340737028618474	https://leetcode.com/problems/the-number-of-full-rounds-you-have-played
1047	Last Visited Integers	EASY	0.6103729276223355	https://leetcode.com/problems/last-visited-integers
1048	Widest Vertical Area Between Two Points Containing No Points	EASY	0.8707948670605613	https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points
1049	Dot Product of Two Sparse Vectors	MEDIUM	0.8993407794514465	https://leetcode.com/problems/dot-product-of-two-sparse-vectors
1050	Arranging Coins	EASY	0.4733714469621681	https://leetcode.com/problems/arranging-coins
1051	Convert an Array Into a 2D Array With Conditions	MEDIUM	0.8630692551951445	https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions
1052	High Five	EASY	0.7434011552337414	https://leetcode.com/problems/high-five
1053	Number of Sub-arrays of Size K and Average Greater than or Equal to Threshold	MEDIUM	0.7023384374541363	https://leetcode.com/problems/number-of-sub-arrays-of-size-k-and-average-greater-than-or-equal-to-threshold
1054	Robot Return to Origin	EASY	0.7617030831410564	https://leetcode.com/problems/robot-return-to-origin
1055	Find the Minimum Amount of Time to Brew Potions	MEDIUM	0.3517014694508894	https://leetcode.com/problems/find-the-minimum-amount-of-time-to-brew-potions
1056	Consecutive Characters	EASY	0.6021721208645471	https://leetcode.com/problems/consecutive-characters
1057	Check if the Sentence Is Pangram	EASY	0.83848531974997	https://leetcode.com/problems/check-if-the-sentence-is-pangram
1058	Design Circular Deque	MEDIUM	0.6434745510538449	https://leetcode.com/problems/design-circular-deque
1059	Permutations III	MEDIUM	0.8570205479452055	https://leetcode.com/problems/permutations-iii
1060	Optimal Account Balancing	HARD	0.4993810266893702	https://leetcode.com/problems/optimal-account-balancing
1061	Construct Smallest Number From DI String	MEDIUM	0.858291954685622	https://leetcode.com/problems/construct-smallest-number-from-di-string
1062	Identify the Largest Outlier in an Array	MEDIUM	0.3566362791255585	https://leetcode.com/problems/identify-the-largest-outlier-in-an-array
1063	Count Number of Teams	MEDIUM	0.7010096636659391	https://leetcode.com/problems/count-number-of-teams
1064	Third Maximum Number	EASY	0.3721120655575063	https://leetcode.com/problems/third-maximum-number
1065	K-th Symbol in Grammar	MEDIUM	0.4739640623287643	https://leetcode.com/problems/k-th-symbol-in-grammar
1066	Power of Three	EASY	0.4802572566132386	https://leetcode.com/problems/power-of-three
1067	Minimize the Maximum of Two Arrays	MEDIUM	0.3122726245041415	https://leetcode.com/problems/minimize-the-maximum-of-two-arrays
1068	Valid Arrangement of Pairs	HARD	0.6626068003487359	https://leetcode.com/problems/valid-arrangement-of-pairs
1069	Pascal's Triangle II	EASY	0.6595100107835754	https://leetcode.com/problems/pascals-triangle-ii
1070	Jump Game III	MEDIUM	0.6603717968394102	https://leetcode.com/problems/jump-game-iii
1071	Super Egg Drop	HARD	0.2875525570224879	https://leetcode.com/problems/super-egg-drop
1072	Fraction Addition and Subtraction	MEDIUM	0.6614695886090164	https://leetcode.com/problems/fraction-addition-and-subtraction
1073	Random Flip Matrix	MEDIUM	0.4354613508284968	https://leetcode.com/problems/random-flip-matrix
1074	Minimum Cost Homecoming of a Robot in a Grid	MEDIUM	0.5116018634653288	https://leetcode.com/problems/minimum-cost-homecoming-of-a-robot-in-a-grid
1075	Range Product Queries of Powers	MEDIUM	0.4190695285104862	https://leetcode.com/problems/range-product-queries-of-powers
1076	Keep Multiplying Found Values by Two	EASY	0.7133261449808213	https://leetcode.com/problems/keep-multiplying-found-values-by-two
1077	Count Number of Texts	MEDIUM	0.4884854532893222	https://leetcode.com/problems/count-number-of-texts
1078	Successful Pairs of Spells and Potions	MEDIUM	0.4549736139149278	https://leetcode.com/problems/successful-pairs-of-spells-and-potions
1079	Determine if Two Events Have Conflict	EASY	0.5234865263935031	https://leetcode.com/problems/determine-if-two-events-have-conflict
1080	Maximum XOR of Two Numbers in an Array	MEDIUM	0.5322093775396812	https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array
1081	Apply Substitutions	MEDIUM	0.7867262423714037	https://leetcode.com/problems/apply-substitutions
1082	Power of Two	EASY	0.4838037051534944	https://leetcode.com/problems/power-of-two
1083	Escape the Spreading Fire	HARD	0.3628148569802192	https://leetcode.com/problems/escape-the-spreading-fire
1084	Triangle Judgement	EASY	0.7368772833754048	https://leetcode.com/problems/triangle-judgement
1085	Zero Array Transformation I	MEDIUM	0.5440566780372605	https://leetcode.com/problems/zero-array-transformation-i
1086	Find All Duplicates in an Array	MEDIUM	0.7640865470225948	https://leetcode.com/problems/find-all-duplicates-in-an-array
1087	Meeting Rooms III	HARD	0.4393472442856221	https://leetcode.com/problems/meeting-rooms-iii
1088	Painting a Grid With Three Different Colors	HARD	0.7850353068984248	https://leetcode.com/problems/painting-a-grid-with-three-different-colors
1089	Separate Squares I	MEDIUM	0.3799335174867737	https://leetcode.com/problems/separate-squares-i
1090	Create a DataFrame from List	EASY	0.8147031724545858	https://leetcode.com/problems/create-a-dataframe-from-list
1091	Finding MK Average	HARD	0.3818881447538479	https://leetcode.com/problems/finding-mk-average
1092	Find the Difference	EASY	0.5972123786185596	https://leetcode.com/problems/find-the-difference
1093	Big Countries	EASY	0.6818920862237663	https://leetcode.com/problems/big-countries
1094	Target Sum	MEDIUM	0.5076651123616494	https://leetcode.com/problems/target-sum
1095	Odd Even Jump	HARD	0.4072072749763881	https://leetcode.com/problems/odd-even-jump
1096	Time Taken to Cross the Door	HARD	0.4947985404859871	https://leetcode.com/problems/time-taken-to-cross-the-door
1097	Delete Node in a Linked List	MEDIUM	0.8231559199073729	https://leetcode.com/problems/delete-node-in-a-linked-list
1098	Hand of Straights	MEDIUM	0.5710230469118233	https://leetcode.com/problems/hand-of-straights
1099	Detect Squares	MEDIUM	0.5130252857014308	https://leetcode.com/problems/detect-squares
1100	Graph Valid Tree	MEDIUM	0.4933560205084969	https://leetcode.com/problems/graph-valid-tree
1101	Get the Size of a DataFrame	EASY	0.8518924318016196	https://leetcode.com/problems/get-the-size-of-a-dataframe
1102	Find the Safest Path in a Grid	MEDIUM	0.4839726918075422	https://leetcode.com/problems/find-the-safest-path-in-a-grid
1103	Smallest String Starting From Leaf	MEDIUM	0.608103369683369	https://leetcode.com/problems/smallest-string-starting-from-leaf
1104	Expression Add Operators	HARD	0.4167625219870472	https://leetcode.com/problems/expression-add-operators
1105	Lowest Common Ancestor of a Binary Search Tree	MEDIUM	0.6831069193376744	https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree
1106	Employees Earning More Than Their Managers	EASY	0.7153023627322151	https://leetcode.com/problems/employees-earning-more-than-their-managers
1107	Strobogrammatic Number II	MEDIUM	0.5320014507233087	https://leetcode.com/problems/strobogrammatic-number-ii
1108	Bitwise AND of Numbers Range	MEDIUM	0.477400397545588	https://leetcode.com/problems/bitwise-and-of-numbers-range
1109	Insertion Sort List	MEDIUM	0.5645710379999737	https://leetcode.com/problems/insertion-sort-list
1110	Rank Scores	MEDIUM	0.6530068484300299	https://leetcode.com/problems/rank-scores
1111	Repeated DNA Sequences	MEDIUM	0.5132040320028115	https://leetcode.com/problems/repeated-dna-sequences
1112	Read N Characters Given Read4	EASY	0.4225902118364912	https://leetcode.com/problems/read-n-characters-given-read4
1113	Rectangle Area	MEDIUM	0.4737387162244031	https://leetcode.com/problems/rectangle-area
1114	Read N Characters Given read4 II - Call Multiple Times	HARD	0.4290596992252771	https://leetcode.com/problems/read-n-characters-given-read4-ii-call-multiple-times
1115	Group Shifted Strings	MEDIUM	0.673782383890107	https://leetcode.com/problems/group-shifted-strings
1116	Missing Ranges	EASY	0.3526494595509856	https://leetcode.com/problems/missing-ranges
1117	Wiggle Sort	MEDIUM	0.6822006472491909	https://leetcode.com/problems/wiggle-sort
1118	3Sum Smaller	MEDIUM	0.5098856904205789	https://leetcode.com/problems/3sum-smaller
1119	Paint Fence	MEDIUM	0.4774369661796149	https://leetcode.com/problems/paint-fence
1120	Flip Game	EASY	0.648810474885	https://leetcode.com/problems/flip-game
1121	Binary Tree Postorder Traversal	EASY	0.757410545581066	https://leetcode.com/problems/binary-tree-postorder-traversal
1122	Strobogrammatic Number	EASY	0.4760305048749879	https://leetcode.com/problems/strobogrammatic-number
1123	Peeking Iterator	MEDIUM	0.6034819530757167	https://leetcode.com/problems/peeking-iterator
1124	Closest Binary Search Tree Value II	HARD	0.6026240281377268	https://leetcode.com/problems/closest-binary-search-tree-value-ii
1125	Unique Word Abbreviation	MEDIUM	0.2705393583975261	https://leetcode.com/problems/unique-word-abbreviation
1126	Flip Game II	MEDIUM	0.5222630055763394	https://leetcode.com/problems/flip-game-ii
1127	Factorial Trailing Zeroes	MEDIUM	0.4485560789752664	https://leetcode.com/problems/factorial-trailing-zeroes
1128	Find Minimum in Rotated Sorted Array II	HARD	0.441135385633896	https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii
1129	Range Sum Query - Mutable	MEDIUM	0.4170428564247957	https://leetcode.com/problems/range-sum-query-mutable
1130	Binary Tree Level Order Traversal II	MEDIUM	0.6600794078073927	https://leetcode.com/problems/binary-tree-level-order-traversal-ii
1131	Adding Two Negabinary Numbers	MEDIUM	0.3689554769276132	https://leetcode.com/problems/adding-two-negabinary-numbers
1132	Vowel Spellchecker	MEDIUM	0.5157619197411585	https://leetcode.com/problems/vowel-spellchecker
1133	Sum of Left Leaves	EASY	0.6165969923913787	https://leetcode.com/problems/sum-of-left-leaves
1134	Set Mismatch	EASY	0.4500023166771268	https://leetcode.com/problems/set-mismatch
1135	Decode the Slanted Ciphertext	MEDIUM	0.4912737614129622	https://leetcode.com/problems/decode-the-slanted-ciphertext
1136	Maximum Palindromes After Operations	MEDIUM	0.4308371154815936	https://leetcode.com/problems/maximum-palindromes-after-operations
1137	Collect Coins in a Tree	HARD	0.3608497610513739	https://leetcode.com/problems/collect-coins-in-a-tree
1138	Sell Diminishing-Valued Colored Balls	MEDIUM	0.2996067002222998	https://leetcode.com/problems/sell-diminishing-valued-colored-balls
1139	Minimum Number of Operations to Make X and Y Equal	MEDIUM	0.4738630074240891	https://leetcode.com/problems/minimum-number-of-operations-to-make-x-and-y-equal
1140	Game Play Analysis V	HARD	0.5083935582996643	https://leetcode.com/problems/game-play-analysis-v
1141	Game Play Analysis I	EASY	0.7575125906319012	https://leetcode.com/problems/game-play-analysis-i
1142	Game Play Analysis II	EASY	0.5402814837496173	https://leetcode.com/problems/game-play-analysis-ii
1143	Game Play Analysis III	MEDIUM	0.8125918037602822	https://leetcode.com/problems/game-play-analysis-iii
1144	Game Play Analysis IV	MEDIUM	0.3944366188704687	https://leetcode.com/problems/game-play-analysis-iv
1145	Print Words Vertically	MEDIUM	0.6622658589234733	https://leetcode.com/problems/print-words-vertically
1146	Construct the Longest New String	MEDIUM	0.5384322081417517	https://leetcode.com/problems/construct-the-longest-new-string
1147	Minimum Number of Operations to Sort a Binary Tree by Level	MEDIUM	0.7425819778656343	https://leetcode.com/problems/minimum-number-of-operations-to-sort-a-binary-tree-by-level
1148	Get Watched Videos by Your Friends	MEDIUM	0.497568206030849	https://leetcode.com/problems/get-watched-videos-by-your-friends
1149	Add Bold Tag in String	MEDIUM	0.5099532918149466	https://leetcode.com/problems/add-bold-tag-in-string
1150	Chalkboard XOR Game	HARD	0.6295199566250991	https://leetcode.com/problems/chalkboard-xor-game
1151	Find Candidates for Data Scientist Position	EASY	0.7610571736785329	https://leetcode.com/problems/find-candidates-for-data-scientist-position
1152	Maximize Items	HARD	0.7523250122369065	https://leetcode.com/problems/maximize-items
1153	Count the Number of Powerful Integers	HARD	0.4651365700919542	https://leetcode.com/problems/count-the-number-of-powerful-integers
1154	Maximum Points Inside the Square	MEDIUM	0.3818238944309166	https://leetcode.com/problems/maximum-points-inside-the-square
1155	Brightest Position on Street	MEDIUM	0.6059444605148974	https://leetcode.com/problems/brightest-position-on-street
1156	Maximize the Number of Partitions After Operations	HARD	0.2745828069942158	https://leetcode.com/problems/maximize-the-number-of-partitions-after-operations
1157	Parsing A Boolean Expression	HARD	0.6990305944192692	https://leetcode.com/problems/parsing-a-boolean-expression
1158	Sort an Array	MEDIUM	0.5664710269583224	https://leetcode.com/problems/sort-an-array
1159	Minimum Distance to the Target Element	EASY	0.5422827262892175	https://leetcode.com/problems/minimum-distance-to-the-target-element
1160	Maximum Matrix Sum	MEDIUM	0.6590661100173162	https://leetcode.com/problems/maximum-matrix-sum
1161	Three Equal Parts	HARD	0.4069711686235938	https://leetcode.com/problems/three-equal-parts
1162	Remove 9	HARD	0.5734518763568697	https://leetcode.com/problems/remove-9
1163	Minimum Recolors to Get K Consecutive Black Blocks	EASY	0.6842699682132298	https://leetcode.com/problems/minimum-recolors-to-get-k-consecutive-black-blocks
1164	24 Game	HARD	0.5000170520428348	https://leetcode.com/problems/24-game
1165	Maximum Binary String After Change	MEDIUM	0.4706330812393267	https://leetcode.com/problems/maximum-binary-string-after-change
1166	Find the K-Sum of an Array	HARD	0.396819360414866	https://leetcode.com/problems/find-the-k-sum-of-an-array
1167	Detect Pattern of Length M Repeated K or More Times	EASY	0.434865494598602	https://leetcode.com/problems/detect-pattern-of-length-m-repeated-k-or-more-times
1168	Convert Integer to the Sum of Two No-Zero Integers	EASY	0.5423949493246408	https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers
1169	Number of Steps to Reduce a Number to Zero	EASY	0.8563122693677829	https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero
1170	Add Edges to Make Degrees of All Nodes Even	HARD	0.3351716287559123	https://leetcode.com/problems/add-edges-to-make-degrees-of-all-nodes-even
1171	Maximum 69 Number	EASY	0.8176659980289958	https://leetcode.com/problems/maximum-69-number
1172	Maximum Total Importance of Roads	MEDIUM	0.6916419857076869	https://leetcode.com/problems/maximum-total-importance-of-roads
1173	Maximum Score From Grid Operations	HARD	0.2422559906487434	https://leetcode.com/problems/maximum-score-from-grid-operations
1174	Longest Path With Different Adjacent Characters	HARD	0.5391662377766341	https://leetcode.com/problems/longest-path-with-different-adjacent-characters
1175	Remove Comments	MEDIUM	0.3940719934954542	https://leetcode.com/problems/remove-comments
1176	Binary Tree Pruning	MEDIUM	0.7235985436633292	https://leetcode.com/problems/binary-tree-pruning
1177	Number of Valid Subarrays	HARD	0.7924088008381751	https://leetcode.com/problems/number-of-valid-subarrays
1178	Count Ways to Group Overlapping Ranges	MEDIUM	0.3810753087566162	https://leetcode.com/problems/count-ways-to-group-overlapping-ranges
1179	Minimum Operations to Make Columns Strictly Increasing	EASY	0.7199251842887007	https://leetcode.com/problems/minimum-operations-to-make-columns-strictly-increasing
1180	Height Checker	EASY	0.8113928378391797	https://leetcode.com/problems/height-checker
1181	Largest Number After Digit Swaps by Parity	EASY	0.637345576330206	https://leetcode.com/problems/largest-number-after-digit-swaps-by-parity
1182	Minimum Swaps to Group All 1's Together II	MEDIUM	0.6551706619353931	https://leetcode.com/problems/minimum-swaps-to-group-all-1s-together-ii
1183	Minimum Operations to Make All Array Elements Equal	MEDIUM	0.3692031208906811	https://leetcode.com/problems/minimum-operations-to-make-all-array-elements-equal
1184	Get Equal Substrings Within Budget	MEDIUM	0.5895138424805517	https://leetcode.com/problems/get-equal-substrings-within-budget
1185	Numbers With Repeated Digits	HARD	0.4346119124099851	https://leetcode.com/problems/numbers-with-repeated-digits
1186	Maximum Sum of Distinct Subarrays With Length K	MEDIUM	0.4263309346710954	https://leetcode.com/problems/maximum-sum-of-distinct-subarrays-with-length-k
1187	Minimum Suffix Flips	MEDIUM	0.7348245888613324	https://leetcode.com/problems/minimum-suffix-flips
1188	Shortest and Lexicographically Smallest Beautiful String	MEDIUM	0.3966286564204264	https://leetcode.com/problems/shortest-and-lexicographically-smallest-beautiful-string
1189	Count Pairs Of Similar Strings	EASY	0.7248677862312117	https://leetcode.com/problems/count-pairs-of-similar-strings
1190	Minimum Operations to Make Median of Array Equal to K	MEDIUM	0.4668790233814748	https://leetcode.com/problems/minimum-operations-to-make-median-of-array-equal-to-k
1191	Divide Intervals Into Minimum Number of Groups	MEDIUM	0.6365584755914945	https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups
1192	Flipping an Image	EASY	0.8295545731388213	https://leetcode.com/problems/flipping-an-image
1193	Activity Participants	MEDIUM	0.7229791494362948	https://leetcode.com/problems/activity-participants
1194	Maximum Profitable Triplets With Increasing Prices I	MEDIUM	0.5452064141931081	https://leetcode.com/problems/maximum-profitable-triplets-with-increasing-prices-i
1195	Flip String to Monotone Increasing	MEDIUM	0.6159572969522228	https://leetcode.com/problems/flip-string-to-monotone-increasing
1196	Find The Original Array of Prefix Xor	MEDIUM	0.8810500495257456	https://leetcode.com/problems/find-the-original-array-of-prefix-xor
1197	Minimum Number of Flips to Make the Binary String Alternating	MEDIUM	0.4050971932716079	https://leetcode.com/problems/minimum-number-of-flips-to-make-the-binary-string-alternating
1198	Find All Possible Stable Binary Arrays II	HARD	0.2591881513987932	https://leetcode.com/problems/find-all-possible-stable-binary-arrays-ii
1199	Rearrange Array to Maximize Prefix Score	MEDIUM	0.4154713786648543	https://leetcode.com/problems/rearrange-array-to-maximize-prefix-score
1200	Prime In Diagonal	EASY	0.3620654816211814	https://leetcode.com/problems/prime-in-diagonal
1201	132 Pattern	MEDIUM	0.3405666874402953	https://leetcode.com/problems/132-pattern
1202	Minimum Operations to Reduce an Integer to 0	MEDIUM	0.5730954555475073	https://leetcode.com/problems/minimum-operations-to-reduce-an-integer-to-0
1203	Find Longest Calls	MEDIUM	0.6278218425869433	https://leetcode.com/problems/find-longest-calls
1204	The Employee That Worked on the Longest Task	EASY	0.5059108514906449	https://leetcode.com/problems/the-employee-that-worked-on-the-longest-task
1205	Maximum Profitable Triplets With Increasing Prices II	HARD	0.433264887063655	https://leetcode.com/problems/maximum-profitable-triplets-with-increasing-prices-ii
1206	Sort the Students by Their Kth Score	MEDIUM	0.8563725976646489	https://leetcode.com/problems/sort-the-students-by-their-kth-score
1207	Find the Array Concatenation Value	EASY	0.7103725089782409	https://leetcode.com/problems/find-the-array-concatenation-value
1208	Minimum Levels to Gain More Points	MEDIUM	0.3911266875166984	https://leetcode.com/problems/minimum-levels-to-gain-more-points
1209	Find Products of Elements of Big Array	HARD	0.2179005331701774	https://leetcode.com/problems/find-products-of-elements-of-big-array
1210	Find The First Player to win K Games in a Row	MEDIUM	0.3941278227126092	https://leetcode.com/problems/find-the-first-player-to-win-k-games-in-a-row
1211	Type of Triangle	EASY	0.4479472840401572	https://leetcode.com/problems/type-of-triangle
1212	Find Occurrences of an Element in an Array	MEDIUM	0.725564552476571	https://leetcode.com/problems/find-occurrences-of-an-element-in-an-array
1213	Minimum Length of String After Operations	MEDIUM	0.7491674510951677	https://leetcode.com/problems/minimum-length-of-string-after-operations
1214	Taking Maximum Energy From the Mystic Dungeon	MEDIUM	0.4113351567966414	https://leetcode.com/problems/taking-maximum-energy-from-the-mystic-dungeon
1215	Removing Stars From a String	MEDIUM	0.779700381986175	https://leetcode.com/problems/removing-stars-from-a-string
1216	Score After Flipping Matrix	MEDIUM	0.8024347383165669	https://leetcode.com/problems/score-after-flipping-matrix
1217	Maximum Side Length of a Square with Sum Less than or Equal to Threshold	MEDIUM	0.5351934322666932	https://leetcode.com/problems/maximum-side-length-of-a-square-with-sum-less-than-or-equal-to-threshold
1218	Sum of Even Numbers After Queries	MEDIUM	0.6852833849138529	https://leetcode.com/problems/sum-of-even-numbers-after-queries
1219	Minimum Cost to Split an Array	HARD	0.4233523732204471	https://leetcode.com/problems/minimum-cost-to-split-an-array
1220	Find Players With Zero or One Losses	MEDIUM	0.7259689291131767	https://leetcode.com/problems/find-players-with-zero-or-one-losses
1221	Binary Tree Tilt	EASY	0.6409705660933609	https://leetcode.com/problems/binary-tree-tilt
1222	Check if Every Row and Column Contains All Numbers	EASY	0.528410934019593	https://leetcode.com/problems/check-if-every-row-and-column-contains-all-numbers
1223	Count Nodes Equal to Average of Subtree	MEDIUM	0.8641895449417075	https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree
1224	Online Stock Span	MEDIUM	0.6738470433038342	https://leetcode.com/problems/online-stock-span
1225	Count Almost Equal Pairs I	MEDIUM	0.3754856361149111	https://leetcode.com/problems/count-almost-equal-pairs-i
1226	Subrectangle Queries	MEDIUM	0.8595828252176626	https://leetcode.com/problems/subrectangle-queries
1227	Find the Maximum Factor Score of Array	MEDIUM	0.4037084700295444	https://leetcode.com/problems/find-the-maximum-factor-score-of-array
1228	Find the Minimum and Maximum Number of Nodes Between Critical Points	MEDIUM	0.6945200779613259	https://leetcode.com/problems/find-the-minimum-and-maximum-number-of-nodes-between-critical-points
1229	Maximum Good Subtree Score	HARD	0.4365004703668862	https://leetcode.com/problems/maximum-good-subtree-score
1230	Transform Array by Parity	EASY	0.8955455974316958	https://leetcode.com/problems/transform-array-by-parity
1231	Maximize the Minimum Game Score	HARD	0.2508705286483064	https://leetcode.com/problems/maximize-the-minimum-game-score
1232	Eat Pizzas!	MEDIUM	0.3238093819362719	https://leetcode.com/problems/eat-pizzas
1233	Find the Number of Subsequences With Equal GCD	HARD	0.2880983356511596	https://leetcode.com/problems/find-the-number-of-subsequences-with-equal-gcd
1234	Find Building Where Alice and Bob Can Meet	HARD	0.5220343515987163	https://leetcode.com/problems/find-building-where-alice-and-bob-can-meet
1235	Minimum Reverse Operations	HARD	0.1525228477075493	https://leetcode.com/problems/minimum-reverse-operations
1236	Count the Number of Ideal Arrays	HARD	0.571516409192222	https://leetcode.com/problems/count-the-number-of-ideal-arrays
1237	Maximum Sum of Subsequence With Non-adjacent Elements	HARD	0.1540382278201303	https://leetcode.com/problems/maximum-sum-of-subsequence-with-non-adjacent-elements
1238	Rearrange Array Elements by Sign	MEDIUM	0.8435313974581474	https://leetcode.com/problems/rearrange-array-elements-by-sign
1239	Determine the Minimum Sum of a k-avoiding Array	MEDIUM	0.5987240023372234	https://leetcode.com/problems/determine-the-minimum-sum-of-a-k-avoiding-array
1240	Largest Number After Mutating Substring	MEDIUM	0.36902558769099	https://leetcode.com/problems/largest-number-after-mutating-substring
1241	Minimum Total Distance Traveled	HARD	0.5898865648781889	https://leetcode.com/problems/minimum-total-distance-traveled
1242	Kids With the Greatest Number of Candies	EASY	0.8811124852207712	https://leetcode.com/problems/kids-with-the-greatest-number-of-candies
1243	Average Time of Process per Machine	EASY	0.6862949023503733	https://leetcode.com/problems/average-time-of-process-per-machine
1244	Maximum Score Words Formed by Letters	HARD	0.8159681950565737	https://leetcode.com/problems/maximum-score-words-formed-by-letters
1245	Maximum Product After K Increments	MEDIUM	0.4233688717804545	https://leetcode.com/problems/maximum-product-after-k-increments
1246	Maximum Segment Sum After Removals	HARD	0.4840065478033889	https://leetcode.com/problems/maximum-segment-sum-after-removals
1247	Longest Well-Performing Interval	MEDIUM	0.3592905436355974	https://leetcode.com/problems/longest-well-performing-interval
1248	Sort the People	EASY	0.8479980578905553	https://leetcode.com/problems/sort-the-people
1249	The Number of Beautiful Subsets	MEDIUM	0.5077831235970619	https://leetcode.com/problems/the-number-of-beautiful-subsets
1250	Number of Beautiful Integers in the Range	HARD	0.1959293261735666	https://leetcode.com/problems/number-of-beautiful-integers-in-the-range
1251	Maximum Number of Consecutive Values You Can Make	MEDIUM	0.621198255907843	https://leetcode.com/problems/maximum-number-of-consecutive-values-you-can-make
1252	Can Convert String in K Moves	MEDIUM	0.3591921300689568	https://leetcode.com/problems/can-convert-string-in-k-moves
1253	Minimum Addition to Make Integer Beautiful	MEDIUM	0.3798035153378333	https://leetcode.com/problems/minimum-addition-to-make-integer-beautiful
1254	Stone Game VIII	HARD	0.5283333333333333	https://leetcode.com/problems/stone-game-viii
1255	Find the Minimum Possible Sum of a Beautiful Array	MEDIUM	0.359398838665604	https://leetcode.com/problems/find-the-minimum-possible-sum-of-a-beautiful-array
1256	Number of Nodes With Value One	MEDIUM	0.655958549222798	https://leetcode.com/problems/number-of-nodes-with-value-one
1257	Replace Employee ID With The Unique Identifier	EASY	0.835865207735719	https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier
1258	To Lower Case	EASY	0.8417204828432726	https://leetcode.com/problems/to-lower-case
1259	Maximum Number of Robots Within Budget	HARD	0.3680937544075598	https://leetcode.com/problems/maximum-number-of-robots-within-budget
1260	Subarray With Elements Greater Than Varying Threshold	HARD	0.4452242905096124	https://leetcode.com/problems/subarray-with-elements-greater-than-varying-threshold
1261	Maximum Number of Events That Can Be Attended	MEDIUM	0.3292198182552009	https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended
1262	Find Consecutive Integers from a Data Stream	MEDIUM	0.493503487439047	https://leetcode.com/problems/find-consecutive-integers-from-a-data-stream
1263	Maximum Nesting Depth of the Parentheses	EASY	0.8434417458535225	https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses
1264	Unique Email Addresses	EASY	0.6758613213988468	https://leetcode.com/problems/unique-email-addresses
1265	Most Profitable Path in a Tree	MEDIUM	0.6759769941567256	https://leetcode.com/problems/most-profitable-path-in-a-tree
1266	Maximum Difference Score in a Grid	MEDIUM	0.46693822131704	https://leetcode.com/problems/maximum-difference-score-in-a-grid
1267	Maximum Total Beauty of the Gardens	HARD	0.2997584287364772	https://leetcode.com/problems/maximum-total-beauty-of-the-gardens
1268	Get the Maximum Score	HARD	0.3997959003691431	https://leetcode.com/problems/get-the-maximum-score
1269	Destroy Sequential Targets	MEDIUM	0.4062232094146987	https://leetcode.com/problems/destroy-sequential-targets
1270	Largest Plus Sign	MEDIUM	0.4856793994392354	https://leetcode.com/problems/largest-plus-sign
1271	Basic Calculator IV	HARD	0.4866033755274261	https://leetcode.com/problems/basic-calculator-iv
1272	Make String Anti-palindrome	HARD	0.4245591116917048	https://leetcode.com/problems/make-string-anti-palindrome
1273	Length of the Longest Subsequence That Sums to Target	MEDIUM	0.3724776248615478	https://leetcode.com/problems/length-of-the-longest-subsequence-that-sums-to-target
1274	Number of Substrings With Fixed Ratio	MEDIUM	0.5590675622283683	https://leetcode.com/problems/number-of-substrings-with-fixed-ratio
1275	Minimum Time to Break Locks I	MEDIUM	0.3033816671338651	https://leetcode.com/problems/minimum-time-to-break-locks-i
1276	Minimum Time to Break Locks II	HARD	0.4269662921348314	https://leetcode.com/problems/minimum-time-to-break-locks-ii
1277	1-bit and 2-bit Characters	EASY	0.4511727696394956	https://leetcode.com/problems/1-bit-and-2-bit-characters
1278	Range Addition II	EASY	0.5730635939153311	https://leetcode.com/problems/range-addition-ii
1279	Stickers to Spell Word	HARD	0.5004141760136118	https://leetcode.com/problems/stickers-to-spell-word
1280	Find the Derangement of An Array	MEDIUM	0.4171815547875868	https://leetcode.com/problems/find-the-derangement-of-an-array
1281	Shuffle an Array	MEDIUM	0.5904289804092742	https://leetcode.com/problems/shuffle-an-array
1282	Find Resultant Array After Removing Anagrams	EASY	0.5947293118567407	https://leetcode.com/problems/find-resultant-array-after-removing-anagrams
1283	Remove Colored Pieces if Both Neighbors are the Same Color	MEDIUM	0.6283917583136946	https://leetcode.com/problems/remove-colored-pieces-if-both-neighbors-are-the-same-color
1284	Check Whether Two Strings are Almost Equivalent	EASY	0.6364656307145949	https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent
1285	Button with Longest Push Time	EASY	0.4059366074012558	https://leetcode.com/problems/button-with-longest-push-time
1286	Count Numbers with Unique Digits	MEDIUM	0.5434517416497606	https://leetcode.com/problems/count-numbers-with-unique-digits
1287	Determine Color of a Chessboard Square	EASY	0.7932834456061206	https://leetcode.com/problems/determine-color-of-a-chessboard-square
1288	Minimum Cost to Connect Sticks	MEDIUM	0.7116745797510586	https://leetcode.com/problems/minimum-cost-to-connect-sticks
1289	Minimum Swaps to Make Strings Equal	MEDIUM	0.6470896696381752	https://leetcode.com/problems/minimum-swaps-to-make-strings-equal
1290	Display Table of Food Orders in a Restaurant	MEDIUM	0.7565692616551416	https://leetcode.com/problems/display-table-of-food-orders-in-a-restaurant
1291	Check if Number Has Equal Digit Count and Digit Value	EASY	0.7244297819277936	https://leetcode.com/problems/check-if-number-has-equal-digit-count-and-digit-value
1292	Suspicious Bank Accounts	MEDIUM	0.4493060145406477	https://leetcode.com/problems/suspicious-bank-accounts
1293	Lexicographically Smallest String After Applying Operations	MEDIUM	0.6527957931638914	https://leetcode.com/problems/lexicographically-smallest-string-after-applying-operations
1294	Lexicographically Smallest String After a Swap	EASY	0.5366232121180134	https://leetcode.com/problems/lexicographically-smallest-string-after-a-swap
1295	Maximum Number of Points From Grid Queries	HARD	0.5950536029744709	https://leetcode.com/problems/maximum-number-of-points-from-grid-queries
1296	Reverse Odd Levels of Binary Tree	MEDIUM	0.866394464658027	https://leetcode.com/problems/reverse-odd-levels-of-binary-tree
1297	Minimum String Length After Removing Substrings	EASY	0.7708193935176512	https://leetcode.com/problems/minimum-string-length-after-removing-substrings
1298	Minimum Insertions to Balance a Parentheses String	MEDIUM	0.5317558366441577	https://leetcode.com/problems/minimum-insertions-to-balance-a-parentheses-string
1299	Sum of Subarray Ranges	MEDIUM	0.6013128650832208	https://leetcode.com/problems/sum-of-subarray-ranges
1300	Ugly Number	EASY	0.4233632213371748	https://leetcode.com/problems/ugly-number
1301	Count Common Words With One Occurrence	EASY	0.7239072189776627	https://leetcode.com/problems/count-common-words-with-one-occurrence
1302	Stream of Characters	HARD	0.5122860949942819	https://leetcode.com/problems/stream-of-characters
1303	Minimum Time to Make Array Sum At Most x	HARD	0.2532966511716156	https://leetcode.com/problems/minimum-time-to-make-array-sum-at-most-x
1304	Find the Grid of Region Average	MEDIUM	0.4224151116549403	https://leetcode.com/problems/find-the-grid-of-region-average
1305	Maximize the Number of Target Nodes After Connecting Trees I	MEDIUM	0.6968516827213042	https://leetcode.com/problems/maximize-the-number-of-target-nodes-after-connecting-trees-i
1306	Maximize the Number of Target Nodes After Connecting Trees II	HARD	0.7315660916406779	https://leetcode.com/problems/maximize-the-number-of-target-nodes-after-connecting-trees-ii
1307	Maximum Twin Sum of a Linked List	MEDIUM	0.8147472951229525	https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list
1308	Merge Nodes in Between Zeros	MEDIUM	0.8955413496627146	https://leetcode.com/problems/merge-nodes-in-between-zeros
1309	Find Bottom Left Tree Value	MEDIUM	0.7175109020252438	https://leetcode.com/problems/find-bottom-left-tree-value
1310	Find the Substring With Maximum Cost	MEDIUM	0.5684542586750788	https://leetcode.com/problems/find-the-substring-with-maximum-cost
1311	Trim a Binary Search Tree	MEDIUM	0.6637360647202037	https://leetcode.com/problems/trim-a-binary-search-tree
1312	Largest Combination With Bitwise AND Greater Than Zero	MEDIUM	0.808988824327877	https://leetcode.com/problems/largest-combination-with-bitwise-and-greater-than-zero
1313	Add Two Numbers II	MEDIUM	0.6175467587896241	https://leetcode.com/problems/add-two-numbers-ii
1314	Operations on Tree	MEDIUM	0.4336829375091223	https://leetcode.com/problems/operations-on-tree
1315	Largest Color Value in a Directed Graph	HARD	0.5767908345021908	https://leetcode.com/problems/largest-color-value-in-a-directed-graph
1316	Shortest Path in a Weighted Tree	HARD	0.3218752658895601	https://leetcode.com/problems/shortest-path-in-a-weighted-tree
1317	Longest Subsequence With Decreasing Adjacent Difference	MEDIUM	0.1466422532177284	https://leetcode.com/problems/longest-subsequence-with-decreasing-adjacent-difference
1318	Longest Cycle in a Graph	HARD	0.4980014754946761	https://leetcode.com/problems/longest-cycle-in-a-graph
1319	Find Closest Node to Given Two Nodes	MEDIUM	0.5285199349714834	https://leetcode.com/problems/find-closest-node-to-given-two-nodes
1320	Node With Highest Edge Score	MEDIUM	0.4845573841803813	https://leetcode.com/problems/node-with-highest-edge-score
1321	Minimum Moves to Reach Target with Rotations	HARD	0.5057383320581484	https://leetcode.com/problems/minimum-moves-to-reach-target-with-rotations
1322	Maximum Points in an Archery Competition	MEDIUM	0.5041214995483289	https://leetcode.com/problems/maximum-points-in-an-archery-competition
1323	Alert Using Same Key-Card Three or More Times in a One Hour Period	MEDIUM	0.4587327987118235	https://leetcode.com/problems/alert-using-same-key-card-three-or-more-times-in-a-one-hour-period
1324	Subdomain Visit Count	MEDIUM	0.7683449765176875	https://leetcode.com/problems/subdomain-visit-count
1325	Maximum Product of First and Last Elements of a Subsequence	MEDIUM	0.2976314365399825	https://leetcode.com/problems/maximum-product-of-first-and-last-elements-of-a-subsequence
1326	Maximum Swap	MEDIUM	0.5184843217200763	https://leetcode.com/problems/maximum-swap
1327	Time Needed to Buy Tickets	EASY	0.7070583253471215	https://leetcode.com/problems/time-needed-to-buy-tickets
1328	Longest Strictly Increasing or Strictly Decreasing Subarray	EASY	0.6504115971227552	https://leetcode.com/problems/longest-strictly-increasing-or-strictly-decreasing-subarray
1329	Find the Sum of Encrypted Integers	EASY	0.7365762999474768	https://leetcode.com/problems/find-the-sum-of-encrypted-integers
1330	Smallest String With A Given Numeric Value	MEDIUM	0.6708770289225836	https://leetcode.com/problems/smallest-string-with-a-given-numeric-value
1331	Diagonal Traverse	MEDIUM	0.631766490373426	https://leetcode.com/problems/diagonal-traverse
1332	Frog Jump	HARD	0.4655846450889997	https://leetcode.com/problems/frog-jump
1333	Minimum Cost to Cut a Stick	HARD	0.6201789560190433	https://leetcode.com/problems/minimum-cost-to-cut-a-stick
1334	Max Stack	HARD	0.4553177840865414	https://leetcode.com/problems/max-stack
1335	Nested List Weight Sum II	MEDIUM	0.6557146449899617	https://leetcode.com/problems/nested-list-weight-sum-ii
1336	Kth Smallest Product of Two Sorted Arrays	HARD	0.3093643144234038	https://leetcode.com/problems/kth-smallest-product-of-two-sorted-arrays
1337	Process Tasks Using Servers	MEDIUM	0.4114853370058328	https://leetcode.com/problems/process-tasks-using-servers
1338	Sort Transformed Array	MEDIUM	0.5709273741238992	https://leetcode.com/problems/sort-transformed-array
1339	Find Leaves of Binary Tree	MEDIUM	0.810721302930833	https://leetcode.com/problems/find-leaves-of-binary-tree
1340	Binary Tree Upside Down	MEDIUM	0.6450428958113502	https://leetcode.com/problems/binary-tree-upside-down
1341	Accounts Merge	MEDIUM	0.5957992244722102	https://leetcode.com/problems/accounts-merge
1342	Paint House II	HARD	0.5641459705615923	https://leetcode.com/problems/paint-house-ii
1343	Find K Pairs with Smallest Sums	MEDIUM	0.4069636992721836	https://leetcode.com/problems/find-k-pairs-with-smallest-sums
1344	Factor Combinations	MEDIUM	0.5024211255576286	https://leetcode.com/problems/factor-combinations
1345	Maximize Subarrays After Removing One Conflicting Pair	HARD	0.3245154211873704	https://leetcode.com/problems/maximize-subarrays-after-removing-one-conflicting-pair
1346	Second Minimum Node In a Binary Tree	EASY	0.4532741603206002	https://leetcode.com/problems/second-minimum-node-in-a-binary-tree
1347	Can I Win	MEDIUM	0.3037797068528723	https://leetcode.com/problems/can-i-win
1348	Shortest Word Distance III	MEDIUM	0.5910015691072046	https://leetcode.com/problems/shortest-word-distance-iii
1349	Find Smallest Letter Greater Than Target	EASY	0.5407901782986692	https://leetcode.com/problems/find-smallest-letter-greater-than-target
1350	Delete Node in a BST	MEDIUM	0.5299282336051427	https://leetcode.com/problems/delete-node-in-a-bst
1351	Building H2O	MEDIUM	0.5758696646024687	https://leetcode.com/problems/building-h2o
1352	Valid Perfect Square	EASY	0.4418959712096306	https://leetcode.com/problems/valid-perfect-square
1353	Design Bounded Blocking Queue	MEDIUM	0.7299444681759931	https://leetcode.com/problems/design-bounded-blocking-queue
1354	Minimum Time to Type Word Using Special Typewriter	EASY	0.7771306948017184	https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter
1355	Sum of All Odd Length Subarrays	EASY	0.835186957887891	https://leetcode.com/problems/sum-of-all-odd-length-subarrays
1356	Maximize Total Tastiness of Purchased Fruits	MEDIUM	0.6449090909090909	https://leetcode.com/problems/maximize-total-tastiness-of-purchased-fruits
1357	Sparse Matrix Multiplication	MEDIUM	0.6892226639833767	https://leetcode.com/problems/sparse-matrix-multiplication
1358	Sum of Square Numbers	MEDIUM	0.3650554406304044	https://leetcode.com/problems/sum-of-square-numbers
1359	Time to Cross a Bridge	HARD	0.4351351351351351	https://leetcode.com/problems/time-to-cross-a-bridge
1360	Maximum Number of Non-overlapping Palindrome Substrings	HARD	0.4156976135101724	https://leetcode.com/problems/maximum-number-of-non-overlapping-palindrome-substrings
1361	Minimum Deletions to Make Array Divisible	HARD	0.5767212443071686	https://leetcode.com/problems/minimum-deletions-to-make-array-divisible
1362	Two Sum III - Data structure design	EASY	0.3868837868274785	https://leetcode.com/problems/two-sum-iii-data-structure-design
1363	Binary Search Tree Iterator	MEDIUM	0.7486926503064439	https://leetcode.com/problems/binary-search-tree-iterator
1364	Largest Time for Given Digits	MEDIUM	0.3552946699381283	https://leetcode.com/problems/largest-time-for-given-digits
1365	Longest Harmonious Subsequence	EASY	0.5731264149524798	https://leetcode.com/problems/longest-harmonious-subsequence
1366	Shortest Unsorted Continuous Subarray	MEDIUM	0.374372285365029	https://leetcode.com/problems/shortest-unsorted-continuous-subarray
1367	Distribute Candies	EASY	0.6959871853952141	https://leetcode.com/problems/distribute-candies
1476	Champagne Tower	MEDIUM	0.5827900024732158	https://leetcode.com/problems/champagne-tower
1368	Find the Original Typed String I	EASY	0.5677986849468383	https://leetcode.com/problems/find-the-original-typed-string-i
1369	Minimum Operations to Make Array Values Equal to K	EASY	0.7347140308722877	https://leetcode.com/problems/minimum-operations-to-make-array-values-equal-to-k
1370	The Number of Good Subsets	HARD	0.3594289069955223	https://leetcode.com/problems/the-number-of-good-subsets
1371	Groups of Strings	HARD	0.2660257204450281	https://leetcode.com/problems/groups-of-strings
1372	Maximum White Tiles Covered by a Carpet	MEDIUM	0.3495782567947516	https://leetcode.com/problems/maximum-white-tiles-covered-by-a-carpet
1373	Closest Subsequence Sum	HARD	0.4160445423134075	https://leetcode.com/problems/closest-subsequence-sum
1374	Check Completeness of a Binary Tree	MEDIUM	0.5837359987945151	https://leetcode.com/problems/check-completeness-of-a-binary-tree
1375	Water and Jug Problem	MEDIUM	0.4308715749936997	https://leetcode.com/problems/water-and-jug-problem
1376	Find Minimum Time to Finish All Jobs	HARD	0.4351858853182104	https://leetcode.com/problems/find-minimum-time-to-finish-all-jobs
1377	Coordinate With Maximum Network Quality	MEDIUM	0.3843297437801707	https://leetcode.com/problems/coordinate-with-maximum-network-quality
1378	Number of Transactions per Visit	HARD	0.4835259445677009	https://leetcode.com/problems/number-of-transactions-per-visit
1379	Reachable Nodes With Restrictions	MEDIUM	0.5950097060567419	https://leetcode.com/problems/reachable-nodes-with-restrictions
1380	Sum Of Special Evenly-Spaced Elements In Array	HARD	0.4920049200492005	https://leetcode.com/problems/sum-of-special-evenly-spaced-elements-in-array
1381	Longest Ideal Subsequence	MEDIUM	0.4683468802993977	https://leetcode.com/problems/longest-ideal-subsequence
1382	Unique Substrings in Wraparound String	MEDIUM	0.4119896506273087	https://leetcode.com/problems/unique-substrings-in-wraparound-string
1383	Pass the Pillow	EASY	0.5655326422584914	https://leetcode.com/problems/pass-the-pillow
1384	Count Subarrays With Fixed Bounds	HARD	0.6940834976032579	https://leetcode.com/problems/count-subarrays-with-fixed-bounds
1385	Minimum Edge Reversals So Every Node Is Reachable	HARD	0.5529070058590816	https://leetcode.com/problems/minimum-edge-reversals-so-every-node-is-reachable
1386	Maximum Number of Alloys	MEDIUM	0.3892313439805734	https://leetcode.com/problems/maximum-number-of-alloys
1387	Reshape the Matrix	EASY	0.6389851604503701	https://leetcode.com/problems/reshape-the-matrix
1388	Earliest Second to Mark Indices I	MEDIUM	0.3465720539433736	https://leetcode.com/problems/earliest-second-to-mark-indices-i
1389	Earliest Second to Mark Indices II	HARD	0.2030544488711819	https://leetcode.com/problems/earliest-second-to-mark-indices-ii
1390	Keyboard Row	EASY	0.7245746901047094	https://leetcode.com/problems/keyboard-row
1391	Count Anagrams	HARD	0.3523180569098484	https://leetcode.com/problems/count-anagrams
1392	Minimum Cost Tree From Leaf Values	MEDIUM	0.6766395592073932	https://leetcode.com/problems/minimum-cost-tree-from-leaf-values
1393	Convert Binary Number in a Linked List to Integer	EASY	0.8121536256620584	https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer
1394	Maximal Score After Applying K Operations	MEDIUM	0.6378607678773867	https://leetcode.com/problems/maximal-score-after-applying-k-operations
1395	Minimum Operations to Form Subsequence With Target Sum	HARD	0.3129730765545654	https://leetcode.com/problems/minimum-operations-to-form-subsequence-with-target-sum
1396	Count the Number of Square-Free Subsets	MEDIUM	0.25180479353162	https://leetcode.com/problems/count-the-number-of-square-free-subsets
1397	Maximum Genetic Difference Query	HARD	0.4434214822069866	https://leetcode.com/problems/maximum-genetic-difference-query
1398	Valid Phone Numbers	EASY	0.27466647810305	https://leetcode.com/problems/valid-phone-numbers
1399	Sum of Remoteness of All Cells	MEDIUM	0.7082374597330879	https://leetcode.com/problems/sum-of-remoteness-of-all-cells
1400	Minimum Time Visiting All Points	EASY	0.8256296671703379	https://leetcode.com/problems/minimum-time-visiting-all-points
1401	Maximum Value of an Ordered Triplet I	EASY	0.5829082279897915	https://leetcode.com/problems/maximum-value-of-an-ordered-triplet-i
1402	Make the XOR of All Segments Equal to Zero	HARD	0.3991844132306298	https://leetcode.com/problems/make-the-xor-of-all-segments-equal-to-zero
1403	Queens That Can Attack the King	MEDIUM	0.7218199832329852	https://leetcode.com/problems/queens-that-can-attack-the-king
1404	Minimum XOR Sum of Two Arrays	HARD	0.4909993792675357	https://leetcode.com/problems/minimum-xor-sum-of-two-arrays
1405	Minimum Total Space Wasted With K Resizing Operations	MEDIUM	0.4296401393009157	https://leetcode.com/problems/minimum-total-space-wasted-with-k-resizing-operations
1406	Number of Submatrices That Sum to Target	HARD	0.7445370210523446	https://leetcode.com/problems/number-of-submatrices-that-sum-to-target
1407	Minimize the Maximum Difference of Pairs	MEDIUM	0.5085231942398741	https://leetcode.com/problems/minimize-the-maximum-difference-of-pairs
1408	Number of Unique XOR Triplets I	MEDIUM	0.2485713783341832	https://leetcode.com/problems/number-of-unique-xor-triplets-i
1409	Number of Unique XOR Triplets II	MEDIUM	0.2943817240005312	https://leetcode.com/problems/number-of-unique-xor-triplets-ii
1410	Number of Strings Which Can Be Rearranged to Contain Substring	MEDIUM	0.5527001592587231	https://leetcode.com/problems/number-of-strings-which-can-be-rearranged-to-contain-substring
1411	Find the Longest Equal Subarray	MEDIUM	0.3623757637187825	https://leetcode.com/problems/find-the-longest-equal-subarray
1412	Count Complete Substrings	HARD	0.285450863033161	https://leetcode.com/problems/count-complete-substrings
1413	Minimum Degree of a Connected Trio in a Graph	HARD	0.4340100703634368	https://leetcode.com/problems/minimum-degree-of-a-connected-trio-in-a-graph
1414	Max Difference You Can Get From Changing an Integer	MEDIUM	0.490376913852892	https://leetcode.com/problems/max-difference-you-can-get-from-changing-an-integer
1415	Minimum Subsequence in Non-Increasing Order	EASY	0.7296905477357796	https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order
1416	Sum Root to Leaf Numbers	MEDIUM	0.6852760683519554	https://leetcode.com/problems/sum-root-to-leaf-numbers
1417	Custom Sort String	MEDIUM	0.7200455390359645	https://leetcode.com/problems/custom-sort-string
1418	Range Sum of BST	EASY	0.8745394306042865	https://leetcode.com/problems/range-sum-of-bst
1419	Minimum Add to Make Parentheses Valid	MEDIUM	0.746908249713867	https://leetcode.com/problems/minimum-add-to-make-parentheses-valid
1420	Continuous Subarray Sum	MEDIUM	0.3091089982532908	https://leetcode.com/problems/continuous-subarray-sum
1477	Decoded String at Index	MEDIUM	0.3664800589890254	https://leetcode.com/problems/decoded-string-at-index
1421	Closest Binary Search Tree Value	EASY	0.497662689645014	https://leetcode.com/problems/closest-binary-search-tree-value
1422	Zero Array Transformation III	MEDIUM	0.5538003960577724	https://leetcode.com/problems/zero-array-transformation-iii
1423	Cutting Ribbons	MEDIUM	0.5262837947933771	https://leetcode.com/problems/cutting-ribbons
1424	Valid Palindrome III	HARD	0.4908879923226072	https://leetcode.com/problems/valid-palindrome-iii
1425	Shortest Path in a Hidden Grid	MEDIUM	0.4426654301456549	https://leetcode.com/problems/shortest-path-in-a-hidden-grid
1426	Range Sum Query - Immutable	EASY	0.6854760707055493	https://leetcode.com/problems/range-sum-query-immutable
1427	Random Pick Index	MEDIUM	0.6453914001449079	https://leetcode.com/problems/random-pick-index
1428	Goat Latin	EASY	0.6935336472329297	https://leetcode.com/problems/goat-latin
1429	Convert Binary Search Tree to Sorted Doubly Linked List	MEDIUM	0.6548384486360829	https://leetcode.com/problems/convert-binary-search-tree-to-sorted-doubly-linked-list
1430	Product of Two Run-Length Encoded Arrays	MEDIUM	0.5940261418418568	https://leetcode.com/problems/product-of-two-run-length-encoded-arrays
1431	Toeplitz Matrix	EASY	0.6939253887597988	https://leetcode.com/problems/toeplitz-matrix
1432	Maximum Difference Between Even and Odd Frequency I	EASY	0.613683469927171	https://leetcode.com/problems/maximum-difference-between-even-and-odd-frequency-i
1433	Memoize	MEDIUM	0.6398660382039196	https://leetcode.com/problems/memoize
1434	Combine Two Tables	EASY	0.7807998631717663	https://leetcode.com/problems/combine-two-tables
1435	Sum of All Subset XOR Totals	EASY	0.9007097408541754	https://leetcode.com/problems/sum-of-all-subset-xor-totals
1436	Airplane Seat Assignment Probability	MEDIUM	0.6665048936342312	https://leetcode.com/problems/airplane-seat-assignment-probability
1437	Battleships in a Board	MEDIUM	0.7655996014075296	https://leetcode.com/problems/battleships-in-a-board
1438	Number of Ways to Build Sturdy Brick Wall	MEDIUM	0.494820388599701	https://leetcode.com/problems/number-of-ways-to-build-sturdy-brick-wall
1439	Broken Calculator	MEDIUM	0.551297403214314	https://leetcode.com/problems/broken-calculator
1440	Find Array Given Subset Sums	HARD	0.4868854808657016	https://leetcode.com/problems/find-array-given-subset-sums
1441	Number of Ways to Wear Different Hats to Each Other	HARD	0.4443784933471831	https://leetcode.com/problems/number-of-ways-to-wear-different-hats-to-each-other
1442	Count Integers With Even Digit Sum	EASY	0.6878335702551094	https://leetcode.com/problems/count-integers-with-even-digit-sum
1443	Symmetric Coordinates	MEDIUM	0.4074513124470788	https://leetcode.com/problems/symmetric-coordinates
1444	Find the Integer Added to Array I	EASY	0.820231981072191	https://leetcode.com/problems/find-the-integer-added-to-array-i
1445	Find the Integer Added to Array II	MEDIUM	0.3187043953268916	https://leetcode.com/problems/find-the-integer-added-to-array-ii
1446	Minimum Substring Partition of Equal Character Frequency	MEDIUM	0.3900965888250397	https://leetcode.com/problems/minimum-substring-partition-of-equal-character-frequency
1447	Maximum Total Reward Using Operations I	MEDIUM	0.2995967272457847	https://leetcode.com/problems/maximum-total-reward-using-operations-i
1448	Maximum Total Reward Using Operations II	HARD	0.2066655950275947	https://leetcode.com/problems/maximum-total-reward-using-operations-ii
1449	Shortest Subarray With OR at Least K II	MEDIUM	0.502326331785915	https://leetcode.com/problems/shortest-subarray-with-or-at-least-k-ii
1450	Shortest Subarray With OR at Least K I	EASY	0.4278696455818684	https://leetcode.com/problems/shortest-subarray-with-or-at-least-k-i
1451	Construct String with Minimum Cost	HARD	0.1917801893327176	https://leetcode.com/problems/construct-string-with-minimum-cost
1452	Right Triangles	MEDIUM	0.4706710671067107	https://leetcode.com/problems/right-triangles
1453	Redistribute Characters to Make All Strings Equal	EASY	0.667783220795269	https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal
1454	Merge Two Binary Trees	EASY	0.7869826404729717	https://leetcode.com/problems/merge-two-binary-trees
1455	Make K-Subarray Sums Equal	MEDIUM	0.3661727523960722	https://leetcode.com/problems/make-k-subarray-sums-equal
1456	Minimum Operations to Reduce X to Zero	MEDIUM	0.400636924671409	https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero
1457	Stamping The Sequence	HARD	0.6186645778728447	https://leetcode.com/problems/stamping-the-sequence
1458	Minimum Cost to Move Chips to The Same Position	EASY	0.7235395523557598	https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position
1459	Steps to Make Array Non-decreasing	MEDIUM	0.2315229539016001	https://leetcode.com/problems/steps-to-make-array-non-decreasing
1460	Best Team With No Conflicts	MEDIUM	0.5042606461247886	https://leetcode.com/problems/best-team-with-no-conflicts
1461	Contiguous Array	MEDIUM	0.4937158662930979	https://leetcode.com/problems/contiguous-array
1462	Find Subarrays With Equal Sum	EASY	0.6625844195401696	https://leetcode.com/problems/find-subarrays-with-equal-sum
1463	Find the Longest Valid Obstacle Course at Each Position	HARD	0.6252322177156585	https://leetcode.com/problems/find-the-longest-valid-obstacle-course-at-each-position
1464	Minimum Number of Lines to Cover Points	MEDIUM	0.42784942488672	https://leetcode.com/problems/minimum-number-of-lines-to-cover-points
1465	Count of Range Sum	HARD	0.370513551074288	https://leetcode.com/problems/count-of-range-sum
1466	Coin Change II	MEDIUM	0.622854660501933	https://leetcode.com/problems/coin-change-ii
1467	Subarrays with K Different Integers	HARD	0.658657617557622	https://leetcode.com/problems/subarrays-with-k-different-integers
1468	Score of Parentheses	MEDIUM	0.6371775104406139	https://leetcode.com/problems/score-of-parentheses
1469	Maximum Number of Removable Characters	MEDIUM	0.4575968318361827	https://leetcode.com/problems/maximum-number-of-removable-characters
1470	Deepest Leaves Sum	MEDIUM	0.8634979671040474	https://leetcode.com/problems/deepest-leaves-sum
1471	Minimum Moves to Equal Array Elements II	MEDIUM	0.6095862132467602	https://leetcode.com/problems/minimum-moves-to-equal-array-elements-ii
1472	Repeated Substring Pattern	EASY	0.4688976256075287	https://leetcode.com/problems/repeated-substring-pattern
1473	Minimum Time to Collect All Apples in a Tree	MEDIUM	0.6297810592427932	https://leetcode.com/problems/minimum-time-to-collect-all-apples-in-a-tree
1474	Maximum Earnings From Taxi	MEDIUM	0.4478158965049748	https://leetcode.com/problems/maximum-earnings-from-taxi
1475	Count Number of Ways to Place Houses	MEDIUM	0.4282920556679213	https://leetcode.com/problems/count-number-of-ways-to-place-houses
1478	Special Array II	MEDIUM	0.4569399542424335	https://leetcode.com/problems/special-array-ii
1479	Special Array I	EASY	0.8175404452013137	https://leetcode.com/problems/special-array-i
1480	Reconstruct Original Digits from English	MEDIUM	0.5157334259339642	https://leetcode.com/problems/reconstruct-original-digits-from-english
1481	Cache With Time Limit	MEDIUM	0.7578738827979018	https://leetcode.com/problems/cache-with-time-limit
1482	Average Salary Excluding the Minimum and Maximum Salary	EASY	0.6343821503413254	https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary
1483	Employee Bonus	EASY	0.7707336952655446	https://leetcode.com/problems/employee-bonus
1484	Design Graph With Shortest Path Calculator	HARD	0.6410393855779539	https://leetcode.com/problems/design-graph-with-shortest-path-calculator
1485	Design a Todo List	MEDIUM	0.5843904157857647	https://leetcode.com/problems/design-a-todo-list
1486	Line Reflection	MEDIUM	0.3601319248289713	https://leetcode.com/problems/line-reflection
1487	Maximum Frequency Stack	HARD	0.6620493032659615	https://leetcode.com/problems/maximum-frequency-stack
1488	Check If Word Is Valid After Substitutions	MEDIUM	0.6019736059921531	https://leetcode.com/problems/check-if-word-is-valid-after-substitutions
1489	Grumpy Bookstore Owner	MEDIUM	0.6405479337259973	https://leetcode.com/problems/grumpy-bookstore-owner
1490	Delivering Boxes from Storage to Ports	HARD	0.3939048562933597	https://leetcode.com/problems/delivering-boxes-from-storage-to-ports
1491	Detect Cycles in 2D Grid	MEDIUM	0.5030185404633716	https://leetcode.com/problems/detect-cycles-in-2d-grid
1492	Partitioning Into Minimum Number Of Deci-Binary Numbers	MEDIUM	0.8862998213178719	https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers
1493	Maximum Sum of an Hourglass	MEDIUM	0.7589643035085746	https://leetcode.com/problems/maximum-sum-of-an-hourglass
1494	Online Majority Element In Subarray	HARD	0.3913576964764105	https://leetcode.com/problems/online-majority-element-in-subarray
1495	Swap For Longest Repeated Character Substring	MEDIUM	0.4364264431808739	https://leetcode.com/problems/swap-for-longest-repeated-character-substring
1496	Max Sum of a Pair With Equal Sum of Digits	MEDIUM	0.6598415828310645	https://leetcode.com/problems/max-sum-of-a-pair-with-equal-sum-of-digits
1497	Linked List Random Node	MEDIUM	0.6397015025747445	https://leetcode.com/problems/linked-list-random-node
1498	Counting Bits	EASY	0.7972033009877719	https://leetcode.com/problems/counting-bits
1499	Sort Characters By Frequency	MEDIUM	0.740805706977204	https://leetcode.com/problems/sort-characters-by-frequency
1500	Swapping Nodes in a Linked List	MEDIUM	0.6846789757668836	https://leetcode.com/problems/swapping-nodes-in-a-linked-list
1501	Print in Order	EASY	0.7158816436054449	https://leetcode.com/problems/print-in-order
1502	Rectangle Overlap	EASY	0.4574464867540109	https://leetcode.com/problems/rectangle-overlap
1503	Verify Preorder Sequence in Binary Search Tree	MEDIUM	0.5131875685225266	https://leetcode.com/problems/verify-preorder-sequence-in-binary-search-tree
1504	Double a Number Represented as a Linked List	MEDIUM	0.6123579966413119	https://leetcode.com/problems/double-a-number-represented-as-a-linked-list
1505	All Possible Full Binary Trees	MEDIUM	0.8270281155858406	https://leetcode.com/problems/all-possible-full-binary-trees
1506	Count the Number of Good Subsequences	MEDIUM	0.505726872246696	https://leetcode.com/problems/count-the-number-of-good-subsequences
1507	Fair Candy Swap	EASY	0.6328457708884947	https://leetcode.com/problems/fair-candy-swap
1508	Design SQL	MEDIUM	0.698193359375	https://leetcode.com/problems/design-sql
1509	Largest Local Values in a Matrix	EASY	0.8777892092355545	https://leetcode.com/problems/largest-local-values-in-a-matrix
1510	Largest 3-Same-Digit Number in String	EASY	0.6909566734515847	https://leetcode.com/problems/largest-3-same-digit-number-in-string
1511	Reverse Prefix of Word	EASY	0.8640862043780388	https://leetcode.com/problems/reverse-prefix-of-word
1512	Bank Account Summary	MEDIUM	0.5198933705373826	https://leetcode.com/problems/bank-account-summary
1513	Minimum Sideway Jumps	MEDIUM	0.5083339022558591	https://leetcode.com/problems/minimum-sideway-jumps
1514	Find Valid Pair of Adjacent Digits in String	EASY	0.5948705875428555	https://leetcode.com/problems/find-valid-pair-of-adjacent-digits-in-string
1515	Calculate Amount Paid in Taxes	EASY	0.6755645366418902	https://leetcode.com/problems/calculate-amount-paid-in-taxes
1516	Maximum Candies Allocated to K Children	MEDIUM	0.5008458390177354	https://leetcode.com/problems/maximum-candies-allocated-to-k-children
1517	Number of Unique Good Subsequences	HARD	0.521975548089911	https://leetcode.com/problems/number-of-unique-good-subsequences
1518	The Number of the Smallest Unoccupied Chair	MEDIUM	0.6041168373473392	https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair
1519	Flatten Deeply Nested Array	MEDIUM	0.644355269140293	https://leetcode.com/problems/flatten-deeply-nested-array
1520	House Robber III	MEDIUM	0.5494576152947646	https://leetcode.com/problems/house-robber-iii
1521	Monotonic Array	EASY	0.6169876003093298	https://leetcode.com/problems/monotonic-array
1522	Department Highest Salary	MEDIUM	0.5481318064086517	https://leetcode.com/problems/department-highest-salary
1523	Find Beautiful Indices in the Given Array I	MEDIUM	0.3843060775054507	https://leetcode.com/problems/find-beautiful-indices-in-the-given-array-i
1524	Find Beautiful Indices in the Given Array II	HARD	0.264520327554728	https://leetcode.com/problems/find-beautiful-indices-in-the-given-array-ii
1525	Construct Quad Tree	MEDIUM	0.7711755516320173	https://leetcode.com/problems/construct-quad-tree
1526	Maximum Size Subarray Sum Equals k	MEDIUM	0.5060333232817832	https://leetcode.com/problems/maximum-size-subarray-sum-equals-k
1527	Selling Pieces of Wood	HARD	0.5154615647940359	https://leetcode.com/problems/selling-pieces-of-wood
1528	All Ancestors of a Node in a Directed Acyclic Graph	MEDIUM	0.6189030152589998	https://leetcode.com/problems/all-ancestors-of-a-node-in-a-directed-acyclic-graph
1529	Maximum Length of a Concatenated String with Unique Characters	MEDIUM	0.5426330997564837	https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters
1530	Smallest String With Swaps	MEDIUM	0.5942555506596046	https://leetcode.com/problems/smallest-string-with-swaps
1531	Loud and Rich	MEDIUM	0.616717862975348	https://leetcode.com/problems/loud-and-rich
1532	Count the Number of Vowel Strings in Range	EASY	0.7351821231161714	https://leetcode.com/problems/count-the-number-of-vowel-strings-in-range
1800	Univalued Binary Tree	EASY	0.7209294960383269	https://leetcode.com/problems/univalued-binary-tree
1533	Maximum Number of Integers to Choose From a Range I	MEDIUM	0.6791400643868877	https://leetcode.com/problems/maximum-number-of-integers-to-choose-from-a-range-i
1534	Maximum Frequency Score of a Subarray	HARD	0.3515392254220457	https://leetcode.com/problems/maximum-frequency-score-of-a-subarray
1535	Number of Valid Move Combinations On Chessboard	HARD	0.4773802763581298	https://leetcode.com/problems/number-of-valid-move-combinations-on-chessboard
1536	Time Needed to Rearrange a Binary String	MEDIUM	0.5155956910874109	https://leetcode.com/problems/time-needed-to-rearrange-a-binary-string
1537	Minimum Number of Removals to Make Mountain Array	HARD	0.5493114414333047	https://leetcode.com/problems/minimum-number-of-removals-to-make-mountain-array
1538	Lexicographically Smallest Palindrome	EASY	0.7942312085903587	https://leetcode.com/problems/lexicographically-smallest-palindrome
1539	Maximum Population Year	EASY	0.6267903102222048	https://leetcode.com/problems/maximum-population-year
1540	Maximum Number of Integers to Choose From a Range II	MEDIUM	0.3501022494887525	https://leetcode.com/problems/maximum-number-of-integers-to-choose-from-a-range-ii
1541	Paint House III	HARD	0.6098395490806937	https://leetcode.com/problems/paint-house-iii
1542	Minimum Non-Zero Product of the Array Elements	MEDIUM	0.3633183019748095	https://leetcode.com/problems/minimum-non-zero-product-of-the-array-elements
1543	Smallest Greater Multiple Made of Two Digits	MEDIUM	0.4793917567026811	https://leetcode.com/problems/smallest-greater-multiple-made-of-two-digits
1544	Count Array Pairs Divisible by K	HARD	0.3014857343209011	https://leetcode.com/problems/count-array-pairs-divisible-by-k
1545	Maximum Sum Obtained of Any Permutation	MEDIUM	0.393747339545003	https://leetcode.com/problems/maximum-sum-obtained-of-any-permutation
1546	Execute Asynchronous Functions in Parallel	MEDIUM	0.7767537485378044	https://leetcode.com/problems/execute-asynchronous-functions-in-parallel
1547	Find Indices With Index and Value Difference I	EASY	0.6026607149574311	https://leetcode.com/problems/find-indices-with-index-and-value-difference-i
1548	Longest Nice Subarray	MEDIUM	0.6482945846552078	https://leetcode.com/problems/longest-nice-subarray
1549	Minimize Maximum of Array	MEDIUM	0.4642315393483405	https://leetcode.com/problems/minimize-maximum-of-array
1550	Number of Unequal Triplets in Array	EASY	0.7265003738190717	https://leetcode.com/problems/number-of-unequal-triplets-in-array
1551	Find Indices With Index and Value Difference II	MEDIUM	0.3175419892149137	https://leetcode.com/problems/find-indices-with-index-and-value-difference-ii
1552	Maximum Profit of Operating a Centennial Wheel	MEDIUM	0.4393414211438475	https://leetcode.com/problems/maximum-profit-of-operating-a-centennial-wheel
1553	Minimum Bit Flips to Convert Number	EASY	0.8758168602874182	https://leetcode.com/problems/minimum-bit-flips-to-convert-number
1554	Count the Number of Arrays with K Matching Adjacent Elements	HARD	0.5864115975603135	https://leetcode.com/problems/count-the-number-of-arrays-with-k-matching-adjacent-elements
1555	Maximum Amount of Money Robot Can Earn	MEDIUM	0.2869294095123486	https://leetcode.com/problems/maximum-amount-of-money-robot-can-earn
1556	Frequencies of Shortest Supersequences	HARD	0.1575098109168747	https://leetcode.com/problems/frequencies-of-shortest-supersequences
1557	Split Array into Consecutive Subsequences	MEDIUM	0.51509167217278	https://leetcode.com/problems/split-array-into-consecutive-subsequences
1558	Find Duplicate Subtrees	MEDIUM	0.6009115183707429	https://leetcode.com/problems/find-duplicate-subtrees
1559	Viewers Turned Streamers	HARD	0.4292741451709658	https://leetcode.com/problems/viewers-turned-streamers
1560	Most Stones Removed with Same Row or Column	MEDIUM	0.6218989759471679	https://leetcode.com/problems/most-stones-removed-with-same-row-or-column
1561	Reachable Nodes In Subdivided Graph	HARD	0.5078847199564981	https://leetcode.com/problems/reachable-nodes-in-subdivided-graph
1562	Queue Reconstruction by Height	MEDIUM	0.7416322165647796	https://leetcode.com/problems/queue-reconstruction-by-height
1563	Distribute Coins in Binary Tree	MEDIUM	0.7716312056737589	https://leetcode.com/problems/distribute-coins-in-binary-tree
1564	Complete Binary Tree Inserter	MEDIUM	0.6454961258119087	https://leetcode.com/problems/complete-binary-tree-inserter
1565	Make Sum Divisible by P	MEDIUM	0.3946911221215368	https://leetcode.com/problems/make-sum-divisible-by-p
1566	Check if Point Is Reachable	HARD	0.4342334096109839	https://leetcode.com/problems/check-if-point-is-reachable
1567	Decode Ways II	HARD	0.3120560651970284	https://leetcode.com/problems/decode-ways-ii
1568	Count Subarrays With Score Less Than K	HARD	0.624292227810353	https://leetcode.com/problems/count-subarrays-with-score-less-than-k
1569	Shortest Way to Form String	MEDIUM	0.6132842198320319	https://leetcode.com/problems/shortest-way-to-form-string
1570	Is Graph Bipartite?	MEDIUM	0.5771382449160527	https://leetcode.com/problems/is-graph-bipartite
1571	The Number of Weak Characters in the Game	MEDIUM	0.4423645048179132	https://leetcode.com/problems/the-number-of-weak-characters-in-the-game
1572	Longest Word in Dictionary	MEDIUM	0.5345847539959035	https://leetcode.com/problems/longest-word-in-dictionary
1573	Minimize Result by Adding Parentheses to Expression	MEDIUM	0.6753303483673693	https://leetcode.com/problems/minimize-result-by-adding-parentheses-to-expression
1574	Find Median Given Frequency of Numbers	HARD	0.4246215119099287	https://leetcode.com/problems/find-median-given-frequency-of-numbers
1575	Non-negative Integers without Consecutive Ones	HARD	0.4030213766451369	https://leetcode.com/problems/non-negative-integers-without-consecutive-ones
1576	Top Travellers	EASY	0.5708967116729169	https://leetcode.com/problems/top-travellers
1577	Restaurant Growth	MEDIUM	0.5661350311272455	https://leetcode.com/problems/restaurant-growth
1578	Weather Type in Each Country	EASY	0.6704324173956047	https://leetcode.com/problems/weather-type-in-each-country
1579	Evaluate Boolean Expression	MEDIUM	0.7209377722842496	https://leetcode.com/problems/evaluate-boolean-expression
1580	Advantage Shuffle	MEDIUM	0.5338231296410227	https://leetcode.com/problems/advantage-shuffle
1581	K-th Smallest Prime Fraction	MEDIUM	0.6852111087945333	https://leetcode.com/problems/k-th-smallest-prime-fraction
1582	Extra Characters in a String	MEDIUM	0.5705564198111501	https://leetcode.com/problems/extra-characters-in-a-string
1583	Market Analysis I	MEDIUM	0.571925862803579	https://leetcode.com/problems/market-analysis-i
1584	Market Analysis II	HARD	0.5784402208536844	https://leetcode.com/problems/market-analysis-ii
1585	Count Unguarded Cells in the Grid	MEDIUM	0.6575999128429539	https://leetcode.com/problems/count-unguarded-cells-in-the-grid
1586	Max Chunks To Make Sorted	MEDIUM	0.6404048068659659	https://leetcode.com/problems/max-chunks-to-make-sorted
1587	Determine if Two Strings Are Close	MEDIUM	0.5413286903894399	https://leetcode.com/problems/determine-if-two-strings-are-close
1588	Most Beautiful Item for Each Query	MEDIUM	0.6204166873850132	https://leetcode.com/problems/most-beautiful-item-for-each-query
1589	Find the K-Beauty of a Number	EASY	0.6169555156399178	https://leetcode.com/problems/find-the-k-beauty-of-a-number
1590	Valid Square	MEDIUM	0.4427006962270771	https://leetcode.com/problems/valid-square
1591	Count the Number of Fair Pairs	MEDIUM	0.5291637303813359	https://leetcode.com/problems/count-the-number-of-fair-pairs
1592	Maximum Number of Ones	HARD	0.6875	https://leetcode.com/problems/maximum-number-of-ones
1593	Find Winner on a Tic Tac Toe Game	EASY	0.5418363660832548	https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game
1594	Power of Four	EASY	0.4947101228054184	https://leetcode.com/problems/power-of-four
1595	Count Square Sum Triples	EASY	0.6901666114160129	https://leetcode.com/problems/count-square-sum-triples
1596	Construct Target Array With Multiple Sums	HARD	0.3625871829356019	https://leetcode.com/problems/construct-target-array-with-multiple-sums
1597	Find Numbers with Even Number of Digits	EASY	0.7941578445535484	https://leetcode.com/problems/find-numbers-with-even-number-of-digits
1598	3Sum With Multiplicity	MEDIUM	0.4579874402763626	https://leetcode.com/problems/3sum-with-multiplicity
1599	Subtract the Product and Sum of Digits of an Integer	EASY	0.8664440229997958	https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer
1600	Maximum Number of Words You Can Type	EASY	0.7468929476897604	https://leetcode.com/problems/maximum-number-of-words-you-can-type
1601	Range Frequency Queries	MEDIUM	0.3977062468794972	https://leetcode.com/problems/range-frequency-queries
1602	Number of Subarrays with Bounded Maximum	MEDIUM	0.5394189202774706	https://leetcode.com/problems/number-of-subarrays-with-bounded-maximum
1603	Sort the Matrix Diagonally	MEDIUM	0.8297868426498654	https://leetcode.com/problems/sort-the-matrix-diagonally
1604	Encode Number	MEDIUM	0.7006358626536668	https://leetcode.com/problems/encode-number
1605	Two Best Non-Overlapping Events	MEDIUM	0.6083218765865931	https://leetcode.com/problems/two-best-non-overlapping-events
1606	Minimum Deletions to Make String Balanced	MEDIUM	0.6558476619238462	https://leetcode.com/problems/minimum-deletions-to-make-string-balanced
1607	Number of Ways to Buy Pens and Pencils	MEDIUM	0.559085669756644	https://leetcode.com/problems/number-of-ways-to-buy-pens-and-pencils
1608	Evaluate the Bracket Pairs of a String	MEDIUM	0.6823127483382226	https://leetcode.com/problems/evaluate-the-bracket-pairs-of-a-string
1609	Better Compression of String	MEDIUM	0.758406942507361	https://leetcode.com/problems/better-compression-of-string
1610	Teemo Attacking	EASY	0.5693015321819124	https://leetcode.com/problems/teemo-attacking
1611	Design Spreadsheet	MEDIUM	0.6762689977153075	https://leetcode.com/problems/design-spreadsheet
1612	Employee Importance	MEDIUM	0.6842114454359709	https://leetcode.com/problems/employee-importance
1613	Maximize Amount After Two Days of Conversions	MEDIUM	0.5897915340547422	https://leetcode.com/problems/maximize-amount-after-two-days-of-conversions
1614	Max Increase to Keep City Skyline	MEDIUM	0.8620984013658234	https://leetcode.com/problems/max-increase-to-keep-city-skyline
1615	Defanging an IP Address	EASY	0.896860944340323	https://leetcode.com/problems/defanging-an-ip-address
1616	Restore the Array From Adjacent Pairs	MEDIUM	0.7472197096394245	https://leetcode.com/problems/restore-the-array-from-adjacent-pairs
1617	Check if There is a Valid Path in a Grid	MEDIUM	0.4896488091805547	https://leetcode.com/problems/check-if-there-is-a-valid-path-in-a-grid
1618	Count Good Meals	MEDIUM	0.3164606880510123	https://leetcode.com/problems/count-good-meals
1619	Ways to Split Array Into Three Subarrays	MEDIUM	0.3344652559336574	https://leetcode.com/problems/ways-to-split-array-into-three-subarrays
1620	Capital Gain/Loss	MEDIUM	0.849191049073916	https://leetcode.com/problems/capital-gainloss
1621	Count the Number of Consistent Strings	EASY	0.8827632052615655	https://leetcode.com/problems/count-the-number-of-consistent-strings
1622	Minimum Falling Path Sum II	HARD	0.6381902247899858	https://leetcode.com/problems/minimum-falling-path-sum-ii
1623	Minimum Number of Frogs Croaking	MEDIUM	0.5078628152543851	https://leetcode.com/problems/minimum-number-of-frogs-croaking
1624	Group the People Given the Group Size They Belong To	MEDIUM	0.8741365069830305	https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to
1625	Number of Trusted Contacts of a Customer	MEDIUM	0.7522622225115554	https://leetcode.com/problems/number-of-trusted-contacts-of-a-customer
1626	Image Smoother	EASY	0.6837229689163258	https://leetcode.com/problems/image-smoother
1627	Find X Value of Array II	HARD	0.2741993957703927	https://leetcode.com/problems/find-x-value-of-array-ii
1628	Find X Value of Array I	MEDIUM	0.3315965471654094	https://leetcode.com/problems/find-x-value-of-array-i
1629	Maximize Subarray Sum After Removing All Occurrences of One Element	HARD	0.1984073424213793	https://leetcode.com/problems/maximize-subarray-sum-after-removing-all-occurrences-of-one-element
1630	Manhattan Distances of All Arrangements of Pieces	HARD	0.3298979387632579	https://leetcode.com/problems/manhattan-distances-of-all-arrangements-of-pieces
1631	Maximum Points After Enemy Battles	MEDIUM	0.3253262567778697	https://leetcode.com/problems/maximum-points-after-enemy-battles
1632	Find Longest Special Substring That Occurs Thrice II	MEDIUM	0.3841043604300036	https://leetcode.com/problems/find-longest-special-substring-that-occurs-thrice-ii
1633	Stamping the Grid	HARD	0.3324935104596122	https://leetcode.com/problems/stamping-the-grid
1634	Count Lattice Points Inside a Circle	MEDIUM	0.5524300028092518	https://leetcode.com/problems/count-lattice-points-inside-a-circle
1635	Alice and Bob Playing Flower Game	MEDIUM	0.4574722690474704	https://leetcode.com/problems/alice-and-bob-playing-flower-game
1636	Distribute Candies Among Children III	HARD	0.5759096612296111	https://leetcode.com/problems/distribute-candies-among-children-iii
1637	Find the Sum of Subsequence Powers	HARD	0.234628919378435	https://leetcode.com/problems/find-the-sum-of-subsequence-powers
1638	Existence of a Substring in a String and Its Reverse	EASY	0.6570279684458559	https://leetcode.com/problems/existence-of-a-substring-in-a-string-and-its-reverse
1639	Distribute Candies Among Children I	EASY	0.7497536136662286	https://leetcode.com/problems/distribute-candies-among-children-i
1640	Prefix and Suffix Search	HARD	0.4041937535878857	https://leetcode.com/problems/prefix-and-suffix-search
1641	Report Spam Message	MEDIUM	0.4758434844776858	https://leetcode.com/problems/report-spam-message
1642	Closest Equal Element Queries	MEDIUM	0.3123053092072786	https://leetcode.com/problems/closest-equal-element-queries
1643	Minimum Time to Visit All Houses	MEDIUM	0.7034883720930233	https://leetcode.com/problems/minimum-time-to-visit-all-houses
1644	Remove Adjacent Almost-Equal Characters	MEDIUM	0.5178165886206966	https://leetcode.com/problems/remove-adjacent-almost-equal-characters
1645	Encode and Decode TinyURL	MEDIUM	0.8636236617619221	https://leetcode.com/problems/encode-and-decode-tinyurl
1646	Smallest Substring With Identical Characters I	HARD	0.192617875373788	https://leetcode.com/problems/smallest-substring-with-identical-characters-i
1647	Split a String in Balanced Strings	EASY	0.8679377932458103	https://leetcode.com/problems/split-a-string-in-balanced-strings
1648	Smallest Substring With Identical Characters II	HARD	0.4062115200437816	https://leetcode.com/problems/smallest-substring-with-identical-characters-ii
1649	Sum of Nodes with Even-Valued Grandparent	MEDIUM	0.8571720494417864	https://leetcode.com/problems/sum-of-nodes-with-even-valued-grandparent
1650	Find Subarray With Bitwise OR Closest to K	HARD	0.296562372670541	https://leetcode.com/problems/find-subarray-with-bitwise-or-closest-to-k
1651	Smallest Subtree with all the Deepest Nodes	MEDIUM	0.7247234518141739	https://leetcode.com/problems/smallest-subtree-with-all-the-deepest-nodes
1652	Construct the Lexicographically Largest Valid Sequence	MEDIUM	0.7310337431126244	https://leetcode.com/problems/construct-the-lexicographically-largest-valid-sequence
1653	Binary Tree Preorder Traversal	EASY	0.7322651840223082	https://leetcode.com/problems/binary-tree-preorder-traversal
1654	Range Addition	MEDIUM	0.7234787757990669	https://leetcode.com/problems/range-addition
1655	2 Keys Keyboard	MEDIUM	0.5908827395526525	https://leetcode.com/problems/2-keys-keyboard
1656	Count the Number of Infection Sequences	HARD	0.333877951147782	https://leetcode.com/problems/count-the-number-of-infection-sequences
1657	Number of Matching Subsequences	MEDIUM	0.5068902297144416	https://leetcode.com/problems/number-of-matching-subsequences
1658	Check If a Number Is Majority Element in a Sorted Array	EASY	0.5908462374784931	https://leetcode.com/problems/check-if-a-number-is-majority-element-in-a-sorted-array
1659	Beautiful Towers I	MEDIUM	0.433646463471382	https://leetcode.com/problems/beautiful-towers-i
1660	Beautiful Towers II	MEDIUM	0.3459771366358193	https://leetcode.com/problems/beautiful-towers-ii
1661	Alternating Groups II	MEDIUM	0.598796741801174	https://leetcode.com/problems/alternating-groups-ii
1662	Alternating Groups I	EASY	0.6768687963612404	https://leetcode.com/problems/alternating-groups-i
1663	Guess Number Higher or Lower	EASY	0.5577411651250909	https://leetcode.com/problems/guess-number-higher-or-lower
1664	Minimum Cost of a Path With Special Roads	MEDIUM	0.4033252427184466	https://leetcode.com/problems/minimum-cost-of-a-path-with-special-roads
1665	Minimize Deviation in Array	HARD	0.539102969046115	https://leetcode.com/problems/minimize-deviation-in-array
1666	Maximum Height by Stacking Cuboids	HARD	0.600829404437156	https://leetcode.com/problems/maximum-height-by-stacking-cuboids
1667	Minimum Number of Operations to Make String Sorted	HARD	0.5007734350830154	https://leetcode.com/problems/minimum-number-of-operations-to-make-string-sorted
1668	Number of Paths with Max Score	HARD	0.4103505092869982	https://leetcode.com/problems/number-of-paths-with-max-score
1669	Stone Game IX	MEDIUM	0.2892163849377155	https://leetcode.com/problems/stone-game-ix
1670	Number of Nodes in the Sub-Tree With the Same Label	MEDIUM	0.5505105312484585	https://leetcode.com/problems/number-of-nodes-in-the-sub-tree-with-the-same-label
1671	Faulty Keyboard	EASY	0.7860907281885455	https://leetcode.com/problems/faulty-keyboard
1672	Maximum Number of Weeks for Which You Can Work	MEDIUM	0.4134942369616901	https://leetcode.com/problems/maximum-number-of-weeks-for-which-you-can-work
1673	Leftmost Column with at Least a One	MEDIUM	0.5493943663976544	https://leetcode.com/problems/leftmost-column-with-at-least-a-one
1674	Maximum Students Taking Exam	HARD	0.5221052082790261	https://leetcode.com/problems/maximum-students-taking-exam
1675	Count Increasing Quadruplets	HARD	0.3389287349305661	https://leetcode.com/problems/count-increasing-quadruplets
1676	Movie Rating	MEDIUM	0.4151383644714689	https://leetcode.com/problems/movie-rating
1677	Check if a Parentheses String Can Be Valid	MEDIUM	0.4485859357773502	https://leetcode.com/problems/check-if-a-parentheses-string-can-be-valid
1678	Reverse Words in a String II	MEDIUM	0.5606506783257249	https://leetcode.com/problems/reverse-words-in-a-string-ii
1679	Vowels of All Substrings	MEDIUM	0.5470363931216854	https://leetcode.com/problems/vowels-of-all-substrings
1680	Lexicographically Smallest String After Operations With Constraint	MEDIUM	0.6227321960465746	https://leetcode.com/problems/lexicographically-smallest-string-after-operations-with-constraint
1681	Find Minimum Diameter After Merging Two Trees	HARD	0.5738039227667114	https://leetcode.com/problems/find-minimum-diameter-after-merging-two-trees
1682	Number of Distinct Roll Sequences	HARD	0.5732509917057339	https://leetcode.com/problems/number-of-distinct-roll-sequences
1683	Maximum Count of Positive Integer and Negative Integer	EASY	0.7446745422883231	https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer
1684	Count Pairs in Two Arrays	MEDIUM	0.6015575998327409	https://leetcode.com/problems/count-pairs-in-two-arrays
1685	Find Users With Valid E-Mails	EASY	0.441162559425633	https://leetcode.com/problems/find-users-with-valid-e-mails
1686	Peaks in Array	HARD	0.2578829389788294	https://leetcode.com/problems/peaks-in-array
1687	Minimized Maximum of Products Distributed to Any Store	MEDIUM	0.6260591717059817	https://leetcode.com/problems/minimized-maximum-of-products-distributed-to-any-store
1688	Bricks Falling When Hit	HARD	0.3572389298699115	https://leetcode.com/problems/bricks-falling-when-hit
1689	Design Log Storage System	MEDIUM	0.5919462037688639	https://leetcode.com/problems/design-log-storage-system
1690	Minimum Number of Keypresses	MEDIUM	0.7126692341287172	https://leetcode.com/problems/minimum-number-of-keypresses
1691	Minimum Time to Complete All Tasks	HARD	0.377462472977499	https://leetcode.com/problems/minimum-time-to-complete-all-tasks
1692	One Edit Distance	MEDIUM	0.3447769688887125	https://leetcode.com/problems/one-edit-distance
1693	Combination Sum IV	MEDIUM	0.5464349476779554	https://leetcode.com/problems/combination-sum-iv
1694	Least Operators to Express Number	HARD	0.4840297942179017	https://leetcode.com/problems/least-operators-to-express-number
1695	Largest Merge Of Two Strings	MEDIUM	0.5132354742201305	https://leetcode.com/problems/largest-merge-of-two-strings
1696	Build Binary Expression Tree From Infix Expression	HARD	0.624648629655657	https://leetcode.com/problems/build-binary-expression-tree-from-infix-expression
1697	Verifying an Alien Dictionary	EASY	0.555729966970002	https://leetcode.com/problems/verifying-an-alien-dictionary
1698	Reorder Data in Log Files	MEDIUM	0.5676451383756557	https://leetcode.com/problems/reorder-data-in-log-files
1699	Ternary Expression Parser	MEDIUM	0.619930945772121	https://leetcode.com/problems/ternary-expression-parser
1700	Longest Arithmetic Subsequence	MEDIUM	0.4948403233078351	https://leetcode.com/problems/longest-arithmetic-subsequence
1701	Throne Inheritance	MEDIUM	0.6509835499827448	https://leetcode.com/problems/throne-inheritance
1702	Remove Sub-Folders from the Filesystem	MEDIUM	0.7574624821995838	https://leetcode.com/problems/remove-sub-folders-from-the-filesystem
1703	Longest Univalue Path	MEDIUM	0.4262890083651968	https://leetcode.com/problems/longest-univalue-path
1704	Parallel Courses	MEDIUM	0.6182187643703161	https://leetcode.com/problems/parallel-courses
1705	Maximum Number of Upgradable Servers	MEDIUM	0.4095518482172064	https://leetcode.com/problems/maximum-number-of-upgradable-servers
1706	Leaf-Similar Trees	EASY	0.7010504082999663	https://leetcode.com/problems/leaf-similar-trees
1707	Find the Maximum Length of a Good Subsequence I	MEDIUM	0.3156667819704922	https://leetcode.com/problems/find-the-maximum-length-of-a-good-subsequence-i
1708	Find the Maximum Length of a Good Subsequence II	HARD	0.239664138992998	https://leetcode.com/problems/find-the-maximum-length-of-a-good-subsequence-ii
1709	Minimum Array Length After Pair Removals	MEDIUM	0.2521432931954311	https://leetcode.com/problems/minimum-array-length-after-pair-removals
1710	Reverse Only Letters	EASY	0.6683340514041327	https://leetcode.com/problems/reverse-only-letters
1711	Minimum Number of Swaps to Make the Binary String Alternating	MEDIUM	0.4346327805298298	https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-binary-string-alternating
1712	Second Largest Digit in a String	EASY	0.5195807566202576	https://leetcode.com/problems/second-largest-digit-in-a-string
1713	Reducing Dishes	HARD	0.7634905741624626	https://leetcode.com/problems/reducing-dishes
1714	Subtree Removal Game with Fibonacci Tree	HARD	0.5698689956331878	https://leetcode.com/problems/subtree-removal-game-with-fibonacci-tree
1715	Linked List in Binary Tree	MEDIUM	0.5190438740859565	https://leetcode.com/problems/linked-list-in-binary-tree
1716	Leetcodify Similar Friends	HARD	0.4264262416148686	https://leetcode.com/problems/leetcodify-similar-friends
1717	Leetcodify Friends Recommendations	HARD	0.2798041615667074	https://leetcode.com/problems/leetcodify-friends-recommendations
1718	Maximum Score of Non-overlapping Intervals	HARD	0.3064978278953693	https://leetcode.com/problems/maximum-score-of-non-overlapping-intervals
1719	Minimum Edge Weight Equilibrium Queries in a Tree	HARD	0.4281724754244862	https://leetcode.com/problems/minimum-edge-weight-equilibrium-queries-in-a-tree
1720	Apply Operations on Array to Maximize Sum of Squares	HARD	0.4317533157983099	https://leetcode.com/problems/apply-operations-on-array-to-maximize-sum-of-squares
1721	Maximize Score After N Operations	HARD	0.5785412456365975	https://leetcode.com/problems/maximize-score-after-n-operations
1722	Next Greater Numerically Balanced Number	MEDIUM	0.4908348429488163	https://leetcode.com/problems/next-greater-numerically-balanced-number
1723	Choose Edges to Maximize Score in a Tree	MEDIUM	0.5582437275985663	https://leetcode.com/problems/choose-edges-to-maximize-score-in-a-tree
1724	Create Components With Same Value	HARD	0.5196614658299269	https://leetcode.com/problems/create-components-with-same-value
1725	Number of Same-End Substrings	MEDIUM	0.6135626674185817	https://leetcode.com/problems/number-of-same-end-substrings
1726	Apply Bitwise Operations to Make Strings Equal	MEDIUM	0.4172484925420502	https://leetcode.com/problems/apply-bitwise-operations-to-make-strings-equal
1727	Maximum Subarray Sum After One Operation	MEDIUM	0.6525722684958353	https://leetcode.com/problems/maximum-subarray-sum-after-one-operation
1728	Minimum Time to Revert Word to Initial State I	MEDIUM	0.4129997016706443	https://leetcode.com/problems/minimum-time-to-revert-word-to-initial-state-i
1729	Minimum Time to Revert Word to Initial State II	HARD	0.3437109450940095	https://leetcode.com/problems/minimum-time-to-revert-word-to-initial-state-ii
1730	Count Valid Paths in a Tree	HARD	0.3443275638070491	https://leetcode.com/problems/count-valid-paths-in-a-tree
1731	Sum of Matrix After Queries	MEDIUM	0.3122581518062508	https://leetcode.com/problems/sum-of-matrix-after-queries
1732	Number of Dice Rolls With Target Sum	MEDIUM	0.6162808491826136	https://leetcode.com/problems/number-of-dice-rolls-with-target-sum
1733	Minimum Penalty for a Shop	MEDIUM	0.6759443878546194	https://leetcode.com/problems/minimum-penalty-for-a-shop
1734	Satisfiability of Equality Equations	MEDIUM	0.5101847530677794	https://leetcode.com/problems/satisfiability-of-equality-equations
1735	Minimum Number of Work Sessions to Finish the Tasks	MEDIUM	0.3374703973335672	https://leetcode.com/problems/minimum-number-of-work-sessions-to-finish-the-tasks
1736	Maximize Area of Square Hole in Grid	MEDIUM	0.3697566883188374	https://leetcode.com/problems/maximize-area-of-square-hole-in-grid
1737	Maximum Length of Pair Chain	MEDIUM	0.6087689786906313	https://leetcode.com/problems/maximum-length-of-pair-chain
1738	Minimum Value to Get Positive Step by Step Sum	EASY	0.6462878389161475	https://leetcode.com/problems/minimum-value-to-get-positive-step-by-step-sum
1739	Maximum Score From Removing Substrings	MEDIUM	0.6284543200185538	https://leetcode.com/problems/maximum-score-from-removing-substrings
1740	Product of the Last K Numbers	MEDIUM	0.6274634247482844	https://leetcode.com/problems/product-of-the-last-k-numbers
1741	Zigzag Grid Traversal With Skip	EASY	0.635365152386429	https://leetcode.com/problems/zigzag-grid-traversal-with-skip
1742	Smallest Sufficient Team	HARD	0.553294110982528	https://leetcode.com/problems/smallest-sufficient-team
1743	Return Length of Arguments Passed	EASY	0.9448689104357724	https://leetcode.com/problems/return-length-of-arguments-passed
1744	Bitwise ORs of Subarrays	MEDIUM	0.407377235525917	https://leetcode.com/problems/bitwise-ors-of-subarrays
1745	Convert a Number to Hexadecimal	EASY	0.5087373650848038	https://leetcode.com/problems/convert-a-number-to-hexadecimal
1746	Number of Good Pairs	EASY	0.8957765654530867	https://leetcode.com/problems/number-of-good-pairs
1747	Check If a Word Occurs As a Prefix of Any Word in a Sentence	EASY	0.6867219790163613	https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence
1748	Sum of Unique Elements	EASY	0.7904762938127737	https://leetcode.com/problems/sum-of-unique-elements
1749	Number of Employees Who Met the Target	EASY	0.8761302493086669	https://leetcode.com/problems/number-of-employees-who-met-the-target
1750	Count the Digits That Divide a Number	EASY	0.8577856948677226	https://leetcode.com/problems/count-the-digits-that-divide-a-number
1751	Maximum Ascending Subarray Sum	EASY	0.6647899874438009	https://leetcode.com/problems/maximum-ascending-subarray-sum
1752	Minimum Cuts to Divide a Circle	EASY	0.5511299295948009	https://leetcode.com/problems/minimum-cuts-to-divide-a-circle
1753	Minimum Operations to Exceed Threshold Value I	EASY	0.8599196112544244	https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-i
1754	Minimum Operations to Exceed Threshold Value II	MEDIUM	0.4575050795173099	https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-ii
1755	Palindrome Partitioning IV	HARD	0.4476051099118876	https://leetcode.com/problems/palindrome-partitioning-iv
1756	Cousins in Binary Tree	EASY	0.5817380089487071	https://leetcode.com/problems/cousins-in-binary-tree
1757	Minimum Factorization	MEDIUM	0.3380261620450853	https://leetcode.com/problems/minimum-factorization
1758	Maximum Number of Balloons	EASY	0.5973679587648302	https://leetcode.com/problems/maximum-number-of-balloons
1759	Find Followers Count	EASY	0.6956128892861001	https://leetcode.com/problems/find-followers-count
1760	Minimum Changes To Make Alternating Binary String	EASY	0.6370145733299638	https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string
1761	Largest Perimeter Triangle	EASY	0.5736625993768019	https://leetcode.com/problems/largest-perimeter-triangle
1762	Longest Substring Of All Vowels in Order	MEDIUM	0.505407116626567	https://leetcode.com/problems/longest-substring-of-all-vowels-in-order
1763	Count Paths That Can Form a Palindrome in a Tree	HARD	0.4543955137720601	https://leetcode.com/problems/count-paths-that-can-form-a-palindrome-in-a-tree
1764	Minimum Number of K Consecutive Bit Flips	HARD	0.6217152009183782	https://leetcode.com/problems/minimum-number-of-k-consecutive-bit-flips
1765	Count Pairs of Connectable Servers in a Weighted Tree Network	MEDIUM	0.5419311727363849	https://leetcode.com/problems/count-pairs-of-connectable-servers-in-a-weighted-tree-network
1766	Maximum GCD-Sum of a Subarray	HARD	0.358179419525066	https://leetcode.com/problems/maximum-gcd-sum-of-a-subarray
1767	Number of Bit Changes to Make Two Integers Equal	EASY	0.6263353274222839	https://leetcode.com/problems/number-of-bit-changes-to-make-two-integers-equal
1768	Find Closest Number to Zero	EASY	0.4717518390479511	https://leetcode.com/problems/find-closest-number-to-zero
1769	Minimum Cost Good Caption	HARD	0.1901129740231704	https://leetcode.com/problems/minimum-cost-good-caption
1770	Human Traffic of Stadium	HARD	0.497729956698596	https://leetcode.com/problems/human-traffic-of-stadium
1771	Binary Tree Longest Consecutive Sequence	MEDIUM	0.5411300683221425	https://leetcode.com/problems/binary-tree-longest-consecutive-sequence
1772	Maximum Spending After Buying Items	HARD	0.599903432534457	https://leetcode.com/problems/maximum-spending-after-buying-items
1773	Numbers At Most N Given Digit Set	HARD	0.4334961496149615	https://leetcode.com/problems/numbers-at-most-n-given-digit-set
1774	Find Target Indices After Sorting Array	EASY	0.7728798563584792	https://leetcode.com/problems/find-target-indices-after-sorting-array
1775	Find All Numbers Disappeared in an Array	EASY	0.624242506767157	https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array
1776	Form Smallest Number From Two Digit Arrays	EASY	0.5433876104067776	https://leetcode.com/problems/form-smallest-number-from-two-digit-arrays
1777	Longest Subarray of 1's After Deleting One Element	MEDIUM	0.6923361123158723	https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element
1778	Count Square Submatrices with All Ones	MEDIUM	0.7869809146921806	https://leetcode.com/problems/count-square-submatrices-with-all-ones
1779	Minimum Difference Between Highest and Lowest of K Scores	EASY	0.5858047812569633	https://leetcode.com/problems/minimum-difference-between-highest-and-lowest-of-k-scores
1780	Find the Longest Balanced Substring of a Binary String	EASY	0.4545059828623239	https://leetcode.com/problems/find-the-longest-balanced-substring-of-a-binary-string
1781	String Compression II	HARD	0.5197862858300415	https://leetcode.com/problems/string-compression-ii
1782	Minimum Time to Kill All Monsters	HARD	0.5604285236022766	https://leetcode.com/problems/minimum-time-to-kill-all-monsters
1783	Substring XOR Queries	MEDIUM	0.3454646607478152	https://leetcode.com/problems/substring-xor-queries
1784	Bitwise XOR of All Pairings	MEDIUM	0.6697900744371988	https://leetcode.com/problems/bitwise-xor-of-all-pairings
1785	Handling Sum Queries After Update	HARD	0.2924381380861741	https://leetcode.com/problems/handling-sum-queries-after-update
1786	Find Common Characters	EASY	0.7454225022029736	https://leetcode.com/problems/find-common-characters
1787	Apply Operations to Make Sum of Array Greater Than or Equal to k	MEDIUM	0.4338245855956792	https://leetcode.com/problems/apply-operations-to-make-sum-of-array-greater-than-or-equal-to-k
1788	Minimum Length of Anagram Concatenation	MEDIUM	0.3972537635513538	https://leetcode.com/problems/minimum-length-of-anagram-concatenation
1789	Sum of Digit Differences of All Pairs	MEDIUM	0.4247694418738233	https://leetcode.com/problems/sum-of-digit-differences-of-all-pairs
1790	Baseball Game	EASY	0.7882494522276078	https://leetcode.com/problems/baseball-game
1791	Partition Array Into Three Parts With Equal Sum	EASY	0.4207926806119737	https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum
1792	Maximum Number of Vowels in a Substring of Given Length	MEDIUM	0.6041915539250602	https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length
1793	Number of Subsequences That Satisfy the Given Sum Condition	MEDIUM	0.4358411860032411	https://leetcode.com/problems/number-of-subsequences-that-satisfy-the-given-sum-condition
1794	Minimum Number of Operations to Make Word K-Periodic	MEDIUM	0.5971769815418024	https://leetcode.com/problems/minimum-number-of-operations-to-make-word-k-periodic
1795	Minimum Number of Operations to Satisfy Conditions	MEDIUM	0.4063934543205765	https://leetcode.com/problems/minimum-number-of-operations-to-satisfy-conditions
1796	Minimum Difficulty of a Job Schedule	HARD	0.5965934207360405	https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule
1797	Intervals Between Identical Elements	MEDIUM	0.4493480629767406	https://leetcode.com/problems/intervals-between-identical-elements
1798	Number of Ways to Earn Points	HARD	0.5859573746396065	https://leetcode.com/problems/number-of-ways-to-earn-points
1799	Maximum Good People Based on Statements	HARD	0.510339612716573	https://leetcode.com/problems/maximum-good-people-based-on-statements
1801	Design a File Sharing System	MEDIUM	0.4217279076829638	https://leetcode.com/problems/design-a-file-sharing-system
1802	Create a Session Bar Chart	EASY	0.750556206088993	https://leetcode.com/problems/create-a-session-bar-chart
1803	Toss Strange Coins	MEDIUM	0.5813783755604213	https://leetcode.com/problems/toss-strange-coins
1804	Minimum Space Wasted From Packaging	HARD	0.3263921285889987	https://leetcode.com/problems/minimum-space-wasted-from-packaging
1805	Maximum Subarray Sum with One Deletion	MEDIUM	0.4509647479065409	https://leetcode.com/problems/maximum-subarray-sum-with-one-deletion
1806	The Maze II	MEDIUM	0.5420150302104503	https://leetcode.com/problems/the-maze-ii
1807	Find the Closest Palindrome	HARD	0.3162979970229028	https://leetcode.com/problems/find-the-closest-palindrome
1808	First Unique Number	MEDIUM	0.5593123431844927	https://leetcode.com/problems/first-unique-number
1809	Maximum Coin Collection	MEDIUM	0.523860303918955	https://leetcode.com/problems/maximum-coin-collection
1810	Promise Pool	MEDIUM	0.7980061175937465	https://leetcode.com/problems/promise-pool
1811	Count Different Palindromic Subsequences	HARD	0.46386912594509	https://leetcode.com/problems/count-different-palindromic-subsequences
1812	Sorting Three Groups	MEDIUM	0.4188815458659579	https://leetcode.com/problems/sorting-three-groups
1813	Escape a Large Maze	HARD	0.3532354342403946	https://leetcode.com/problems/escape-a-large-maze
1814	As Far from Land as Possible	MEDIUM	0.5184355695888827	https://leetcode.com/problems/as-far-from-land-as-possible
1815	Make a Positive Array	MEDIUM	0.3808630393996248	https://leetcode.com/problems/make-a-positive-array
1816	Maximum Area Rectangle With Point Constraints II	HARD	0.2059726486184761	https://leetcode.com/problems/maximum-area-rectangle-with-point-constraints-ii
1817	Maximum Area Rectangle With Point Constraints I	MEDIUM	0.4969370433242305	https://leetcode.com/problems/maximum-area-rectangle-with-point-constraints-i
1818	Number of Subarrays With LCM Equal to K	MEDIUM	0.40096588350389	https://leetcode.com/problems/number-of-subarrays-with-lcm-equal-to-k
1819	Dota2 Senate	MEDIUM	0.4890672536522696	https://leetcode.com/problems/dota2-senate
1820	Deep Merge of Two Objects	MEDIUM	0.6422558922558923	https://leetcode.com/problems/deep-merge-of-two-objects
1821	Minimum Area Rectangle II	MEDIUM	0.5564209472981988	https://leetcode.com/problems/minimum-area-rectangle-ii
1822	Shifting Letters II	MEDIUM	0.5333917702513844	https://leetcode.com/problems/shifting-letters-ii
1823	Count Pairs With XOR in a Range	HARD	0.4574437091605277	https://leetcode.com/problems/count-pairs-with-xor-in-a-range
1824	Flower Planting With No Adjacent	MEDIUM	0.5237790114146059	https://leetcode.com/problems/flower-planting-with-no-adjacent
1825	Hexspeak	EASY	0.5829381638846738	https://leetcode.com/problems/hexspeak
1826	How Many Apples Can You Put into the Basket	EASY	0.6704955156282592	https://leetcode.com/problems/how-many-apples-can-you-put-into-the-basket
1827	Array Transformation	EASY	0.5310772264675846	https://leetcode.com/problems/array-transformation
1828	Count Substrings with Only One Distinct Letter	EASY	0.806493436335152	https://leetcode.com/problems/count-substrings-with-only-one-distinct-letter
1829	Count Number of Homogenous Substrings	MEDIUM	0.5736276720948661	https://leetcode.com/problems/count-number-of-homogenous-substrings
1830	Apply Operations to Make String Empty	MEDIUM	0.5620840463966533	https://leetcode.com/problems/apply-operations-to-make-string-empty
1831	Length of Longest V-Shaped Diagonal Segment	HARD	0.3371486969851814	https://leetcode.com/problems/length-of-longest-v-shaped-diagonal-segment
1832	Create Target Array in the Given Order	EASY	0.8623489961219972	https://leetcode.com/problems/create-target-array-in-the-given-order
1833	Find Score of an Array After Marking All Elements	MEDIUM	0.6448364336112893	https://leetcode.com/problems/find-score-of-an-array-after-marking-all-elements
1834	Match Alphanumerical Pattern in Matrix I	MEDIUM	0.6389402341343191	https://leetcode.com/problems/match-alphanumerical-pattern-in-matrix-i
1835	Divisor Game	EASY	0.7039133843993194	https://leetcode.com/problems/divisor-game
1836	Two Furthest Houses With Different Colors	EASY	0.6557574742483879	https://leetcode.com/problems/two-furthest-houses-with-different-colors
1837	Earliest Possible Day of Full Bloom	HARD	0.7113565236159574	https://leetcode.com/problems/earliest-possible-day-of-full-bloom
1838	Make Array Non-decreasing or Non-increasing	HARD	0.6532793990176251	https://leetcode.com/problems/make-array-non-decreasing-or-non-increasing
1839	Find Palindrome With Fixed Length	MEDIUM	0.3736629741031472	https://leetcode.com/problems/find-palindrome-with-fixed-length
1840	Minimum Number of Operations to Make Arrays Similar	HARD	0.6045060796312485	https://leetcode.com/problems/minimum-number-of-operations-to-make-arrays-similar
1841	Count Good Triplets in an Array	HARD	0.6598252920080578	https://leetcode.com/problems/count-good-triplets-in-an-array
1842	Minimum Operations to Make Array Equal II	MEDIUM	0.3244469082296024	https://leetcode.com/problems/minimum-operations-to-make-array-equal-ii
1843	Number of Ways to Separate Numbers	HARD	0.2103362045012503	https://leetcode.com/problems/number-of-ways-to-separate-numbers
1844	The Winner University	EASY	0.7530181086519114	https://leetcode.com/problems/the-winner-university
1845	Number of Accounts That Did Not Stream	MEDIUM	0.7202793200160265	https://leetcode.com/problems/number-of-accounts-that-did-not-stream
1846	Largest Magic Square	MEDIUM	0.5245031043773674	https://leetcode.com/problems/largest-magic-square
1847	Team Scores in Football Tournament	MEDIUM	0.5581914007019356	https://leetcode.com/problems/team-scores-in-football-tournament
1848	Minimum Moves to Reach Target Score	MEDIUM	0.5147368106292424	https://leetcode.com/problems/minimum-moves-to-reach-target-score
1849	Delete Characters to Make Fancy String	EASY	0.716044738967375	https://leetcode.com/problems/delete-characters-to-make-fancy-string
1850	Best Sightseeing Pair	MEDIUM	0.625930198502119	https://leetcode.com/problems/best-sightseeing-pair
1851	Tournament Winners	HARD	0.498740715444378	https://leetcode.com/problems/tournament-winners
1852	Last Person to Fit in the Bus	MEDIUM	0.6839480056781807	https://leetcode.com/problems/last-person-to-fit-in-the-bus
1853	Divide Array in Sets of K Consecutive Numbers	MEDIUM	0.5870948276310519	https://leetcode.com/problems/divide-array-in-sets-of-k-consecutive-numbers
1854	Minimum Number of Steps to Make Two Strings Anagram II	MEDIUM	0.7275336296470727	https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram-ii
1855	Minimizing Array After Replacing Pairs With Their Product	MEDIUM	0.3992322456813819	https://leetcode.com/problems/minimizing-array-after-replacing-pairs-with-their-product
1856	Find Edges in Shortest Paths	HARD	0.4555747851339063	https://leetcode.com/problems/find-edges-in-shortest-paths
1857	Domino and Tromino Tiling	MEDIUM	0.5197644582417179	https://leetcode.com/problems/domino-and-tromino-tiling
1858	Minimum Moves to Capture The Queen	MEDIUM	0.2143895195770762	https://leetcode.com/problems/minimum-moves-to-capture-the-queen
1859	Monthly Transactions II	MEDIUM	0.4198577506826697	https://leetcode.com/problems/monthly-transactions-ii
1860	Monthly Transactions I	MEDIUM	0.5830398874655107	https://leetcode.com/problems/monthly-transactions-i
1861	Escape The Ghosts	MEDIUM	0.6257654176993731	https://leetcode.com/problems/escape-the-ghosts
1862	Minimum Time Takes to Reach Destination Without Drowning	HARD	0.5199539524174981	https://leetcode.com/problems/minimum-time-takes-to-reach-destination-without-drowning
1863	Minimum Distance Between BST Nodes	EASY	0.6030334314366235	https://leetcode.com/problems/minimum-distance-between-bst-nodes
1864	Design HashSet	EASY	0.6703367545106087	https://leetcode.com/problems/design-hashset
1865	Unique Morse Code Words	EASY	0.8324486964903255	https://leetcode.com/problems/unique-morse-code-words
1866	K Inverse Pairs Array	HARD	0.4904749496967328	https://leetcode.com/problems/k-inverse-pairs-array
1867	Tweet Counts Per Frequency	MEDIUM	0.4527819680101729	https://leetcode.com/problems/tweet-counts-per-frequency
1868	Investments in 2016	MEDIUM	0.5013112456137093	https://leetcode.com/problems/investments-in-2016
1869	Rectangles Area	MEDIUM	0.6868475237510385	https://leetcode.com/problems/rectangles-area
1870	Customer Placing the Largest Number of Orders	EASY	0.6436460880860977	https://leetcode.com/problems/customer-placing-the-largest-number-of-orders
1871	Tree Node	MEDIUM	0.7387169555898169	https://leetcode.com/problems/tree-node
1872	Masking Personal Information	MEDIUM	0.5051515216968702	https://leetcode.com/problems/masking-personal-information
1873	Minimum Elements to Add to Form a Given Sum	MEDIUM	0.443350542994481	https://leetcode.com/problems/minimum-elements-to-add-to-form-a-given-sum
1874	Count Student Number in Departments	MEDIUM	0.5975410298347527	https://leetcode.com/problems/count-student-number-in-departments
1875	Minimum Genetic Mutation	MEDIUM	0.5548542323412008	https://leetcode.com/problems/minimum-genetic-mutation
1876	Finding the Users Active Minutes	MEDIUM	0.804561225875758	https://leetcode.com/problems/finding-the-users-active-minutes
1877	Count Substrings Without Repeating Character	MEDIUM	0.760929463629684	https://leetcode.com/problems/count-substrings-without-repeating-character
1878	Find the Prefix Common Array of Two Arrays	MEDIUM	0.8705002393016348	https://leetcode.com/problems/find-the-prefix-common-array-of-two-arrays
1879	Destination City	EASY	0.7943375928894831	https://leetcode.com/problems/destination-city
1880	Design an ATM Machine	MEDIUM	0.4223366396607859	https://leetcode.com/problems/design-an-atm-machine
1881	Intersection of Two Arrays II	EASY	0.5907012728841127	https://leetcode.com/problems/intersection-of-two-arrays-ii
1882	Max Consecutive Ones II	MEDIUM	0.51572752526462	https://leetcode.com/problems/max-consecutive-ones-ii
1883	Throttle	MEDIUM	0.830630068621335	https://leetcode.com/problems/throttle
1884	Find the Difference of Two Arrays	EASY	0.808421897893327	https://leetcode.com/problems/find-the-difference-of-two-arrays
1885	Path Crossing	EASY	0.6253949258018191	https://leetcode.com/problems/path-crossing
1886	Filter Restaurants by Vegan-Friendly, Price and Distance	MEDIUM	0.6325734199731369	https://leetcode.com/problems/filter-restaurants-by-vegan-friendly-price-and-distance
1887	Letter Case Permutation	MEDIUM	0.7516161037128495	https://leetcode.com/problems/letter-case-permutation
1888	Minimum Index Sum of Two Lists	EASY	0.5797263211918526	https://leetcode.com/problems/minimum-index-sum-of-two-lists
1889	Active Businesses	MEDIUM	0.6590212855860138	https://leetcode.com/problems/active-businesses
1890	String Without AAA or BBB	MEDIUM	0.4451638785252939	https://leetcode.com/problems/string-without-aaa-or-bbb
1891	Lemonade Change	EASY	0.5844961101877493	https://leetcode.com/problems/lemonade-change
1892	Categorize Box According to Criteria	EASY	0.3766858163729989	https://leetcode.com/problems/categorize-box-according-to-criteria
1893	Maximum Width Ramp	MEDIUM	0.5572131980281463	https://leetcode.com/problems/maximum-width-ramp
1894	Make Array Empty	HARD	0.2546377388535031	https://leetcode.com/problems/make-array-empty
1895	Find the Distance Value Between Two Arrays	EASY	0.7024488911363143	https://leetcode.com/problems/find-the-distance-value-between-two-arrays
1896	Maximum Sum BST in Binary Tree	HARD	0.4432028890811803	https://leetcode.com/problems/maximum-sum-bst-in-binary-tree
1897	Count Univalue Subtrees	MEDIUM	0.5718044395078012	https://leetcode.com/problems/count-univalue-subtrees
1898	Find a Peak Element II	MEDIUM	0.5319526829811091	https://leetcode.com/problems/find-a-peak-element-ii
1899	Apply Operations to Make Two Strings Equal	MEDIUM	0.2718017671917019	https://leetcode.com/problems/apply-operations-to-make-two-strings-equal
1900	Maximum Array Hopping Score I	MEDIUM	0.7762183235867446	https://leetcode.com/problems/maximum-array-hopping-score-i
1901	Maximum Array Hopping Score II	MEDIUM	0.573394495412844	https://leetcode.com/problems/maximum-array-hopping-score-ii
1902	Replace Elements with Greatest Element on Right Side	EASY	0.715038886093751	https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side
1903	Fair Distribution of Cookies	MEDIUM	0.6935329500725744	https://leetcode.com/problems/fair-distribution-of-cookies
1904	Sort Even and Odd Indices Independently	EASY	0.6263510609509559	https://leetcode.com/problems/sort-even-and-odd-indices-independently
1905	Shuffle the Array	EASY	0.8885454303637532	https://leetcode.com/problems/shuffle-the-array
1906	Find Triangular Sum of an Array	MEDIUM	0.787754121730507	https://leetcode.com/problems/find-triangular-sum-of-an-array
1907	Minimum Moves to Convert String	EASY	0.5664035316631872	https://leetcode.com/problems/minimum-moves-to-convert-string
1908	The Latest Time to Catch a Bus	MEDIUM	0.286905754795663	https://leetcode.com/problems/the-latest-time-to-catch-a-bus
1909	Largest Substring Between Two Equal Characters	EASY	0.6824086565598741	https://leetcode.com/problems/largest-substring-between-two-equal-characters
1910	Count the Hidden Sequences	MEDIUM	0.5672918186355435	https://leetcode.com/problems/count-the-hidden-sequences
1911	Find and Replace Pattern	MEDIUM	0.7681583405018056	https://leetcode.com/problems/find-and-replace-pattern
1912	Split the Array to Make Coprime Products	HARD	0.280238379022646	https://leetcode.com/problems/split-the-array-to-make-coprime-products
1913	Self Crossing	HARD	0.3211288425469689	https://leetcode.com/problems/self-crossing
1914	Shortest Cycle in a Graph	HARD	0.3740779605567729	https://leetcode.com/problems/shortest-cycle-in-a-graph
1915	Bitwise OR of All Subsequence Sums	MEDIUM	0.6488039763901833	https://leetcode.com/problems/bitwise-or-of-all-subsequence-sums
1916	Number of Ways to Divide a Long Corridor	HARD	0.4880803696348013	https://leetcode.com/problems/number-of-ways-to-divide-a-long-corridor
1917	User Activity for the Past 30 Days I	EASY	0.4948182850653038	https://leetcode.com/problems/user-activity-for-the-past-30-days-i
1918	User Activity for the Past 30 Days II	EASY	0.3571570606950562	https://leetcode.com/problems/user-activity-for-the-past-30-days-ii
1919	Reverse Nodes in Even Length Groups	MEDIUM	0.6105335755618355	https://leetcode.com/problems/reverse-nodes-in-even-length-groups
1920	The Number of Employees Which Report to Each Employee	EASY	0.5215799545486316	https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee
1921	Day of the Year	EASY	0.4818085939668305	https://leetcode.com/problems/day-of-the-year
1922	Maximum Strong Pair XOR I	EASY	0.7484073520894932	https://leetcode.com/problems/maximum-strong-pair-xor-i
1923	Maximum Strong Pair XOR II	HARD	0.3074288510152491	https://leetcode.com/problems/maximum-strong-pair-xor-ii
\.


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.topics (id, name) FROM stdin;
1	Array
2	Dynamic Programming
3	Divide and Conquer
4	Two Pointers
5	Depth-First Search
6	Breadth-First Search
7	Union Find
8	Matrix
9	Graph
10	Math
11	Recursion
12	Memoization
13	Hash Table
14	Sorting
15	Counting
16	Binary Search
17	Brainteaser
18	String
19	Trie
20	Greedy
21	Simulation
22	Bit Manipulation
23	Sliding Window
24	Stack
25	Prefix Sum
26	Backtracking
27	Linked List
28	Enumeration
29	Number Theory
30	Monotonic Stack
31	Queue
32	String Matching
33	Combinatorics
34	Database
35	Heap (Priority Queue)
36	Counting Sort
37	Tree
38	Binary Tree
39	Rolling Hash
40	Hash Function
41	Quickselect
42	Topological Sort
43	Bucket Sort
44	Design
45	Doubly-Linked List
46	Merge Sort
47	Binary Search Tree
48	Randomized
49	Data Stream
50	Iterator
51	Shortest Path
52	Line Sweep
53	Ordered Set
54	Biconnected Component
55	Binary Indexed Tree
56	Segment Tree
57	Monotonic Queue
58	Geometry
59	Interactive
60	Game Theory
61	Bitmask
62	Eulerian Circuit
63	Suffix Array
64	Concurrency
65	Minimum Spanning Tree
66	Radix Sort
67	Rejection Sampling
68	Probability and Statistics
69	Reservoir Sampling
70	Shell
71	Strongly Connected Component
\.


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 470, true);


--
-- Name: company_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_questions_id_seq', 18668, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 1923, true);


--
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.topics_id_seq', 71, true);


--
-- Name: companies companies_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_name_key UNIQUE (name);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: company_questions company_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_questions
    ADD CONSTRAINT company_questions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: topics topics_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_name_key UNIQUE (name);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- Name: ix_companies_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_companies_id ON public.companies USING btree (id);


--
-- Name: ix_company_questions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_company_questions_id ON public.company_questions USING btree (id);


--
-- Name: ix_questions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_questions_id ON public.questions USING btree (id);


--
-- Name: ix_topics_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_topics_id ON public.topics USING btree (id);


--
-- Name: company_questions company_questions_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_questions
    ADD CONSTRAINT company_questions_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: company_questions company_questions_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_questions
    ADD CONSTRAINT company_questions_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: question_topics question_topics_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_topics
    ADD CONSTRAINT question_topics_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: question_topics question_topics_topic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_topics
    ADD CONSTRAINT question_topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);


--
-- PostgreSQL database dump complete
--

\unrestrict TDlhZhYAhnEUaNccKw4sy3VT2jGIvQYHW9BQ3yBttgBf6swEwRF4wdR9UE1J8Vk

