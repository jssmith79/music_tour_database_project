toc.dat                                                                                             0000600 0004000 0002000 00000016444 14425544574 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           )                {        
   Music_Tour    15.2    15.2     )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ,           1262    25115 
   Music_Tour    DATABASE     n   CREATE DATABASE "Music_Tour" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Music_Tour";
                postgres    false         �            1259    25121    bands    TABLE     l   CREATE TABLE public.bands (
    band_id smallint NOT NULL,
    band_name character varying(255) NOT NULL
);
    DROP TABLE public.bands;
       public         heap    postgres    false         �            1259    25116    events    TABLE     o   CREATE TABLE public.events (
    event_id smallint NOT NULL,
    event_name character varying(255) NOT NULL
);
    DROP TABLE public.events;
       public         heap    postgres    false         �            1259    25126    meet_greets    TABLE     �   CREATE TABLE public.meet_greets (
    meet_greet_id smallint NOT NULL,
    event_id smallint,
    band_id smallint,
    band_name character varying(255)
);
    DROP TABLE public.meet_greets;
       public         heap    postgres    false         �            1259    25151 	   set_times    TABLE     �   CREATE TABLE public.set_times (
    set_time_id smallint NOT NULL,
    event_id smallint,
    stage_id smallint,
    set_time smallint
);
    DROP TABLE public.set_times;
       public         heap    postgres    false         �            1259    25136    stages    TABLE     |   CREATE TABLE public.stages (
    stage_id smallint NOT NULL,
    stage_number smallint,
    stage_name character varying
);
    DROP TABLE public.stages;
       public         heap    postgres    false         �            1259    25141    stages_events    TABLE     z   CREATE TABLE public.stages_events (
    stage_event_id smallint NOT NULL,
    stage_id smallint,
    event_id smallint
);
 !   DROP TABLE public.stages_events;
       public         heap    postgres    false         "          0    25121    bands 
   TABLE DATA           3   COPY public.bands (band_id, band_name) FROM stdin;
    public          postgres    false    215       3618.dat !          0    25116    events 
   TABLE DATA           6   COPY public.events (event_id, event_name) FROM stdin;
    public          postgres    false    214       3617.dat #          0    25126    meet_greets 
   TABLE DATA           R   COPY public.meet_greets (meet_greet_id, event_id, band_id, band_name) FROM stdin;
    public          postgres    false    216       3619.dat &          0    25151 	   set_times 
   TABLE DATA           N   COPY public.set_times (set_time_id, event_id, stage_id, set_time) FROM stdin;
    public          postgres    false    219       3622.dat $          0    25136    stages 
   TABLE DATA           D   COPY public.stages (stage_id, stage_number, stage_name) FROM stdin;
    public          postgres    false    217       3620.dat %          0    25141    stages_events 
   TABLE DATA           K   COPY public.stages_events (stage_event_id, stage_id, event_id) FROM stdin;
    public          postgres    false    218       3621.dat �           2606    25125    bands bands_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.bands
    ADD CONSTRAINT bands_pkey PRIMARY KEY (band_id);
 :   ALTER TABLE ONLY public.bands DROP CONSTRAINT bands_pkey;
       public            postgres    false    215         �           2606    25120    events events_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (event_id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    214         �           2606    25130    meet_greets meet_greets_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT meet_greets_pkey PRIMARY KEY (meet_greet_id);
 F   ALTER TABLE ONLY public.meet_greets DROP CONSTRAINT meet_greets_pkey;
       public            postgres    false    216         �           2606    25155    set_times set_times_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT set_times_pkey PRIMARY KEY (set_time_id);
 B   ALTER TABLE ONLY public.set_times DROP CONSTRAINT set_times_pkey;
       public            postgres    false    219         �           2606    25145     stages_events stages_events_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.stages_events
    ADD CONSTRAINT stages_events_pkey PRIMARY KEY (stage_event_id);
 J   ALTER TABLE ONLY public.stages_events DROP CONSTRAINT stages_events_pkey;
       public            postgres    false    218         �           2606    25140    stages stages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.stages
    ADD CONSTRAINT stages_pkey PRIMARY KEY (stage_id);
 <   ALTER TABLE ONLY public.stages DROP CONSTRAINT stages_pkey;
       public            postgres    false    217         �           2606    25166    meet_greets band_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT band_id FOREIGN KEY (band_id) REFERENCES public.bands(band_id) NOT VALID;
 =   ALTER TABLE ONLY public.meet_greets DROP CONSTRAINT band_id;
       public          postgres    false    3461    215    216         �           2606    25131    meet_greets event_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT event_id FOREIGN KEY (event_id) REFERENCES public.events(event_id);
 >   ALTER TABLE ONLY public.meet_greets DROP CONSTRAINT event_id;
       public          postgres    false    3459    214    216         �           2606    25146    stages_events event_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.stages_events
    ADD CONSTRAINT event_id FOREIGN KEY (event_id) REFERENCES public.events(event_id);
 @   ALTER TABLE ONLY public.stages_events DROP CONSTRAINT event_id;
       public          postgres    false    218    214    3459         �           2606    25156    set_times event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT event_id FOREIGN KEY (event_id) REFERENCES public.events(event_id) NOT VALID;
 <   ALTER TABLE ONLY public.set_times DROP CONSTRAINT event_id;
       public          postgres    false    3459    214    219         �           2606    25161    set_times stage_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT stage_id FOREIGN KEY (stage_id) REFERENCES public.stages(stage_id) NOT VALID;
 <   ALTER TABLE ONLY public.set_times DROP CONSTRAINT stage_id;
       public          postgres    false    3465    217    219                                                                                                                                                                                                                                    3618.dat                                                                                            0000600 0004000 0002000 00000000144 14425544574 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Nirvana
2	Lizzo
3	Lady Gaga
4	Brittany Spears
5	Journey
6	Nickelback
7	Dave Brubeck
8	Prince
\.


                                                                                                                                                                                                                                                                                                                                                                                                                            3617.dat                                                                                            0000600 0004000 0002000 00000000065 14425544574 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Coachella
2	Coors Ampitheature
3	Lollapalooza
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3619.dat                                                                                            0000600 0004000 0002000 00000000005 14425544574 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3622.dat                                                                                            0000600 0004000 0002000 00000000043 14425544574 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	\N	\N
2	2	\N	\N
3	3	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3620.dat                                                                                            0000600 0004000 0002000 00000000075 14425544574 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	3	\N
99	1	Punk Rock
5	2	Classic Rock
6	3	Pop
4	4	Jazz
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3621.dat                                                                                            0000600 0004000 0002000 00000000005 14425544574 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000014517 14425544574 0015412 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE "Music_Tour";
--
-- Name: Music_Tour; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Music_Tour" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE "Music_Tour" OWNER TO postgres;

\connect "Music_Tour"

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
-- Name: bands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bands (
    band_id smallint NOT NULL,
    band_name character varying(255) NOT NULL
);


ALTER TABLE public.bands OWNER TO postgres;

--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    event_id smallint NOT NULL,
    event_name character varying(255) NOT NULL
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: meet_greets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meet_greets (
    meet_greet_id smallint NOT NULL,
    event_id smallint,
    band_id smallint,
    band_name character varying(255)
);


ALTER TABLE public.meet_greets OWNER TO postgres;

--
-- Name: set_times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.set_times (
    set_time_id smallint NOT NULL,
    event_id smallint,
    stage_id smallint,
    set_time smallint
);


ALTER TABLE public.set_times OWNER TO postgres;

--
-- Name: stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stages (
    stage_id smallint NOT NULL,
    stage_number smallint,
    stage_name character varying
);


ALTER TABLE public.stages OWNER TO postgres;

--
-- Name: stages_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stages_events (
    stage_event_id smallint NOT NULL,
    stage_id smallint,
    event_id smallint
);


ALTER TABLE public.stages_events OWNER TO postgres;

--
-- Data for Name: bands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bands (band_id, band_name) FROM stdin;
\.
COPY public.bands (band_id, band_name) FROM '$$PATH$$/3618.dat';

--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (event_id, event_name) FROM stdin;
\.
COPY public.events (event_id, event_name) FROM '$$PATH$$/3617.dat';

--
-- Data for Name: meet_greets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meet_greets (meet_greet_id, event_id, band_id, band_name) FROM stdin;
\.
COPY public.meet_greets (meet_greet_id, event_id, band_id, band_name) FROM '$$PATH$$/3619.dat';

--
-- Data for Name: set_times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.set_times (set_time_id, event_id, stage_id, set_time) FROM stdin;
\.
COPY public.set_times (set_time_id, event_id, stage_id, set_time) FROM '$$PATH$$/3622.dat';

--
-- Data for Name: stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stages (stage_id, stage_number, stage_name) FROM stdin;
\.
COPY public.stages (stage_id, stage_number, stage_name) FROM '$$PATH$$/3620.dat';

--
-- Data for Name: stages_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stages_events (stage_event_id, stage_id, event_id) FROM stdin;
\.
COPY public.stages_events (stage_event_id, stage_id, event_id) FROM '$$PATH$$/3621.dat';

--
-- Name: bands bands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bands
    ADD CONSTRAINT bands_pkey PRIMARY KEY (band_id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (event_id);


--
-- Name: meet_greets meet_greets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT meet_greets_pkey PRIMARY KEY (meet_greet_id);


--
-- Name: set_times set_times_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT set_times_pkey PRIMARY KEY (set_time_id);


--
-- Name: stages_events stages_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages_events
    ADD CONSTRAINT stages_events_pkey PRIMARY KEY (stage_event_id);


--
-- Name: stages stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages
    ADD CONSTRAINT stages_pkey PRIMARY KEY (stage_id);


--
-- Name: meet_greets band_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT band_id FOREIGN KEY (band_id) REFERENCES public.bands(band_id) NOT VALID;


--
-- Name: meet_greets event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT event_id FOREIGN KEY (event_id) REFERENCES public.events(event_id);


--
-- Name: stages_events event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages_events
    ADD CONSTRAINT event_id FOREIGN KEY (event_id) REFERENCES public.events(event_id);


--
-- Name: set_times event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT event_id FOREIGN KEY (event_id) REFERENCES public.events(event_id) NOT VALID;


--
-- Name: set_times stage_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT stage_id FOREIGN KEY (stage_id) REFERENCES public.stages(stage_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 