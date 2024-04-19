PGDMP      4                |            hackHub    16.2    16.2 A               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16399    hackHub    DATABASE     }   CREATE DATABASE "hackHub" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "hackHub";
                postgres    false            �            1259    16400    participants    TABLE     @  CREATE TABLE public.participants (
    id_p integer NOT NULL,
    surname_p text NOT NULL,
    name_p text NOT NULL,
    secondname_p text,
    age_p integer NOT NULL,
    date_of_birth_p date NOT NULL,
    team integer NOT NULL,
    supervisor integer,
    contacts integer NOT NULL,
    stack_tech integer NOT NULL
);
     DROP TABLE public.participants;
       public         heap    postgres    false                       0    0    TABLE participants    COMMENT     f   COMMENT ON TABLE public.participants IS 'Таблица с данными об участниках';
          public          postgres    false    215                       0    0    COLUMN participants.id_p    COMMENT     G   COMMENT ON COLUMN public.participants.id_p IS 'id участника';
          public          postgres    false    215                       0    0    COLUMN participants.surname_p    COMMENT     E   COMMENT ON COLUMN public.participants.surname_p IS 'Фамилия';
          public          postgres    false    215                       0    0    COLUMN participants.name_p    COMMENT     :   COMMENT ON COLUMN public.participants.name_p IS 'Имя';
          public          postgres    false    215                       0    0     COLUMN participants.secondname_p    COMMENT     J   COMMENT ON COLUMN public.participants.secondname_p IS 'Отчество';
          public          postgres    false    215                       0    0 #   COLUMN participants.date_of_birth_p    COMMENT     V   COMMENT ON COLUMN public.participants.date_of_birth_p IS 'День рождения';
          public          postgres    false    215            �            1259    16412    Participants_id_seq    SEQUENCE     �   ALTER TABLE public.participants ALTER COLUMN id_p ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Participants_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    215            �            1259    16456    supervisors    TABLE     �   CREATE TABLE public.supervisors (
    id_sup integer NOT NULL,
    name_sup text NOT NULL,
    surname_sup text NOT NULL,
    secondname_sup text,
    age_sup integer,
    date_of_birth_sup date,
    team_sup integer NOT NULL
);
    DROP TABLE public.supervisors;
       public         heap    postgres    false                       0    0    TABLE supervisors    COMMENT     M   COMMENT ON TABLE public.supervisors IS 'Данны об кураторах';
          public          postgres    false    220                       0    0    COLUMN supervisors.name_sup    COMMENT     [   COMMENT ON COLUMN public.supervisors.name_sup IS 'Имя куратора команды';
          public          postgres    false    220                       0    0    COLUMN supervisors.surname_sup    COMMENT     W   COMMENT ON COLUMN public.supervisors.surname_sup IS 'Фамилия куратора';
          public          postgres    false    220                       0    0 !   COLUMN supervisors.secondname_sup    COMMENT     k   COMMENT ON COLUMN public.supervisors.secondname_sup IS 'Отчество куратора команды';
          public          postgres    false    220                       0    0    COLUMN supervisors.age_sup    COMMENT     B   COMMENT ON COLUMN public.supervisors.age_sup IS 'Возраст';
          public          postgres    false    220                        0    0 $   COLUMN supervisors.date_of_birth_sup    COMMENT     h   COMMENT ON COLUMN public.supervisors.date_of_birth_sup IS 'День рождение куратора';
          public          postgres    false    220            �            1259    16455    Supervisors_id_sup_seq    SEQUENCE     �   ALTER TABLE public.supervisors ALTER COLUMN id_sup ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Supervisors_id_sup_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    220            �            1259    16403    teams    TABLE     �   CREATE TABLE public.teams (
    id_t integer NOT NULL,
    name_t text NOT NULL,
    banner_t text,
    login_t text NOT NULL,
    password_t text NOT NULL,
    participant integer
);
    DROP TABLE public.teams;
       public         heap    postgres    false            !           0    0    TABLE teams    COMMENT     K   COMMENT ON TABLE public.teams IS 'Данные об участниках';
          public          postgres    false    216            "           0    0    COLUMN teams.name_t    COMMENT     L   COMMENT ON COLUMN public.teams.name_t IS 'Название команды';
          public          postgres    false    216            #           0    0    COLUMN teams.banner_t    COMMENT     p   COMMENT ON COLUMN public.teams.banner_t IS 'Лого команды, путь к нему на сервере';
          public          postgres    false    216            $           0    0    COLUMN teams.login_t    COMMENT     T   COMMENT ON COLUMN public.teams.login_t IS 'Логин учетной записи';
          public          postgres    false    216            %           0    0    COLUMN teams.password_t    COMMENT     Y   COMMENT ON COLUMN public.teams.password_t IS 'Пароль учетной записи';
          public          postgres    false    216            �            1259    16427    Teams_id_seq    SEQUENCE     �   ALTER TABLE public.teams ALTER COLUMN id_t ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Teams_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    216            �            1259    16469    contacts_and_portfolio    TABLE     �   CREATE TABLE public.contacts_and_portfolio (
    id integer NOT NULL,
    telegram text NOT NULL,
    git_hub_link text,
    cv text,
    participant integer
);
 *   DROP TABLE public.contacts_and_portfolio;
       public         heap    postgres    false            &           0    0 &   COLUMN contacts_and_portfolio.telegram    COMMENT     d   COMMENT ON COLUMN public.contacts_and_portfolio.telegram IS 'ссылка на телеграмм';
          public          postgres    false    222            '           0    0 *   COLUMN contacts_and_portfolio.git_hub_link    COMMENT     \   COMMENT ON COLUMN public.contacts_and_portfolio.git_hub_link IS 'Ссылка на GitHub';
          public          postgres    false    222            (           0    0     COLUMN contacts_and_portfolio.cv    COMMENT     F   COMMENT ON COLUMN public.contacts_and_portfolio.cv IS 'Резюме';
          public          postgres    false    222            �            1259    16468    contacts_and_portfolio_id_seq    SEQUENCE     �   ALTER TABLE public.contacts_and_portfolio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contacts_and_portfolio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    222            �            1259    16502 
   stack_tech    TABLE     w   CREATE TABLE public.stack_tech (
    stack text NOT NULL,
    id integer NOT NULL,
    participant integer NOT NULL
);
    DROP TABLE public.stack_tech;
       public         heap    postgres    false            )           0    0    TABLE stack_tech    COMMENT     ~   COMMENT ON TABLE public.stack_tech IS 'Таблица, хранящая данные о стеке хакатонщиков';
          public          postgres    false    223            *           0    0    COLUMN stack_tech.stack    COMMENT     {   COMMENT ON COLUMN public.stack_tech.stack IS 'Хранится строка со стеками пользователя';
          public          postgres    false    223            +           0    0    COLUMN stack_tech.id    COMMENT     0   COMMENT ON COLUMN public.stack_tech.id IS 'id';
          public          postgres    false    223            �            1259    16508    stack_tech_id_seq    SEQUENCE     �   ALTER TABLE public.stack_tech ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.stack_tech_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    223                      0    16469    contacts_and_portfolio 
   TABLE DATA           ]   COPY public.contacts_and_portfolio (id, telegram, git_hub_link, cv, participant) FROM stdin;
    public          postgres    false    222   �H                 0    16400    participants 
   TABLE DATA           �   COPY public.participants (id_p, surname_p, name_p, secondname_p, age_p, date_of_birth_p, team, supervisor, contacts, stack_tech) FROM stdin;
    public          postgres    false    215   I                 0    16502 
   stack_tech 
   TABLE DATA           <   COPY public.stack_tech (stack, id, participant) FROM stdin;
    public          postgres    false    223   1I       
          0    16456    supervisors 
   TABLE DATA           z   COPY public.supervisors (id_sup, name_sup, surname_sup, secondname_sup, age_sup, date_of_birth_sup, team_sup) FROM stdin;
    public          postgres    false    220   NI                 0    16403    teams 
   TABLE DATA           Y   COPY public.teams (id_t, name_t, banner_t, login_t, password_t, participant) FROM stdin;
    public          postgres    false    216   kI       ,           0    0    Participants_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Participants_id_seq"', 1, false);
          public          postgres    false    217            -           0    0    Supervisors_id_sup_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Supervisors_id_sup_seq"', 1, false);
          public          postgres    false    219            .           0    0    Teams_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Teams_id_seq"', 1, false);
          public          postgres    false    218            /           0    0    contacts_and_portfolio_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.contacts_and_portfolio_id_seq', 1, false);
          public          postgres    false    221            0           0    0    stack_tech_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stack_tech_id_seq', 1, false);
          public          postgres    false    224            e           2606    16440    participants Participants_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT "Participants_pkey" PRIMARY KEY (id_p);
 J   ALTER TABLE ONLY public.participants DROP CONSTRAINT "Participants_pkey";
       public            postgres    false    215            i           2606    16462    supervisors Supervisors_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.supervisors
    ADD CONSTRAINT "Supervisors_pkey" PRIMARY KEY (id_sup);
 H   ALTER TABLE ONLY public.supervisors DROP CONSTRAINT "Supervisors_pkey";
       public            postgres    false    220            k           2606    16475 2   contacts_and_portfolio contacts_and_portfolio_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.contacts_and_portfolio
    ADD CONSTRAINT contacts_and_portfolio_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.contacts_and_portfolio DROP CONSTRAINT contacts_and_portfolio_pkey;
       public            postgres    false    222            m           2606    16517    stack_tech stack_tech_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.stack_tech
    ADD CONSTRAINT stack_tech_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.stack_tech DROP CONSTRAINT stack_tech_pkey;
       public            postgres    false    223            g           2606    16444    teams teams_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id_t);
 :   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
       public            postgres    false    216            s           2606    16463 %   supervisors Supervisors_team_sup_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisors
    ADD CONSTRAINT "Supervisors_team_sup_fkey" FOREIGN KEY (team_sup) REFERENCES public.teams(id_t);
 Q   ALTER TABLE ONLY public.supervisors DROP CONSTRAINT "Supervisors_team_sup_fkey";
       public          postgres    false    216    4711    220            n           2606    16497 &   participants contacts_and_portfolio_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT contacts_and_portfolio_fk FOREIGN KEY (contacts) REFERENCES public.contacts_and_portfolio(id) NOT VALID;
 P   ALTER TABLE ONLY public.participants DROP CONSTRAINT contacts_and_portfolio_fk;
       public          postgres    false    4715    215    222            1           0    0 4   CONSTRAINT contacts_and_portfolio_fk ON participants    COMMENT     �   COMMENT ON CONSTRAINT contacts_and_portfolio_fk ON public.participants IS 'Внешний ключ к контактам и портфолио';
          public          postgres    false    4718            t           2606    16476 >   contacts_and_portfolio contacts_and_portfolio_participant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts_and_portfolio
    ADD CONSTRAINT contacts_and_portfolio_participant_fkey FOREIGN KEY (participant) REFERENCES public.participants(id_p);
 h   ALTER TABLE ONLY public.contacts_and_portfolio DROP CONSTRAINT contacts_and_portfolio_participant_fkey;
       public          postgres    false    4709    215    222            r           2606    16482    teams participant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT participant_fk FOREIGN KEY (participant) REFERENCES public.participants(id_p) NOT VALID;
 >   ALTER TABLE ONLY public.teams DROP CONSTRAINT participant_fk;
       public          postgres    false    4709    215    216            u           2606    16518    stack_tech participant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.stack_tech
    ADD CONSTRAINT participant_fk FOREIGN KEY (participant) REFERENCES public.participants(id_p) NOT VALID;
 C   ALTER TABLE ONLY public.stack_tech DROP CONSTRAINT participant_fk;
       public          postgres    false    223    215    4709            2           0    0 '   CONSTRAINT participant_fk ON stack_tech    COMMENT     �   COMMENT ON CONSTRAINT participant_fk ON public.stack_tech IS 'Внешний ключ на таблицу участников';
          public          postgres    false    4725            o           2606    16523    participants stack_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT stack_fk FOREIGN KEY (stack_tech) REFERENCES public.stack_tech(id) NOT VALID;
 ?   ALTER TABLE ONLY public.participants DROP CONSTRAINT stack_fk;
       public          postgres    false    223    215    4717            3           0    0 #   CONSTRAINT stack_fk ON participants    COMMENT     {   COMMENT ON CONSTRAINT stack_fk ON public.participants IS 'внешний ключ для стэка технологий';
          public          postgres    false    4719            p           2606    16492    participants supervisor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT supervisor_fk FOREIGN KEY (supervisor) REFERENCES public.supervisors(id_sup) NOT VALID;
 D   ALTER TABLE ONLY public.participants DROP CONSTRAINT supervisor_fk;
       public          postgres    false    215    4713    220            4           0    0 (   CONSTRAINT supervisor_fk ON participants    COMMENT     ~   COMMENT ON CONSTRAINT supervisor_fk ON public.participants IS 'Внешний ключ к таблице кураторов';
          public          postgres    false    4720            q           2606    16487    participants team_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT team_fk FOREIGN KEY (team) REFERENCES public.teams(id_t) NOT VALID;
 >   ALTER TABLE ONLY public.participants DROP CONSTRAINT team_fk;
       public          postgres    false    216    4711    215            5           0    0 "   CONSTRAINT team_fk ON participants    COMMENT     o   COMMENT ON CONSTRAINT team_fk ON public.participants IS 'Внешний ключ таблицы команд';
          public          postgres    false    4721                  x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �     