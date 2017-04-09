PGDMP     ,    2        	        u            postgres    9.6.2    9.6.2 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    16886    postgres    DATABASE     x   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE postgres;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12393    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16887 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    16890    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    185            �	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    186            �            1259    16892    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    16895    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    187    3            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    188            �            1259    16897    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    16900    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    189            �	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    190            �            1259    16902 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         postgres    false    3            �            1259    16908    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    16911    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    192            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    193            �            1259    16913    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    191    3            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    194            �            1259    16915    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    16918 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    195            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    196            �            1259    16920    blog_blogpost    TABLE     +  CREATE TABLE blog_blogpost (
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
       public         postgres    false    3            �            1259    16926    blog_blogpost_id_seq    SEQUENCE     v   CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_blogpost_id_seq;
       public       postgres    false    3    197            �	           0    0    blog_blogpost_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;
            public       postgres    false    198            �            1259    16928    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         postgres    false    3            �            1259    16935    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    199            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    200            �            1259    16937    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    16940    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    201            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    202            �            1259    16942    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    16948    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    203            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    204            �            1259    16950    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    16956    easy_thumbnails_source    TABLE     �   CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3            �            1259    16959    easy_thumbnails_source_id_seq    SEQUENCE        CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    3    206            �	           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;
            public       postgres    false    207            �            1259    16961    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3            �            1259    16964     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    3    208            �	           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;
            public       postgres    false    209            �            1259    16966 #   easy_thumbnails_thumbnaildimensions    TABLE     D  CREATE TABLE easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3            �            1259    16971 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    3    210            �	           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq OWNED BY easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    211            �            1259    16973    filer_clipboard    TABLE     X   CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3            �            1259    16976    filer_clipboard_id_seq    SEQUENCE     x   CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    3    212            �	           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;
            public       postgres    false    213            �            1259    16978    filer_clipboarditem    TABLE        CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3            �            1259    16981    filer_clipboarditem_id_seq    SEQUENCE     |   CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    3    214            �	           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;
            public       postgres    false    215            �            1259    16983 
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
       public         postgres    false    3            �            1259    16989    filer_file_id_seq    SEQUENCE     s   CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    216    3            �	           0    0    filer_file_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;
            public       postgres    false    217            �            1259    16991    filer_folder    TABLE     �  CREATE TABLE filer_folder (
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
       public         postgres    false    3            �            1259    16998    filer_folder_id_seq    SEQUENCE     u   CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    3    218            �	           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;
            public       postgres    false    219            �            1259    17000    filer_folderpermission    TABLE       CREATE TABLE filer_folderpermission (
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
       public         postgres    false    3            �            1259    17003    filer_folderpermission_id_seq    SEQUENCE        CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    220    3            �	           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;
            public       postgres    false    221            �            1259    17005    filer_image    TABLE     �  CREATE TABLE filer_image (
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
       public         postgres    false    3            �            1259    17011    filer_thumbnailoption    TABLE     �   CREATE TABLE filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3            �            1259    17014    filer_thumbnailoption_id_seq    SEQUENCE     ~   CREATE SEQUENCE filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    223    3            �	           0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE filer_thumbnailoption_id_seq OWNED BY filer_thumbnailoption.id;
            public       postgres    false    224            �            1259    17016    projects_project    TABLE     7  CREATE TABLE projects_project (
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
    time_line character varying(150) NOT NULL,
    "order" integer NOT NULL,
    font_color character varying(2) NOT NULL,
    icon_opacity numeric(2,1) NOT NULL
);
 $   DROP TABLE public.projects_project;
       public         postgres    false    3            �            1259    17022    projects_project_id_seq    SEQUENCE     y   CREATE SEQUENCE projects_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.projects_project_id_seq;
       public       postgres    false    3    225            �	           0    0    projects_project_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE projects_project_id_seq OWNED BY projects_project.id;
            public       postgres    false    226            �            1259    17297    site_settings_homepagesettings    TABLE     �   CREATE TABLE site_settings_homepagesettings (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    jumbotron_image_id integer
);
 2   DROP TABLE public.site_settings_homepagesettings;
       public         postgres    false    3            �            1259    17295 %   site_settings_homepagesettings_id_seq    SEQUENCE     �   CREATE SEQUENCE site_settings_homepagesettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.site_settings_homepagesettings_id_seq;
       public       postgres    false    228    3            �	           0    0 %   site_settings_homepagesettings_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE site_settings_homepagesettings_id_seq OWNED BY site_settings_homepagesettings.id;
            public       postgres    false    227            ]           2604    17024    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185            ^           2604    17025    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187            _           2604    17026    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            `           2604    17027    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    191            a           2604    17028    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192            b           2604    17029    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195            c           2604    17030    blog_blogpost id    DEFAULT     f   ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);
 ?   ALTER TABLE public.blog_blogpost ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197            d           2604    17031    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            f           2604    17032    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201            g           2604    17033    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            h           2604    17034    easy_thumbnails_source id    DEFAULT     x   ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            i           2604    17035    easy_thumbnails_thumbnail id    DEFAULT     ~   ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            j           2604    17036 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            m           2604    17037    filer_clipboard id    DEFAULT     j   ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            n           2604    17038    filer_clipboarditem id    DEFAULT     r   ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            o           2604    17039    filer_file id    DEFAULT     `   ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            p           2604    17040    filer_folder id    DEFAULT     d   ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            u           2604    17041    filer_folderpermission id    DEFAULT     x   ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            v           2604    17042    filer_thumbnailoption id    DEFAULT     v   ALTER TABLE ONLY filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223            w           2604    17043    projects_project id    DEFAULT     l   ALTER TABLE ONLY projects_project ALTER COLUMN id SET DEFAULT nextval('projects_project_id_seq'::regclass);
 B   ALTER TABLE public.projects_project ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225            x           2604    17300 !   site_settings_homepagesettings id    DEFAULT     �   ALTER TABLE ONLY site_settings_homepagesettings ALTER COLUMN id SET DEFAULT nextval('site_settings_homepagesettings_id_seq'::regclass);
 P   ALTER TABLE public.site_settings_homepagesettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            �	          0    16887 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    185   �K      �	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    186            �	          0    16892    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    187   �K      �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    188            �	          0    16897    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    189   �K      �	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 58, true);
            public       postgres    false    190            �	          0    16902 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    191   sN      �	          0    16908    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    192   P      �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    193            �	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 4, true);
            public       postgres    false    194            �	          0    16915    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    195   P      �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    196            �	          0    16920    blog_blogpost 
   TABLE DATA               e   COPY blog_blogpost (id, created, modified, title, slug, blurb, content, header_image_id) FROM stdin;
    public       postgres    false    197   <P      �	           0    0    blog_blogpost_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('blog_blogpost_id_seq', 1, true);
            public       postgres    false    198            �	          0    16928    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    199   YP      �	           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 231, true);
            public       postgres    false    200            �	          0    16937    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    201   �^      �	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);
            public       postgres    false    202            �	          0    16942    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    203   y_      �	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 34, true);
            public       postgres    false    204            �	          0    16950    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    205   nb      �	          0    16956    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    206   �e      �	           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 75, true);
            public       postgres    false    207            �	          0    16961    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    208   �l      �	           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 780, true);
            public       postgres    false    209            �	          0    16966 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               W   COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    210   $�      �	           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    211            �	          0    16973    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    212   A�      �	           0    0    filer_clipboard_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('filer_clipboard_id_seq', 3, true);
            public       postgres    false    213            �	          0    16978    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    214   j�      �	           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    215            �	          0    16983 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    216   ��      �	           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 75, true);
            public       postgres    false    217            �	          0    16991    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    218   i�      �	           0    0    filer_folder_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('filer_folder_id_seq', 3, true);
            public       postgres    false    219            �	          0    17000    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    220   ��      �	           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       postgres    false    221            �	          0    17005    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    222   �      �	          0    17011    filer_thumbnailoption 
   TABLE DATA               P   COPY filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    223   �      �	           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    224            �	          0    17016    projects_project 
   TABLE DATA               �   COPY projects_project (id, created, modified, slug, title, blurb, content, header_image_id, icon_id, color, color_alpha, time_line, "order", font_color, icon_opacity) FROM stdin;
    public       postgres    false    225   0�      �	           0    0    projects_project_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('projects_project_id_seq', 16, true);
            public       postgres    false    226            �	          0    17297    site_settings_homepagesettings 
   TABLE DATA               \   COPY site_settings_homepagesettings (id, created, modified, jumbotron_image_id) FROM stdin;
    public       postgres    false    228   3�      �	           0    0 %   site_settings_homepagesettings_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('site_settings_homepagesettings_id_seq', 1, true);
            public       postgres    false    227            {           2606    17045    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    185    185            �           2606    17047 D   auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 n   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq;
       public         postgres    false    187    187    187            �           2606    17049 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    187    187            }           2606    17051    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    185    185            �           2606    17053 =   auth_permission auth_permission_content_type_id_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);
 g   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_01ab375a_uniq;
       public         postgres    false    189    189    189            �           2606    17055 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    189    189            �           2606    17057 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    192    192            �           2606    17059 7   auth_user_groups auth_user_groups_user_id_94350c0c_uniq 
   CONSTRAINT     x   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);
 a   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_94350c0c_uniq;
       public         postgres    false    192    192    192            �           2606    17061    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    191    191            �           2606    17063 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    195    195            �           2606    17065 K   auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 u   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq;
       public         postgres    false    195    195    195            �           2606    17067     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    191    191            �           2606    17069     blog_blogpost blog_blogpost_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_pkey;
       public         postgres    false    197    197            �           2606    17071 $   blog_blogpost blog_blogpost_slug_key 
   CONSTRAINT     X   ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_slug_key;
       public         postgres    false    197    197            �           2606    17073 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    199    199            �           2606    17075 ?   django_content_type django_content_type_app_label_76bd3d3b_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_76bd3d3b_uniq;
       public         postgres    false    201    201    201            �           2606    17077 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    201    201            �           2606    17079 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    203    203            �           2606    17081 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    205    205            �           2606    17083 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    206    206            �           2606    17085 H   easy_thumbnails_source easy_thumbnails_source_storage_hash_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_481ce32d_uniq UNIQUE (storage_hash, name);
 r   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_481ce32d_uniq;
       public         postgres    false    206    206    206            �           2606    17087 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    208    208            �           2606    17089 N   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_storage_hash_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_storage_hash_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_storage_hash_fb375270_uniq;
       public         postgres    false    208    208    208    208            �           2606    17091 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    210    210            �           2606    17093 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    210    210            �           2606    17095 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    212    212            �           2606    17097 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    214    214            �           2606    17099    filer_file filer_file_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    216    216            �           2606    17101 1   filer_folder filer_folder_parent_id_bc773258_uniq 
   CONSTRAINT     p   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_bc773258_uniq UNIQUE (parent_id, name);
 [   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_bc773258_uniq;
       public         postgres    false    218    218    218            �           2606    17103    filer_folder filer_folder_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    218    218            �           2606    17105 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    220    220            �           2606    17107    filer_image filer_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    222    222            �           2606    17109 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    223    223            �           2606    17111 &   projects_project projects_project_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_project_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_project_pkey;
       public         postgres    false    225    225            �           2606    17113 *   projects_project projects_project_slug_key 
   CONSTRAINT     ^   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_project_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_project_slug_key;
       public         postgres    false    225    225            �           2606    17302 B   site_settings_homepagesettings site_settings_homepagesettings_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY site_settings_homepagesettings
    ADD CONSTRAINT site_settings_homepagesettings_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.site_settings_homepagesettings DROP CONSTRAINT site_settings_homepagesettings_pkey;
       public         postgres    false    228    228            y           1259    17114    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    185            ~           1259    17115    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    187                       1259    17116    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    187            �           1259    17117    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    189            �           1259    17118    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    192            �           1259    17119    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    192            �           1259    17120 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    195            �           1259    17121 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    195            �           1259    17122     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    191            �           1259    17123    blog_blogpost_9ae73c65    INDEX     M   CREATE INDEX blog_blogpost_9ae73c65 ON blog_blogpost USING btree (modified);
 *   DROP INDEX public.blog_blogpost_9ae73c65;
       public         postgres    false    197            �           1259    17124    blog_blogpost_c16de916    INDEX     T   CREATE INDEX blog_blogpost_c16de916 ON blog_blogpost USING btree (header_image_id);
 *   DROP INDEX public.blog_blogpost_c16de916;
       public         postgres    false    197            �           1259    17125    blog_blogpost_d5d3db17    INDEX     J   CREATE INDEX blog_blogpost_d5d3db17 ON blog_blogpost USING btree (title);
 *   DROP INDEX public.blog_blogpost_d5d3db17;
       public         postgres    false    197            �           1259    17126    blog_blogpost_e2fa5388    INDEX     L   CREATE INDEX blog_blogpost_e2fa5388 ON blog_blogpost USING btree (created);
 *   DROP INDEX public.blog_blogpost_e2fa5388;
       public         postgres    false    197            �           1259    17127     blog_blogpost_slug_9e84ade1_like    INDEX     g   CREATE INDEX blog_blogpost_slug_9e84ade1_like ON blog_blogpost USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.blog_blogpost_slug_9e84ade1_like;
       public         postgres    false    197            �           1259    17128 !   blog_blogpost_title_a4261c9a_like    INDEX     i   CREATE INDEX blog_blogpost_title_a4261c9a_like ON blog_blogpost USING btree (title varchar_pattern_ops);
 5   DROP INDEX public.blog_blogpost_title_a4261c9a_like;
       public         postgres    false    197            �           1259    17129    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    199            �           1259    17130    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    199            �           1259    17131    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    205            �           1259    17132 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    205            �           1259    17133    easy_thumbnails_source_b068931c    INDEX     [   CREATE INDEX easy_thumbnails_source_b068931c ON easy_thumbnails_source USING btree (name);
 3   DROP INDEX public.easy_thumbnails_source_b068931c;
       public         postgres    false    206            �           1259    17134    easy_thumbnails_source_b454e115    INDEX     c   CREATE INDEX easy_thumbnails_source_b454e115 ON easy_thumbnails_source USING btree (storage_hash);
 3   DROP INDEX public.easy_thumbnails_source_b454e115;
       public         postgres    false    206            �           1259    17135 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     y   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    206            �           1259    17136 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    206            �           1259    17137 "   easy_thumbnails_thumbnail_0afd9202    INDEX     f   CREATE INDEX easy_thumbnails_thumbnail_0afd9202 ON easy_thumbnails_thumbnail USING btree (source_id);
 6   DROP INDEX public.easy_thumbnails_thumbnail_0afd9202;
       public         postgres    false    208            �           1259    17138 "   easy_thumbnails_thumbnail_b068931c    INDEX     a   CREATE INDEX easy_thumbnails_thumbnail_b068931c ON easy_thumbnails_thumbnail USING btree (name);
 6   DROP INDEX public.easy_thumbnails_thumbnail_b068931c;
       public         postgres    false    208            �           1259    17139 "   easy_thumbnails_thumbnail_b454e115    INDEX     i   CREATE INDEX easy_thumbnails_thumbnail_b454e115 ON easy_thumbnails_thumbnail USING btree (storage_hash);
 6   DROP INDEX public.easy_thumbnails_thumbnail_b454e115;
       public         postgres    false    208            �           1259    17140 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX        CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    208            �           1259    17141 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    208            �           1259    17142    filer_clipboard_e8701ad4    INDEX     P   CREATE INDEX filer_clipboard_e8701ad4 ON filer_clipboard USING btree (user_id);
 ,   DROP INDEX public.filer_clipboard_e8701ad4;
       public         postgres    false    212            �           1259    17143    filer_clipboarditem_2655b062    INDEX     ]   CREATE INDEX filer_clipboarditem_2655b062 ON filer_clipboarditem USING btree (clipboard_id);
 0   DROP INDEX public.filer_clipboarditem_2655b062;
       public         postgres    false    214            �           1259    17144    filer_clipboarditem_814552b9    INDEX     X   CREATE INDEX filer_clipboarditem_814552b9 ON filer_clipboarditem USING btree (file_id);
 0   DROP INDEX public.filer_clipboarditem_814552b9;
       public         postgres    false    214            �           1259    17145    filer_file_5e7b1936    INDEX     G   CREATE INDEX filer_file_5e7b1936 ON filer_file USING btree (owner_id);
 '   DROP INDEX public.filer_file_5e7b1936;
       public         postgres    false    216            �           1259    17146    filer_file_a8a44dbb    INDEX     H   CREATE INDEX filer_file_a8a44dbb ON filer_file USING btree (folder_id);
 '   DROP INDEX public.filer_file_a8a44dbb;
       public         postgres    false    216            �           1259    17147    filer_file_d3e32c49    INDEX     S   CREATE INDEX filer_file_d3e32c49 ON filer_file USING btree (polymorphic_ctype_id);
 '   DROP INDEX public.filer_file_d3e32c49;
       public         postgres    false    216            �           1259    17148    filer_folder_3cfbd988    INDEX     G   CREATE INDEX filer_folder_3cfbd988 ON filer_folder USING btree (rght);
 )   DROP INDEX public.filer_folder_3cfbd988;
       public         postgres    false    218            �           1259    17149    filer_folder_5e7b1936    INDEX     K   CREATE INDEX filer_folder_5e7b1936 ON filer_folder USING btree (owner_id);
 )   DROP INDEX public.filer_folder_5e7b1936;
       public         postgres    false    218            �           1259    17150    filer_folder_656442a0    INDEX     J   CREATE INDEX filer_folder_656442a0 ON filer_folder USING btree (tree_id);
 )   DROP INDEX public.filer_folder_656442a0;
       public         postgres    false    218            �           1259    17151    filer_folder_6be37982    INDEX     L   CREATE INDEX filer_folder_6be37982 ON filer_folder USING btree (parent_id);
 )   DROP INDEX public.filer_folder_6be37982;
       public         postgres    false    218            �           1259    17152    filer_folder_c9e9a848    INDEX     H   CREATE INDEX filer_folder_c9e9a848 ON filer_folder USING btree (level);
 )   DROP INDEX public.filer_folder_c9e9a848;
       public         postgres    false    218            �           1259    17153    filer_folder_caf7cc51    INDEX     F   CREATE INDEX filer_folder_caf7cc51 ON filer_folder USING btree (lft);
 )   DROP INDEX public.filer_folder_caf7cc51;
       public         postgres    false    218            �           1259    17154    filer_folderpermission_0e939a4f    INDEX     _   CREATE INDEX filer_folderpermission_0e939a4f ON filer_folderpermission USING btree (group_id);
 3   DROP INDEX public.filer_folderpermission_0e939a4f;
       public         postgres    false    220            �           1259    17155    filer_folderpermission_a8a44dbb    INDEX     `   CREATE INDEX filer_folderpermission_a8a44dbb ON filer_folderpermission USING btree (folder_id);
 3   DROP INDEX public.filer_folderpermission_a8a44dbb;
       public         postgres    false    220            �           1259    17156    filer_folderpermission_e8701ad4    INDEX     ^   CREATE INDEX filer_folderpermission_e8701ad4 ON filer_folderpermission USING btree (user_id);
 3   DROP INDEX public.filer_folderpermission_e8701ad4;
       public         postgres    false    220            �           1259    17157    projects_project_9ae73c65    INDEX     S   CREATE INDEX projects_project_9ae73c65 ON projects_project USING btree (modified);
 -   DROP INDEX public.projects_project_9ae73c65;
       public         postgres    false    225            �           1259    17158    projects_project_c16de916    INDEX     Z   CREATE INDEX projects_project_c16de916 ON projects_project USING btree (header_image_id);
 -   DROP INDEX public.projects_project_c16de916;
       public         postgres    false    225            �           1259    17159    projects_project_d5d3db17    INDEX     P   CREATE INDEX projects_project_d5d3db17 ON projects_project USING btree (title);
 -   DROP INDEX public.projects_project_d5d3db17;
       public         postgres    false    225            �           1259    17160    projects_project_e2fa5388    INDEX     R   CREATE INDEX projects_project_e2fa5388 ON projects_project USING btree (created);
 -   DROP INDEX public.projects_project_e2fa5388;
       public         postgres    false    225            �           1259    17161    projects_project_fe6647e8    INDEX     R   CREATE INDEX projects_project_fe6647e8 ON projects_project USING btree (icon_id);
 -   DROP INDEX public.projects_project_fe6647e8;
       public         postgres    false    225            �           1259    17162 #   projects_project_slug_2d50067a_like    INDEX     m   CREATE INDEX projects_project_slug_2d50067a_like ON projects_project USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.projects_project_slug_2d50067a_like;
       public         postgres    false    225            �           1259    17163 $   projects_project_title_3d294c09_like    INDEX     o   CREATE INDEX projects_project_title_3d294c09_like ON projects_project USING btree (title varchar_pattern_ops);
 8   DROP INDEX public.projects_project_title_3d294c09_like;
       public         postgres    false    225            �           1259    17310 '   site_settings_homepagesettings_69df74c9    INDEX     y   CREATE INDEX site_settings_homepagesettings_69df74c9 ON site_settings_homepagesettings USING btree (jumbotron_image_id);
 ;   DROP INDEX public.site_settings_homepagesettings_69df74c9;
       public         postgres    false    228            �           1259    17309 '   site_settings_homepagesettings_9ae73c65    INDEX     o   CREATE INDEX site_settings_homepagesettings_9ae73c65 ON site_settings_homepagesettings USING btree (modified);
 ;   DROP INDEX public.site_settings_homepagesettings_9ae73c65;
       public         postgres    false    228            �           1259    17308 '   site_settings_homepagesettings_e2fa5388    INDEX     n   CREATE INDEX site_settings_homepagesettings_e2fa5388 ON site_settings_homepagesettings USING btree (created);
 ;   DROP INDEX public.site_settings_homepagesettings_e2fa5388;
       public         postgres    false    228            �           2606    17164 V   auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id;
       public       postgres    false    2184    189    187            �           2606    17169 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    185    187    2173            �           2606    17174 O   auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id;
       public       postgres    false    201    189    2219            �           2606    17179 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    185    192    2173            �           2606    17184 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    192    2186    191            �           2606    17189 Z   auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id;
       public       postgres    false    2184    195    189            �           2606    17194 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    195    2186    191            �           2606    17199 M   blog_blogpost blog_blogpo_header_image_id_f289ac01_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpo_header_image_id_f289ac01_fk_filer_image_file_ptr_id FOREIGN KEY (header_image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpo_header_image_id_f289ac01_fk_filer_image_file_ptr_id;
       public       postgres    false    197    222    2275            �           2606    17204 P   django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id;
       public       postgres    false    201    2219    199            �           2606    17209 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    191    2186    199            	           2606    17214 c   easy_thumbnails_thumbnaildimensions easy_thum_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thum_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id FOREIGN KEY (thumbnail_id) REFERENCES easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thum_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id;
       public       postgres    false    210    2239    208             	           2606    17219 Y   easy_thumbnails_thumbnail easy_thumbnails_source_id_5b57bc77_fk_easy_thumbnails_source_id    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_source_id_5b57bc77_fk_easy_thumbnails_source_id FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_source_id_5b57bc77_fk_easy_thumbnails_source_id;
       public       postgres    false    208    2230    206            	           2606    17224 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    2186    191    212            	           2606    17229 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    214    212    2249            	           2606    17234 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    2258    216    214            	           2606    17239 J   filer_file filer_f_polymorphic_ctype_id_f44903c1_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_f_polymorphic_ctype_id_f44903c1_fk_django_content_type_id FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_f_polymorphic_ctype_id_f44903c1_fk_django_content_type_id;
       public       postgres    false    216    201    2219            	           2606    17244 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    2268    216    218            	           2606    17249 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    216    2186    191            	           2606    17254 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    218    2186    191            		           2606    17259 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    218    2268    218            
	           2606    17264 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    220    2268    218            	           2606    17269 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    2173    185    220            	           2606    17274 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    191    2186    220            	           2606    17279 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    216    2258    222            	           2606    17284 P   projects_project projects_pr_header_image_id_bbb03021_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_pr_header_image_id_bbb03021_fk_filer_image_file_ptr_id FOREIGN KEY (header_image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_pr_header_image_id_bbb03021_fk_filer_image_file_ptr_id;
       public       postgres    false    222    2275    225            	           2606    17289 M   projects_project projects_project_icon_id_578748f7_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY projects_project
    ADD CONSTRAINT projects_project_icon_id_578748f7_fk_filer_image_file_ptr_id FOREIGN KEY (icon_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.projects_project DROP CONSTRAINT projects_project_icon_id_578748f7_fk_filer_image_file_ptr_id;
       public       postgres    false    225    2275    222            	           2606    17303 ^   site_settings_homepagesettings site_set_jumbotron_image_id_d404befa_fk_filer_image_file_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY site_settings_homepagesettings
    ADD CONSTRAINT site_set_jumbotron_image_id_d404befa_fk_filer_image_file_ptr_id FOREIGN KEY (jumbotron_image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.site_settings_homepagesettings DROP CONSTRAINT site_set_jumbotron_image_id_d404befa_fk_filer_image_file_ptr_id;
       public       postgres    false    222    2275    228            �	      x������ � �      �	      x������ � �      �	   �  x�m�ώ�0���S��B�\w��G��J-���з��8��p�s�O����O�gU]g�yd��Ƿ���W�r�ܟU�Ќ�G	,X�V��G	TQt�c�LScz�;�t %�e 
�H��ڄ=E�פGQ8���T������y����!^��k���AJz{�����T  ��H%������E��h9���
FYƗT|ţ���I��}t&0y���;S݄�d�.Iμƻ'���L,A!ɤ�ʣ��|u��jZqvZ1���r�CE�**JQ�%h�������
&q�.R��^��F�O�&y��/�?�87ü���+�m�e�r�Z�����5���BM~5����
6�Bx���@��'�\�k�ڎ�ڗ��`-!A)6�����c��h��ٌ�m����Ϊ_f�5&���"���6��Tc�5����0�.�P�6m+�$aE��h[�	/�[cB*�	T��g�V@�6v� Tj��t�Ȓ����:�[ǚKKY�wKY�ii�`MW=���^�b[,���"���)�2��,�3�B��{����dK�q(�P����	MK�c4��,�����dˍ@�� pl�.|.-��Ӄ}٧��?�$���OLLx%[p�uhg[ʖ�n):ܔ�� ?z�M      �	     x�u��n�`���.���I\����Ҥ��PA�>}1mm��gy���E)qCoC^�7�p!S�"C�����pӕ�뢿�&vp;	�� g+B�2��p�k�ř��lKPk �ZG4�f0��q�
��K���#�J^ݟ1�U�ȴ˸F��-6(������R~��f���h�����,Yc��N�h�����Ӥ��Yؖ�����O<m ֡�CU�1 :���U��Z�?Mאַ�nc`�?	ͷ=�	Io�4��~�LH�(bg55�㈆��4f S�
�������?j� �r��5zU�W,��n[X�4�hZ�J�؊3&��c�؝u�;��|��:��>t]����[�5@�	� �.m��Լcr�G���D׹�/j�j�V� ���      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   .  x��\�n�}����k�A׭/|�A.@���e�0$�+ӑHC���,�署�d���N �}�szz�T���!\a�tP��Xa^6%�L�	�
�nv�ןw����v���ï�n>|Xx�z������+x�_Q����06@1"v0_������y!+�t�6��i����y����l�!��(`��Q�+���������>ǊcC���!4���7����O��Çg��w���a����x��+����0h��������_o�<ޮ���7��f���4��ڧ�
k���v-;4n:�Ծ�x����>���67�?�o�7�����7��UM�bzezt��0<�`�et�^F��h������@���G�� M �]�a7F�jFeR<������͇�������q؁x6YqhR�	zy�e����r�t��l����|��=c4���izQ�L����ZSƮ��=���ƳF~�X���5�%:��R�
r Ch�(�eG8�Gѷ���f�GWt�_?����_����m/k�����ӭ�1��<-�c#�R��$�
B�6M��Ǜ������?�у$M��
����97��/�T�"h�c�v����z{�j{��p��=��G�+H��b�@����w}�����V����������chL�&�Q<��a����!�)v�p�~�<?�<�2:��1ʊ4�0G�oܱzU�f!�H˹˓:��D����쥏��绵����������6������S�.��C�,�Fw�MڶzND�A��.����h=�jX�rIC����=��JH�5����_���=잎qOD�
�h�s���Y�������7�4�ӤU�CΔ}_jM��0��)��'�<��Jd�lش�t���l�w�w��/ ����
K!S��	e5.�UI0�����`VB�ܥp�L~�H����q��~f�m�t��N�|�K|kNC,�G���7�r=p4{J!�P�p ք^��)c�8{`Jjt��|�R�`�]рs��j�ְ�������b�	Q�Bh�������Bh<��$SV��J�ޢ_ MZ�=61S�xA�C��r��i>�xh�NH-"R��T�V#�X��uҗ�u�ФE��F-��Y����i�ކ���V˵�)�F�c5�bW��C(e )J��e�#�n4�C��!:�I��O"��a�k-�%�>�e/-��N�9C����Q�����f�(��m*��tA�@Z�ިi�\� ^ �nݡ�B&&�ӭ*z�t�?G�Y_�e��6W�9g�M�$�k�z��
S�E�����ʤ��&�j�X�@gE��w�Dں�:��;N��o��6���9�WU��2���^�����Z��X��t����5cD�~��Y'�����I
v�_=��y���vvvL$1��U�:��/t]�:o4M _)�b�/F5�-ĸt��R9f��@V�N3�����*��Fp����։O��i%xێ�=�"��0َ��`���$� uK�}wn�vwk�9_s�uw�M���Qh%JD��ꏻ��g���~���?XTP1:DK��*���OZ�?y6�-E�\"y��Uu��h(٣DK�9�VA��s�UQJ�b�D]i�%�9�HoJ@��8�6`�4?�{Q9v�[�3nS1p#&�-���bhi�na콳�ߊ��%I�23:g�">���|7tޙ���REw��%r�����Q�l�9qw�@��#E�YEI%��E�G\����pƮa��1{�a(d�ȩ;�A/����0��`*�mq�#h] ��ZX��ZЇ~�� ŭ�-�?�;��[��1�g��n��^A����y��b;�
�l�X(yF�ی1T��6[)� /5�a$AC���X7@7`	�7_��-_���T!.t������t\�f�Q_�e�|0/틣��Psia�:�-�p7�
�bM�3u���1?s��P�m��,JJ�m>�pC�hU��5�&'��b��I)3u��c�������T�Z��LL93w��n�۸*K[
�|�g����D�F��Vi�XEw�D��SȎ���J�uVC���
u����vc)#���PA�?Y>���`���9��	������G��(6��������q��vd#�θ��;�����ӵ�;J�M��dx��k:}�a��#��Ds�&�ȇ�v�3�G����CwF4Lw�j���a�S�U�I����Z�XNNz�|Y�ZM�ex�چ`�1���<���]�u�``��^y�+�����D˰x���y$�8W���^�@֐κG���.�m�U��صRE��5��5�'|Ŏo�2^��:�R����3x=#Y��1xI#�O��y�}``�j�H
˼i��ƶ����uw"!E7!Z����$�x�8�䵭L.9���Q'(��V��D��\'2��5n}t�ʈR߫��l��:�xl;�����Q%�b+{�l�#QA\(��c�-ɾ	�e��o&Mm�:���3�]�� �L���Ѡh�4K59��nQ^&
{�H�$f3�͹BR�����Y3:=K�+ؘ!¬�9���6�Ř�8���M��3�H3V�k^�2/y�5�N��X�l�}�b��$xz�,�Ov]16%s��O�:O�ORA{VmeBB�<#�{��|s���rBC5�&墵z���Fi��aV�%�24�i�!�23�����۩7I��z�&�$�ɡ�h;)�FirM��XK������ I�I�:�>ez~�I��Q�T2����n�+e&�$�:��a�����T	�L*���;M���aE��N�*������)̘��+�t��e@R�/�NR%t^�}�b������v���]� M%��ќ%Ќ7?JSI��-�þ9��~�4.�}I(����1|��hp���ӯ���k�g{�c�J����C||)��7����s�?b��?����-�EI�_��gQ��^ւ��%I��my'�^�v�]� �|9��P��ӥ�Q���^�:�ZϬno�e����Sa��o��&��L�z^�6J
�y��/X�7P���{�,lo1����`�ᙚ,��	�^<|�cmι��1z����8vq4�M�o �,�6��q��fX� �n�yF�e)5�d3�g!��`���#��?h���ݧ/�����r7wJ��5/�N�4�K�8��Q�l�.<����T3Rh4�Q#�3r�(�����8�Q�(�/b���j�i_������~��~�XbH�ڣBR�H���huh�ǊY�7�Ǘ�J����j=��"l<��u``�4�KX����w���'@���K�_��O�[�����^��<CwآB��ub`�`�,Zp��O����J�g5�g��!ڪE;�^�'B���k_N-C�bw�A0-Z�f0sV���"<u�\��EN;�f�1#��QLt�5�W8��!�8�01x�+����F*O�`�����xd`/&�z�O��{Q	eF�y�����xES������L�j���$/h�5;���|/hn�R�W�ċ&�gn��˜�ZM��,��
�oH�kIy�4o޼���'�      �	   �   x�u��N�0���� ���.H��5mPG�s�ۓ�����X��4�n�>A����w�M��D��%���T傇��ԌG�%Y�ٜY�<���M���|���.9�Zz���%��?|�T �»\��d�w��>�v�&ah��~���s'��8"~�H�ɧ��i%>��U��k�\F5��"ܛn�
ښn�f>�
�D�-������wV�d      �	   �  x����n�0�����U�g|�YV�h�^qɂSm�~�&�u7R���|�9��z���g?W�1pa1�]��3C�=4�nk���c��K|�0����U{���Xb�-�Dlt�x�B���|?~xG돮=���Đ_����.=qC��2J#J�Pj�3���~rg?�a��8d���?��É�*���F$�^Q����t�}��R���KAf��{J��r�s���`r튐����cr<��.]�O	���� �By������K���s�+D�*�h�pl�8ͩ��O�8���s{���KHP<㶀��7�L֖����-t~z\��(,Y#6.I%�d�B�yQ.� ��&�.�_����A�����RZ�,�6�X�V��q �(�cv�Mojy�V�I����\��p���g�B]�k���<���z��0Y^]�1Od�e�q��`�bP�v�n?��$��H�f!�Ը�C�4�i��2�7�������� ��S����<���k�Nf���F*�&�Dj��펾�n�nb���H�\��A����������!�&k���j�C��.ׅ�o |b���m�X0��f�r�AIp#�d���*t�p����w��1��{�ZSS�4,�ۭ��V�%����E����є�;��L0��7���P5(�&��`�D����L>�8��ڄ7�ۻ A�a�D-���y���h���Ӿ�x�̠B�6F	�;��>Mt8�      �	   :  x���]o�6���S�~jdNikIQmDBl톗&�-I���?�c���K�m����at$�����>x��G�e���7	�Ǿ/��L/b75w$���W��U��g�D&� 
�%`z�i�4J��l�fX~|JT�6��q׆m[�碄뎽$�Dg�@�j@���Z�W=w�x�}�����$+�Z�V ��+�����6�j�q�`������"�lnD�ʱ9[
�-6K���4ƈę`:ON�YK���bZ��U<7�<���g�FN����#��>8N��	�=� ����ٯj_;ቪ3B�_�uWnk�{��QS#jf��%�,ot�f��٧�Ґ(��ًL�/|K����.�4� �W.6La�Ӏaf}2��g{��J�GL�`Q���WV����B�E?���)�@v��l\ow&fc͖n֠�N��*9ړ��:�'��?���>��B�����	���5��؜�r����5����j���h���bަ֍�صg��L�4�Y"�y��l�B�Y���_��|у�3�؇�tsy��R���,��f��>���
f��-lo�U��_ضmwv���.i���4��%¹�j�G	��м�i.���h5�x���y2���{tn��0������n;=��GU;P��;#�����2��1�8^:8Z��K�|5�c�#�h�vf`�sz�Ś�?���|��� P�9��w]w�Ƀ����[�4�������je�uW}��Ǿ����B�O����-�l�v����^띩=ӝ������w���Ѓ��&^�?97�_&���� ir�u      �	   �  x����nG��O����&�Ⱥ̳, ԅ����!ɋ�<}N��v���i4�O��/fi�|����1�$�� �SW��|gO7����s_��>!�d*����Գ+Z�Ū��y���������|~�����#q�!=i:1/�h(�/���r���!2^%v���d��Qp��C+c\?}�o���?�������k�|�p�~������GY��+b����� �$���-����T|h^�/g�/�7w���KK>�?��䘤\P�A�X�a��&~Ս�HK������gM�z��%M�!B\B1�� �(kM�5�;����2�:�Q�G�4���n�u��$��� �\UUf�䤶�6��r"s}�<�Ѿ��{�Oft�G�"R���D��$�f�f�R�r������z��R�1ǜ�cs���s���� G�*���ǥ5'�'�FeW|
9G�d����s}�_�'��H��#�ӶrA��-4G9!%1�3&T�O�6[.��#���%���G�WQA2&uv'��J��a����D[�BJ_�n����ފ	���`��ደ��	�q�[�]$$�1@3�Ք��@���F5�*�~5��u�%����|�Ut��H5����h�.{��\�8漕��	�&	ġ$!�o�G����׌qc���1�K�!��Q���G��z���k�vaH�YN��+LE�;�F��E��Ï(�*�S�GՈd-�x�]L�0u<\�����{�S�>~�:�RQN���M��qT�=�b�b#C���h�Bm���z�-S�e��`�ɗm? d�8*�[��7Bu<�%A��ϑ�:yr�-|���8�{ah�ĝ㨇P^3����m
8Ļrt��=%U�����"v'qE����}�gN��+��Bf҄(�f��?�9�?�$�7D�>�duF��DGU�ƚP��ŀ��
&�f�Y(t���jyHxC��'R�x��^��+��d0\S��!.��5%�5lh��i�R�y~�V��5O�ݟl���s�>KP_10rݱϠ>�enHw@�:�0۬�O�|���[fh����]��h�P�@�з�a��0�E
҅��b�����x0h���^�S�5��K�	uq�($:��3��{j��be��X�2��c�9�� 撇6��YF���5�E`Tf���Ḕ������*o��ãw�P²� �aC~r�s�_������]O�lf�0�,�G�B�͟b�u��JD�Ł=CU7#LH�N�6;l) ��NptAr^t/�����d��22;o]�0%�V��8��r\!�@/P�,�n�Gw���l��fX�vW�@.b	��i���#��Ş q��:�@�e�`9/�N*
W���ģ�c~sķ�ʄ����#�3,�C�w���#�k��uZ��S���3
��#ʰ<C�&k��� ��U��ߣO=���]�h��.����,�ڦ$������`�=�4㟎��Gh;���>�����|RFD�Ô��څ�kPZ�ʞy؀�M���+�a�	��;8R�؝稒؞"븬�ăg@���v���t����z�S�JL�wO:��9���sԄv-�y�l."a'՜�%�����s����E��M��*��M�-�E�n�J�f8�V������d��Ox���B��.���t�,��!��̔�6\!�S�i8�������3NO��iߌ������U*�Eଘq�G���
�5��C�Σ�͈3z���^>~��R���      �	      x�՝۲�6�������)�E I�y��r�vƎ3vR���PҢVbK�MB�N�[U�J~ @6�0q7�η�����a
�p�CO4�0��0~~���݇������������/��?�SP���`;��ņ���[gF�`���,?��o�?����������?�{g�ֿ��H��ϟ~}����K������q�~��K�~������1��/�^�`�l�Ø��H6�������Ke����P��\�P��C~09�b:R
l�1f,�F�0���T*1�<���1I%������`y��c�T�,Ze&�1IE����7�e��C�S*��2��GQ�,����گ���(_����d�5�{l�����{���Ǐ�|i?��]��$#�PW%�/�o�]�eJ���6�Sa�-��Cނ��'��|����N>4��M�=�N�������Ç����|����q�����ݣ��ܨ���}!3���kY���h�tU���`�f�YL�Pԃ��}j�ʙhB�TZ���#��C�2�`s������\Z��*�#�(D���Z梷���w45�}��8A�Y��E ����}�c��;G߿r�������A8���Yߒ$�c�c���u3Q���{`R�Z�gqI �>�hن�"��9�'��|�Y��9����ZΠ��<81��Z^�,�#I(X��$A�ݿh	.��$�2��~ɑ,�j��ך�Hw���Ǒ�����A�34�4���!v�������~����/�n���C£5�y
��
C�Fk��
s(N4�S��Z�y���,ĈGk!8�H "~pj1"���/Yc���I~-�r���gl����Z�BT��п8�Y�� /<jѡR�B{��8q��rj���c�ʁ�I���9L�
DC`�G�$����ç����0~��G����5����8�����c`�Hj�
��@�� R������<G!o�D�v2�@*@
��� �y�N'�I$'��P;(T���^M�̣v\8��H!�:&n�]�,��F!
9lDj���B0���Y���ۍ� r2�r�B6ض��d��AϹ�X#��9�n�͑�h-t����g�����Fk���|i0��͈~jpꆆ�M�i�1'���nԠ�}݌e�\���<��j7���9��\Z޻���������5PGb�e�mj��z��8>��C�5-P�����j_.K�&�e���z��8>Y
�7(����}���3q���
K|E_���B����Wq�Ko΢w�@C-�a��;Ec����5�mx��qcOq@�C����0�TU�|��7K�G�e�ͳ{�*H�"x���FRax��.~i�Ѳg�)#�5<���LER�u���r�������8G
q��d��Hj��
���I��1�8R;�̳/� y0!��e�V� �Y!潈�l��DG2ɱP�������J݂qpc�a�򟃀jo	΄9
j�q���y��&��ݏ�Z �GPS-���	AaH�AJ�����Z&�4;��3Z�����GW�S�\`�Q\6��Fk�9��H��Hke+*e.4^�k(3�|��S�\���}�?���[9Pas��Ƈ�F��Ks$O���bMZgԊź4������yyS�<��H"fp~{`��0�;�~��`�&@��4���D��"�鷠߻���k�����OT�_&�!���8��!�x���p	�Wr=����|S��{�mx�BDg3�Zn�%TGry#�2�ZBa5��m�U@�6��
/�:�+:3�Zva5��m�3��֘��Z��%T�r��2�Z�a�*_`3������F��Ë��%��u�k����[��+�=���$N���#���	���F7�ƂvN��<n5Q����u�NXs#|�ڿ��J�rf�@�D��Jk���j_.3��%eS��QV��3S�,���R+�uՑ\�����R+�UV��#T����Zu�K���
�vM�f�Z�.�U�8-g�lq$.��q�K�Xty_V�P+>X����r#����r��LƩ0G/!����(�)O�I0��h���Saŉ�.��jG�qHEw�!@��F�ܤ����M�B���~l��|�?��/���I����u��F\��0
���t�W�=�E̲��hZۓ������*��������$c��F������zǞ��fL ܸ������%4d�Ѵv-�׻�'.� ,wN3��vבd.D��u*VY���@p�2�:_Gv$���1"I��
�{��'�y�@7a�]���1�h9�4t�8����W��Ě�O��hFF���Y_��+X�>)�l-7!dj����ɗ]�f��Ў�vh��w��h�\m�|��6�f���X$�Zm���2����\��.�,�HF�m�0G��Tz�3���<u�f�ٹ��;�si�d��@�O�
��͂�ku�D����D��D3�a	$ �{�u]�� &�je���ٗ�ʙP�dFR���j��d�#���)�E��N�YI�'.����Maz����G�o�8P'\r����Fh�E�<����m�X�![aR+�q	�n�C�{���&0�ռ�<H/T�Y����%TGr1F��8T+�QV��1]��Mr�Z!�k���2)�<����Ճ�酊	 `�R;^B�/����>s���E�"F/X�3��F����"�]���ZC.d�Hk=<�>�n���[9n�j��}�;�Ѝb�� �p��i?6��� ����U�����f�B.���q��3�5 ,lhj��*��E���3�ڳ����$�&�LM�ڎZE�T��E2s�Uݹ��P���ѨV}G�"nJ7gy��3�Z����$sް�f�Z9�5�&n:wF�K�R!#�V��2�#� X���Ipj��4���ssY�L�Xoi;�������?�Ժݔ�ݭ��z�f}CGB��ПJs�#+���^�b���i0C�G�<ԩ4��9�Zb7�y�b���i�x�h���Si#sp�5 @jݢʁ���e��L��������o4�k���!�X�k��C�~���
�S��RK��;v�Ů��mjp��������M�e�m��6�ᚍ�JK�k�v�3g0�]�&0-�SV����X�M�TZ��k���L���6�z��h�L�N�=�����:�K�x�<������J�q3�|ђC���k���
�D�ɥu�PX��qǼh8�Q8����0B��%.#��abj|+X0����aU�vh�0�)�(�q�q,4Z��\�o]�<�<X^��@Z���(��	��c&4�ǹj�/|�)�#-�s��yN�p�>�<-�^T�zиG9�Fˢ�s���.I3��5/*�<=h xGː��r$����E[ˈW�Be1�̓:<���<G��QFR�W3��(_+�+c�ЧL�!=74Ͼ���轿�,?��m���|)V�<gxqN�Vĥs(!R�Us:�7.�2��!C�թ��*	Z�Dp���%=�U�9�h_&�atny�<C��«�*	^d�`�6�����Nt$S4�,7�3�Z	�*�� �F���f&R+w:ёL,� �%B��]�J^�X��fȢ�+�Z;�+���E�vW���l�p�[��m�S��g�GjZ������t.�����O��c]z-cĥoXRsg�$��L��V���LDSi:�DƬ�mR�g�ț�I�B�0�&�
P�cx94�@j�l�}�R���ۘ�DSi��D&,ٓ3��8�P�@��r�f����$�Ɋq�,�^��󑎄J}v�^3��y��}�;����f�H<Q��De���~j������P���o ����	��m8eW��hi���i�C!M�U�`R����eND9&:��&��I(�)���λ%�?�hكQ��I�`�'=�h�B�rK (�n�h9�I�tq�a=v'-/P�.W� HE˃ϓ_�Y��,G�'�f������A�m���&p��g�D��<��˟F{�y�姶v�G��(���  t  $Z��y$����r&�Fk�/�)���ĥ?�d����#9����3���_S���l��d��$Z;�y$G�@��l�hm�e0�����Z��D���Gr$�q����W�m_XH�-K�XbQ�^z&ˑ4�l���%�ԓ&©�L�m�6�ib0c�m�Zd~|ʁ[���|*pr X�P��,�5Tߎ�,`b�8�iفz��,���/f*-kpՑ\�Ƿ�e��
�V*NW��J�2\Cu$W���3��}�+�JX��E������5TGr1���8Բ
�|ivB�J�	�&l&.�w�Wq�K�s�R���.�>���n]2O��ѵMgɥ�
��0�ԫ<�X`����RoHh�.N��5���׻�ģv�P�S~ߐ`�8i�4j����,����9��;M�p�<j����Á�i���=��?��$�d��4j��������Ǎ]R��(_�+�!���KٷģV��l�#��G�8��&�D�%B����u�.4��چ] �)�G�\b�ֹ��q*h�TE/4Z��\�yf��)�KBҲ�@��`��A�̢e�e�'���o�M�������=���F��Ks$�G��-sPTjf��--�f-sp.;<�f���)J�2ku�9X�sc �O�2g�I��g>Ϡ�����-��r?Bט��p�M��D�Of�.r��]5*k���K��^��e)�N�+�@�.2�Z�bT�Q"�	~)8��,�Nt$���~���R���-��+8�m�e0�N�/�� >���Z"cT�u"�h�&�ZB��DG2��lR�k�[�+,�����Ԅ)��7^�t$U�=3��*-h4	�h#n@.7?V��p׎dZʳ���e)4�*ڈ�>lq�������U\G�� �B�hZ�B���HHun\Z&�*�#ɂ�솦e54�*ڈ{�4˴�U\G�EO�� 	M�v���5mD�y���Z}����e�s[,�Nkq�{ ����CРO�'�q��[�����9�6"�n��_���(XZk�EX��	�dj���=�_�X�Q��-�t��ծnOe�FBQ�a9N�+��Յ�!F�`�]ی�[�ɇ���	�����w�߭�YX�ݥn�֕]F�Z��k���JO`ȄaS+�PVZ�}��`md����6\Bu$����W.�F L;1��D&����b/H���Z�B��ki,h �-��>�GJ	{K] �G��_�ST���>��!o�Q;�	s$��j�Q;���1�x�b�Q;ܟ�s���`7"���V��]���m�Cj�@[���t�>�ta������.и��:�Ȉ7|���x錚b�6u1ĥo�O�Z�vnw�Z?�7}��OM�����# �c([�D*�d�5eIy��+^j� �j�	�O֯��-�,�ʪu[����"X��jy���7dO�Ѭ�OIX�p�Y�֡:�&Iը�'��T=�L���ͳ�j-\�����l֭'i��dy���F�I��p�qV���I�V�Z��.��j�;ʺ?�]J䶫�Hʾu�T���&S��o�B��-�*��ˣ�Yٷ��X!8�Y�7n���>�zB�@�5�����z��d�Fcg{
?�FqPK8~���[�ZZt��d���[��7ՙn�;�5Y���wU��ۼ0��|���N�m��;�t-a�.M����h����������sm�N�\|!���5ܳ0�EO/`�J�g,z�(�XZ֨����g��k���I�]�t(���%Qf�Ҳ;�X�?v=1y�a�7,L�h��+����`6,-�R��z����]\�,f&-�rӡTr^b�XZf�z]/�XOT��`|�Ҳ�P����[��N�Y�x��`���[q%y?�T��4��\���=�t�)p3�����B�,���z��^���5`j;���#Tj�B�X���(��[#Zu(V��2F�៨��m�3U��f�*���K��� \���룋$�Z�j=X��]��ȃP���5���?��emO�P���5jC ��`j�Z��'�=S�4�\j%:��*<�,Th-�m�P]Bu4�9.;g05�q� <Z5��`���e�^����Je��y5���!���?���+W؛6��40����;���g#� tB�v�Q=_�����K�4���]3��9�R�5B��c��u�fG�6��.3.�]�``��-"M0�^d
V��Bc���瑨v�Q=_�"�D�?�F�j��ð���C�T+v�<Z�x0�0T�\2��Z�U�����ZsȲ7�m=|;����B�7��RNz�57�׫�G%(��gW��?����ҫ�<�F�C���4S�ۨ�ؘcj��n�R��P�%���6�i9����(_���A�yq�pz�G;���e�*��D�~�@���6��|�*��gƳZj��E\G1`\
��dZF�qx�%~���<p+�*,�P��u=*��j�PÀ�y�Pk�VVe���6��I/�:�+F�K����6�����ۆ�bz�LGb1?*�`o�k���|3��3��ۙK���[:��v6�W�=z@Az�V��v6䒢GO\d0�m�;ްX��t(��a�:�]�+�ܭ�帗Z_��+Ѳ�5���-���^���Kޙ+X��Ϝ��N�F��ZJ�D+X�(�nk�@�̬�ʎg�͵Z�5Y.�N�C��&v�״]J�웩��������<S�y1,�I��:�P)6_�$_K��/�C���&z4M�	2�l��0���
ߤ��fZ�,$Tj�[/���+�
bX��$�b3��:c����Z�j�
(*�3�.�"�fk�J��,��ǓVj�ٮ��h��"9�\�m\/��L6��(�Sk_�Xa�Bx)A0˥�׵R�:��(L5k�v|Fy^����VC���5r���O���Q��P�GX�I��c5�����IC���������6#�V������!�Z�V+_�g�`��0�e|���x�Z.��͡Z�ӫ��F";�g�´W�C4�x��H��혎�k�E7�-f{�V���}�RB�&*���� _�}3�����a�cq��9�Wc���P�0�.�koEb�R�Fp>Էo.L]�\�Rl6_�O,���x�,�j%V/�ڝY�eɇ|��_�������U      �	      x������ � �      �	      x�3�4�2�4�2�4����� W      �	      x������ � �      �	   �  x��Y[r��n���L�P�0��	6B���k���:l���3|Lc����CH��A$����vi����ￖ�u���х�MTMFB�&��fϕ�Jm}��?��?������'�ؘ[űmlk�#V���:�R��i�a$ZƲ|��o���c�_�?�p&{J�K��Z�^�;�El�B���Q+u��k�dB�j��d��l4iQ.����˯_��ѿ|7_��~��i!�8�ҪQ�8�rU]�h��I\�X<��~�Z<[>;:<i��F�O�h��֚1�\�Ȧ5�di�&SQ�}��c,{���C�?�>~����e�Փ[
o�Ki��Ku�Q�^��^;�E�򖮻	�aywv��)�{XoQIWX��ۣҼ�����L	+�M�P�f�:r .�×Oև�rȉhZjj:�[k�sT�39$m8'�T+���������C(����Px��5�9� ������F�7v(V��i�����S�,�Y,t�*r��
rPrw����$�Ā�D�N���룇8�O1xV:����7 ��c�������%��51�nj�qdI���h�<��޿�+(�I��Fu6�1l�$AK�9)�>��a���o�a7�!@�'�1�;���L��;��Ke��{n
ygJ�A��6F����u�r
��c@�h� �P���u�D�7C���Li�Lr�#
�
�ڿ<<=���5S>��K#|���cv�JORI'����Gj��X�h��">[J){����T�a���R�H�v.�"�FR �`hTu�^F�)_��s�<�rN���,d�Y��b��[³R�G��]{9U�I��?qd��!���3�LM��q;�`]��P|dMnڍ�Xn��E������d���M� M���Ay�\���5r�[%F��7B��� %z��"���K�_A�3ȸ��p�@��a�G���p�� m�c�@�ץ��xtA;��6�44��hѡ���y��5߁t�ҝe���%�ߡ����Fp%�1R�e_����
��=�|Bi_צzK�[����1���#����b��g�Cie8��c<"��h��G9	��M�@JՈ���
�ѳ�=q�[_������׏_�~QD^#�b]+%�/^[,{S[�����g륏�~����$8rg��N�`����E����O���^ ���5ǀ��l9��g]���C�<^�\�t���k��`"�t �����\�^�n*d�����C�Ĺ2o��fX�qv��Qz��!�5�@m�D���s���g�MGؖ�	\�x��"g����P��RDrD� S��1"�kO�������h�O��ʚ��$
h3�G��Q�i��s1������{�E�K��Gr%�(-�b�!n�5[���n ��df�� �g� �zBЍ9��r�B~����<hP��_�k�la�A�c8���b!���a<:��nj{�?��iM�=@��� ~� L�2<k9��V�M�QF	B)%[� }���~�j��,>��J:4s�|�BzX����)����_v�� ��cə��(\�?SST�35��RW����_#����F(A��iW�x��ot�cz�woW��4,	²����Zr����Ԕ�3�':y����i&�D �3�	���Owє&�S�F�f�q1����1|�R
��Lt���˹���kԇ	a��T��J����� ,�$���2:�B�8YR*C�������FHL����r�"��B�}et�x��M���W ���1��75y��(�?�l��߲%��B����$�t��%����$HlYc�Sl��i�+�!�1t��A�N�¸��!N��U1"|�*��T'M��
���ՐV�J�ɀfX��ڢ[˷����i!��R �%&�nB�v��ZC�#��5�AJ���s3w�t�`�r3�ۨ��,��H��g�C�t?�M�:���N���`Wad�����E�/���#$� +�9-As�3�t�� �qY�v\�V�1�k4X�JmRׄ.S����Rw�}��Z0�cc!�����o�?�������]�R�hA+���J������٥^�
���A��-�����A�E�iR�W��v3�P�y�#�������
�L_�G؋��z� 2yh����!m��)�'[\�]�q�| �=|�F�Ɇ����Fe��Ivx�l���6vCSHE�����ر�8\�}B�V���ɤ�.o��X����D�xaj�w�QH%�)l��y�&�	�,2�Ef�,�;4F�*	�eXʀe�����I�$mm]Z)Y?���hP�㷋����t�`R�)��Yj�؜P���f�7�d�|���~;66��WD� �oQ?i.�ID�f�XZ) w,�Z3�xc�.îi؎����� �;��;>��і�Ŧ�|��08�K���%�_��CH��n����ߌ$���F_�^7c/=�y`̣�s(n�Zw����@P��MW��֟�T��>ˌ�����%�=z|[����`/�%��>n9�c.m/g\<�t���oLQ�h)L�%��Fx��e4=�&��C聼¸��ޮy��o�%N}�"`�|,Q���MR�ӥ�;�E,g���f:y�}�͞<L���M�t�l~6-e���іj�\��NEv�ui����S��5�=����r/��[hmB�=(�}��I�th���#
3F�2���-�ۜ�[�_۾.-�`��
[�9�B�u��`���x{mR����o@(D��1�kp�����F���_�Mu��(0H!�����ͨ�ۅ���y���g���	Pw)`+''���:|��C<����1�K4����'��3BӐ��8��_��4B"h�?����سM'//��h��C��C#H"c� z
A2�&e� �P�﷮���4ui�09~��Y��ιu��`U?�?�x����'�L�>*4��O�>�T�2�      �	   |   x�3�(��JM.Q��MLO-�4204�50�50R0��25�22�366526�60�)kn�G�� �א�8�9c���9C�2\K���SK0,6�25�3�4���f1L�ɚZ�,6�Y���� ])1�      �	      x������ � �      �	   �  x������@Em*������ &��7��d� 9%�I������H�#����e���P�o����x���Mvƽ�0�b�@�����K���xq@�:ۀ�F�L�'(Ĭ�(����*�@N��&��,0����ى�wN!�]&A��"���]P��U�4���v�AQYd a��ɵo�����s�<�e%j]q
��1�3��$#sp�Z� ^XKw�(&�7S=ጀI=�M�x�'�u��.�&Aͮ9U��-�w����c�t��F�4-֛�|��D-�"�Ҟ�	�s����2'�k�}�'�7�{�9Ϲ^��$M�V��
��QƊ���y�:^�'����?|?�WP�����a@�N�5��󢈃��Ą�����^�{f�[f�(�SN���rg�ˤg'Ek*�_���{���g���D�������qd>�|U��%:'L��頟�3�'�*v4�	�Ԟ�ʱ�/?p����:      �	      x������ � �      �	   �  x��Z�n۸��>O���ʺߌl�6i�,�4��v�G��)��,
���4}�>ٙ!%ߚ�M���lQ$���7ø��s��r|����N<�s�Qz���?,'%N8��I��� ���*����c��Q��%Y�L���Z6m!K!	��J9���&yI���a.����7d}gY�\T��7����~�e�PE�ޜ�yՖ+�Ռ���VQ�e��͊�v�g�g|��y%���t���΀�4��a)�Nd~����7�rQK�mx�u�����ϟp;Ok��99��o䃅��O�Hأ��5찮K��V�JK��b�G��<�[���ׯ�M�O�S���^S�7�n������\�j&�~����5|����C{_K�ޟ��h��$~�<G�X�DH,r�p����g#g�=pÍ�h_
����S/JB�Kg�݉O���C|��i��ft��{sv��hH������r�B̺��ł���JT����j���B/��ãC����?>��m=�m����>n/8�.Dɛu���lNmZ��<�<+�a`^�,G�E���I���^F��y��j����]�FI�^�wVd���eK���k��t	�9���k)w\}.YB�ȊY�Ŋ�Q-�)@�u#/yޒ3������u,���!�%]%���Rr)EՒkP�6����X)^ڗ))��T�[���r���ܟ?	�V};,�s��MPP� ��Z:x`OM>l�� �
��R� �@�^�X��͌�x�L�b�Goq�B���f�F�0~�KY��z7ܙl+h|��~r%1��7
G������m���M\�����*�3q�q�n��W3j)��J��f�~'���_+
�\�ٟv�U������dר���E併>B g�i~�n�R�1-@��[�������&�*�hT�N��<Y)��4�C�/x��N5L���%Q�����Eft�����۱���O��v��A��@�G�1^���J��y9����hV޸XMkT��夐(}�3�zHɼ��dzp�iP]�]��pLw����;��r�+������h`��K߈�L���þ��NW'���[�"+���J�8���e�yI���;�A>k!����-$+;"o2�$E^�J�(Z�h�������r�yn�	\�p������>w��F4Y8�����?˜D6�0��8(���>� �+��r\��#�%;2{w�l\��h%��,�-�����R�&��sj��:������ ���W�b�f��h�]�VA�С:np�����yz�?Üa��(0�*|�l���I�|`WN�_�� ���؉� 	4U_��-@ʫ�o�[�z����1�)1��V�bA��-P!��W
T�i��d�����}��cm����SL-�� �-���5��U�)�у!�#�����=��Mv-��0�Є0#D'�7�E�^|g?@G ���)�N,pR�t�r��1�[U�$&�P�[&�19�����*�JjC���p4J���
~���;����赘���.�!����{C���?bq�˒�g=�)a[`X8[�b�2UFJM��^a�\������V�BN����r��<3�X�)*r�����oι:J0HL�����:!�>"�vg�_�����x�?��!��,Kݠ��,���h��GnY�����4c��V�l"U�Y���|���x˃ ��u�$
��܉!�4�_���&�	U�L҆5�K]��Kِ���TUH+���oɳ�6��G�;z�9��pS#�bC��2�����.������m7��8�(�����i��ד�;7����5�LlX��k�Х���E���H�xt2�P��o�AI�T 8�����dT�+�ʾ��3h\T&C��A�it�jL[/;�O�� '��a�k'\��H!��Yl�	<+���q�iLC��6���v��^w��BC�����gDuc��p-���Ȋ��]�#q+�~HB?��=Q��z±8����w�?#+gv��5��DR�� JR+�YN��^����wQ�[d}!%��^�Z�ju��D�b�+z��M3t���n���v~`�1vy�*aD"���f��CG�OtLu�����
�G��6f���KxSK+d7�Z�~�nR��yn��C�% ��[.�v���}7��yC�ۛx��MC/�O�B@�oV����q#��Bd��qf1�@�3^"��^u_�<,� �w���#ظ�BB�[d<mC+�-2��)�f��T�����P���7n�q�#�i�@ "�U���~x�DsV�zU��L����"�~1n����ys����lW؍/�`
X����,�C;�Y	_��[.!Co]kR$�_��E��n���$���(�X�����_���%N`�\S�. ؘr�0�Xf1�林Ĕz�=��3���5SH�X�@�^���9v��p����9���ɀ�E��S�%N��n��%t�'�I��&k���$��� QF�+|jq�K����r�i�n�d�ZJ�~R����g�X �y/9T-W3��	7e��L�ӯ!����RV����O0<������ĕO���6�HG<�5�N�f��$q*����+��$������W�=�@S�9T�3�J<<@��_�������G�Ҙ�'����; e�u�\���M"�K�Ǘ�]��eE�c�u�U� 8!�ȡR�x�W�-UWj=�֔�����#]�,����f�겅hu�kf|�yyB�!@�^P�4����S�iP��/�j��PD�)�ޖ�n]�M���{
��J�Ѝ�;��W��3�\�>~��I����1f�&��膷؊U��|���1��!��1- ݮ�p�g�c�TH��AC�ېg�t�a���;SXb��j�_�k��Ⱥ�E���D���@��! �,���v����5�E�1���5��f��^�(��M�=�9�f��ݛ��q����z���3_�ȑb�� 98����b#|H�|�33;R�9�\��ߎ���J�\k��]C�Y]����o\[�e��j�w9˜*} ��	ۛ�M��*qC-��Zc�.���`2�6�Xj�_��➄��l�7��]��
g�":G`��q/���o��[�1x���3B,��3��j�y)3�p�Ɵ����9�����v�Ej�e��#[�څ����?/��5d��+�)��Y�Xi�'V�%�S$i������m��!��3�ݤ`�4�ѣS�yz���9A�?x��#�j      �	   ?   x�Eɱ�0�:L�>2�c�x�9"�ɵ����X6�4�=ԭy��@4Wu��˝rTD^�[�     