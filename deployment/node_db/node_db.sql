PGDMP
     
#
    
                {
         	   tfnode_db
    13.0    15.1
 �    �           0
    0    ENCODING
    ENCODING
        SET client_encoding = 'UTF8';
                      
false
            �           0
    0 
   STDSTRINGS
 
   STDSTRINGS
     (
   SET standard_conforming_strings = 'on';
                      false
            �           0
    0 
   SEARCHPATH
 
   SEARCHPATH
     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false
            �           1262
    16384 	   tfnode_db
    DATABASE
     t
   CREATE DATABASE tfnode_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE tfnode_db;
                postgres
    false
                        2615    2200
    public    SCHEMA
     2   -- *not* creating schema, since initdb creates it
 2
   -- *not* dropping schema, since initdb creates it
                postgres
    false
            �           0
    0 
   SCHEMA public
    ACL
     Q
   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres
    false
    4            �            1259
    16385 
   auth_group
    TABLE
     f
   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public
         heap
    postgres
    false
    4            �            1259
    16388    auth_group_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (
   DROP SEQUENCE public.auth_group_id_seq;
       public
          postgres
    false
    4    200
            �           0
    0    auth_group_id_seq
    SEQUENCE OWNED BY
     G
   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public
          postgres
    false
    201            �            1259
    16390    auth_group_permissions
    TABLE
     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *
   DROP TABLE public.auth_group_permissions;
       public
         heap
    postgres
    false
    4            �            1259
    16393    auth_group_permissions_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4
   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public
          postgres
    false
    4    202
            �           0
    0    auth_group_permissions_id_seq
    SEQUENCE OWNED BY
     _
   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public
          postgres
    false
    203            �            1259
    16395    auth_permission
    TABLE
     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #
   DROP TABLE public.auth_permission;
       public
         heap
    postgres
    false
    4            �            1259
    16398    auth_permission_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -
   DROP SEQUENCE public.auth_permission_id_seq;
       public
          postgres
    false
    204    4
            �           0
    0    auth_permission_id_seq
    SEQUENCE OWNED BY
     Q
   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public
          postgres
    false
    205            �            1259
    16400 	   auth_user
    TABLE
     �  CREATE TABLE public.auth_user (
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
       public
         heap
    postgres
    false
    4            �            1259
    16406    auth_user_groups
    TABLE
     ~
   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $
   DROP TABLE public.auth_user_groups;
       public
         heap
    postgres
    false
    4            �            1259
    16409    auth_user_groups_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .
   DROP SEQUENCE public.auth_user_groups_id_seq;
       public
          postgres
    false
    4    207
            �           0
    0    auth_user_groups_id_seq
    SEQUENCE OWNED BY
     S
   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public
          postgres
    false
    208            �            1259
    16411    auth_user_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    4    206            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    209            �            1259    16413    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false    4            �            1259    16416 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    4    210            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    211            �            1259    16418    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false    4            �            1259    16421    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false    4            �            1259    16428    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213    4            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    214            �            1259    16430    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '
   DROP TABLE public.django_content_type;
       public
         heap
    postgres
    false
    4            �            1259
    16433    django_content_type_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1
   DROP SEQUENCE public.django_content_type_id_seq;
       public
          postgres
    false
    4    215
            �           0
    0    django_content_type_id_seq
    SEQUENCE OWNED BY
     Y
   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public
          postgres
    false
    216            �            1259
    16435    django_migrations
    TABLE
     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %
   DROP TABLE public.django_migrations;
       public
         heap
    postgres
    false
    4            �            1259
    16441    django_migrations_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /
   DROP SEQUENCE public.django_migrations_id_seq;
       public
          postgres
    false
    4    217
            �           0
    0    django_migrations_id_seq
    SEQUENCE OWNED BY
     U
   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public
          postgres
    false
    218            �            1259
    16443    django_session
    TABLE
     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false    4            �            1259    16449    nodes_commandsdevice    TABLE     �   CREATE TABLE public.nodes_commandsdevice (
    id bigint NOT NULL,
    commands_id integer NOT NULL,
    device_id integer NOT NULL
);
 (   DROP TABLE public.nodes_commandsdevice;
       public         heap    postgres    false    4            �            1259    16452    nodes_commandsdevice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nodes_commandsdevice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.nodes_commandsdevice_id_seq;
       public          postgres    false    4    220            �           0    0    nodes_commandsdevice_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.nodes_commandsdevice_id_seq OWNED BY public.nodes_commandsdevice.id;
          public          postgres    false    221            �            1259    16454    nodes_commandsvalue    TABLE     h   CREATE TABLE public.nodes_commandsvalue (
    id integer NOT NULL,
    command character varying(50)
);
 '   DROP TABLE public.nodes_commandsvalue;
       public         heap    postgres    false    4            �            1259    16457    nodes_commandsvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nodes_commandsvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.nodes_commandsvalue_id_seq;
       public          postgres    false    4    222            �           0    0    nodes_commandsvalue_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.nodes_commandsvalue_id_seq OWNED BY public.nodes_commandsvalue.id;
          public          postgres    false    223            �            1259    16459    nodes_coordinateses    TABLE     �   CREATE TABLE public.nodes_coordinateses (
    id bigint NOT NULL,
    x double precision NOT NULL,
    y double precision NOT NULL
);
 '   DROP TABLE public.nodes_coordinateses;
       public         heap    postgres    false    4            �            1259    16462    nodes_coordinateses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nodes_coordinateses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.nodes_coordinateses_id_seq;
       public          postgres    false    4    224            �           0    0    nodes_coordinateses_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.nodes_coordinateses_id_seq OWNED BY public.nodes_coordinateses.id;
          public          postgres    false    225            �            1259    16464    nodes_dbstatus    TABLE     k   CREATE TABLE public.nodes_dbstatus (
    id integer NOT NULL,
    status character varying(20) NOT NULL
);
 "
   DROP TABLE public.nodes_dbstatus;
       public
         heap
    postgres
    false
    4            �            1259
    16467    nodes_dbstatus_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.nodes_dbstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,
   DROP SEQUENCE public.nodes_dbstatus_id_seq;
       public
          postgres
    false
    4    226
            �           0
    0    nodes_dbstatus_id_seq
    SEQUENCE OWNED BY
     O
   ALTER SEQUENCE public.nodes_dbstatus_id_seq OWNED BY public.nodes_dbstatus.id;
          public
          postgres
    false
    227            �            1259
    16469    nodes_device
    TABLE
     &
  CREATE TABLE public.nodes_device (
    id integer NOT NULL,
    "deviceName" character varying(100) NOT NULL,
    "deviceDataFields" jsonb[] NOT NULL,
    "deviceText" character varying(100) NOT NULL,
    type_id integer NOT NULL,
    coordinates jsonb,
    short_name character varying(12)
);
     DROP TABLE public.nodes_device;
       public
         heap
    postgres
    false
    4            �            1259
    16475    nodes_device_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.nodes_device_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *
   DROP SEQUENCE public.nodes_device_id_seq;
       public
          postgres
    false
    228    4
            �           0
    0    nodes_device_id_seq
    SEQUENCE OWNED BY
     K
   ALTER SEQUENCE public.nodes_device_id_seq OWNED BY public.nodes_device.id;
          public
          postgres
    false
    229            �            1259
    16477    nodes_devicenode
    TABLE
        CREATE TABLE public.nodes_devicenode (
    id bigint NOT NULL,
    device_id integer NOT NULL,
    node_id integer NOT NULL
);
 $
   DROP TABLE public.nodes_devicenode;
       public
         heap
    postgres
    false
    4            �            1259
    16480    nodes_devicenode_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.nodes_devicenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .
   DROP SEQUENCE public.nodes_devicenode_id_seq;
       public
          postgres
    false
    4    230
            �           0
    0    nodes_devicenode_id_seq
    SEQUENCE OWNED BY
     S
   ALTER SEQUENCE public.nodes_devicenode_id_seq OWNED BY public.nodes_devicenode.id;
          public
          postgres
    false
    231            �            1259
    16482    nodes_devicetype
    TABLE
     �   CREATE TABLE public.nodes_devicetype (
    id integer NOT NULL,
    "deviceTypeName" character varying(100) NOT NULL,
    "deviceTypeText" character varying(100) NOT NULL,
    "measureTypeId_id" integer NOT NULL
);
 $
   DROP TABLE public.nodes_devicetype;
       public
         heap
    postgres
    false
    4            �            1259
    16485    nodes_devicetype_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.nodes_devicetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .
   DROP SEQUENCE public.nodes_devicetype_id_seq;
       public
          postgres
    false
    232    4
            �           0
    0    nodes_devicetype_id_seq
    SEQUENCE OWNED BY
     S
   ALTER SEQUENCE public.nodes_devicetype_id_seq OWNED BY public.nodes_devicetype.id;
          public
          postgres
    false
    233            �            1259
    16487    nodes_measuretype
    TABLE
     �   CREATE TABLE public.nodes_measuretype (
    id integer NOT NULL,
    "measureTypeName" character varying(100) NOT NULL,
    "measureTypeText" character varying(100) NOT NULL
);
 %
   DROP TABLE public.nodes_measuretype;
       public
         heap
    postgres
    false
    4            �            1259
    16490    nodes_measuretype_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.nodes_measuretype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /
   DROP SEQUENCE public.nodes_measuretype_id_seq;
       public
          postgres
    false
    4    234
            �           0
    0    nodes_measuretype_id_seq
    SEQUENCE OWNED BY
     U
   ALTER SEQUENCE public.nodes_measuretype_id_seq OWNED BY public.nodes_measuretype.id;
          public
          postgres
    false
    235            �            1259
    16492 
   nodes_node
    TABLE
        CREATE TABLE public.nodes_node (
    id integer NOT NULL,
    "nodeName" character varying(100) NOT NULL,
    "nodeText" character varying(100) NOT NULL,
    "isActive" boolean NOT NULL,
    "nodeTypeId_id" integer NOT NULL,
    coordinates jsonb,
    short_name character varying(12)
);
    DROP TABLE public.nodes_node;
       public
         heap
    postgres
    false
    4            �            1259
    16498    nodes_node_id_seq
    SEQUENCE
     �   CREATE SEQUENCE public.nodes_node_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (
   DROP SEQUENCE public.nodes_node_id_seq;
       public
          postgres
    false
    4    236
            �           0
    0    nodes_node_id_seq
    SEQUENCE OWNED BY
     G
   ALTER SEQUENCE public.nodes_node_id_seq OWNED BY public.nodes_node.id;
          public
          postgres
    false
    237            �            1259
    16500    nodes_nodetype
    TABLE
     �   CREATE TABLE public.nodes_nodetype (
    id integer NOT NULL,
    "nodeTypeName" character varying(100) NOT NULL,
    "nodeTypeText" character varying(100) NOT NULL
);
 "   DROP TABLE public.nodes_nodetype;
       public         heap    postgres    false    4            �            1259    16503    nodes_nodetype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nodes_nodetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.nodes_nodetype_id_seq;
       public          postgres    false    4    238            �           0    0    nodes_nodetype_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.nodes_nodetype_id_seq OWNED BY public.nodes_nodetype.id;
          public          postgres    false    239            �            1259    16505    nodes_patchresult    TABLE     �   CREATE TABLE public.nodes_patchresult (
    id integer NOT NULL,
    patch_result character varying(300) NOT NULL,
    time_stamp timestamp with time zone NOT NULL
);
 %   DROP TABLE public.nodes_patchresult;
       public         heap    postgres    false    4            �            1259    16508    nodes_patchresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nodes_patchresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.nodes_patchresult_id_seq;
       public          postgres    false    4    240            �           0    0    nodes_patchresult_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.nodes_patchresult_id_seq OWNED BY public.nodes_patchresult.id;
          public          postgres    false    241            �            1259    16510    nodes_typesvalue    TABLE     k   CREATE TABLE public.nodes_typesvalue (
    id integer NOT NULL,
    type character varying(50) NOT NULL
);
 $   DROP TABLE public.nodes_typesvalue;
       public         heap    postgres    false    4            �            1259    16513    nodes_typesvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nodes_typesvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.nodes_typesvalue_id_seq;
       public          postgres    false    4    242            �           0    0    nodes_typesvalue_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.nodes_typesvalue_id_seq OWNED BY public.nodes_typesvalue.id;
          public          postgres    false    243            �            1259    16515    nodes_valuetype    TABLE     �   CREATE TABLE public.nodes_valuetype (
    id bigint NOT NULL,
    "valueName" character varying(100) NOT NULL,
    type_id integer NOT NULL,
    "arraySize" integer NOT NULL,
    "isArray" boolean NOT NULL
);
 #   DROP TABLE public.nodes_valuetype;
       public         heap    postgres    false    4            �            1259    16518    nodes_valuetype_id_seq    SEQUENCE        CREATE SEQUENCE public.nodes_valuetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.nodes_valuetype_id_seq;
       public          postgres    false    4    244            �           0    0    nodes_valuetype_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.nodes_valuetype_id_seq OWNED BY public.nodes_valuetype.id;
          public          postgres    false    245            �           2604    16520 
   auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            �           2604    16521    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    16522    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    16523    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    206            �           2604    16524    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    16525    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    16526    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16527    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16528    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16529    nodes_commandsdevice id    DEFAULT     �   ALTER TABLE ONLY public.nodes_commandsdevice ALTER COLUMN id SET DEFAULT nextval('public.nodes_commandsdevice_id_seq'::regclass);
 F   ALTER TABLE public.nodes_commandsdevice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16530    nodes_commandsvalue id    DEFAULT     �   ALTER TABLE ONLY public.nodes_commandsvalue ALTER COLUMN id SET DEFAULT nextval('public.nodes_commandsvalue_id_seq'::regclass);
 E   ALTER TABLE public.nodes_commandsvalue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16531    nodes_coordinateses id    DEFAULT     �   ALTER TABLE ONLY public.nodes_coordinateses ALTER COLUMN id SET DEFAULT nextval('public.nodes_coordinateses_id_seq'::regclass);
 E   ALTER TABLE public.nodes_coordinateses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16532    nodes_dbstatus id    DEFAULT     v   ALTER TABLE ONLY public.nodes_dbstatus ALTER COLUMN id SET DEFAULT nextval('public.nodes_dbstatus_id_seq'::regclass);
 @   ALTER TABLE public.nodes_dbstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16533    nodes_device id    DEFAULT     r   ALTER TABLE ONLY public.nodes_device ALTER COLUMN id SET DEFAULT nextval('public.nodes_device_id_seq'::regclass);
 >   ALTER TABLE public.nodes_device ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    16534    nodes_devicenode id    DEFAULT     z   ALTER TABLE ONLY public.nodes_devicenode ALTER COLUMN id SET DEFAULT nextval('public.nodes_devicenode_id_seq'::regclass);
 B   ALTER TABLE public.nodes_devicenode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16535    nodes_devicetype id    DEFAULT     z   ALTER TABLE ONLY public.nodes_devicetype ALTER COLUMN id SET DEFAULT nextval('public.nodes_devicetype_id_seq'::regclass);
 B   ALTER TABLE public.nodes_devicetype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16536    nodes_measuretype id    DEFAULT     |   ALTER TABLE ONLY public.nodes_measuretype ALTER COLUMN id SET DEFAULT nextval('public.nodes_measuretype_id_seq'::regclass);
 C   ALTER TABLE public.nodes_measuretype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    16537 
   nodes_node id    DEFAULT     n   ALTER TABLE ONLY public.nodes_node ALTER COLUMN id SET DEFAULT nextval('public.nodes_node_id_seq'::regclass);
 <   ALTER TABLE public.nodes_node ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16538    nodes_nodetype id    DEFAULT     v   ALTER TABLE ONLY public.nodes_nodetype ALTER COLUMN id SET DEFAULT nextval('public.nodes_nodetype_id_seq'::regclass);
 @   ALTER TABLE public.nodes_nodetype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    16539    nodes_patchresult id    DEFAULT     |   ALTER TABLE ONLY public.nodes_patchresult ALTER COLUMN id SET DEFAULT nextval('public.nodes_patchresult_id_seq'::regclass);
 C   ALTER TABLE public.nodes_patchresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    16540    nodes_typesvalue id    DEFAULT     z   ALTER TABLE ONLY public.nodes_typesvalue ALTER COLUMN id SET DEFAULT nextval('public.nodes_typesvalue_id_seq'::regclass);
 B   ALTER TABLE public.nodes_typesvalue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    16541    nodes_valuetype id    DEFAULT     x   ALTER TABLE ONLY public.nodes_valuetype ALTER COLUMN id SET DEFAULT nextval('public.nodes_valuetype_id_seq'::regclass);
 A   ALTER TABLE public.nodes_valuetype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �          0    16385 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    200   X      �          0    16390    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    202   u      �          0    16395    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    204   �      �          0    16400 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    206   �      �          0    16406    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    207   }      �          0    16413    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    210   �      �          0    16418    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    212   �      �          0    16421    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   �      �          0    16430    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    215   �      �          0    16435    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    217   �      �          0    16443    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    219   �      �          0    16449    nodes_commandsdevice 
   TABLE DATA           J   COPY public.nodes_commandsdevice (id, commands_id, device_id) FROM stdin;
    public          postgres    false    220   �      �          0    16454    nodes_commandsvalue 
   TABLE DATA           :   COPY public.nodes_commandsvalue (id, command) FROM stdin;
    public          postgres    false    222   �      �          0    16459    nodes_coordinateses 
   TABLE DATA           7   COPY public.nodes_coordinateses (id, x, y) FROM stdin;
    public          postgres    false    224   G       �          0    16464    nodes_dbstatus 
   TABLE DATA           4   COPY public.nodes_dbstatus (id, status) FROM stdin;
    public          postgres    false    226   d       �          0    16469    nodes_device 
   TABLE DATA           |   COPY public.nodes_device (id, "deviceName", "deviceDataFields", "deviceText", type_id, coordinates, short_name) FROM stdin;
    public          postgres    false    228   �       �          0    16477    nodes_devicenode 
   TABLE DATA           B   COPY public.nodes_devicenode (id, device_id, node_id) FROM stdin;
    public          postgres    false    230   �!      �          0    16482    nodes_devicetype 
   TABLE DATA           f   COPY public.nodes_devicetype (id, "deviceTypeName", "deviceTypeText", "measureTypeId_id") FROM stdin;
    public          postgres    false    232   !"
      �          0
    16487    nodes_measuretype
 
   TABLE DATA
           U
   COPY public.nodes_measuretype (id, "measureTypeName", "measureTypeText") FROM stdin;
    public
          postgres
    false
    234   �"      �          0    16492 
   nodes_node 
   TABLE DATA           v   COPY public.nodes_node (id, "nodeName", "nodeText", "isActive", "nodeTypeId_id", coordinates, short_name) FROM stdin;
    public          postgres    false    236   �#      �          0    16500    nodes_nodetype 
   TABLE DATA           L   COPY public.nodes_nodetype (id, "nodeTypeName", "nodeTypeText") FROM stdin;
    public          postgres    false    238   �#      �          0    16505    nodes_patchresult 
   TABLE DATA           I   COPY public.nodes_patchresult (id, patch_result, time_stamp) FROM stdin;
    public          postgres    false    240   �$      �          0    16510    nodes_typesvalue 
   TABLE DATA           4   COPY public.nodes_typesvalue (id, type) FROM stdin;
    public          postgres    false    242   �%      �          0    16515    nodes_valuetype 
   TABLE DATA           [   COPY public.nodes_valuetype (id, "valueName", type_id, "arraySize", "isArray") FROM stdin;
    public          postgres    false    244   D&      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    201            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    203             
           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    205            
           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            
           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    209            
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    211            
           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    214            
           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);
          public          postgres    false    216            
           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);
          public          postgres    false    218            
           0    0    nodes_commandsdevice_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.nodes_commandsdevice_id_seq', 13, true);
          public          postgres    false    221            
           0    0    nodes_commandsvalue_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nodes_commandsvalue_id_seq', 5, true);
          public          postgres    false    223            
           0    0    nodes_coordinateses_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.nodes_coordinateses_id_seq', 1, false);
          public          postgres    false    225            

           0    0    nodes_dbstatus_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nodes_dbstatus_id_seq', 8, true);
          public          postgres    false    227            
           0    0    nodes_device_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nodes_device_id_seq', 9, true);
          public          postgres    false    229            
           0    0    nodes_devicenode_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.nodes_devicenode_id_seq', 17, true);
          public          postgres    false    231            

           0    0    nodes_devicetype_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.nodes_devicetype_id_seq', 6, true);
          public          postgres    false    233            
           0    0    nodes_measuretype_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.nodes_measuretype_id_seq', 6, true);
          public          postgres    false    235            
           0    0    nodes_node_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.nodes_node_id_seq', 5, true);
          public          postgres    false    237            
           0    0    nodes_nodetype_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nodes_nodetype_id_seq', 3, true);
          public          postgres    false    239            
           0    0    nodes_patchresult_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nodes_patchresult_id_seq', 12, true);
          public          postgres    false    241            
           0    0    nodes_typesvalue_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.nodes_typesvalue_id_seq', 7, true);
          public          postgres    false    243            
           0    0    nodes_valuetype_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.nodes_valuetype_id_seq', 1, false);
          public          postgres    false    245            �           2606    16543    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    200            �           2606    16545 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    202    202            �           2606    16547 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    202            �           2606    16549    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    200            �           2606    16551 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    204    204            �           2606    16553 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    204            �           2606    16555 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    207            �           2606    16557 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    207    207            �           2606    16559    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    206            �           2606    16561 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    210            �           2606    16563 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    210    210            �           2606    16565     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    206            �           2606    16567 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    212            �           2606    16569 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    212            �           2606    16571 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213            �           2606    16573 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    215    215            �           2606    16575 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    215            �           2606    16577 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    217            �           2606    16579 "
   django_session django_session_pkey
 
   CONSTRAINT
     i
   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L
   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public
            postgres
    false
    219            �           2606
    16581 .
   nodes_commandsdevice nodes_commandsdevice_pkey
 
   CONSTRAINT
     l
   ALTER TABLE ONLY public.nodes_commandsdevice
    ADD CONSTRAINT nodes_commandsdevice_pkey PRIMARY KEY (id);
 X
   ALTER TABLE ONLY public.nodes_commandsdevice DROP CONSTRAINT nodes_commandsdevice_pkey;
       public
            postgres
    false
    220                        2606
    16583 ,
   nodes_commandsvalue nodes_commandsvalue_pkey
 
   CONSTRAINT
     j
   ALTER TABLE ONLY public.nodes_commandsvalue
    ADD CONSTRAINT nodes_commandsvalue_pkey PRIMARY KEY (id);
 V
   ALTER TABLE ONLY public.nodes_commandsvalue DROP CONSTRAINT nodes_commandsvalue_pkey;
       public
            postgres
    false
    222                       2606
    16585 ,
   nodes_coordinateses nodes_coordinateses_pkey
 
   CONSTRAINT
     j
   ALTER TABLE ONLY public.nodes_coordinateses
    ADD CONSTRAINT nodes_coordinateses_pkey PRIMARY KEY (id);
 V
   ALTER TABLE ONLY public.nodes_coordinateses DROP CONSTRAINT nodes_coordinateses_pkey;
       public
            postgres
    false
    224                       2606
    16587 "   nodes_dbstatus nodes_dbstatus_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.nodes_dbstatus
    ADD CONSTRAINT nodes_dbstatus_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.nodes_dbstatus DROP CONSTRAINT nodes_dbstatus_pkey;
       public            postgres    false    226                       2606    16589    nodes_device nodes_device_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.nodes_device
    ADD CONSTRAINT nodes_device_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.nodes_device DROP CONSTRAINT nodes_device_pkey;
       public            postgres    false    228                       2606    16591 &   nodes_devicenode nodes_devicenode_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.nodes_devicenode
    ADD CONSTRAINT nodes_devicenode_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.nodes_devicenode DROP CONSTRAINT nodes_devicenode_pkey;
       public            postgres    false    230                       2606    16593 &   nodes_devicetype nodes_devicetype_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.nodes_devicetype
    ADD CONSTRAINT nodes_devicetype_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.nodes_devicetype DROP CONSTRAINT nodes_devicetype_pkey;
       public            postgres    false    232                       2606    16595 (   nodes_measuretype nodes_measuretype_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.nodes_measuretype
    ADD CONSTRAINT nodes_measuretype_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.nodes_measuretype DROP CONSTRAINT nodes_measuretype_pkey;
       public            postgres    false    234                       2606    16597    nodes_node nodes_node_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.nodes_node
    ADD CONSTRAINT nodes_node_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.nodes_node DROP CONSTRAINT nodes_node_pkey;
       public            postgres    false    236                       2606    16599 "
   nodes_nodetype nodes_nodetype_pkey
 
   CONSTRAINT
     `   ALTER TABLE ONLY public.nodes_nodetype
    ADD CONSTRAINT nodes_nodetype_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.nodes_nodetype DROP CONSTRAINT nodes_nodetype_pkey;
       public            postgres    false    238                       2606    16601 (   nodes_patchresult nodes_patchresult_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.nodes_patchresult
    ADD CONSTRAINT nodes_patchresult_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.nodes_patchresult DROP CONSTRAINT nodes_patchresult_pkey;
       public            postgres    false    240                       2606    16603 &   nodes_typesvalue nodes_typesvalue_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.nodes_typesvalue
    ADD CONSTRAINT nodes_typesvalue_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.nodes_typesvalue DROP CONSTRAINT nodes_typesvalue_pkey;
       public            postgres    false    242                       2606    16605 $   nodes_valuetype nodes_valuetype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.nodes_valuetype
    ADD CONSTRAINT nodes_valuetype_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.nodes_valuetype DROP CONSTRAINT nodes_valuetype_pkey;
       public            postgres    false    244            �           2606    16607 *   nodes_commandsdevice unique_commandsdevice 
   CONSTRAINT     w   ALTER TABLE ONLY public.nodes_commandsdevice
    ADD CONSTRAINT unique_commandsdevice UNIQUE (commands_id, device_id);
 T   ALTER TABLE ONLY public.nodes_commandsdevice DROP CONSTRAINT unique_commandsdevice;
       public            postgres    false    220    220            
           2606    16609 "   nodes_devicenode unique_devicenode 
   CONSTRAINT     k   ALTER TABLE ONLY public.nodes_devicenode
    ADD CONSTRAINT unique_devicenode UNIQUE (device_id, node_id);
 L   ALTER TABLE ONLY public.nodes_devicenode DROP CONSTRAINT unique_devicenode;
       public            postgres    false    230    230            �           1259    16610    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    200            �           1259    16611 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    202            �           1259    16612 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    202            �           1259    16613 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    204            �           1259    16614 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    207            �           1259    16615 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    207            �           1259    16616 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    210            �           1259    16617 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    210            �           1259    16618     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    206            �           1259    16619 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    212            �           1259    16620 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213            �           1259    16621 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213            �           1259    16622 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    219            �           1259    16623 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    219            �           1259    16624 )   nodes_commandsdevice_commands_id_3bb53682    INDEX     q   CREATE INDEX nodes_commandsdevice_commands_id_3bb53682 ON public.nodes_commandsdevice USING btree (commands_id);
 =   DROP INDEX public.nodes_commandsdevice_commands_id_3bb53682;
       public            postgres    false    220            �           1259    16625 '   nodes_commandsdevice_device_id_c69e4e77    INDEX     m   CREATE INDEX nodes_commandsdevice_device_id_c69e4e77 ON public.nodes_commandsdevice USING btree (device_id);
 ;   DROP INDEX public.nodes_commandsdevice_device_id_c69e4e77;
       public            postgres    false    220                       1259    16626    nodes_device_type_id_a08999d4    INDEX     Y   CREATE INDEX nodes_device_type_id_a08999d4 ON public.nodes_device USING btree (type_id);
 1   DROP INDEX public.nodes_device_type_id_a08999d4;
       public            postgres    false    228                       1259    16627 #   nodes_devicenode_device_id_66478813    INDEX     e   CREATE INDEX nodes_devicenode_device_id_66478813 ON public.nodes_devicenode USING btree (device_id);
 7   DROP INDEX public.nodes_devicenode_device_id_66478813;
       public            postgres    false    230            	           1259    16628 !   nodes_devicenode_node_id_7a2f00bf    INDEX     a   CREATE INDEX nodes_devicenode_node_id_7a2f00bf ON public.nodes_devicenode USING btree (node_id);
 5   DROP INDEX public.nodes_devicenode_node_id_7a2f00bf;
       public            postgres    false    230                       1259    16629 *   nodes_devicetype_measureTypeId_id_6703197e    INDEX     w   CREATE INDEX "nodes_devicetype_measureTypeId_id_6703197e" ON public.nodes_devicetype USING btree ("measureTypeId_id");
 @   DROP INDEX public."nodes_devicetype_measureTypeId_id_6703197e";
       public            postgres    false    232                       1259    16630 !   nodes_node_nodeTypeId_id_09dc2add    INDEX     e   CREATE INDEX "nodes_node_nodeTypeId_id_09dc2add" ON public.nodes_node USING btree ("nodeTypeId_id");
 7   DROP INDEX public."nodes_node_nodeTypeId_id_09dc2add";
       public            postgres    false    236                       1259    16631     nodes_valuetype_type_id_b76ba7ab    INDEX     _   CREATE INDEX nodes_valuetype_type_id_b76ba7ab ON public.nodes_valuetype USING btree (type_id);
 4   DROP INDEX public.nodes_valuetype_type_id_b76ba7ab;
       public            postgres    false    244                       2606    16632 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    202    3028    204                        2606    16637 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3017    202    200            !           2606    16642 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3058    215    204            "           2606    16647 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    200    207    3017            #           2606    16652 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    207    206    3030            $           2606    16657 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    204    3028    210            %           2606    16662 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    206    3030    210            &           2606    16667 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          postgres    false    212    206    3030            '           2606    16672 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3058    215    213            (           2606    16677 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    206    213    3030            )           2606    16682 K   nodes_commandsdevice nodes_commandsdevice_commands_id_3bb53682_fk_nodes_com 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_commandsdevice
    ADD CONSTRAINT nodes_commandsdevice_commands_id_3bb53682_fk_nodes_com FOREIGN KEY (commands_id) REFERENCES public.nodes_commandsvalue(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.nodes_commandsdevice DROP CONSTRAINT nodes_commandsdevice_commands_id_3bb53682_fk_nodes_com;
       public          postgres    false    3072    222    220            *           2606    16687 O   nodes_commandsdevice nodes_commandsdevice_device_id_c69e4e77_fk_nodes_device_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_commandsdevice
    ADD CONSTRAINT nodes_commandsdevice_device_id_c69e4e77_fk_nodes_device_id FOREIGN KEY (device_id) REFERENCES public.nodes_device(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.nodes_commandsdevice DROP CONSTRAINT nodes_commandsdevice_device_id_c69e4e77_fk_nodes_device_id;
       public          postgres    false    228    220    3078            +           2606    16692 A   nodes_device nodes_device_type_id_a08999d4_fk_nodes_devicetype_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_device
    ADD CONSTRAINT nodes_device_type_id_a08999d4_fk_nodes_devicetype_id FOREIGN KEY (type_id) REFERENCES public.nodes_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.nodes_device DROP CONSTRAINT nodes_device_type_id_a08999d4_fk_nodes_devicetype_id;
       public          postgres    false    232    228    3088            ,           2606    16697 G   nodes_devicenode nodes_devicenode_device_id_66478813_fk_nodes_device_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_devicenode
    ADD CONSTRAINT nodes_devicenode_device_id_66478813_fk_nodes_device_id FOREIGN KEY (device_id) REFERENCES public.nodes_device(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.nodes_devicenode DROP CONSTRAINT nodes_devicenode_device_id_66478813_fk_nodes_device_id;
       public          postgres    false    228    230    3078            -           2606    16702 C   nodes_devicenode nodes_devicenode_node_id_7a2f00bf_fk_nodes_node_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_devicenode
    ADD CONSTRAINT nodes_devicenode_node_id_7a2f00bf_fk_nodes_node_id FOREIGN KEY (node_id) REFERENCES public.nodes_node(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.nodes_devicenode DROP CONSTRAINT nodes_devicenode_node_id_7a2f00bf_fk_nodes_node_id;
       public          postgres    false    230    3093    236            .           2606    16707 H   nodes_devicetype nodes_devicetype_measureTypeId_id_6703197e_fk_nodes_mea 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_devicetype
    ADD CONSTRAINT "nodes_devicetype_measureTypeId_id_6703197e_fk_nodes_mea" FOREIGN KEY ("measureTypeId_id") REFERENCES public.nodes_measuretype(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.nodes_devicetype DROP CONSTRAINT "nodes_devicetype_measureTypeId_id_6703197e_fk_nodes_mea";
       public          postgres    false    3090    234    232            /           2606    16712 A   nodes_node nodes_node_nodeTypeId_id_09dc2add_fk_nodes_nodetype_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_node
    ADD CONSTRAINT "nodes_node_nodeTypeId_id_09dc2add_fk_nodes_nodetype_id" FOREIGN KEY ("nodeTypeId_id") REFERENCES public.nodes_nodetype(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.nodes_node DROP CONSTRAINT "nodes_node_nodeTypeId_id_09dc2add_fk_nodes_nodetype_id";
       public          postgres    false    236    238    3095            0           2606    16717 G   nodes_valuetype nodes_valuetype_type_id_b76ba7ab_fk_nodes_typesvalue_id 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.nodes_valuetype
    ADD CONSTRAINT nodes_valuetype_type_id_b76ba7ab_fk_nodes_typesvalue_id FOREIGN KEY (type_id) REFERENCES public.nodes_typesvalue(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.nodes_valuetype DROP CONSTRAINT nodes_valuetype_type_id_b76ba7ab_fk_nodes_typesvalue_id;
       public          postgres    false    244    242    3099            �   
   x������ � �      �   
   x������ � �      �   "  x�m�M��@F��)r�Q �e=W��H#:���I �3}��U�Wd\��Y��R��g7��?�Ə���;˳����L�� ���
(.)x"��7� �%K���/`[A
�*
�=
�t
���u
��Դ
�j+
����~
���a[U
�
w
����|d'��.?Z�p.^���) �#H�* 9>E��짬$���K�~9��3Pٷ /g��w�1������8,�vX�>��@J[��I`�l�^�,_U3�I�<ZϞ�՚����we�3b�v�D/b&�
�UD4�o�?d
�,�gW@�ù���xb� r�cM1�V
��o]m�r���p���Y�L��B�h�{�u���LZ��N��H�S� �� ��G�l�I��n~N��.�&$5��	���"
���ADmCi�$
��}� ��V`�+
�TT5��$��0ˋ(��:ێ��+��g#��+[��Σ�+�I���d�F��q���B�����8���"M`�MM�B�*�1�V�؏Ȃ1�/6%�`��ng"l�����n�0_T��`s�]�� ,�
�fc%U�\�q�C���g:�k��L�հ6��x�A�Ϯ'
�m
�c
i
�!
���~
�~汳
��1�JEW
�8F
�瀦
�H
�� ���A
���v
��[
���|9
�����L
˅�G
�Ң!
��iANw
�t
��q
������6&l
�G
ۘ��:5
����[
ՠ�>
r
�G
��\~M
�2ړ
$
��_&Dے
�H[{|
�m
�����G
�\>
����%+
����\+
����m
�}M
���`�5������p�����-      �   �   x�-�]�0����»P�ws��W#04+�P�LY_�5}�:<�sqx�mY���sp��XQ��d$� �b4
�2,�ʊY��W��7�>�],d�H>6��W-ӝ�)�a��!�@m�qM��9�z�M'��<_�����㩏���M|�@�5�!�sJ�j�0>��2C      �   
   x������ � �      �   
   x������ � �      �   
   x������ � �      �   
   x������ � �      �   �   x�]��� �����Οw�G3��Z�{{'0��4��9'=he�wAM4b�4C�L�����cv`Wɘ(G
��%3&
��@A
���{
��b,n^
p,N
�;
U&
��IL
����%
���
z
�v
��s
�u
��YI
�E@
�~B
�b
�ê
�o
�a
��d
���d]
0�K
���������^Y
��E
��_~
���ퟹu
����pK
�y
�l
 �`���      �   �  x����n�0���)�~U��v̳�dYąh�8똪}�u~lCk7�Η�3'`w
��7��_
��v
�P
���Vw;$H
�����xdp
�jd
�	��N_
��B
Q#
�t
����I
�@
�o
��Ug
����R
���èp}
�tӔ
4e
�A3#
�>
����gu
���(
��������5
�ݛ2J
��%R~
�t
�S
�q};M
��Y
�z
��:3
�÷�(	[
�uB
�
u
��u
�=
� �㑉R
�R
�Ŏ
}9
 ��$1
�-
�ӓ
��o
�ɮ]y
�@c
� ��C
����K
�.
��9
�����b
�򡻶�޺i
��q
�:
՛i
�����M
���γ
��ƪD
�?2z
��,
��l
�����%
�45
�0��c
�Ȩ
��ϯ
�F
��A
�5����x{
��ֽx,
�H
����ۿ
�e
��F
����!0
����J
��-Q$
���?
�4
�R
���l
�|
���RC
̚����n
���z
��,
�q
��Q
��۬m
�cc,DF
B
�	�KR
�dY
��z!
�r
U
��g9
�.
����F
��r
��uM;
��N
�dΪ
���:]
��B
�,
���kb2
��w9
R
�d
��)I
�tϮ
���b
���i?
�ܴpî
�et
�U
�Ĺw
�`����7'��zxP�d�]H|]O{/D����Q(��c�H�AV�|k �z�FyU.�X70��V<����+I�R�[��2B�_8u4��܏ڟ.�L��g��5�'���%����a����Ζ�      �     x���ɒ�0  �s�ާ�JBB�(ݸ��!�TY,�!��gz���U�^�#��J�Q���Z�I�(*�da-���m�<�a��v����f�Y�39��na��1?��MZ��W�k]TrF����>�Ne���,�?�����|4c�
�{�˔oj3�0遇��D�;=z+`={]
�A
��\_
���
Ӎ
�[
����mȑ
�5��t
�}(
��	�*
���T
��o;
�j
�U
�O
�ӆ3o
�����������r
��� u
�@
�;
���!R
R
�tB
��%
��Q
��R
���#7"���"
�H
Rg>DI
��\���Y
�8~
��SX;*e
�

J
�W
���
h
����"��HRQ!� $�_�)���^DqH�9
�;�������E�.Ԍ^�mu�t�/�>ԝ?��0]b�h)�S�A��.���1TT��L���,�EϺF��䪞faP�Up��a��X���"
�YVj
��3hd
K
�.
����h
�{
�s
�sܜN
�-
���`�E�NU�T<�Ș}���F�?��{      �   2   x�
ƹ
�@��x]�~�B�u�d4Ii�Q:�Y�?�~x���廀Ҝ      �   ?   x�3�
����2���ܸ�9�CCB��L8=\}B<�L9�]C��}]C\���b���� �&�      �   
   x������ � �      �   O   x��K
�0�u�a�nc
A����l�W5��K���r��n�0��f��LK��E�o��.pB�]��V$?���      �     x�3�,I-���MR��J�11J%��@�J�HGHg;%V�E�s�S��� ���*�JC�XYbNi�_b.DdRjnAj�Q�T�yaх�.칰��^l�ؠpa�]`
��.6]
��	rC
P
����R%
���1
�2�,
��)
��JcJ]	2
�ƹ
6\���b
��m
a
��4�tU
���aF
�e
�ɥ
�4sYb2
�a
���u
��b3
�Q
����m
�%@
�4
��JGgC.ӡ
�F
�\�H
�lD80K
�J
�9Ә
�XV
 ����-
�]l
��F
\1z
\\\ �3>
�      �   '   x�3�4�4�2�4�Ɯ�@҄�H�r�rq��qqq K[)      �   �   x�m�M
�P������������Ƣ�&A��Hd��n���Bq��p�߱(SI�#e�VJ�1��RII�T�<_�+�RK�6;D�����4��	�]*�![#9I�.{'*M
�D-
�
�����o
�4�h
�A'g�اX�a���0y�>�����~M      �   �   x�=N;
�@�gN����46!,06�����؊�	��|���FNR��7o�gIF��Ҟ�Z^(ѠG�r�����e�omH��@%�3^�o�V�d*�P�w����.wW|ű�%o)�*Mǜ��o���$N��)f�̤���I���v,v��~��]�k_      �   ^   x�3���OI��ML���K弰����/컰���
� ��;.콰���Ӑ�Z�B�J�@GA�D�r��r��o��#\�q��qqq _=�      �   �   x�M�M
�0�םS��z�����PŵՍ�Cx� �Ԧ�+���/����||ofY����H�x���`f�`�^V_e������f��耠G.�����ƵͶs�z�@�L%e02�&JzE�3�e�	�!�dIꅈ| �_�      �   S  x����o�0�3��z�h�{�A���eG/3�l!�D,&�����fS�����Ӗ�0�H�@)���@q$-Q> �-��a{���xZ.<%i�t2����)ͥ1
00���/�s�ȁ�BY+L`�ٲps�\�NQ�;C$8a8@M��w�j���|qp������Ÿi��U���p�\i��ϩ��#:O[�ȑ�t�]:�7--7h��~��/-�@N�	�B�i�밸�Y�����PZ��Z�-�7/o�(��#���^��x-�l�j��-�7��m��ՠ��M;U�o'
�0|+
���Y
���Y
�v_'[ � C��L�����8�ʐݚ      �   >   x�3���+�2�L�/M�I�2�L��O,�2	��p�r�Bf��%E�y�\�I�%�\1z\\\ ��      �   
   x������ � �     
