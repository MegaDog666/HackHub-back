PGDMP                      |            hackHub    16.2    16.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    hackHub    DATABASE     }   CREATE DATABASE "hackHub" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "hackHub";
                postgres    false            �           0    0    DATABASE "hackHub"    ACL     1   GRANT ALL ON DATABASE "hackHub" TO django_admin;
                   postgres    false    5025            �           0    0    SCHEMA public    ACL     ,   GRANT ALL ON SCHEMA public TO django_admin;
                   pg_database_owner    false    5            �            1259    16554 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �           0    0    TABLE auth_group    ACL     6   GRANT ALL ON TABLE public.auth_group TO django_admin;
          public          postgres    false    222            �            1259    16553    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    222            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    221            �           0    0    SEQUENCE auth_group_id_seq    ACL     @   GRANT ALL ON SEQUENCE public.auth_group_id_seq TO django_admin;
          public          postgres    false    221            �            1259    16563    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �           0    0    TABLE auth_group_permissions    ACL     B   GRANT ALL ON TABLE public.auth_group_permissions TO django_admin;
          public          postgres    false    224            �            1259    16562    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    224            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    223            �           0    0 &   SEQUENCE auth_group_permissions_id_seq    ACL     L   GRANT ALL ON SEQUENCE public.auth_group_permissions_id_seq TO django_admin;
          public          postgres    false    223            �            1259    16547    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �           0    0    TABLE auth_permission    ACL     ;   GRANT ALL ON TABLE public.auth_permission TO django_admin;
          public          postgres    false    220            �            1259    16546    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    220            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    219            �           0    0    SEQUENCE auth_permission_id_seq    ACL     E   GRANT ALL ON SEQUENCE public.auth_permission_id_seq TO django_admin;
          public          postgres    false    219            �            1259    16570 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �           0    0    TABLE auth_user    ACL     5   GRANT ALL ON TABLE public.auth_user TO django_admin;
          public          postgres    false    226            �            1259    16579    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �           0    0    TABLE auth_user_groups    ACL     <   GRANT ALL ON TABLE public.auth_user_groups TO django_admin;
          public          postgres    false    228            �            1259    16578    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    228            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    227            �           0    0     SEQUENCE auth_user_groups_id_seq    ACL     F   GRANT ALL ON SEQUENCE public.auth_user_groups_id_seq TO django_admin;
          public          postgres    false    227            �            1259    16569    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    226            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    225            �           0    0    SEQUENCE auth_user_id_seq    ACL     ?   GRANT ALL ON SEQUENCE public.auth_user_id_seq TO django_admin;
          public          postgres    false    225            �            1259    16586    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �           0    0     TABLE auth_user_user_permissions    ACL     F   GRANT ALL ON TABLE public.auth_user_user_permissions TO django_admin;
          public          postgres    false    230            �            1259    16585 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    230            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    229            �           0    0 *   SEQUENCE auth_user_user_permissions_id_seq    ACL     P   GRANT ALL ON SEQUENCE public.auth_user_user_permissions_id_seq TO django_admin;
          public          postgres    false    229            �            1259    16645    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �           0    0    TABLE django_admin_log    ACL     <   GRANT ALL ON TABLE public.django_admin_log TO django_admin;
          public          postgres    false    232            �            1259    16644    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    232            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    231            �           0    0     SEQUENCE django_admin_log_id_seq    ACL     F   GRANT ALL ON SEQUENCE public.django_admin_log_id_seq TO django_admin;
          public          postgres    false    231            �            1259    16538    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �           0    0    TABLE django_content_type    ACL     ?   GRANT ALL ON TABLE public.django_content_type TO django_admin;
          public          postgres    false    218            �            1259    16537    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �           0    0 #   SEQUENCE django_content_type_id_seq    ACL     I   GRANT ALL ON SEQUENCE public.django_content_type_id_seq TO django_admin;
          public          postgres    false    217            �            1259    16529    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �           0    0    TABLE django_migrations    ACL     =   GRANT ALL ON TABLE public.django_migrations TO django_admin;
          public          postgres    false    216            �            1259    16528    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    216            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    215            �           0    0 !   SEQUENCE django_migrations_id_seq    ACL     G   GRANT ALL ON SEQUENCE public.django_migrations_id_seq TO django_admin;
          public          postgres    false    215            �            1259    16674    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           0    0    TABLE django_session    ACL     :   GRANT ALL ON TABLE public.django_session TO django_admin;
          public          postgres    false    233            �            1259    16932    hackapp_contactsportfolio    TABLE     �   CREATE TABLE public.hackapp_contactsportfolio (
    id integer NOT NULL,
    telegram character varying(30) NOT NULL,
    git_hub_link character varying(50) NOT NULL,
    cv text NOT NULL
);
 -   DROP TABLE public.hackapp_contactsportfolio;
       public         heap    django_admin    false            �            1259    16931     hackapp_contactsportfolio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hackapp_contactsportfolio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.hackapp_contactsportfolio_id_seq;
       public          django_admin    false    235            �           0    0     hackapp_contactsportfolio_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.hackapp_contactsportfolio_id_seq OWNED BY public.hackapp_contactsportfolio.id;
          public          django_admin    false    234            �            1259    16964    hackapp_participants    TABLE     �  CREATE TABLE public.hackapp_participants (
    id_p integer NOT NULL,
    surname_p character varying(30) NOT NULL,
    name_p character varying(30) NOT NULL,
    secondname_p character varying(30),
    age_p integer NOT NULL,
    date_of_birth_p date NOT NULL,
    contacts_id integer NOT NULL,
    stack_tech_id integer NOT NULL,
    supervisor_id integer,
    team_id integer NOT NULL
);
 (   DROP TABLE public.hackapp_participants;
       public         heap    django_admin    false            �            1259    16963    hackapp_participants_id_p_seq    SEQUENCE     �   CREATE SEQUENCE public.hackapp_participants_id_p_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.hackapp_participants_id_p_seq;
       public          django_admin    false    243            �           0    0    hackapp_participants_id_p_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.hackapp_participants_id_p_seq OWNED BY public.hackapp_participants.id_p;
          public          django_admin    false    242            �            1259    16941    hackapp_stacktech    TABLE     _   CREATE TABLE public.hackapp_stacktech (
    id_st integer NOT NULL,
    stack text NOT NULL
);
 %   DROP TABLE public.hackapp_stacktech;
       public         heap    django_admin    false            �            1259    16940    hackapp_stacktech_id_st_seq    SEQUENCE     �   CREATE SEQUENCE public.hackapp_stacktech_id_st_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.hackapp_stacktech_id_st_seq;
       public          django_admin    false    237            �           0    0    hackapp_stacktech_id_st_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.hackapp_stacktech_id_st_seq OWNED BY public.hackapp_stacktech.id_st;
          public          django_admin    false    236            �            1259    16957    hackapp_supervisors    TABLE     ?  CREATE TABLE public.hackapp_supervisors (
    id_sup integer NOT NULL,
    name_sup character varying(30) NOT NULL,
    surname_sup character varying(30) NOT NULL,
    secondname_sup character varying(30) NOT NULL,
    age_sup integer NOT NULL,
    date_of_birth_sup date NOT NULL,
    teams_sup_id integer NOT NULL
);
 '   DROP TABLE public.hackapp_supervisors;
       public         heap    django_admin    false            �            1259    16956    hackapp_supervisors_id_sup_seq    SEQUENCE     �   CREATE SEQUENCE public.hackapp_supervisors_id_sup_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.hackapp_supervisors_id_sup_seq;
       public          django_admin    false    241            �           0    0    hackapp_supervisors_id_sup_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.hackapp_supervisors_id_sup_seq OWNED BY public.hackapp_supervisors.id_sup;
          public          django_admin    false    240            �            1259    16950    hackapp_teams    TABLE     �   CREATE TABLE public.hackapp_teams (
    id_t integer NOT NULL,
    name_t character varying(15) NOT NULL,
    banner_t character varying(100) NOT NULL,
    login_t character varying(40) NOT NULL,
    password_t character varying(100) NOT NULL
);
 !   DROP TABLE public.hackapp_teams;
       public         heap    django_admin    false            �            1259    16949    hackapp_teams_id_t_seq    SEQUENCE     �   CREATE SEQUENCE public.hackapp_teams_id_t_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hackapp_teams_id_t_seq;
       public          django_admin    false    239            �           0    0    hackapp_teams_id_t_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hackapp_teams_id_t_seq OWNED BY public.hackapp_teams.id_t;
          public          django_admin    false    238            �           2604    16557    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16566    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16550    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16573    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16582    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16589    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16648    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16541    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16532    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16935    hackapp_contactsportfolio id    DEFAULT     �   ALTER TABLE ONLY public.hackapp_contactsportfolio ALTER COLUMN id SET DEFAULT nextval('public.hackapp_contactsportfolio_id_seq'::regclass);
 K   ALTER TABLE public.hackapp_contactsportfolio ALTER COLUMN id DROP DEFAULT;
       public          django_admin    false    234    235    235            �           2604    16967    hackapp_participants id_p    DEFAULT     �   ALTER TABLE ONLY public.hackapp_participants ALTER COLUMN id_p SET DEFAULT nextval('public.hackapp_participants_id_p_seq'::regclass);
 H   ALTER TABLE public.hackapp_participants ALTER COLUMN id_p DROP DEFAULT;
       public          django_admin    false    242    243    243            �           2604    16944    hackapp_stacktech id_st    DEFAULT     �   ALTER TABLE ONLY public.hackapp_stacktech ALTER COLUMN id_st SET DEFAULT nextval('public.hackapp_stacktech_id_st_seq'::regclass);
 F   ALTER TABLE public.hackapp_stacktech ALTER COLUMN id_st DROP DEFAULT;
       public          django_admin    false    237    236    237            �           2604    16960    hackapp_supervisors id_sup    DEFAULT     �   ALTER TABLE ONLY public.hackapp_supervisors ALTER COLUMN id_sup SET DEFAULT nextval('public.hackapp_supervisors_id_sup_seq'::regclass);
 I   ALTER TABLE public.hackapp_supervisors ALTER COLUMN id_sup DROP DEFAULT;
       public          django_admin    false    241    240    241            �           2604    16953    hackapp_teams id_t    DEFAULT     x   ALTER TABLE ONLY public.hackapp_teams ALTER COLUMN id_t SET DEFAULT nextval('public.hackapp_teams_id_t_seq'::regclass);
 A   ALTER TABLE public.hackapp_teams ALTER COLUMN id_t DROP DEFAULT;
       public          django_admin    false    238    239    239            �          0    16554 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    222   ��       �          0    16563    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    224   ��       �          0    16547    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    220   ��       �          0    16570 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    226   ��       �          0    16579    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    228   s�       �          0    16586    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    230   ��       �          0    16645    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    232   ��       �          0    16538    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    218   ��       �          0    16529    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    216   ��       �          0    16674    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    233   ��       �          0    16932    hackapp_contactsportfolio 
   TABLE DATA           S   COPY public.hackapp_contactsportfolio (id, telegram, git_hub_link, cv) FROM stdin;
    public          django_admin    false    235   ��       �          0    16964    hackapp_participants 
   TABLE DATA           �   COPY public.hackapp_participants (id_p, surname_p, name_p, secondname_p, age_p, date_of_birth_p, contacts_id, stack_tech_id, supervisor_id, team_id) FROM stdin;
    public          django_admin    false    243   A�       �          0    16941    hackapp_stacktech 
   TABLE DATA           9   COPY public.hackapp_stacktech (id_st, stack) FROM stdin;
    public          django_admin    false    237   ��       �          0    16957    hackapp_supervisors 
   TABLE DATA           �   COPY public.hackapp_supervisors (id_sup, name_sup, surname_sup, secondname_sup, age_sup, date_of_birth_sup, teams_sup_id) FROM stdin;
    public          django_admin    false    241   ��       �          0    16950    hackapp_teams 
   TABLE DATA           T   COPY public.hackapp_teams (id_t, name_t, banner_t, login_t, password_t) FROM stdin;
    public          django_admin    false    239   D�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    219            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    227            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    225            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    229            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);
          public          postgres    false    231            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    217            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    215            �           0    0     hackapp_contactsportfolio_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.hackapp_contactsportfolio_id_seq', 1, true);
          public          django_admin    false    234            �           0    0    hackapp_participants_id_p_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.hackapp_participants_id_p_seq', 1, true);
          public          django_admin    false    242            �           0    0    hackapp_stacktech_id_st_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.hackapp_stacktech_id_st_seq', 1, true);
          public          django_admin    false    236            �           0    0    hackapp_supervisors_id_sup_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.hackapp_supervisors_id_sup_seq', 2, true);
          public          django_admin    false    240            �           0    0    hackapp_teams_id_t_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hackapp_teams_id_t_seq', 2, true);
          public          django_admin    false    238            �           2606    16672    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    222            �           2606    16602 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    224    224            �           2606    16568 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    224            �           2606    16559    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    222            �           2606    16593 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    220    220            �           2606    16552 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    220            �           2606    16584 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    228            �           2606    16617 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    228    228            �           2606    16575    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    226            �           2606    16591 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    230            �           2606    16631 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    230    230            �           2606    16667     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    226            �           2606    16653 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    232            �           2606    16545 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    218    218            �           2606    16543 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    218            �           2606    16536 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    216            �           2606    16680 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    233            �           2606    16939 8   hackapp_contactsportfolio hackapp_contactsportfolio_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.hackapp_contactsportfolio
    ADD CONSTRAINT hackapp_contactsportfolio_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.hackapp_contactsportfolio DROP CONSTRAINT hackapp_contactsportfolio_pkey;
       public            django_admin    false    235            �           2606    16969 .   hackapp_participants hackapp_participants_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_pkey PRIMARY KEY (id_p);
 X   ALTER TABLE ONLY public.hackapp_participants DROP CONSTRAINT hackapp_participants_pkey;
       public            django_admin    false    243            �           2606    16948 (   hackapp_stacktech hackapp_stacktech_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.hackapp_stacktech
    ADD CONSTRAINT hackapp_stacktech_pkey PRIMARY KEY (id_st);
 R   ALTER TABLE ONLY public.hackapp_stacktech DROP CONSTRAINT hackapp_stacktech_pkey;
       public            django_admin    false    237            �           2606    16962 ,   hackapp_supervisors hackapp_supervisors_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.hackapp_supervisors
    ADD CONSTRAINT hackapp_supervisors_pkey PRIMARY KEY (id_sup);
 V   ALTER TABLE ONLY public.hackapp_supervisors DROP CONSTRAINT hackapp_supervisors_pkey;
       public            django_admin    false    241            �           2606    16955     hackapp_teams hackapp_teams_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hackapp_teams
    ADD CONSTRAINT hackapp_teams_pkey PRIMARY KEY (id_t);
 J   ALTER TABLE ONLY public.hackapp_teams DROP CONSTRAINT hackapp_teams_pkey;
       public            django_admin    false    239            �           1259    16673    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    222            �           1259    16613 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    224            �           1259    16614 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    224            �           1259    16599 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    220            �           1259    16629 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    228            �           1259    16628 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    228            �           1259    16643 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    230            �           1259    16642 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    230            �           1259    16668     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    226            �           1259    16664 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    232            �           1259    16665 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    232            �           1259    16682 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    233            �           1259    16681 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    233            �           1259    16996 )   hackapp_participants_contacts_id_3abd0495    INDEX     q   CREATE INDEX hackapp_participants_contacts_id_3abd0495 ON public.hackapp_participants USING btree (contacts_id);
 =   DROP INDEX public.hackapp_participants_contacts_id_3abd0495;
       public            django_admin    false    243            �           1259    16997 +   hackapp_participants_stack_tech_id_9f199b52    INDEX     u   CREATE INDEX hackapp_participants_stack_tech_id_9f199b52 ON public.hackapp_participants USING btree (stack_tech_id);
 ?   DROP INDEX public.hackapp_participants_stack_tech_id_9f199b52;
       public            django_admin    false    243            �           1259    16998 +   hackapp_participants_supervisor_id_59fc1e71    INDEX     u   CREATE INDEX hackapp_participants_supervisor_id_59fc1e71 ON public.hackapp_participants USING btree (supervisor_id);
 ?   DROP INDEX public.hackapp_participants_supervisor_id_59fc1e71;
       public            django_admin    false    243            �           1259    16999 %   hackapp_participants_team_id_4a24471d    INDEX     i   CREATE INDEX hackapp_participants_team_id_4a24471d ON public.hackapp_participants USING btree (team_id);
 9   DROP INDEX public.hackapp_participants_team_id_4a24471d;
       public            django_admin    false    243            �           1259    16975 )   hackapp_supervisors_teams_sup_id_b0a28c44    INDEX     q   CREATE INDEX hackapp_supervisors_teams_sup_id_b0a28c44 ON public.hackapp_supervisors USING btree (teams_sup_id);
 =   DROP INDEX public.hackapp_supervisors_teams_sup_id_b0a28c44;
       public            django_admin    false    241            �           2606    16608 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    224    220    4782            �           2606    16603 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    224    222    4787            �           2606    16594 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    218    220    4777            �           2606    16623 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    222    228    4787            �           2606    16618 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    226    228    4795            �           2606    16637 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    220    230    4782            �           2606    16632 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    4795    230    226            �           2606    16654 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    4777    218    232            �           2606    16659 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    4795    226    232            �           2606    16976 K   hackapp_participants hackapp_participants_contacts_id_3abd0495_fk_hackapp_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_contacts_id_3abd0495_fk_hackapp_c FOREIGN KEY (contacts_id) REFERENCES public.hackapp_contactsportfolio(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.hackapp_participants DROP CONSTRAINT hackapp_participants_contacts_id_3abd0495_fk_hackapp_c;
       public          django_admin    false    243    235    4820            �           2606    16981 M   hackapp_participants hackapp_participants_stack_tech_id_9f199b52_fk_hackapp_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_stack_tech_id_9f199b52_fk_hackapp_s FOREIGN KEY (stack_tech_id) REFERENCES public.hackapp_stacktech(id_st) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.hackapp_participants DROP CONSTRAINT hackapp_participants_stack_tech_id_9f199b52_fk_hackapp_s;
       public          django_admin    false    243    237    4822            �           2606    17001 M   hackapp_participants hackapp_participants_supervisor_id_59fc1e71_fk_hackapp_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_supervisor_id_59fc1e71_fk_hackapp_s FOREIGN KEY (supervisor_id) REFERENCES public.hackapp_supervisors(id_sup) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.hackapp_participants DROP CONSTRAINT hackapp_participants_supervisor_id_59fc1e71_fk_hackapp_s;
       public          django_admin    false    241    4826    243            �           2606    16991 P   hackapp_participants hackapp_participants_team_id_4a24471d_fk_hackapp_teams_id_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_team_id_4a24471d_fk_hackapp_teams_id_t FOREIGN KEY (team_id) REFERENCES public.hackapp_teams(id_t) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.hackapp_participants DROP CONSTRAINT hackapp_participants_team_id_4a24471d_fk_hackapp_teams_id_t;
       public          django_admin    false    4824    239    243            �           2606    16970 S   hackapp_supervisors hackapp_supervisors_teams_sup_id_b0a28c44_fk_hackapp_teams_id_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.hackapp_supervisors
    ADD CONSTRAINT hackapp_supervisors_teams_sup_id_b0a28c44_fk_hackapp_teams_id_t FOREIGN KEY (teams_sup_id) REFERENCES public.hackapp_teams(id_t) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.hackapp_supervisors DROP CONSTRAINT hackapp_supervisors_teams_sup_id_b0a28c44_fk_hackapp_teams_id_t;
       public          django_admin    false    241    4824    239            �      x������ � �      �      x������ � �      �   �  x�e��n� F��)�SIҟ\�5&MQ��hm��Է_b��]0��T|�F}�S՟���]*;�奌Z�����d����
