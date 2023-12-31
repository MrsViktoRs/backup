PGDMP      +             
    {            backup_test_db     16.0 (Ubuntu 16.0-1.pgdg22.04+1)     16.0 (Ubuntu 16.0-1.pgdg22.04+1) '    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    18120    backup_test_db    DATABASE     z   CREATE DATABASE backup_test_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE backup_test_db;
                postgres    false            �            1259    18122    car    TABLE     E   CREATE TABLE public.car (
    id integer NOT NULL,
    model text
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    18121 
   car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.car_id_seq;
       public          postgres    false    216            Y           0    0 
   car_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.car_id_seq OWNED BY public.car.id;
          public          postgres    false    215            �            1259    18170    home    TABLE     I   CREATE TABLE public.home (
    id integer NOT NULL,
    location text
);
    DROP TABLE public.home;
       public         heap    postgres    false            �            1259    18131    people    TABLE     d   CREATE TABLE public.people (
    id integer NOT NULL,
    work text,
    car_id integer NOT NULL
);
    DROP TABLE public.people;
       public         heap    postgres    false            �            1259    18130    people_id_seq    SEQUENCE     �   CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.people_id_seq;
       public          postgres    false    218            Z           0    0    people_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;
          public          postgres    false    217            �            1259    18154    peoples_works    TABLE     k   CREATE TABLE public.peoples_works (
    id integer NOT NULL,
    people_id integer,
    work_id integer
);
 !   DROP TABLE public.peoples_works;
       public         heap    postgres    false            �            1259    18153    peoples_works_id_seq    SEQUENCE     �   CREATE SEQUENCE public.peoples_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.peoples_works_id_seq;
       public          postgres    false    222            [           0    0    peoples_works_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.peoples_works_id_seq OWNED BY public.peoples_works.id;
          public          postgres    false    221            �            1259    18145    work    TABLE     X   CREATE TABLE public.work (
    id integer NOT NULL,
    location text,
    name text
);
    DROP TABLE public.work;
       public         heap    postgres    false            �            1259    18144    work_id_seq    SEQUENCE     �   CREATE SEQUENCE public.work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.work_id_seq;
       public          postgres    false    220            \           0    0    work_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.work_id_seq OWNED BY public.work.id;
          public          postgres    false    219            �           2604    18125    car id    DEFAULT     `   ALTER TABLE ONLY public.car ALTER COLUMN id SET DEFAULT nextval('public.car_id_seq'::regclass);
 5   ALTER TABLE public.car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    18134 	   people id    DEFAULT     f   ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);
 8   ALTER TABLE public.people ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    18157    peoples_works id    DEFAULT     t   ALTER TABLE ONLY public.peoples_works ALTER COLUMN id SET DEFAULT nextval('public.peoples_works_id_seq'::regclass);
 ?   ALTER TABLE public.peoples_works ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    18148    work id    DEFAULT     b   ALTER TABLE ONLY public.work ALTER COLUMN id SET DEFAULT nextval('public.work_id_seq'::regclass);
 6   ALTER TABLE public.work ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            K          0    18122    car 
   TABLE DATA           (   COPY public.car (id, model) FROM stdin;
    public          postgres    false    216            R          0    18170    home 
   TABLE DATA           ,   COPY public.home (id, location) FROM stdin;
    public          postgres    false    223            M          0    18131    people 
   TABLE DATA           2   COPY public.people (id, work, car_id) FROM stdin;
    public          postgres    false    218            Q          0    18154    peoples_works 
   TABLE DATA           ?   COPY public.peoples_works (id, people_id, work_id) FROM stdin;
    public          postgres    false    222            O          0    18145    work 
   TABLE DATA           2   COPY public.work (id, location, name) FROM stdin;
    public          postgres    false    220            ]           0    0 
   car_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.car_id_seq', 6, true);
          public          postgres    false    215            ^           0    0    people_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.people_id_seq', 5, true);
          public          postgres    false    217            _           0    0    peoples_works_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.peoples_works_id_seq', 3, true);
          public          postgres    false    221            `           0    0    work_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.work_id_seq', 3, true);
          public          postgres    false    219            �           2606    18129    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    216            �           2606    18176    home home_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.home DROP CONSTRAINT home_pkey;
       public            postgres    false    223            �           2606    18138    people people_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public            postgres    false    218            �           2606    18159     peoples_works peoples_works_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.peoples_works
    ADD CONSTRAINT peoples_works_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.peoples_works DROP CONSTRAINT peoples_works_pkey;
       public            postgres    false    222            �           2606    18152    work work_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.work DROP CONSTRAINT work_pkey;
       public            postgres    false    220            �           2606    18177    home home_id_fkey    FK CONSTRAINT     l   ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_id_fkey FOREIGN KEY (id) REFERENCES public.people(id);
 ;   ALTER TABLE ONLY public.home DROP CONSTRAINT home_id_fkey;
       public          postgres    false    223    3248    218            �           2606    18139    people people_car_id_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(id);
 C   ALTER TABLE ONLY public.people DROP CONSTRAINT people_car_id_fkey;
       public          postgres    false    216    218    3246            �           2606    18160 *   peoples_works peoples_works_people_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peoples_works
    ADD CONSTRAINT peoples_works_people_id_fkey FOREIGN KEY (people_id) REFERENCES public.people(id);
 T   ALTER TABLE ONLY public.peoples_works DROP CONSTRAINT peoples_works_people_id_fkey;
       public          postgres    false    3248    218    222            �           2606    18165 (   peoples_works peoples_works_work_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peoples_works
    ADD CONSTRAINT peoples_works_work_id_fkey FOREIGN KEY (work_id) REFERENCES public.work(id);
 R   ALTER TABLE ONLY public.peoples_works DROP CONSTRAINT peoples_works_work_id_fkey;
       public          postgres    false    220    3250    222            K       x�3�,�2bc�
.�\.S 6�=... N}�      R      x�3�,O-.�2�P�*F��� c>�      M   /   x�3�LM���4�2��H,J2�!#.�Ҝ��DNc.S8+F��� W�u      Q      x�3�4�4�2�4�ƜƜ�\1z\\\ !��      O   1   x�3�,O-.�L�O�/Ȭ�J�2�,�/-��L�KI��2��Cy1z\\\ ��2      '    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    18120    backup_test_db    DATABASE     z   CREATE DATABASE backup_test_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE backup_test_db;
                postgres    false            �            1259    18122    car    TABLE     E   CREATE TABLE public.car (
    id integer NOT NULL,
    model text
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    18121 
   car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.car_id_seq;
       public          postgres    false    216            Y           0    0 
   car_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.car_id_seq OWNED BY public.car.id;
          public          postgres    false    215            �            1259    18170    home    TABLE     I   CREATE TABLE public.home (
    id integer NOT NULL,
    location text
);
    DROP TABLE public.home;
       public         heap    postgres    false            �            1259    18131    people    TABLE     d   CREATE TABLE public.people (
    id integer NOT NULL,
    work text,
    car_id integer NOT NULL
);
    DROP TABLE public.people;
       public         heap    postgres    false            �            1259    18130    people_id_seq    SEQUENCE     �   CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.people_id_seq;
       public          postgres    false    218            Z           0    0    people_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;
          public          postgres    false    217            �            1259    18154    peoples_works    TABLE     k   CREATE TABLE public.peoples_works (
    id integer NOT NULL,
    people_id integer,
    work_id integer
);
 !   DROP TABLE public.peoples_works;
       public         heap    postgres    false            �            1259    18153    peoples_works_id_seq    SEQUENCE     �   CREATE SEQUENCE public.peoples_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.peoples_works_id_seq;
       public          postgres    false    222            [           0    0    peoples_works_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.peoples_works_id_seq OWNED BY public.peoples_works.id;
          public          postgres    false    221            �            1259    18145    work    TABLE     X   CREATE TABLE public.work (
    id integer NOT NULL,
    location text,
    name text
);
    DROP TABLE public.work;
       public         heap    postgres    false            �            1259    18144    work_id_seq    SEQUENCE     �   CREATE SEQUENCE public.work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.work_id_seq;
       public          postgres    false    220            \           0    0    work_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.work_id_seq OWNED BY public.work.id;
          public          postgres    false    219            �           2604    18125    car id    DEFAULT     `   ALTER TABLE ONLY public.car ALTER COLUMN id SET DEFAULT nextval('public.car_id_seq'::regclass);
 5   ALTER TABLE public.car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    18134 	   people id    DEFAULT     f   ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);
 8   ALTER TABLE public.people ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    18157    peoples_works id    DEFAULT     t   ALTER TABLE ONLY public.peoples_works ALTER COLUMN id SET DEFAULT nextval('public.peoples_works_id_seq'::regclass);
 ?   ALTER TABLE public.peoples_works ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    18148    work id    DEFAULT     b   ALTER TABLE ONLY public.work ALTER COLUMN id SET DEFAULT nextval('public.work_id_seq'::regclass);
 6   ALTER TABLE public.work ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            K          0    18122    car 
   TABLE DATA           (   COPY public.car (id, model) FROM stdin;
    public          postgres    false    216   (       R          0    18170    home 
   TABLE DATA           ,   COPY public.home (id, location) FROM stdin;
    public          postgres    false    223   D(       M          0    18131    people 
   TABLE DATA           2   COPY public.people (id, work, car_id) FROM stdin;
    public          postgres    false    218   m(       Q          0    18154    peoples_works 
   TABLE DATA           ?   COPY public.peoples_works (id, people_id, work_id) FROM stdin;
    public          postgres    false    222   �(       O          0    18145    work 
   TABLE DATA           2   COPY public.work (id, location, name) FROM stdin;
    public          postgres    false    220   �(       ]           0    0 
   car_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.car_id_seq', 6, true);
          public          postgres    false    215            ^           0    0    people_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.people_id_seq', 5, true);
          public          postgres    false    217            _           0    0    peoples_works_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.peoples_works_id_seq', 3, true);
          public          postgres    false    221            `           0    0    work_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.work_id_seq', 3, true);
          public          postgres    false    219            �           2606    18129    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    216            �           2606    18176    home home_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.home DROP CONSTRAINT home_pkey;
       public            postgres    false    223            �           2606    18138    people people_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public            postgres    false    218            �           2606    18159     peoples_works peoples_works_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.peoples_works
    ADD CONSTRAINT peoples_works_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.peoples_works DROP CONSTRAINT peoples_works_pkey;
       public            postgres    false    222            �           2606    18152    work work_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.work DROP CONSTRAINT work_pkey;
       public            postgres    false    220            �           2606    18177    home home_id_fkey    FK CONSTRAINT     l   ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_id_fkey FOREIGN KEY (id) REFERENCES public.people(id);
 ;   ALTER TABLE ONLY public.home DROP CONSTRAINT home_id_fkey;
       public          postgres    false    223    3248    218            �           2606    18139    people people_car_id_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(id);
 C   ALTER TABLE ONLY public.people DROP CONSTRAINT people_car_id_fkey;
       public          postgres    false    216    218    3246            �           2606    18160 *   peoples_works peoples_works_people_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peoples_works
    ADD CONSTRAINT peoples_works_people_id_fkey FOREIGN KEY (people_id) REFERENCES public.people(id);
 T   ALTER TABLE ONLY public.peoples_works DROP CONSTRAINT peoples_works_people_id_fkey;
       public          postgres    false    3248    218    222            �           2606    18165 (   peoples_works peoples_works_work_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peoples_works
    ADD CONSTRAINT peoples_works_work_id_fkey FOREIGN KEY (work_id) REFERENCES public.work(id);
 R   ALTER TABLE ONLY public.peoples_works DROP CONSTRAINT peoples_works_work_id_fkey;
       public          postgres    false    220    3250    222           