PGDMP     0                    x         	   social_db    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24610 	   social_db    DATABASE     �   CREATE DATABASE social_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE social_db;
                user    false            �            1259    24779    accounts_user    TABLE     H   CREATE TABLE public.accounts_user (
    user_ptr_id integer NOT NULL
);
 !   DROP TABLE public.accounts_user;
       public         heap    user    false            �            1259    24642 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    user    false            �            1259    24640    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          user    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          user    false    208            �            1259    24652    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    user    false            �            1259    24650    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          user    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          user    false    210            �            1259    24634    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    user    false            �            1259    24632    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          user    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          user    false    206            �            1259    24660 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    user    false            �            1259    24670    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    user    false            �            1259    24668    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          user    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          user    false    214            �            1259    24658    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          user    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          user    false    212            �            1259    24678    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    user    false            �            1259    24676 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          user    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          user    false    216            �            1259    24738    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    user    false            �            1259    24736    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          user    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          user    false    218            �            1259    24624    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    user    false            �            1259    24622    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          user    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          user    false    204            �            1259    24613    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    user    false            �            1259    24611    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          user    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          user    false    202            �            1259    24769    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    user    false            �            1259    24791    groups_group    TABLE     �   CREATE TABLE public.groups_group (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(50) NOT NULL,
    description text NOT NULL,
    description_html text NOT NULL
);
     DROP TABLE public.groups_group;
       public         heap    user    false            �            1259    24789    groups_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.groups_group_id_seq;
       public          user    false    223            �           0    0    groups_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.groups_group_id_seq OWNED BY public.groups_group.id;
          public          user    false    222            �            1259    24806    groups_groupmember    TABLE     �   CREATE TABLE public.groups_groupmember (
    id integer NOT NULL,
    group_id integer NOT NULL,
    user_id integer NOT NULL
);
 &   DROP TABLE public.groups_groupmember;
       public         heap    user    false            �            1259    24804    groups_groupmember_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_groupmember_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.groups_groupmember_id_seq;
       public          user    false    225            �           0    0    groups_groupmember_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.groups_groupmember_id_seq OWNED BY public.groups_groupmember.id;
          public          user    false    224            �            1259    24830 
   posts_post    TABLE     �   CREATE TABLE public.posts_post (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    message text NOT NULL,
    message_html text NOT NULL,
    group_id integer,
    user_id integer NOT NULL
);
    DROP TABLE public.posts_post;
       public         heap    user    false            �            1259    24828    posts_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.posts_post_id_seq;
       public          user    false    227            �           0    0    posts_post_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;
          public          user    false    226            �
           2604    24645    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          user    false    208    209    209            �
           2604    24655    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          user    false    210    211    211            �
           2604    24637    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          user    false    207    206    207            �
           2604    24663    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          user    false    213    212    213            �
           2604    24673    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          user    false    215    214    215            �
           2604    24681    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          user    false    217    216    217            �
           2604    24741    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          user    false    219    218    219            �
           2604    24627    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          user    false    205    204    205            �
           2604    24616    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          user    false    203    202    203            �
           2604    24794    groups_group id    DEFAULT     r   ALTER TABLE ONLY public.groups_group ALTER COLUMN id SET DEFAULT nextval('public.groups_group_id_seq'::regclass);
 >   ALTER TABLE public.groups_group ALTER COLUMN id DROP DEFAULT;
       public          user    false    222    223    223            �
           2604    24809    groups_groupmember id    DEFAULT     ~   ALTER TABLE ONLY public.groups_groupmember ALTER COLUMN id SET DEFAULT nextval('public.groups_groupmember_id_seq'::regclass);
 D   ALTER TABLE public.groups_groupmember ALTER COLUMN id DROP DEFAULT;
       public          user    false    224    225    225            �
           2604    24833    posts_post id    DEFAULT     n   ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);
 <   ALTER TABLE public.posts_post ALTER COLUMN id DROP DEFAULT;
       public          user    false    227    226    227            �          0    24779    accounts_user 
   TABLE DATA           4   COPY public.accounts_user (user_ptr_id) FROM stdin;
    public          user    false    221   ��       �          0    24642 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          user    false    209   �       �          0    24652    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          user    false    211   9�       �          0    24634    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          user    false    207   V�       �          0    24660 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          user    false    213   �       �          0    24670    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          user    false    215   H�       �          0    24678    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          user    false    217   e�       �          0    24738    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          user    false    219   ��       �          0    24624    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          user    false    205   �       �          0    24613    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          user    false    203   ��       �          0    24769    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          user    false    220   p�       �          0    24791    groups_group 
   TABLE DATA           U   COPY public.groups_group (id, name, slug, description, description_html) FROM stdin;
    public          user    false    223   ��       �          0    24806    groups_groupmember 
   TABLE DATA           C   COPY public.groups_groupmember (id, group_id, user_id) FROM stdin;
    public          user    false    225   κ       �          0    24830 
   posts_post 
   TABLE DATA           ^   COPY public.posts_post (id, created_at, message, message_html, group_id, user_id) FROM stdin;
    public          user    false    227   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          user    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          user    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          user    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          user    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          user    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          user    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          user    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          user    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          user    false    202            �           0    0    groups_group_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.groups_group_id_seq', 2, true);
          public          user    false    222            �           0    0    groups_groupmember_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.groups_groupmember_id_seq', 4, true);
          public          user    false    224            �           0    0    posts_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.posts_post_id_seq', 5, true);
          public          user    false    226                       2606    24783     accounts_user accounts_user_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.accounts_user
    ADD CONSTRAINT accounts_user_pkey PRIMARY KEY (user_ptr_id);
 J   ALTER TABLE ONLY public.accounts_user DROP CONSTRAINT accounts_user_pkey;
       public            user    false    221            �
           2606    24767    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            user    false    209            �
           2606    24694 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            user    false    211    211            �
           2606    24657 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            user    false    211            �
           2606    24647    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            user    false    209            �
           2606    24685 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            user    false    207    207            �
           2606    24639 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            user    false    207            �
           2606    24675 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            user    false    215            �
           2606    24709 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            user    false    215    215            �
           2606    24665    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            user    false    213            �
           2606    24683 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            user    false    217                       2606    24723 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            user    false    217    217            �
           2606    24761     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            user    false    213                       2606    24747 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            user    false    219            �
           2606    24631 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            user    false    205    205            �
           2606    24629 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            user    false    205            �
           2606    24621 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            user    false    203            	           2606    24776 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            user    false    220                       2606    24801 "   groups_group groups_group_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.groups_group
    ADD CONSTRAINT groups_group_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.groups_group DROP CONSTRAINT groups_group_name_key;
       public            user    false    223                       2606    24799    groups_group groups_group_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.groups_group
    ADD CONSTRAINT groups_group_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.groups_group DROP CONSTRAINT groups_group_pkey;
       public            user    false    223                       2606    24803 "   groups_group groups_group_slug_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.groups_group
    ADD CONSTRAINT groups_group_slug_key UNIQUE (slug);
 L   ALTER TABLE ONLY public.groups_group DROP CONSTRAINT groups_group_slug_key;
       public            user    false    223                       2606    24815 D   groups_groupmember groups_groupmember_group_id_user_id_0156d33b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.groups_groupmember
    ADD CONSTRAINT groups_groupmember_group_id_user_id_0156d33b_uniq UNIQUE (group_id, user_id);
 n   ALTER TABLE ONLY public.groups_groupmember DROP CONSTRAINT groups_groupmember_group_id_user_id_0156d33b_uniq;
       public            user    false    225    225                       2606    24811 *   groups_groupmember groups_groupmember_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.groups_groupmember
    ADD CONSTRAINT groups_groupmember_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.groups_groupmember DROP CONSTRAINT groups_groupmember_pkey;
       public            user    false    225                       2606    24838    posts_post posts_post_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.posts_post DROP CONSTRAINT posts_post_pkey;
       public            user    false    227                        2606    24840 3   posts_post posts_post_user_id_message_b22cefcc_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_user_id_message_b22cefcc_uniq UNIQUE (user_id, message);
 ]   ALTER TABLE ONLY public.posts_post DROP CONSTRAINT posts_post_user_id_message_b22cefcc_uniq;
       public            user    false    227    227            �
           1259    24768    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            user    false    209            �
           1259    24705 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            user    false    211            �
           1259    24706 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            user    false    211            �
           1259    24691 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            user    false    207            �
           1259    24721 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            user    false    215            �
           1259    24720 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            user    false    215            �
           1259    24735 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            user    false    217                        1259    24734 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            user    false    217            �
           1259    24762     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            user    false    213                       1259    24758 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            user    false    219                       1259    24759 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            user    false    219                       1259    24778 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            user    false    220            
           1259    24777 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            user    false    220                       1259    24812    groups_group_name_e9c7da84_like    INDEX     l   CREATE INDEX groups_group_name_e9c7da84_like ON public.groups_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.groups_group_name_e9c7da84_like;
       public            user    false    223                       1259    24813    groups_group_slug_93c08f28_like    INDEX     l   CREATE INDEX groups_group_slug_93c08f28_like ON public.groups_group USING btree (slug varchar_pattern_ops);
 3   DROP INDEX public.groups_group_slug_93c08f28_like;
       public            user    false    223                       1259    24826 $   groups_groupmember_group_id_1c1b676d    INDEX     g   CREATE INDEX groups_groupmember_group_id_1c1b676d ON public.groups_groupmember USING btree (group_id);
 8   DROP INDEX public.groups_groupmember_group_id_1c1b676d;
       public            user    false    225                       1259    24827 #   groups_groupmember_user_id_f9e9f041    INDEX     e   CREATE INDEX groups_groupmember_user_id_f9e9f041 ON public.groups_groupmember USING btree (user_id);
 7   DROP INDEX public.groups_groupmember_user_id_f9e9f041;
       public            user    false    225                       1259    24851    posts_post_group_id_c91a8485    INDEX     W   CREATE INDEX posts_post_group_id_c91a8485 ON public.posts_post USING btree (group_id);
 0   DROP INDEX public.posts_post_group_id_c91a8485;
       public            user    false    227                       1259    24852    posts_post_user_id_a4f40dc7    INDEX     U   CREATE INDEX posts_post_user_id_a4f40dc7 ON public.posts_post USING btree (user_id);
 /   DROP INDEX public.posts_post_user_id_a4f40dc7;
       public            user    false    227            *           2606    24784 @   accounts_user accounts_user_user_ptr_id_8ec74346_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_user
    ADD CONSTRAINT accounts_user_user_ptr_id_8ec74346_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.accounts_user DROP CONSTRAINT accounts_user_user_ptr_id_8ec74346_fk_auth_user_id;
       public          user    false    2803    213    221            #           2606    24700 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          user    false    207    2790    211            "           2606    24695 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          user    false    2795    211    209            !           2606    24686 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          user    false    205    2785    207            %           2606    24715 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          user    false    2795    209    215            $           2606    24710 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          user    false    2803    213    215            '           2606    24729 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          user    false    207    2790    217            &           2606    24724 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          user    false    213    2803    217            (           2606    24748 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          user    false    219    205    2785            )           2606    24753 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          user    false    2803    213    219            +           2606    24816 J   groups_groupmember groups_groupmember_group_id_1c1b676d_fk_groups_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.groups_groupmember
    ADD CONSTRAINT groups_groupmember_group_id_1c1b676d_fk_groups_group_id FOREIGN KEY (group_id) REFERENCES public.groups_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.groups_groupmember DROP CONSTRAINT groups_groupmember_group_id_1c1b676d_fk_groups_group_id;
       public          user    false    223    2833    225            ,           2606    24821 F   groups_groupmember groups_groupmember_user_id_f9e9f041_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.groups_groupmember
    ADD CONSTRAINT groups_groupmember_user_id_f9e9f041_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.groups_groupmember DROP CONSTRAINT groups_groupmember_user_id_f9e9f041_fk_auth_user_id;
       public          user    false    2803    213    225            -           2606    24841 :   posts_post posts_post_group_id_c91a8485_fk_groups_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_group_id_c91a8485_fk_groups_group_id FOREIGN KEY (group_id) REFERENCES public.groups_group(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.posts_post DROP CONSTRAINT posts_post_group_id_c91a8485_fk_groups_group_id;
       public          user    false    2833    227    223            .           2606    24846 6   posts_post posts_post_user_id_a4f40dc7_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_user_id_a4f40dc7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.posts_post DROP CONSTRAINT posts_post_user_id_a4f40dc7_fk_auth_user_id;
       public          user    false    213    227    2803            �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�e�Qn�0���Sp��I���]��ԵQW�tSo?��o���|����<���r��õ��2��Q��k��U[@�?���J: /�	��5����'�w��&��qz���6�ʂt���v���O�(�؎	����:�Q9��6.���Ý6u���`�m��s�T�65��|�:�xZz��tj���y�uj���j� K�6)`|�^�~���,h����sLSmAoڊ}'=3&��0���u��*#����	�v7A/&h�n�^L�v�=�����yQ]J�z�N�.v�H 6�-G ���v
4]���r��}n�̍k��	27�-sxn���#>�����6���v�·��k� ����?��+�������{�      �   H  x�m�Oo�0�s��I��VHL$���� Qc� u� Pq�ӯ\�,��6O�<?�8;���9G�2��ݛ-7$Gņ}��c62�[�{i����8��K�=�t��m�,�7�<��'��
R�Du� �����0��P�b8�t�$6&��db�[C5�X��lŻU.���gS�cU�i~���O:�Ŭ�I�v��T��4��d�W�� a�:b��1�ڔ�l�b�kz*�K~�T�ecnSjPDML{'y��8��UZ\\����>Y��tuIf1�d�%��6�T�Z)�׽���;��)2�		'=TGY/UWy�c�3����i��D~�      �      x������ � �      �      x������ � �      �      x�3�4202�50�54W04�20�2��36�4�60�4�L��/�H-R(�/.�4⌮VJ�H�KOMQ�R�VJ�L�I)2��܋�K�bkkc9-8�����kblbhh2ل3$�������ũE#c���� o;-h      �   v   x�U�;1Dk�a˟�Є`-���N��'�������[NB�Y�.�Ph~��5'����h檭`7�W�)�x�|)l���m�)ĨM܆}����uq���2��8s�v��6�<_      �   �  x���ˎ� ���S�~҆��g����ITl�N�������޸���j���s2� @eG��+x��;d��5�s����߯�3DeN�J?;^G$% ��H��Ku���fp�F��ҏ��� �TifН�wF�)�F�F��םjߝm��C�\���[軚uA�5����Xd��!��h���l���W��R����EG$�Ć�+j�cm�K
#����F!���)�)���HЂ�`c�WF�C��m�l�f�(	\ p��$�c�~�[����A*�����k%����e��{��`B����e*��C�7�8�sab��@�_�fl�M�Q��λy��2��l�@5OɐQ�w_ϗ�x�2�����Yw^<nR#�	+/��۶n�YL�j(j ����Ui�$�����q��	"PM.��gD�s`�˻�[�n�� yi�      �      x������ � �      �   1   x�3�t��-��IUI-.�L�ptK@�Ĕ��4�eQQ�"���� ^��      �      x�3�4�4�2�4�1z\\\ ]      �   �   x�}��
�0Dg�+��IV���бc�nc
q���&C�@	��7��== J{c�q��57���T��uy����O6l��]r����n̵My�O�v����$�ӷ�M�Wl�ޝ��"X6�     