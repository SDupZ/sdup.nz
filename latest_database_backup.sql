PGDMP     
        
            u            docker    9.4.10    9.4.10 �    #	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            $	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            %	           1262    16385    docker    DATABASE     p   CREATE DATABASE docker WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE docker;
             docker    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            &	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            '	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11859    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            (	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24607 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         docker    false    6            �            1259    24605    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       docker    false    6    180            )	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       docker    false    179            �            1259    24617    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         docker    false    6            �            1259    24615    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       docker    false    182    6            *	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       docker    false    181            �            1259    24599    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         docker    false    6            �            1259    24597    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       docker    false    6    178            +	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       docker    false    177            �            1259    24625 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         docker    false    6            �            1259    24635    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         docker    false    6            �            1259    24633    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       docker    false    186    6            ,	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       docker    false    185            �            1259    24623    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       docker    false    6    184            -	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       docker    false    183            �            1259    24643    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         docker    false    6            �            1259    24641 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       docker    false    6    188            .	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       docker    false    187            �            1259    24900    blog_blogpost    TABLE     +  CREATE TABLE blog_blogpost (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    title character varying(150) NOT NULL,
    slug character varying(150) NOT NULL,
    blurb text,
    content text,
    header_image_id integer
);
 !   DROP TABLE public.blog_blogpost;
       public         docker    false    6            �            1259    24898    blog_blogpost_id_seq    SEQUENCE     v   CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_blogpost_id_seq;
       public       docker    false    205    6            /	           0    0    blog_blogpost_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;
            public       docker    false    204            �            1259    24703    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         docker    false    6            �            1259    24701    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       docker    false    6    190            0	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       docker    false    189            �            1259    24589    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         docker    false    6            �            1259    24587    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       docker    false    6    176            1	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       docker    false    175            �            1259    24578    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         docker    false    6            �            1259    24576    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       docker    false    174    6            2	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       docker    false    173            �            1259    24973    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         docker    false    6            �            1259    24924    easy_thumbnails_source    TABLE     �   CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         docker    false    6            �            1259    24922    easy_thumbnails_source_id_seq    SEQUENCE        CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       docker    false    6    207            3	           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;
            public       docker    false    206            �            1259    24932    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         docker    false    6            �            1259    24930     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       docker    false    6    209            4	           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;
            public       docker    false    208            �            1259    24958 #   easy_thumbnails_thumbnaildimensions    TABLE     D  CREATE TABLE easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         docker    false    6            �            1259    24956 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       docker    false    211    6            5	           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq OWNED BY easy_thumbnails_thumbnaildimensions.id;
            public       docker    false    210            �            1259    24734    filer_clipboard    TABLE     X   CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         docker    false    6            �            1259    24732    filer_clipboard_id_seq    SEQUENCE     x   CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       docker    false    6    192            6	           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;
            public       docker    false    191            �            1259    24742    filer_clipboarditem    TABLE        CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         docker    false    6            �            1259    24740    filer_clipboarditem_id_seq    SEQUENCE     |   CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       docker    false    6    194            7	           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;
            public       docker    false    193            �            1259    24750 
   filer_file    TABLE       CREATE TABLE filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size integer,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);
    DROP TABLE public.filer_file;
       public         docker    false    6            �            1259    24748    filer_file_id_seq    SEQUENCE     s   CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       docker    false    196    6            8	           0    0    filer_file_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;
            public       docker    false    195            �            1259    24761    filer_folder    TABLE     �  CREATE TABLE filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);
     DROP TABLE public.filer_folder;
       public         docker    false    6            �            1259    24759    filer_folder_id_seq    SEQUENCE     u   CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       docker    false    6    198            9	           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;
            public       docker    false    197            �            1259    24773    filer_folderpermission    TABLE       CREATE TABLE filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);
 *   DROP TABLE public.filer_folderpermission;
       public         docker    false    6            �            1259    24771    filer_folderpermission_id_seq    SEQUENCE        CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       docker    false    6    200            :	           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;
            public       docker    false    199            �            1259    24781    filer_image    TABLE     �  CREATE TABLE filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);
    DROP TABLE public.filer_image;
       public         docker    false    6            �            1259    24871    filer_thumbnailoption    TABLE     �   CREATE TABLE filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         docker    false    6            �            1259    24869    filer_thumbnailoption_id_seq    SEQUENCE     ~   CREATE SEQUENCE filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       docker    false    6    203            ;	           0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE filer_thumbnailoption_id_seq OWNED BY filer_thumbnailoption.id;
            public       docker    false    202            �            1259    32770    projects_project    TABLE     �  CREATE TABLE projects_project (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    slug character varying(150) NOT NULL,
    title character varying(150) NOT NULL,
    blurb text,
    content text,
    header_image_id integer,
    icon_id integer,
    color character varying(10) NOT NULL,
    color_alpha numeric(2,1) NOT NULL,
    time_line character varying(150) NOT NULL
);
 $   DROP TABLE public.projects_project;
       public         docker    false    6            �            1259    32768    projects_project_id_seq    SEQUENCE     y   CREATE SEQUENCE projects_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.projects_project_id_seq;
       public       docker    false    214    6            <	           0    0    projects_project_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE projects_project_id_seq OWNED BY projects_project.id;
            public       docker    false    213            �           2604    24610    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       docker    false    179    180    180            �           2604    24620    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       docker    false    181    182    182            �           2604    24602    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       docker    false    177    178    178            �           2604    24628    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       docker    false    183    184    184            �           2604    24638    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       docker    false    186    185    186            �           2604    24646    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       docker    false    188    187    188            �           2604    24903    id    DEFAULT     f   ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);
 ?   ALTER TABLE public.blog_blogpost ALTER COLUMN id DROP DEFAULT;
       public       docker    false    205    204    205            �           2604    24706    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       docker    false    190    189    190            �           2604    24592    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       docker    false    175    176    176            �           2604    24581    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       docker    false    174    173    174            �           2604    24927    id    DEFAULT     x   ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       docker    false    207    206    207            �           2604    24935    id    DEFAULT     ~   ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       docker    false    208    209    209            �           2604    24961    id    DEFAULT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       docker    false    211    210    211            �           2604    24737    id    DEFAULT     j   ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       docker    false    191    192    192            �           2604    24745    id    DEFAULT     r   ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       docker    false    194    193    194            �           2604    24753    id    DEFAULT     `   ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       docker    false    195    196    196            �           2604    24764    id    DEFAULT     d   ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       docker    false    197    198    198            �           2604    24776    id    DEFAULT     x   ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       docker    false    199    200    200            �           2604    24874    id    DEFAULT     v   ALTER TABLE ONLY filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       docker    false    202    203    203            �           2604    32773    id    DEFAULT     l   ALTER TABLE ONLY projects_project ALTER COLUMN id SET DEFAULT nextval('projects_project_id_seq'::regclass);
 B   ALTER TABLE public.projects_project ALTER COLUMN id DROP DEFAULT;
       public       docker    false    214    213    214            �          0    24607 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       docker    false    180   Z5      =	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       docker    false    179             	          0    24617    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       docker    false    182   w5      >	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       docker    false    181            �          0    24599    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       docker    false    178   �5      ?	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 55, true);
            public       docker    false    177            	          0    24625 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       docker    false    184   	8      	          0    24635    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       docker    false    186   �9      @	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       docker    false    185            A	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 4, true);
            public       docker    false    183            	          0    24643    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       docker    false    188   �9      B	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       docker    false    187            	          0    24900    blog_blogpost 
   TABLE DATA               e   COPY blog_blogpost (id, created, modified, title, slug, blurb, content, header_image_id) FROM stdin;
    public       docker    false    205   �9      C	           0    0    blog_blogpost_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('blog_blogpost_id_seq', 1, true);
            public       docker    false    204            	          0    24703    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       docker    false    190   �9      D	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 83, true);
            public       docker    false    189            �          0    24589    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       docker    false    176   �?      E	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);
            public       docker    false    175            �          0    24578    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       docker    false    174   �@      F	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 27, true);
            public       docker    false    173            	          0    24973    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       docker    false    212   �B      	          0    24924    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       docker    false    207   �D      G	           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 28, true);
            public       docker    false    206            	          0    24932    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       docker    false    209   H      H	           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 290, true);
            public       docker    false    208            	          0    24958 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               W   COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       docker    false    211   ST      I	           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       docker    false    210            
	          0    24734    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       docker    false    192   pT      J	           0    0    filer_clipboard_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('filer_clipboard_id_seq', 2, true);
            public       docker    false    191            	          0    24742    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       docker    false    194   �T      K	           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       docker    false    193            	          0    24750 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       docker    false    196   �T      L	           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 28, true);
            public       docker    false    195            	          0    24761    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       docker    false    198   ;Z      M	           0    0    filer_folder_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('filer_folder_id_seq', 1, true);
            public       docker    false    197            	          0    24773    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       docker    false    200   �Z      N	           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       docker    false    199            	          0    24781    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       docker    false    201   �Z      	          0    24871    filer_thumbnailoption 
   TABLE DATA               P   COPY filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       docker    false    203   �[      O	           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('filer_thumbnailoption_id_seq', 1, false);
            public       docker    false    202             	          0    32770    projects_project 
   TABLE DATA               �   COPY projects_project (id, created, modified, slug, title, blurb, content, header_image_id, icon_id, color, color_alpha, time_line) FROM stdin;
    public       docker    false    214   �[      P	           0    0    projects_project_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('projects_project_id_seq', 14, true);
            public       docker    false    213                       2606    24614    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         docker    false    180    180                       2606    24669 -   auth_group_permissions_group_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 n   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq;
       public         docker    false    182    182    182                       2606    24622    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         docker    false    182    182                       2606    24612    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         docker    false    180    180                        2606    24655 -   auth_permission_content_type_id_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);
 g   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_01ab375a_uniq;
       public         docker    false    178    178    178                       2606    24604    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         docker    false    178    178                       2606    24640    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         docker    false    186    186                       2606    24684 &   auth_user_groups_user_id_94350c0c_uniq 
   CONSTRAINT     x   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);
 a   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_94350c0c_uniq;
       public         docker    false    186    186    186                       2606    24630    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         docker    false    184    184                       2606    24648    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         docker    false    188    188                       2606    24698 0   auth_user_user_permissions_user_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 u   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq;
       public         docker    false    188    188    188                       2606    24727    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         docker    false    184    184            G           2606    24908    blog_blogpost_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_pkey;
       public         docker    false    205    205            J           2606    24910    blog_blogpost_slug_key 
   CONSTRAINT     X   ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_slug_key;
       public         docker    false    205    205            "           2606    24712    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         docker    false    190    190            �           2606    24596 +   django_content_type_app_label_76bd3d3b_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_76bd3d3b_uniq;
       public         docker    false    176    176    176            �           2606    24594    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         docker    false    176    176            �           2606    24586    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         docker    false    174    174            c           2606    24980    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         docker    false    212    212            P           2606    24929    easy_thumbnails_source_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         docker    false    207    207            R           2606    24941 1   easy_thumbnails_source_storage_hash_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_481ce32d_uniq UNIQUE (storage_hash, name);
 r   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_481ce32d_uniq;
       public         docker    false    207    207    207            Y           2606    24937    easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         docker    false    209    209            \           2606    24939 4   easy_thumbnails_thumbnail_storage_hash_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_storage_hash_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_storage_hash_fb375270_uniq;
       public         docker    false    209    209    209    209            ^           2606    24965 (   easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         docker    false    211    211            `           2606    24967 4   easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         docker    false    211    211            %           2606    24739    filer_clipboard_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         docker    false    192    192            )           2606    24747    filer_clipboarditem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         docker    false    194    194            .           2606    24758    filer_file_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         docker    false    196    196            6           2606    24780 $   filer_folder_parent_id_bc773258_uniq 
   CONSTRAINT     p   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_bc773258_uniq UNIQUE (parent_id, name);
 [   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_bc773258_uniq;
       public         docker    false    198    198    198            8           2606    24770    filer_folder_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         docker    false    198    198            =           2606    24778    filer_folderpermission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         docker    false    200    200            ?           2606    24788    filer_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         docker    false    201    201            A           2606    24876    filer_thumbnailoption_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         docker    false    203    203            k           2606    32778    projects_project_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_project_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_project_pkey;
       public         docker    false    214    214            n           2606    32780    projects_project_slug_key 
   CONSTRAINT     ^   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_project_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_project_slug_key;
       public         docker    false    214    214                       1259    24657    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         docker    false    180                       1259    24670    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         docker    false    182            	           1259    24671    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         docker    false    182            �           1259    24656    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         docker    false    178                       1259    24686    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         docker    false    186                       1259    24685    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         docker    false    186                       1259    24700 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         docker    false    188                       1259    24699 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         docker    false    188                       1259    24728     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         docker    false    184            B           1259    24917    blog_blogpost_9ae73c65    INDEX     M   CREATE INDEX blog_blogpost_9ae73c65 ON blog_blogpost USING btree (modified);
 *   DROP INDEX public.blog_blogpost_9ae73c65;
       public         docker    false    205            C           1259    24919    blog_blogpost_c16de916    INDEX     T   CREATE INDEX blog_blogpost_c16de916 ON blog_blogpost USING btree (header_image_id);
 *   DROP INDEX public.blog_blogpost_c16de916;
       public         docker    false    205            D           1259    24918    blog_blogpost_d5d3db17    INDEX     J   CREATE INDEX blog_blogpost_d5d3db17 ON blog_blogpost USING btree (title);
 *   DROP INDEX public.blog_blogpost_d5d3db17;
       public         docker    false    205            E           1259    24916    blog_blogpost_e2fa5388    INDEX     L   CREATE INDEX blog_blogpost_e2fa5388 ON blog_blogpost USING btree (created);
 *   DROP INDEX public.blog_blogpost_e2fa5388;
       public         docker    false    205            H           1259    24921     blog_blogpost_slug_9e84ade1_like    INDEX     g   CREATE INDEX blog_blogpost_slug_9e84ade1_like ON blog_blogpost USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.blog_blogpost_slug_9e84ade1_like;
       public         docker    false    205            K           1259    24920 !   blog_blogpost_title_a4261c9a_like    INDEX     i   CREATE INDEX blog_blogpost_title_a4261c9a_like ON blog_blogpost USING btree (title varchar_pattern_ops);
 5   DROP INDEX public.blog_blogpost_title_a4261c9a_like;
       public         docker    false    205                       1259    24723    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         docker    false    190                        1259    24724    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         docker    false    190            a           1259    24981    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         docker    false    212            d           1259    24982 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         docker    false    212            L           1259    24943    easy_thumbnails_source_b068931c    INDEX     [   CREATE INDEX easy_thumbnails_source_b068931c ON easy_thumbnails_source USING btree (name);
 3   DROP INDEX public.easy_thumbnails_source_b068931c;
       public         docker    false    207            M           1259    24942    easy_thumbnails_source_b454e115    INDEX     c   CREATE INDEX easy_thumbnails_source_b454e115 ON easy_thumbnails_source USING btree (storage_hash);
 3   DROP INDEX public.easy_thumbnails_source_b454e115;
       public         docker    false    207            N           1259    24945 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     y   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         docker    false    207            S           1259    24944 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         docker    false    207            T           1259    24953 "   easy_thumbnails_thumbnail_0afd9202    INDEX     f   CREATE INDEX easy_thumbnails_thumbnail_0afd9202 ON easy_thumbnails_thumbnail USING btree (source_id);
 6   DROP INDEX public.easy_thumbnails_thumbnail_0afd9202;
       public         docker    false    209            U           1259    24952 "   easy_thumbnails_thumbnail_b068931c    INDEX     a   CREATE INDEX easy_thumbnails_thumbnail_b068931c ON easy_thumbnails_thumbnail USING btree (name);
 6   DROP INDEX public.easy_thumbnails_thumbnail_b068931c;
       public         docker    false    209            V           1259    24951 "   easy_thumbnails_thumbnail_b454e115    INDEX     i   CREATE INDEX easy_thumbnails_thumbnail_b454e115 ON easy_thumbnails_thumbnail USING btree (storage_hash);
 6   DROP INDEX public.easy_thumbnails_thumbnail_b454e115;
       public         docker    false    209            W           1259    24955 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX        CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         docker    false    209            Z           1259    24954 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         docker    false    209            #           1259    24853    filer_clipboard_e8701ad4    INDEX     P   CREATE INDEX filer_clipboard_e8701ad4 ON filer_clipboard USING btree (user_id);
 ,   DROP INDEX public.filer_clipboard_e8701ad4;
       public         docker    false    192            &           1259    24794    filer_clipboarditem_2655b062    INDEX     ]   CREATE INDEX filer_clipboarditem_2655b062 ON filer_clipboarditem USING btree (clipboard_id);
 0   DROP INDEX public.filer_clipboarditem_2655b062;
       public         docker    false    194            '           1259    24847    filer_clipboarditem_814552b9    INDEX     X   CREATE INDEX filer_clipboarditem_814552b9 ON filer_clipboarditem USING btree (file_id);
 0   DROP INDEX public.filer_clipboarditem_814552b9;
       public         docker    false    194            *           1259    24835    filer_file_5e7b1936    INDEX     G   CREATE INDEX filer_file_5e7b1936 ON filer_file USING btree (owner_id);
 '   DROP INDEX public.filer_file_5e7b1936;
       public         docker    false    196            +           1259    24829    filer_file_a8a44dbb    INDEX     H   CREATE INDEX filer_file_a8a44dbb ON filer_file USING btree (folder_id);
 '   DROP INDEX public.filer_file_a8a44dbb;
       public         docker    false    196            ,           1259    24841    filer_file_d3e32c49    INDEX     S   CREATE INDEX filer_file_d3e32c49 ON filer_file USING btree (polymorphic_ctype_id);
 '   DROP INDEX public.filer_file_d3e32c49;
       public         docker    false    196            /           1259    24806    filer_folder_3cfbd988    INDEX     G   CREATE INDEX filer_folder_3cfbd988 ON filer_folder USING btree (rght);
 )   DROP INDEX public.filer_folder_3cfbd988;
       public         docker    false    198            0           1259    24809    filer_folder_5e7b1936    INDEX     K   CREATE INDEX filer_folder_5e7b1936 ON filer_folder USING btree (owner_id);
 )   DROP INDEX public.filer_folder_5e7b1936;
       public         docker    false    198            1           1259    24807    filer_folder_656442a0    INDEX     J   CREATE INDEX filer_folder_656442a0 ON filer_folder USING btree (tree_id);
 )   DROP INDEX public.filer_folder_656442a0;
       public         docker    false    198            2           1259    24810    filer_folder_6be37982    INDEX     L   CREATE INDEX filer_folder_6be37982 ON filer_folder USING btree (parent_id);
 )   DROP INDEX public.filer_folder_6be37982;
       public         docker    false    198            3           1259    24808    filer_folder_c9e9a848    INDEX     H   CREATE INDEX filer_folder_c9e9a848 ON filer_folder USING btree (level);
 )   DROP INDEX public.filer_folder_c9e9a848;
       public         docker    false    198            4           1259    24805    filer_folder_caf7cc51    INDEX     F   CREATE INDEX filer_folder_caf7cc51 ON filer_folder USING btree (lft);
 )   DROP INDEX public.filer_folder_caf7cc51;
       public         docker    false    198            9           1259    24827    filer_folderpermission_0e939a4f    INDEX     _   CREATE INDEX filer_folderpermission_0e939a4f ON filer_folderpermission USING btree (group_id);
 3   DROP INDEX public.filer_folderpermission_0e939a4f;
       public         docker    false    200            :           1259    24826    filer_folderpermission_a8a44dbb    INDEX     `   CREATE INDEX filer_folderpermission_a8a44dbb ON filer_folderpermission USING btree (folder_id);
 3   DROP INDEX public.filer_folderpermission_a8a44dbb;
       public         docker    false    200            ;           1259    24828    filer_folderpermission_e8701ad4    INDEX     ^   CREATE INDEX filer_folderpermission_e8701ad4 ON filer_folderpermission USING btree (user_id);
 3   DROP INDEX public.filer_folderpermission_e8701ad4;
       public         docker    false    200            e           1259    32792    projects_project_9ae73c65    INDEX     S   CREATE INDEX projects_project_9ae73c65 ON projects_project USING btree (modified);
 -   DROP INDEX public.projects_project_9ae73c65;
       public         docker    false    214            f           1259    32794    projects_project_c16de916    INDEX     Z   CREATE INDEX projects_project_c16de916 ON projects_project USING btree (header_image_id);
 -   DROP INDEX public.projects_project_c16de916;
       public         docker    false    214            g           1259    32793    projects_project_d5d3db17    INDEX     P   CREATE INDEX projects_project_d5d3db17 ON projects_project USING btree (title);
 -   DROP INDEX public.projects_project_d5d3db17;
       public         docker    false    214            h           1259    32791    projects_project_e2fa5388    INDEX     R   CREATE INDEX projects_project_e2fa5388 ON projects_project USING btree (created);
 -   DROP INDEX public.projects_project_e2fa5388;
       public         docker    false    214            i           1259    32795    projects_project_fe6647e8    INDEX     R   CREATE INDEX projects_project_fe6647e8 ON projects_project USING btree (icon_id);
 -   DROP INDEX public.projects_project_fe6647e8;
       public         docker    false    214            l           1259    32796 #   projects_project_slug_2d50067a_like    INDEX     m   CREATE INDEX projects_project_slug_2d50067a_like ON projects_project USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.projects_project_slug_2d50067a_like;
       public         docker    false    214            o           1259    32797 $   projects_project_title_3d294c09_like    INDEX     o   CREATE INDEX projects_project_title_3d294c09_like ON projects_project USING btree (title varchar_pattern_ops);
 8   DROP INDEX public.projects_project_title_3d294c09_like;
       public         docker    false    214            r           2606    24663 ?   auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id;
       public       docker    false    178    182    2050            q           2606    24658 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       docker    false    180    2055    182            p           2606    24649 ?   auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id;
       public       docker    false    2045    176    178            t           2606    24678 3   auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       docker    false    180    2055    186            s           2606    24673 1   auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       docker    false    184    186    2063            v           2606    24692 ?   auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id;
       public       docker    false    178    188    2050            u           2606    24687 ;   auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       docker    false    184    188    2063            �           2606    24911 ?   blog_blogpo_header_image_id_f289ac01_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpo_header_image_id_f289ac01_fk_filer_image_file_ptr_id FOREIGN KEY (header_image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpo_header_image_id_f289ac01_fk_filer_image_file_ptr_id;
       public       docker    false    205    201    2111            w           2606    24713 ?   django_admin_content_type_id_c4bce8eb_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id;
       public       docker    false    176    190    2045            x           2606    24718 1   django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       docker    false    184    190    2063            �           2606    24968 ?   easy_thum_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thum_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id FOREIGN KEY (thumbnail_id) REFERENCES easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thum_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id;
       public       docker    false    211    209    2137            �           2606    24946 ?   easy_thumbnails_source_id_5b57bc77_fk_easy_thumbnails_source_id    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_source_id_5b57bc77_fk_easy_thumbnails_source_id FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_source_id_5b57bc77_fk_easy_thumbnails_source_id;
       public       docker    false    2128    207    209            y           2606    24854 0   filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       docker    false    2063    192    184            z           2606    24789 ?   filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       docker    false    192    194    2085            {           2606    24848 5   filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       docker    false    196    194    2094            }           2606    24864 ?   filer_f_polymorphic_ctype_id_f44903c1_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_f_polymorphic_ctype_id_f44903c1_fk_django_content_type_id FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_f_polymorphic_ctype_id_f44903c1_fk_django_content_type_id;
       public       docker    false    2045    196    176            |           2606    24830 0   filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       docker    false    198    196    2104            ~           2606    24878 ,   filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       docker    false    2063    184    196            �           2606    24883 .   filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       docker    false    198    2063    184                       2606    24800 2   filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       docker    false    198    198    2104            �           2606    24811 <   filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       docker    false    198    200    2104            �           2606    24816 9   filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       docker    false    180    200    2055            �           2606    24888 7   filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       docker    false    2063    184    200            �           2606    24893 1   filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       docker    false    196    2094    201            �           2606    32781 ?   projects_pr_header_image_id_bbb03021_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_pr_header_image_id_bbb03021_fk_filer_image_file_ptr_id FOREIGN KEY (header_image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_pr_header_image_id_bbb03021_fk_filer_image_file_ptr_id;
       public       docker    false    2111    201    214            �           2606    32786 <   projects_project_icon_id_578748f7_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_project_icon_id_578748f7_fk_filer_image_file_ptr_id FOREIGN KEY (icon_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_project_icon_id_578748f7_fk_filer_image_file_ptr_id;
       public       docker    false    201    2111    214            �      x������ � �       	      x������ � �      �   e  x�m�͎�0���S��B�w����RE!�p]��'$NbSv8��s�[)>�1��&�M��q�_B
�m�B�R�Tc��X8�ѽ^9�����[�Ό"w�� J��@&�J3�	{���EϢp��#\�"&Q��oT�x���S����s���AJz{�����T  ��H%j3��}f�kҢtJx���TTo�,�K*������ɢ��>;��P�A�]�n�P2b�$g�s��ū� �D�BH2� %��(��<��Xu��:�C^P9ʡ"A�(��|�Κn���
q�.R��^��F�/�&y��/��87Ӻ���+�m���r������t�5BM~w����
6�Bx���@��'�\�k�Ǝ�ڷ��`-!A)6�����c��h��j�W�w�ڍ�����t��;&�H���nz�jn�nՃ�~���
֦��0IX�b-z/
��wcB*�	T~�g�V@�66v� Tj��t�Ȓ����:zXǚKKY�KY�ii�`�P��w��@�-��d�AAϔi��ٖ��YV!��}؃��P���8L([nE݄�%�5���,�����dˍ@�� pl�.| �� ~�      	   o  x�u��n�`�5>�v�8�ߠ$.Ъo��zI��Z@����i7muf�'�N2(%n�m�[��.d
������tE�i��u�[m;���9��ʁPy��!=x��gqfŮ(���TWG4�f0��q�
��K���#����a��@�i�p�\��ؠH�}w�;K����i����Ō���i��\ٝF� ;�9�q�D��)��*���o��!֡�:�1 :���*�-�i�-,Z�r4)w%�m��ձa��ֺ��|�Ԇ�֬m�����3o�� \%��u~��Ui-Ӿ'�V[f�X�NB�mOi@��Lm��-��YML�8�a��d*"PA�?���8�Q��U�X��R�U��j_����      	      x������ � �      	      x������ � �      	      x������ � �      	   �  x���Ko�F���0|m�ؙ����-P �^�"�m�V*Q�D7M���Β�"I�2� ��Γ�@��(� %ƒ�$�"�`����C��7Ŷ���w�o�����My��˗?p��(1S�K��{��\��j���Qt Ppm�tTZ2L�g.��M�<��q��rC�ܺB�E�q;E�ŏ�yC!�1f���~�@7����^~��iVͺ�����=�+����� ���i��P�5E����v�~�ϔ�a�rɠ�۶��U�]�S��h�u�&v�}?�h�����*6��jY|�n����xNw�40�֚�p�<Zt�`��z�&Cu��	i����(�����,<
шk8��?�8%�VjF������˷�jy_�ޯ6ˇӴ�ڸtք����m���t'��,�Z�	��S����� mEq4w�p[H�ؚ��D^�k�w���c�+1�!��d_B4"�6��
�T:B?Y^��d#��#m�jw6�����͏ׇ������m�1x�Z-f��� <��U��V�,�m".���z]4��_S#jH�!� <�l6����o����k�M�U���j�<���v7��iR,!����5�!�\�@���4�'�Z�4��G^3$'�	6�g�xE�a�|�����f��/w�&m���J���^��S�@�B �c�'���W�����%n���ySɾ������GYz��t~�4��1$�����;�!�G�D^!��eu��O�A4�J�����^- �L�gd�����w��vw���T ��e�0�����������Մ�z� F�:���	C=��ap��{z�P�4��uk�e��{��P���u��u���Պb�ɀ�d/�	�e�\'�Jp ���	�ټ���N�;�#-%q�|ө����f�+���HU��.�:o�?;��6��'�`��>����+*�F���ukʅ9z�,IIFF,�y�H=0�T���-z5�4-릪�4[�v�w$D��h��]�-�L4���dRi�D:V�hRh��h|�4; N�1��h#n�ףY�e����Hv.�_��F,�d����:h4�� �(g}���׮X��vUU�b���\;���;V��ww�U��
N`S�f��ގ0��t���CT���E�3u� �Q�2����μG��!��.B��h��(LDĹóF�vLYY��D��������܀��vt�$ra��*�k�[���zX��<\e�A��}S�$���pe�J��/
t�q[:(�	�B�5��W�ܳ��3'K ��_��f/���ݬ6����>=��Sp�J���ć��t���C��!Ǘ�t�V{�n�1���Z4Y����	�����������Q��"��r���ƍ:�4$�&�n7��@��h�1�h����!�R���-�ZA;(��-���D�g���5����Y/�@g>��ϱ23�7WWW�%���      �   �   x�u�Kn�0D��a�2�ޥ@ ۬�B�Z��U�IZtC��a0 	�}� #'+n�U�B��������*���X�f<@/�Z̦��l��sZW�'`��Ů5v��Ј��3��������GNs�|���%ۭ�h���]���C�����N\�qD��^#^�Oϡ�B|tc�8A�^9�,jHg�E��7]~l�h��      �   M  x����n�0�������@$u̳�Fk5���N���(9��M��$�a�������ϱ���K�!�ԧ9��A�Y � N@'rGMB(�E�6�:���@K�5�ܥ~qQ���޸��ӏ�>����纃���-�o���w|�XWD��J�{F�9���.MS���.��m������*geV�UE7�u�؅���"�1�dW����R�p���l�[�^цiΉ'�ص��)K�:� V��l\Ӹ�[R�9����,	�s��#���a�r�}�a�]�����/�@S�mj���l�P�-�q�\f�<,���ˤ2��怐{^�:\m8���ڽ�<�N��:�����zc庴�փ$Yŵn��l���5Ө�#�����?q���~��y��fÁ����n$,'��gv�Q�{��b��0}n;m��k4n����>��iu�2]6��LqZ��) x�y����2����/�fLؓ��c-m9��������0�`zx<)>��(��2^�Xzd�M���C�OBj��j󠐫b�|���	�I���m�����x8~���      	   �  x���ˎ�0�u����NHB�.:!P��Q���H�%����~`T͢��;�����;�ʸ�Z��걀��o7cru���8/�$lN�}�u8�(58yV\Ă�0��w�%Js�TD��)��m*�:f�5�,�v'�}��C�7�"��Q�Rt�(�J����cpn>s�q�PWrj6��_�:2��:CC�:3�J�^YF���֜rIl0ݶ�S���0�¾g�С�vߟ+�!A,�;^����龎����V��[��軺@F~f����#�r��'��Y#4E�9� �Ž~[�J�1Ec������O���hF̖�[DR�h�u�aC,�}��4Q����}w�߼���ȓ 
��\a���(�}b����Oa˒tNl	�(���4�_6;�S3���� C�Q�p�}�Ll�̉e��.,ѡː��=����_�}_��&h��5r�p9uf ����c:���(�      	     x����n#G���S�=�L�M���,,�WP"k����G��V6@�� �>�H�<�\� -(������j�<Zj"�a�/��ۏ��rn�+�+�Z6hS"��f�����Xf�u�y=���/�y�k���p�q==P�!җ`�FqQ�l�� �:Rq���cB�V��D��#��o�F\_��t��ϧ
���0����L�%�&�qZ��w&=�dy�ડ�j�g%��3%�SHџ�ח�r�����F}m�DYdǡ�<�֨�QGb�0� ��ce P�԰���>�96^�L�w&;�ښ�5QĂ��0�	Ye�8���h�}\O�o�xϞ��.�B�v���*k�u$O0���B�� ��B�,1��S�t��h���ی���:��+e��l��E2��b�a��R��0#�����͘��b\M]MY���t��=�35�ܔ��ߙ����hƍ��jQ��q#9�x�Xsw�=)���E�!B�qx��-.�t#G Q�����Қ�5ik� J_~�@i1B
��QK�Z�i*�`¤z�HG7��Q\��fh�{�w�:ʄ����r��e���y�M8��۫M�6�� mX�C�P�DP������//���OiOF�R�`;F>J1V�؋v�<�3�������Cm��g��m�U���� ���Hr�lh�r�l���ܬP�)�;���u��L7[�hw��"�"�4��Gp"v�����P5�'�_Dq���Ho7�hjG]�>ϭ��7���5̚�ObQәý�v�G��BQo}]�:Tgw      	   ;  x�՝�n�Ư�8��v%�����0��S�'� }�rvf��9^!�pƮ���"�����>�ǡ�4�� 4�(t}q�m�q�bG4|����_��O����~��>7�O/�ן�pL�<S�L�b0�����3��:7��������9|y~���������|��޾4��<=>?����k���_~뢱�8���''�C�6E�����9�O�w�q&pt.��w�	�#`�,�z�+	~x��,�'�+�+��jYb�p-�Ó�da��8��w�q���0F�����')���g���0l��Za�K����KI�H�'jM�C�Fyvc�5����!��%hMC�!	Z����������Y�93�-��_^��o6�О|:@r��1c�Ek�ߒe������o６2�=�F���0��`?:�B�a�vh��5����`�>��鏇?��?~�whOD'����&2��Z2��ƀ��!��6-���V�߮`ā/`Z�mG��h1%��i�9%�wwK�sX���ݎ`%тs�haӲzJl5��
�-`Z�oG��h2��]ش��[�3���P�0���/��(�_ZR�#-7��<c�:��S"�<4��7�H�c�Ǘ���ӷ��_�D��=��ă���:\-�-�_�y6 a���@�n5^����J�e6��)�mt!i9�z�_7�h�EY�d-[�-MI�}�'�3�����u��&�/��h�mi���Ԧ�V�T؄W4`!�����<%�P�イ�8��g�MӲ��z;���d�O(Y��7�W"��}�g���_���i���{��vN���>L�Uz�ه�`i���X?�n1�����I�-��T�
(�w��gX��S����L��s؇�$�@�y�Y����z���7�8 _F���؇�$�x�J�M(`����IѦJ�R�UR���]r�dy���pt�<]߄>�4:4��ִ]�ĉz�vCs���84�^VU��D�`1�t�x��h�R�ܨM�a�p����T8z��,_(��ھ18��vhF3ZڎS�v������+�(4j�Min��3Y@�H��k�cyF�q����hR��@�:�����D����`() � Hv�4/��N���=�[��$��V^[�TU�<��D^x����<%��w4;A���됪�����$��G�{o�S�(zJ@���^�TU��<�d-<Z�{{��D�uZ~{%R]�/��y���X�l�AT�IPp�Hb�c`��r���	����ٛ��!�I�^��0�,�潗?��t	�����{�S�5��p�x�Ѳ�0�r3I1װ�h��-IJ�����e)kفZ��ͷ�$1χ��D�lIr[�p������e�aj7�f'�yZX���-KI��t1��O���|���<ڹ���]z���+f����	Gm�ũ��g�����%KQ�d����v��i��ک |aQ3 [�ܖFp 8�8j����,h�r�BX�L��,Ei��r~V��8�>`��!�|�Ȫ9�mqJ��J�9��+�e��3�s���\�Q���)M����rfyR��RT{�t���g��)�Ҕ�@ˎ�H�>J5P�ҙ&�o�2��%�MiJ�H�wR�yRT}�t�I����ծ�l�S�(��CFrj�H�c;ȳ"0����,k�ѐd�h;L����󃥸�^VfS�n��'������P�.�4����ڡ�:��*���bFQ;+�JI����fjGD�h*k�J:X/���v2t;��¤� X�2�ځ�:�ʊ�2Y��Q;�JIH��M��F��g%Mmz���=K���c�[����/<j/�9ȓ���4<���'�c��.��q�/������z05WS3-r �P��l��@7��L)�2��X�Tۗ���l0iY�́J"Mw����1X�TۥlBC=iك́�"�ˎ�ĤeV1��,��_�����@E����5�i�uL��f��~�)Hj�*v@*	�.�x
@+�9$w�.T��ф��A��i���_�c��6���������r� N��b�os�.��7�GG�t8��F�ys���cL�c۾�e�D�΋$ !���;ɓ�@�B����`�I�aYՌ"sZ��e���H�J�{E�[[t�r0je�����{CS<z���W<�8R�!����ɪ"_��<�K<�-�t�qY���w9��Y����q�<�ᴖ\#m�h�0�V83-�#ZU�6�E�U1-�W)#[�9�|$��,���eD��;'�?G��ш�U#�-]�Qmq���|¹���j��ЉŪ���Lg�@T{��^�Xc�i�*qF-�W0�$�����F��ںhL�c�.P{1�~�(Z���M�ڻ*4�q�h���uy��ڊ���$��]�1P{��^��0ƹ��Y���Ry�,�Q�yNS{ɅJ@�K2�r~T�U��k��`]�����j����X���]�Z��=�Z��M��Cni?D.$G����1���<}"��#7������[�\���-8����e�¥vs�=�ӳ�"�����I8�m1�&p����/� 0٬3W.-3��^�`�K�ɳfjW�vҬHrʲi��.G���F�[3v�J��Co|���7���j�a����u7�m�n�ĕ�R��Ԛ����d�3��z{)Vf^l�|��,���o�ἕ�,�4�{�
���|.D?_�9���,�ꈤ0�)?�5-�����"�hT�˽S45O�d�v�Nm�F�p%KW�v�Ng��J!�$5f�v�n/�J���/��'�����A�p���SQ��_D� �@՚���n���jZFDG�U���n嬙��M�b<&vsc̳liKd��*Y^��s���Y;���kLj���\5��C�&���'�Z5��j]�����7؊pl��2[���x[�K8�r�L��Z�Z��\�6]{�{���cY��a0 \���%��(9�92?���y�ʛX~j���)q�&�;a�L� Ė�L���V
�O0��3D������uC�3N�1C�z�*L�Ղ���ZZޕ8M�zmq���)����ՂB�������V�V      	      x������ � �      
	      x�3�4�2�4����� ��      	      x������ � �      	   y  x���[nd7��O�"��!%R���� @@�ϸ���<���W�Ү�r:�A�%��H��l��~~��Ͽ��]�s��a�W�+P�-�XZ)��B4]y�ۻv?÷�����#�q�t���v�Xukc�^�Z�kO֦U)^�kKc��٬,k������_�H\���ɍꍔ�Ԛ�CtէĤ|�>�����K�䴺g����,��b�D�E��J%�1������������E�l^W�T�ZT3����k��+q�EE<���������'�;i<���z	h����aKL���&�V�YW�5Ma����w>��KT�{T%�MZ&�m��{��[�\���{�e��N��x��r�IHM��7o��`�lΝ,�#��X��j��5�T�>����_wӟ�Ǔ��o�NB�nZ�H�H5�yN�,m��S��`z�#������0L����W�L�O����4���-�Yc3���������XJ��Z�ꬳ/Fz8��V�4�T��Yz�꠹8}�n�N�(S�����r�����M�6A���q�b��	jl��TMu��zKZ�i�H�[�r��ۀ@$���8W_1
g������G�H�����z��޼��F.a�w˰�yn�6�a������X^K���x=כ�iZH ��6Oz�ȥ�PDn'���w����!��)���(}^K,��Js����y��$C�"�f��e��xB��4<�!ڮ� ID�|FO2����� ��G�^%�3�|��E��
ɛ���e/�@����U����=�P�J.�.�񇊿�7�G��)]u��u��I�S��-Y��c�W�D���c����R�^�Q9�߼'�M��,���A�0m�
j��1�=i͢��,K�,ꍖu1Ha�(�j�vxY���A�N	=W��z#�%�yؽ'�cY` Ղ�"#UB�ZCƓt�H���&z�����s/%�V�l%��R�� �Q�&�1����E����>�tĴ�ob:i�������7~�<(�]Vm?C��L��g��HK%7��u��Є�]�mb�������n9��<GJ�s�9�H�9d�L�)dF��%�A8�C�EiZ�З&�ۚ� �� �(-�v-���GW�b�����WĖ���<�g�籢����2�^O��]��,8�))�/I��m��uKy��>B
6`��!�;��Ik����C4m�i��a�-��˩�rﲨ9�Ju=��H*'L�?!}�&�$=�l{;[lO�l��pd�s��B����t �o�3k����؅}�)�[\)aG�k���i���?pƟT.8j��>��[�%�a�e_
�������Z��<B*���pl��(_r N��akF�j��:2+X�f��T��J�:�O��b�}Fz��|A���˗/1<��      	   Q   x�3���TpM,)Vp,.N-)�4204�50�54R0��20�24�30650��60�)kn�O��$k�i��&�1~\1z\\\ �u      	      x������ � �      	     x�}�MN�0�uz
�h,��_rN0k�$����Y$�d�E�ạ�*K>x>D�ض��$[���}~��O<G��!K_���!�)���j,�!a�[���ɺ�5Ĭ0����M�T��W'8�±��Imf����q�Z�`*NP��3�h#��q���H�B���Od��1]alur�p6.������Q�$�&�0T�X��N�)MS���N��6<狫��u�OImb�w��j����]Բ�ŝ3-�&ͻ>�2�C4�����&�'���N      	      x������ � �       	   �  x��W�n�F}��ba?�F���"��"����E�U��!@�$W�&$��%�(_�o�uf���I���.��ٙ�̙3#X�Gc�lJ	&!���|?~����O�dB�zxJ��v��9k������b�̶kr���=��y�+)r��\���9YJE@�-WZ�k��.�5\�5a$��y��D���ZI%oa��L�kP�JM`������)e�JУE͵�0%�:7�{���mfԇ�ӥ(:�IV2�������V���ǳ��
�U��حx.��%W�.-E����(|F4����an�^��,KS�qfc�{i�`cg�Lq^{v%j���c�ζ^d�i��g�d�e��}#����7�gn�gE�������8�}o����(Yܧ�s��9j!W�����n��iG4���ҷC���x�&�8a��x�L�������Eʢ��k4u��p�<J3{�� H� ��͈F��?�%)o��>�3�%�
�$�wȵ�m�-�����R6\a���F�!��.�V�,e! ����@�+�u;-��Wv���<�-���P�t6uAj/���:��l�ϯ�3a{|:u����Ƣ�u��dtX�#ׄ�&�Q�11y���&���q0
�%&���8���ي�-W�����o�sr�4���>�&���U��{�2����Jd+#�f%d��5W��'�J���,PВe�-k�V��"��* ]�q���]!a��NY�٬�n ���C �>�QfA��u^�_E�6����H�����&	}"��7�"g4J�`���Z3��^nJ�� �Ne����W�p�K�S�p�ȸ�q���[#h{q{(N�N)�й���DCKD��r!����a�0Ҭ��}�ؖ�O��A)؄;K��+����������L:����X�L�w09ߩ�ÊTǕP<��72��'=(�a���I��mn#(�����($ً'uh8
���$�I�9���@��fkQu%k��~��d���nߟ��λ�s�IY�����zGD�����{Àk�0Ւ���4��p�����2Q�(I.t&�怄;ab{���iY1L��Bb$ aH/�Q@E�D7p9L0)�/���FsE���y/�����ǉ�d'g�7"SR�e��&s�0�{^|�XÐ��A�d :ed�����m����k �n6��T�����Ypi��vpI�71@z!����e3�c�F��ȋ/�/v`:!��I|:�ƍ�`�A�beiC�?[\���������|�-�US�+R�n�x��y ���ӝ��^݆���P�H�Q�Z�aU~�V��`
�i���,ߪ1�@���-��6{�k	�Bl �A#p�"C����?�< ]�tf�U���E������[׼$=ޘ�K%�7�K_:N�e�Y
��١���x���_�xw8�k��٭(�4�X����	o���4�t�[��O�Jpr��5 ����q��z���3r�X<3M�4Ѵ��j�ጸf������}����RQ�S�ճ����}�"B'd�A6��z�7C�sq ��%9�hl�W}�K���/�����Y ��8�Sj�����Wk�5ˆ��)d)K�33o D������CAų�Mw�4��7+;����Y�RBհ)�r}����a�c$�C��ߊV8�=�o$�p<;�������z=��1Z�/x��N�b�s��ՅlΥn����v��v~��+�:ް�p�����85b     