*�l <ۛ�%[ ����V h��f��G�G7�Ԩ�\N�h��#�,
2�D��G�u��Ǭ�omv\.��"�;%u�I%`��M6xx���OmZ~>��������#p��q����|�র�Z^�U{0��V���E
��q��G?��;�,h������[=�0�t-�NzfL��0���:A`�J���z��-^�Ut-�.�d�q�w�'K���K8�r�7��W�[��N���o���]���F���ה�x�e�(zk���Μ���&k�0��O��.�A��1i�"� &�hH��h`�X��I0M�_�o�pU�s��*[A7b,%��D��I	�4e�e)ј%i���^���݊Q� �!#�03���L�I����Z�}kk;      �   �   x�]��
�@ ��St�&ʷ߮�B�A�<T`� VşrUl-z�<7�a��1��_�@��с=<�YU���PuA����t0�Xf�1&�3J8El]�����ab��?�]\�]���n"�(�m�G�u�k #��R�=!���0��W�m-E�Y� ��{�g�r���[���4�T�3      �      x������ � �      �      x������ � �      �   A  x��һr�@�����J&qg���kk���ªD���ݳS���c�9��{ F(��Y&-5D+��( ��d�D��˥m�����'Y��F��q ��ąN0��$t��b�[TV A�W��*�$m�QU���ȫ�Aڣx����RI��`�(;��*)�/rWd���W�e�l��(���h��GE^�O��>��&��D�9�.a�����,�zM�5nA)%7��J�%e�a���ǻ���yS�O<�9}�	J��@�X/��3}I[��Tuҭ���)̯��CI�\���QR�y�o��}rS��O��70��      �   �   x�M�K�0D��a��]�X��Q�؊�ޞ@Ea7�Fo�}JF�8{�qT��2%�$��T��R�q�#D��4�����	�?�}���8�*Xm��dR/+}��T�?dL��uS*�bR�n���fα�V�L��m��/��L�      �   #  x���ݎ�0�k|�����ϲI�`�f�v�bƷߖ���x�����+�Z7$3�t�&V  ��`��]� "�| ����B���UzL��SP���>�vx��pIH)!��:w΍��
�wW���N��qߠ@Zz7���uJ�ɺA�:}V���6'�o��b?�BK7�U��A�f�bK[|�)�%�7��1��J������p��ڧ�L���35��azm��
�����U![�|L�8�����L@�tkt:���o6vO�.��Ua9ݿ�k�S�A����~򹕫��Q'�4}��71���:G�ʉ�t^�,��Y%�#���e�.3un�o2ba��@5��Q>���f#�� ��'c]g��ou���ג`�ZT�̧��+$D�����O����(i��dN����;�T ���=�nk(�1�~p�� �c\N �dZ�|1E�B:��:�uH��^)��~&�^T�x�6�}NF�q� $�bEx{���|�M>�8M�?h����>]�l5���>X�L��C
��W�>� Є��      �     x��Kr�0  е���N�$��@,�����)������;�˞C�vj�ny'Vsq3�8'���ˌM�R�wc)�����; ʪv�lD�����m�A�{�h��{��m/q=鞧��mU��Ȍ/���\C�fN��L��S����Ӂ��ӎh���螘�+Znۍ;ǚ�S�)�J��z�fܯ[?|X<�;��xy$�nϢ������Q�6I*�-Y�^������"]g�Q���CL  $I�Z�p�#JV���ϒ�?��]/      �   E   x�3��())(���/��M��LI-JM̃��g�d�&�%����<�=��=J�t��4g^�BrW� ���      �   D   x�3估�b�Ŧ�.6\�{a߅��& [�ܭ���6]�q���Ќ����L��H�4�@�=... 5F%�      �   7   x�3��,���S�p�J�K���Q�/.I/J��QpVV���,������� `a�      �   X   x�3�0��/l��pa��~����;.콰$��®�M���]�42�4200�#NC.#N���T$� $o �7����� 8O.=      �   I   x�3估�/6^�漰���.츰���HL*�tH�M���K�υ�����8���R��=... %$     