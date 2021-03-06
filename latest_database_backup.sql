PGDMP     4        
            u            postgres    9.6.2    9.6.2 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       postgres    false    192   PP      �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    193            �	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 5, true);
            public       postgres    false    194            �	          0    16915    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    195   mP      �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    196            �	          0    16920    blog_blogpost 
   TABLE DATA               e   COPY blog_blogpost (id, created, modified, title, slug, blurb, content, header_image_id) FROM stdin;
    public       postgres    false    197   �P      �	           0    0    blog_blogpost_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('blog_blogpost_id_seq', 1, true);
            public       postgres    false    198            �	          0    16928    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    199   �P      �	           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 296, true);
            public       postgres    false    200            �	          0    16937    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    201   �b      �	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);
            public       postgres    false    202            �	          0    16942    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    203   �c      �	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 34, true);
            public       postgres    false    204            �	          0    16950    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    205   xf      �	          0    16956    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    206   k      �	           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 88, true);
            public       postgres    false    207            �	          0    16961    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    208   :t      �	           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 916, true);
            public       postgres    false    209            �	          0    16966 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               W   COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    210   d�      �	           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    211            �	          0    16973    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    212   ��      �	           0    0    filer_clipboard_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('filer_clipboard_id_seq', 3, true);
            public       postgres    false    213            �	          0    16978    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    214   ��      �	           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    215            �	          0    16983 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    216   Ǚ      �	           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 88, true);
            public       postgres    false    217            �	          0    16991    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    218   ��      �	           0    0    filer_folder_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('filer_folder_id_seq', 3, true);
            public       postgres    false    219            �	          0    17000    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    220   :�      �	           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       postgres    false    221            �	          0    17005    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    222   W�      �	          0    17011    filer_thumbnailoption 
   TABLE DATA               P   COPY filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    223   ��      �	           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    224            �	          0    17016    projects_project 
   TABLE DATA               �   COPY projects_project (id, created, modified, slug, title, blurb, content, header_image_id, icon_id, color, color_alpha, time_line, "order", font_color, icon_opacity) FROM stdin;
    public       postgres    false    225   �      �	           0    0    projects_project_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('projects_project_id_seq', 17, true);
            public       postgres    false    226            �	          0    17297    site_settings_homepagesettings 
   TABLE DATA               \   COPY site_settings_homepagesettings (id, created, modified, jumbotron_image_id) FROM stdin;
    public       postgres    false    228   ��      �	           0    0 %   site_settings_homepagesettings_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('site_settings_homepagesettings_id_seq', 1, true);
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
6�Bx���@��'�\�k�ڎ�ڗ��`-!A)6�����c��h��ٌ�m����Ϊ_f�5&���"���6��Tc�5����0�.�P�6m+�$aE��h[�	/�[cB*�	T��g�V@�6v� Tj��t�Ȓ����:�[ǚKKY�wKY�ii�`MW=���^�b[,���"���)�2��,�3�B��{����dK�q(�P����	MK�c4��,�����dˍ@�� pl�.|.-��Ӄ}٧��?�$���OLLx%[p�uhg[ʖ�n):ܔ�� ?z�M      �	   �  x�u�ˎ�`F��.���+��:bD�Ѷ1�L`P.����sIzz�Z~�9�
	��!�V�y�q�@;"$��'�H�����[�x�ԛ��;W�4��|f����i��f `@Jp{]�t���*��"	@�/8E��N��a��@U��~��/F3ߩ<W�����:��/{��n��:ߣJ:^鼼��-��e�D�d �.Z�9˪�PZ<�'S
X�w<}�w�n1�R{�u:�8S �+W"+�����eM�&��iSg�neD�$��4�#*#���͔�)K?Q�:0�!��xWcռ��Nu<箖�A?�ʫQ���R\P3����̆�rSq�*7$�hi] :�:�d�`�iw�P��s�}p{��_�"��z����zJCLWͱ��%yl�*�3k�7���W����	�|��wR�wA�)Չ"kHр��+��O�":f2VU���ګ��t~� �q      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x��]]o;r}���׬d}�c޲@�� .$/��!Ys�q�A��f��=U�qO�[��X@����M�)V�)��;�s�����!'�'�n����������xw�o�����������������?��x�?���(�7�! �0�������m!	vx����ÆE�������u��2A�� n<D.��?�=���
�{l(43r�����~�����n���&����qw|�~��;\`���bC��Wh�yy=|�~>���??l_��v�;�����܀̷+o���/��Z2hT^�e�X�/��wOۻ������ۇ��q;���![��q��)��y<�i�{7<>Cyt�Σ��h朆��<F&D�Vx��|�����ǐ�N4#�s1\��������q��i�|��ov�-o�51��;y���x���g����~/��o/�;E����&<�N��}��p'.�м�{㭹�x��r;�2G:E�ì]r���8��+f�4�����G�U�pn��Gf�xܾ�;�oO߿|��m'k�������22��,-�k���=�v�+��7�nޞ��O�3�� $����>uo�>s�o���y��Q�O!Qy�|�m��r/j{��t<���EJe�Bn@���̷ݛX6�7
�Q����#�b�M�&��[���h��/P� ��������������gL#oPR �y�{B�
/���Rj��<a!K�f�{�k�n���V��:��_�J�p�K�ڷ�fhR��[o�����n���xo^v���| ְ�墘,M1{�F�idO	�����tx��^�@�Aq��<W�X��������>M�4q�BC>%L֎��ĚG��8�a��_�I5�8��0l�k�Ɩk6��"��w����Di��.���	ke�k\�P%���W����F��"�օ�`L@h���F��?�]�Od1�Ε��g���;�t	�i�:~��m4��Kn���b g(��šglÔ�6�NX��b1-��|̲+*p
:_�?k���v�A�3��[ �_�kh,a�C^��d��e��؅���@��c��B4.��˝�C����%DtK�/u�9�ĪIz�\G��4�2JZ�z�t�wo�_�۽�{��%]��HN5��<V�,�y�3(~%�@�ٻܾfB��n �1w�n �$��O��>	�!�K�1$	���:�-���GS��@��Hl ,��-4�m�I�tB�@Z�� n?/�+([�ˢ����r�
V3m🂗�^leI7W�s ̊7�D�1��J$�	#�B`��E: 3MM��d�*�<y`Io�,�V�噃D�a
�q��������H\T	�ʀ�M�����cs�,�q��xJN7���b�`1��1�E�߄��]�n�����o���:I���z��>���g�e^��ѵ��4���(ɘ���j6v��Qnc��rL��=5��T_{+O��KA��s^։o`ũ)x)�ʞ��$L��,	�5�'�}l��������\�9ƪ��!�Y�($E�Sr����EF���x�����XT�1Du�(*��sZ+>�l�5Z���q(�,QU[���,JPG�R�v$k��
J�QT��Mm%E�'��P��Er������^A�(��-ѕhS0`#D�-���1$5�T�0������1r��zf���XKW��]���t=��ʺ
�@�=���OFe�#P��\��G�2`��s���|�28+C6KM�m�m�û!���������Z�l��ٷ[X����V-��n-`M�^"��%͹;�n��[���C��,�s�����緷mw�
ele�I�1�ѧn�n3�P�r)�b̎O����]e�Y������z����U�5��HOq�������r\e��7,qm���)x)���}e̹$��o�nn��a��f-����@h�gNc*�ͺ����{fhe��:=n]�G�V6���L�m�Bu,~�}�Le�Y�gBL���B����0�T8FO���ɜ���K�ʥ��ew��kGJ�'CF�f%� �PC���&

ua�6��c)Ů�PA]?Y>�����	�r�F'��i�3��||�5�ƃ��8���tG9�r=��g\Ï;��I��ҕ�;���i��*�t� n����pM"�R�SF;������'� 8G�=#��?�;�5�X�~�[�U�I�7)��Z�X.Nz�|ް�6���
�h�흞��]�y���]�e� O �-Z������D�X�{�'���\��᭰=jA:�q.�-�ЪZ4b�Lh��V׾��e=���0XI��vL9��������������4NL	Ҍ�y������"�>{��J�6��ٳO�0XQ�'�e�u��!�q�ӌ�>E�CLV���CC99��;jEV��"�!b�87`��:�de���UOt��l�4Je�%��<*���m%ːt="f��l+ݒ�� X�����I(�J�2�6v�c���b��� K�4K5�I;�0���,�6�6�Ȼ�͵D����T�ī:,K�lH>�Y;��t���7�XB��X|�n,�N�Θ�~��̌��V#umc�ig� ��J#�����l�h�bhr�n���u^�_��rV�iB�4��}:�������F�r�\=��i�4T�I��N)�:4li��Ky��d	,��۱�&��(M��B�\�h;��FiRM#���Xm���� I�IH+�>y������0)�O������}���%�)���D2�>+�J�%�^c����Ic���;\a����IO]��f<��T:'�2 ���t'�:mP�Au�ͨ?��TB'm~�(i�HS	�|!�;���4�Իni�����{���8��EƔ���}�J�A3�̒��5��w�k`f�D}�J�Q��\w|���J_Sr�Gl�������Y�#	t�4�,��ne͠;^��iޖw�nլ�1dO�ѭ�K�O�G�σ�4e���I����P�G˗����ř��7�o7.S��F�j��g�>�^�-�*�tv��L5<a�8�*!����u1Z望K�уE�Z����8��@�Y@�"�,c�aN4����r�%�,�4�H4�y��8��H����a���=�oߟ�W��wra��笧XbŹ;�[��B� Y
��N>�ψ5#�F�v6�:#Ռ�Jݗa�3�<F.7b���$h[�|����ݟ����+1D���Q!J�J��-Z-hԣI�R��~3W�nݐ=T�V�`C����@�i e�J��a�t�o8��՗3��~�[��H���2��-"�9U�!2z���4�"�c��g���F��|�UX��)X�����{�.N�fК�~9�A2 mGC\ɴr͠�Y��U�Yl��l˫�v���%����bbXX�C�>�)����U�0��b�4=�"��/*C/�]L`���pI�����!�g�Z����H�T�gTW�D/Np%K����<��S3�u���D�K��B��3��݅L<��VX9s�UHW������ؠg���ۡշd&"?9��o��w(�خ�W��~\/7�E�ug=�]����0C��M�Oq�2��ө�YAM(	@����Y�7��Ez2�P~�ks;�h����h�[d�̟�μ��x����巻���S��,�k_;&��-1�w��z�ޯ�1vqӢ��u�u��f9�RJ#v4guz�igFm#�ac�����?�~�I���>|�b�H��ՠ�P��4��̏��c�o�O��-o�l���:��G��,��0��e�;:^��l�\?��t�ݲ�a�r�G}dG+�[�C�%-e�0��r�;`�q��h0�25��fب��]��l7�3j��tY�cٿ%� X��`+z,�l�Og.��X�#��\�i�^'`+p�r��aV"�n��ջ�i3\:\��M�Bx1�$&��q����v"�$��C��N8X�ku����'�r �;%%�'�cS �  WI�J� �Y����*O�����;�@�=��%�%���:���IX{��<C�0Xc��W2�+��*�![S9yƸ��*��J1���;w�U�`�,V�|��!d�NV�[��ܒW�U�3��k/c��6�&M[��k��h�y��&��Y!Zǡ7��FB�5Zk ZGAP�B�<��d�g�?����S��B|�z.�FO4#}؃�ν~��w���mZΐ�6��Fr��IfŐ\���w�,g��\�9��:��2�� '��ϣ{bͷzqc(�k���d�o�^��6 �Xܱ�_�+�Oo��_m_��!@ݥS�Θ��OV����m�@�rz�1�-K,��#7#eI,��qv0ç��dK�t�r�Z��hz-lM���2��~H���vf�/�%0�3��F_���R���kO;�V��]U��צ����S�qT9Js�j-�A��)���(M�4��9��W��7>|��3�      �	   �   x�u��N�0���� ���.H��5mPG�s�ۓ�����X��4�n�>A����w�M��D��%���T傇��ԌG�%Y�ٜY�<���M���|���.9�Zz���%��?|�T �»\��d�w��>�v�&ah��~���s'��8"~�H�ɧ��i%>��U��k�\F5��"ܛn�
ښn�f>�
�D�-������wV�d      �	   �  x����n�0�����U�g|�YV�h�^qɂSm�~�&�u7R���|�9��z���g?W�1pa1�]��3C�=4�nk���c��K|�0����U{���Xb�-�Dlt�x�B���|?~xG돮=���Đ_����.=qC��2J#J�Pj�3���~rg?�a��8d���?��É�*���F$�^Q����t�}��R���KAf��{J��r�s���`r튐����cr<��.]�O	���� �By������K���s�+D�*�h�pl�8ͩ��O�8���s{���KHP<㶀��7�L֖����-t~z\��(,Y#6.I%�d�B�yQ.� ��&�.�_����A�����RZ�,�6�X�V��q �(�cv�Mojy�V�I����\��p���g�B]�k���<���z��0Y^]�1Od�e�q��`�bP�v�n?��$��H�f!�Ը�C�4�i��2�7�������� ��S����<���k�Nf���F*�&�Dj��펾�n�nb���H�\��A����������!�&k���j�C��.ׅ�o |b���m�X0��f�r�AIp#�d���*t�p����w��1��{�ZSS�4,�ۭ��V�%����E����є�;��L0��7���P5(�&��`�D����L>�8��ڄ7�ۻ A�a�D-���y���h���Ӿ�x�̠B�6F	�;��>Mt8�      �	   �  x��]��6��3�blc��;CB��F�H�Qo�� '�I�__����v��JU/ڹёxy��s<ؽcU�Mʫ	�s.��O�B�WQ�j�B�����1E����M,ւ	�P��\J62MD��Ó�7N���ǝ�U�n��r!�m�'�����G�D���L6�g���W�ou?�6��:��'��8"�_u��u�>߱&k�#߱�/�U�5iO�y�M�s�6P�,9ږT���R%�[�X�C\��?�L�UT~?�+��y�/�*_82E}�V#	L�ޙ  ����p��)�1� �җ�b��-N��"m��_�S�&���z�N��Ws�BV2��8�e�Ҟ�X3^��>�V��>`���}�o�3&7��2pkx������@�Z�Y��}���w<�`�2HE����hS}~Z�$�G�g��P|M���|�����5{�ۂd��m�j�={�3����_�ȼ�93hM���|QU��ԟ�&H�8GhQ= ���l���*�e��1��۵�|�Bsa5W��Gk]�L�!v5o��_�P�8X��=�Ne*��gɮ�a=$��ޘ=���l ,E�&�/���&��wؖe�
��eE�Y�p)��k�V��:����>�}	xX�AX����f`�V����?|�?�_�g L5^B�/6T�7/6Jĩ� jΗ�������jN���V��K�s� ̫8���ɥ$�t���Tѐw<�VL���~>�d�2�`F��k�1�u�b��A*�))�	V�u{�/�<�|��/�/�g�ZZ�|s=jM�Ȁ��r&�������%]u>�=&�.K�>�����K�>UJ�r�TS��'L�y�_��u�#ktS��h
M��ف��Ǻ�<+U���FY�𺗍R]�~���n��QL����!���ӪK�V������P^:xEe�GgB7(�s?a����~���9������^z��1�Q<Z�\�%^����	���G+E���H_q�4�t��h���-GC�ۛ�8Z���W���$z��c�q����}�,eT"k�.�9kq����N���j~���j5���3�[߲��f�Q���c6�	v�L*ê=����������h��3L�ر-x�{�懤��Ȇ'��W��ӳj-l��.=fO�e�/�������/5%�r      �	   	  x��Y�n7}��"�v��*�8߲���<�n������=�q�H9� F�4�㺜Kۥ#��]�$j!�Ȯ4Ͻ�*�?��]?�<���c]�.��؅����X�$IbB_}�����|w���~]�n?8K�X6��b� �@��$>����Nq��Q	ߵdb��p�d��ބJ�%����徘�~�d����X�`������mXh/��֌ZsM#��,z��L%�,����/N֗�c��盻����ڢq����	%�u��~Դ!hKQo҄BxL�#G�e=��Z��A����C�0��ZZsD���Z��ى0���j�W�����6_��<G�lx'?VaTᑇ5�Kƚ�5m7�e����\Ss����u<����������{�̞`.�eSH�)���m�1���CG���~��8ԯ"�"���RWMi�Lrѫ��y����9�~�k8����H��#��ӲRB�T�/�jD?R$̧�J��Q4�ˎ|��;XH�`��mWd��
�è���8�j��M
7ܳ�=�h羂J�O�7��|�ߒ	��M���b��\ê�j�
���4kr�j�[�:cF9�,b>u��:��{q4�ݻ*�ڌjs,�%���:�7a� �8��ސų-{K>E�No�'(n_c��#GJi�w�J�/G�Т��Ɔ;�a���Kre�����s�l���2���)���"�]��e#�kr�ɱr0!掫�ft�b��Ɯ]�vu��D�?xZt^�c/1;�rG����G�j%[����9��z����.M} ��^2�먠����A/-x0u�9ڑ*Z�7��t/����!�V�N�|��/����Q����I1K+�t��؜�*�G��i�9���
���ر(���:��[�Fr�T<����D�X��^�m�C�0@?M�%��L��ၷ+�*]�7�����-���~��^	�א&���>�GE,�6T�����n��8�z���O��O�E�t���TWL]W�ا�C#��u{��Z�G�/V�������8�@q�d��l�މa\ޢ��F���L��.�Jy�ןÃC��3��+�����۪�?������)�z;|<ٶ~�OO���=>��މ~!{��A�����ݙ�׈����I ��$Û��Y]����dA ^3mx�[VM���I�&㬸�
�!�nJR�ix�Y<���.��Z��TP��+�BF�~D,�e<G�Z�����J��-LJ��^��4�2�ߗal
�P�p`����W1Y4iC���d}C�W�I��Ե8S�/w���q�
�.�V�Z[�:�+H�A-8SySɰW%�kV[��M8τ+�ɛ<FO�'jZ��~���0tK��^�E��N
��vC��
&р����t�,��0����r�{���5�<zpHLY �i�-��C��q_C�~�πr=Υ���aOL��q�8mw�Ե�Rk@��R&��\&�jF)��RHW���冇�0���±{�6�**� ����c!�U����_ũ+>f��yMxc���g/���E�"�����Ǵ<�8W��k�(-�Mp�����xp�1�h��{�_Ê��X��i=�-��D�c�{$	0���\�0<�`u��g�{�����=j�d�R��fxВ�/���ة�+<�}<�;?w�0{��ʂ^l��t�M�(�$�uR��o=���,*7e���u		*	g<�2�3Hr�}����}C��C�7�� ��S�w�!�� ���dZ�%v��A��=�����8������du�s�ۗ���t�mm�Op�w�����j���D�%r~&�����ݧJ��B��ho��߽ua��t ���W�~��{vM5!3�d$t췟/��F�Zѩ����y�p`Y8��n@�̰8T�K3�&8�ᦥ����������>��.?�s����e�x �@:������j�aD�o�WSPU�Qh�iV�+f�	�x�����J�/��o�Ȣ�U���U@�<Sy�J)>|�<_��Bф��^�X��
A�S�)��H>#�nN�z�ۿ��u���t	">mj�{���"��Ђ�ք��v�Ӝ�"�̮������/�ܕ@W����ݛ5}�R拆���"�F7)Z�;c��M�����������ӯ���na����G� K�兎�x��vV[V�v�p�䰌�F/��a��^�;k���9>�/��<>=k�3�X����Ud���`M��^>~���B�      �	      x�՝ے7����O1�;X�H}�dE(�(kF�%ɳ���o0��,[��L�-;���$ ��c�~�l��aC�����i������ӗ7��߿�|������������_�p��#�@^A7
��������h������ۗO߼�н�.�����~7��G�f���󛯿�_��߿��V�7�}�:t����*J�����E��?Z�Û_��#��kHe�a(T�J�����Z��7��d�߈iO)g0�X��+���;�Z�F4奲�oĴ'�ն`�W��� �RkU��oĴ'���L�ֿ,���O�X�i�P��՞\h�������+L��i��*7�ҽ�!����z���:}x��k��MF���4��@�U�,�X�@���W���Qj�:���d����CR⠻:�O�=�NM�&s@E@�0���C������ߺ��V_�����4^>��k�΍*�Ә�`�����d	ZJ�s��\?3��1��I�v���N=��:j��J�R�C�'�3:D,`R���/�U��x�u6.)cqמd�e�pR�b0���3�9?+M�S0�N������y0����}��+[�?s�G/�_�� q�Rv�(�IRPP���_P�N&jP��&���>�㈣8�$q���"ejP��B�`��o ����UyW^H9��*/p�� �m��Gq�I���P^�Z������F4z��H��Ǒ�� ��,����U��`"޽uCP�G�	�T7������ˇw���o>��X��y<�H���<���
��T`�^�CavŉZ_x��j�� �x�b��#5��'��օm��ň��?��:N����0�.��I�̈q����DT�� �X����}@`��P-O�=�0�F��㭘�ט����'�ˑ��Zu��ӎ&^$�������ש�/��Ho.bv��2���`������"$��@R} �y <:��8���<{�`�DNlgЀT�d���|��!̳'�t���F���>��8A�j�����<{
���q�H�X�e�n�72 ܈�'ړ	5����:�?���~�F�;SgI��V��d���̦��+�9�k�/�],���<�HMt��<�5.<.��X���R�fk:�ӏ��AMfs?*�4���c��6�èA�A�0����|�扩�ޣs�FBұ;E��K�{�sU��ߠ�1���?jO,2��6
�|x;X}߇��״@�2Rn���r�KJw�E.#�N�����=�T�AI�W�@=V/.X70).0�7������O?��d�b�nh �5L�{�HS�m�����Ec4�N��#P{���i�j
��h�k��`)�q4�ÓWFB]0I�`� U��3O�&��G�Z���P�N���$e*Z�j���Up^�M����Ü9� ��w���:m�0Bq^l�{0�c�)8�e^�R�i�n2�1�Ųy)�p<ўL�-�/ߠ�إ�ڸY�[/�]��G�KP�.��0{AM!�ʅG�n�A��Z�<�[PS,���
AeHӺ�j�� ���X&�4N) 0�ҍG,����2��a��1/>���s,͞:>z W��f�z��Pf�	�	^C����<�����םp�o�@�q̕&���'8�fO��.'���K�Q&����ï�)ӛX���<{9��b� s:�f?z7�Bס��kEa�*�h��������L}����?P��ț�G�׋P�yP,#�����:
�X^@3���
 �)Tb��P��4�;W��
����wTq�by��P����L,���y[qOž5�(�cx
ծ\d��&�i�>�W،;.�AC��X��I\�%�c����`��/�+N��if���Z�~v�~�;m�tN�K�y���D�TR��9T��H.0����6)g�B�1'�-TR��9T��
l��+�Xu�f�ڬ����E.�b]�P�Ʌ�-o�X��v�ڬ��DwTb�5N�z,��5q{��Jv	���i9W$k� q�U�8��d1�E[�e�����)9`/)7"E���^�d
�w�9��
�G�[T��'�$�/���N:��'j�s�ĶVӘ��L#�9�oNI��J���y!�ி}|7u߾��×i�h�վD6�?<��.lĜ����������-Z�y_Ф�'	��_�;.��)*\�������$���n�Qj}�@{ޱ.w�=l\RK�Y\�%c4 ���I�Zhϻ�;.k�3��Kj;�kO2��p�@�v�"s~�s�#s��I��#ۓ�1�6"�؝o�q�g����r�
4X��Մ�Ώ�������-�b-�'�f^3�X=�s�
��O�k���`2�zs�d�I6U�P�I�`F�O�Gk#v���ZK$�����*����v,�n*6 ��R�@m�fh�/0�w{��S'��3T�~��Ӗh���ш�8�f7ьG�vH��Z%P[���V�H4�w���M4ss� ���k����H��e6+�v4�c��	�L$������%3n�l����=yf5�3��Zo7���Z^�������{��=�ݠ"NN��h�4;#�7x�n-�l�I�p�)L��e)���6�����`�Az�
�xg
��!:�jO.�h�b�3����&�C��IN�+dw�c�"�Ccy���ٵ��陊�s�Jl3x
�c��b�λ��K�8�O�1z�b��6
��'q=T�����b��K͇���~7��V����y��?���w=�!��V�&廑���`�t�gD���^���K��I\�ϙ� �mhb������w.�k�'q�Ift��
�X����)s�39�d���s׮d��F�X������XC�=\����ĵ'�������㑘�[�Kg���2��b�yN#ۓ͡	�L��'W7]����`���%n���pt#�vS_w�)n4���g���P��Ȝ7�[�ɕ�j�����E��P���F�Ƶ�n�L�@M�����~\�[s�ٍ���k��ĺE�5N)�X3���O�m�SÛߨ��|+C�0[�N��;
�@?6��P� �$�~�B�O��n�
fJ��qT�=Ϡ���Y���I��ZX������:���q�f�6kC�&���j�q���{��6��=� y(`Rn;Xm4n��F�ߨ��ϡړ��x��v������F��堥L�b���P�ɅZG��%�����q��b�4��(��j��'.U�b��CT�ɫ�1���̸a5�v�r`dRl��Dc�i�F߱4?:P��.�[��F]=PU�F��L�1c/�9�z<=��0X��=�B;V��#�2�]ї�'��끪�Q7{+G��HY�ca�Ա�&'Q,@Rּ�*�t�q�6q���,{��v��mҖ2��P]����7��X��h�=�|�_� �ի��f��?���!e�麡�N
}p=M!���;�oӇ�K�:X��݋����ΡN3�X��É~p`T�H�b��S�U�X��Š�9��U�9��L���|-y�+��U�(Dh�m����;�hO����'��X	�&�� �F���f!+w8ўL��)B��]�L^�X�ࢽ�Pf�v�g0=�
.��]e���u��9t͝G��(L^u���C���m�������ڒcm�-c�ܷ�sG=HJY�Ț5��0�����t��^��$�!��	}����ha�M�e�x�ZS�4-@b�h��"�H�G�1���ڔ��5���H�?�+z�m��MSxu��dظR�I�l��H{B�>����B%eBw'~����B��gO�G�(Q��a�;����w�j������CC>|��"eDy(�@4>}/4R�����*0
��f��HY�Q����ڸ	#e*i����6G�){p �caR9�֓^h��A%M�%`��t�r���b��N4R^�v^np.-�P^~�k����i��=��#���t퐟����Y:��0{�� f��h���>��ZW���    ����1����CY���#����ԯ�Lb�7Y����H�d�hl���H-�u0�+?����rV�B"��G�'�Àz�Ejᯃ�_������H���H�d6�u�rFnX����%'�%��G��I���ƈu�vs���fs7k]�)��UD=�a�������l���@Sy��7 �
�J��C��O�M0);�V���RRn��PIY�s���
��n���Mh��FX�(*)�p՞\��0)��V�����F�b����P��E�q(e+f���ĕ�hM�L\b����z,,]JM!;dp�i��4���<��To�M�0�8��<�\��0�b�B�7�<ӈ4J��2hZ���YC5O�yC��줡Ј�7J���q;s��?w`�����;w8�fOBwo���C5P���^��F���P���t��vb���� �'�s��ëv.��x�
�ͳ'��	N��ItW���=����W0XT��E�0��Rb´���q*h�����4R��X��,@1x\��$e�j��BCk��E���X���"m�M��՚����#��98�fO� ����H��z�Zs�а66�TZh����4��M!�WQ��9h����A�����xP�ͳ'��By�P,=��⧡ar����q�Uì�~�#u9�r�Q�j����k��H,K�p��21�t�P�Ē����O�p�B$��x8ўL�LXף%���UooX��<��É�ě<oIf	J,��	��:0�0f�I,��p�=��GK��$���6�7X�d�߮�1S�o<�iO��{6��(/ViA�IpC�x�-͏��-���@�����]A��hmDR���A,\R��,�=���4){!���FS��K�d�ŵ'��lhRVC���sQ�wo���8�kO���!@B��"s~K�tG��+�Q�>�yd�e�K[,0Njr��+:~��G���(���4�l�c?�ܟ�@o/`��� 2���x�C���#��ndb���=��n�|+z��%��T����򃄢�C��\g
���C�i~:��vjZ�b���8 �n}���nS7ƭ3;�8���P}�*݁y�L�dC3Xm���Gtk#�D%V���=�O|�r�0���{��H�I��?F�����`F����T�@�G8�B����r]��Gl�_�SU���ڐ7�������ǻ�Ԃ#�˯ũ�c~�	�Ƃ#��?gO��و�2�Uw����S�yT��NE^��C� �@�ՄӁ���358ͫ$����z���ͧ��j�5���r߸��=�*���3aD=��N�����w4M�M�o��_vZPS�T � ɰ:M��P@f�L�y�~g�h}ʒqEY�n+?Q�]\pF�"�X^�1�>��5�5�)	+�8J�6Tk17�H�F�<ɟ���&o}nݼ(+���'*��Kz]z��bI��h��5�Bj/�b���b�7���X
PVY�Vs?Q��cئDn�z���k�O͸17�Z�}�����w��#�KU����?��:�.Y_�y��L{G<W�\c����.n�ʄ,�h�mOŅ�;��*��m_��j���'����BUީ.��a]���ژ�Tuw���L�b1���v3?�y
֪����Qu��]�'g7�	�ïݷoӗ֊5�: �����-�����I,zz�wR�c�[�%e�Z���~�3!�͚&)tӮT�bs�̂%ewZ���v�1��3j)SsӞT����yi�z�m�3s���$�Q�`ڕ��K���i��+,��:*)�q՞\��wL`��Z<��(�Cg̦�kq5y?�T��;s	W��t�f$59�`��PS!Nh|�����	��,����3�=�55S�YF"~F�oXF�4k�[y�� -N��?P���	�T�b�͠a*���S��� �`֘��E�K,M���߮T�:W�X�s�w �ynO�P���9j�C�1P�͂=�TwO�vPor���h��rG���
۔!:�joQ�;01�q� ܛ5��h��%�e�]����Jy��&y1�1\]䧋���CgǮ���Aw�}��@�	��)�4|�6��e*�3��A����;��!�*�i��;g���9�\�5B��c�ȵ7g��d7��3Ny�v���[Dz��z�	X����+&+_F�؁F�H|>E��*�p3i��f4�&cS9WƠXq����ބH:8�C�p�)�po� �s��e ���j��f�͇��p�\_(\��!夗Xs�v�|T��2q��8;K���0^L���^���9��Ek�����F3X��S#D����8�jO.^4�1L�q��UG~ꈎ&����Ž�t'|�f�Fx�k*�sG�B����6��|�,��5�E-���$����s���L�H�3���o@�{-CQ0����3i�·L%�T���a� Pf��j�`MF*��&�`>�	T{r�h gk,`Rn���m���L=�iO,�[���y��U�.��{��;s
�c��6B����E��G7(��:�ٰ@�������׀z��_�7�+5Bn�P���)P�Z��8�%�%�W��H�.qͅT�=8p[DY���)Py.4am��p��t��7+�։��nPb��N�z�f�*;�Y]N�Ś��t1��{20���t���S���M�B˟%�y�����O~�:S	6_3���C�: �c����ܤ��1���&�i��C*�/ڂ�y��L%־��~<c�`q�ޓ\���N�k��r5�E1��͊U&Pf*��^'x�K�5[�\mTƭ�ǓVb����joZ�k��E.�6�'ȵƋ㺕L��5�oV�2�2S��(� X����(W�
S-Z��Q��� �b5�Z��#�.��R����ʼ�L��5���z=V������W�V��g�gPf���nF^�B�9r��M0�J�V�6�0c����a|���x�V.���C�r�gq�D�d]٣��=k(�YK��F���t�&(	�@��b�[Oaz�UjCHA�M�X�VW?�ӏ��AMfs?*�4���~���;5d(�����[�C	v#8�ǧ��R�;[���7N��/��)'�x+O�b%VO�z�f1�����r�����O�"LVa�Zb`�)5"�8��F�_�z�I�ݗW��OM�Y���>N�F,7�P�?�K�@�ɕ� ���j��3�6�ho�N�l�Ci��@1���=�eaT=��tOc�g�PhĲ/�ٓ�'��6 ���j��3��i\:Yw�F,��P�=y����@�(4����.��'D�d-WE�`�=����
+R+�������f=Z��K�$àƨz�&����������U_?���"J�<F���a���V��G� ��gw�D�g�I�"� =j�x�
����#e��y,Q���v��$$)�Ђ�t�f��O
�l<RF�h���\��^mB;ah@z����'�YK�.<b��<�(��A�jO��]h���?8�'r�[�:�Z������I��E�WB~zO�|������Q�c�
�k��Y�1���!��D�8R��h�-D��5}$)�ЂTk�<���,<R��h�=�(�z�� I��Z��<!m]1ߌ]x���<�%
o�˕E$)�ЂTk��?�ۆ��a8�gO��65lHR��i�6L��=�J=�H�4��D�e��A�5��F��h^ H�~�yV��V���0E��.\�~-?���k��ʔ��͒$eL̆5������[��恌�٢�G����'�uv��� ���f)ZkW{�b?���{ˮ��&�&Nm�-XG9�m�M�V��ViW0����"�`��vњ����)�I�����Q[�;y.�I9�J������#e�����Ǣ��6`s��4 ŊU�&���ho��իѭa@���@�E4)#""Z���|,��*R�y�h�����!�/�Cq��j�n��}����C8lO4����vb�f/c�k��-�ֱ�b�K�'�=�^R������\�p0��Ċ����   �ƅɔ��*$n�����&5�X��c:��8��;���Ѱ�|~�S�&_���7)y؞h�7�k4"�Iy-����������!9lw���)hbWA$��?s����}����43)���G�+�l&�^�ӑ6ѤL�i`{�Y��>�׵��x{q�c�{���
_���'�hr��B'v'U���{=����&�2��տ8��d�F챰�kb0Dv55���/�]x�,��3b50����d.��g���B"��J��K��-'�be0��z��Bf�94)2�5L���Q�t��ab4���x;�ǉ�?��s�w�lH)��r�!�Iُ��|��*2H�J�@I��6������'�&�0�X���D�3h
���hcz�J��xJ@*DR��x�=�j��Г2mPO_��'r��51"IY���d��LRf�q"�������RN��=�<z���k}�R��Mh�yR`+��Бҕ�n��4��_?)���7��{4߾��|��|�3�O�c@X
�֥ԯ������rݦ�V�!�O���I��d=l�b��~�����!{�p�+��si��4vMCH�b��~�L�����e0������{�G&Z��J�����=-���V���O�ݓ}n�� ���=n5z����7zG��Vb��~2�ĩ�Dnٴ ����:t��`�V�G�@�^�n�J{߹:;���=����>6(��'��nY��y�"D��X���.��5%,!���*MP�֮�h�#V
�h�=�������X����d01��#�9�gO"o��mԉU�l@��"�'8���s$�rr0ϞD��䢏�X�I��]�'2Y�kF"�19��Lp1�֕��c�S&���M��:;G=�T�ӫq��0A�访N_�}��N��/�V�o_�N_��C�pi_����tFd81�p&��+|<�߮�%>1/!�Wc,
�}GX�H�9�3��g.���?��͐���C ���y�3��ċ�O|bD��ƍ�p���2�i��
��
�X����k�.|b�DlY��)/U�5��)�S�����_��/�R�e0W��z��S��J���aR&�y��h����ӇϿ}c����O_ջ���o���o���W�~�b�iw2~i�5�|�X���|�2/�6����7�B�z���yKP����|�=��k���	Z�]�bo�Z�p!�rG?�xO�MX��	Z�2]�2q \�%b)���dF�q=�O�R������qef2k��Y�q��=�#:�7�����/���şJ      �	      x������ � �      �	      x�3�4�2�4�2�4����� W      �	      x������ � �      �	   �  x��Zˎ\7�]_}��30��`�`mh`�AϮW|��Tꪒgz�~3�u�)�^���G�e�0�'��M��q��߿��|���!G1�ؽ����X�$��	�s��G�v|��?~|��~�����S�Y�-���6��ءU��\WJ�m9�D����o���,Ec�X���7>ސ=��%ɏ�~+ꝛ��9oޱ�#��H#�-�Xk0�4�b-��B	\R!��������t����9�*[�>�Pq��>jpu��H�L�k�4l��9Vhzc���!�I{�m���h�X3ƚkٴf��н�T�ɾb��1�}�����Ǉ��>ܝ6<xr[a�+ZJ��T���ź�CG�H)�t]Lp	˻�] ����t��P�=����cl}�M	+�&MT2�:r$.��O����	i���1�Um�E�l�䐴� R��3�y�*r��U(O���Px��c�s�A
F-;#v�&o�XM��*�?��b��B�ީ"X� %w�Y�L4�F$EE:�,��G��>h��*�������=G/��<��\2hA��h��-�Ȓ�C��P�{�lϠ�'�r��Tǰ)$��T�S��#�8쒃�����*@�RUqW>Ec��K���;��K�ef
E�=7��3����6F����y�r�A����Q] �= ���9��o�R)�;��2��"+
�
˱�}x����s�|"�[#�po�kv�JORI'����Gj�V-@��
"����R��Z�^�K	ƅʑFJ�s15�"��@����2��|>KOu�ʹ���g!��QH{�ކ! <+�yTx/����Mr�+[�"{��=���t	�c փ	�EY�[��g,7�g	�ǟ�uj2sm@eoHS�)gPG ��^2�F�r��hu�J�3]A�^+u^���g��R� {;F2���9Lb�hV��ސ�
��]��ҽ,�ţ[�1X$�ѥ�)�A�54x�����H�+ �!��5�|�z�w(��6<\I:F*b��3����P�ك���em�A�q�ѼI�lCmwVT2X�h���p���
�x ۫^#��h��G���M�@JՈ���G�����ξ=t�x���������Ja���������-Y��W���G	~~�vm���n$��dW���
�e�_HG�#8�@LEH	�k8����r��p,�C��rZ�s1���5��J�Q0�:@������\�^�N��p���C��Z�o�J+�E�8{��QzS�ƚ@��L�/��\Ԟ�ly�撦�u��j�� H9�NN} %x*@�HV40ծ!\G�p��B�^��]T��6�"J��Ø���6c�hqԌ�ZL�\�Ә�/���؇�Ivi�Ru$WrVi�qîق�7�����> H��!�9,xB�'��0	���� �-�G�(>�Ƀ-��ǝdc��xXz��U��Ps�Z����:����[x��CJ��ht{�R���(ã�61���k�[��:%��l}�~�������	~d��O*���52���{��MX������v�� ��ǒ�C@���Z�a=S�()���R@�k���%�`4�j�2�]|�n���3�D!n	²�$up
-�\�t05��G����t��i�D �
x:
~A���� \�6z6[�S�@����e�H)82�<`���НΕ��k_�>.���J-T24E5]� ��L����A��E��!��-�2���u#x���)_:<VnR���C��Z�"<G�z�+9Ǝ1��75y�7k�l�����l��p���38ɚ� |�����A�[��0j����R���3��u�ƅ���*����vTM��
����P�Е�E��D��jSw,w�sx���F�٭@f�&�nB�v��ZCҕ���(%OC��܊��p��`�r+��QѷY�waQ ���F�f�~���&;�Z��]��A�N ����Р��!�hY��a��]�@ҥ?�����2�q�Z��A����Rj�� =&tiM]������ ��`\��B�Vұ޵�T������C���b�����������]��`}��ȍ�T3<�%�ר.��!�h�h�ч*���7$&$6�=U d����^��K���#di8^YG�i�����mqv�Ɖ�h��U4�6N�s�9*+�-��˴az�Z����n�E�c�:\�}A�V6d�)Ppy��,0���Ⅹ�� '@*�Na��8��Da����|���B����K���2,e�2AO����I޿'mm]Z)Y��)��4���I�A�Ow]:��{�\�5Km�k��ڌ�Ƒ��g���/�c��E�"rW�����
�"Qkƈ��r�RQ�5CP�7���2�ZHۡ:/�^L���������^G3�M��$ͩ08�K���%�_��CH��n��ɿ�I╃�}�nxٌE��|�c=8����u�^���7\C�c�)?�bw��X�nޣKp�H����҇��{��R	4��ks����r��OV�h�~c��BKq�-�>b��1�YF�jR�
�c���������'�{��\Q����N&�k��.�1o�`�r].��q[t��r����LO���Փ�E��8uK����g�R�H_m��!�k�Td��_�� �`�@
>Em�1��iʽp��bkS,�7 ���o#��X�8.¥C�(FV"f�e4��-�mN�-�	�m_�q��s�-ΜyTB
��:Hx0���x��������W F�K�:�sp��/��*FP�/�¼�(0HQMUj�9p3*���^o���g���n���CC@
�
���7�tX ~���8���u��hr+���ħBӐ�e��e�K5��F�Am���9a{c��˳(�V4.�!^��!�$�1x=�� `�2C�r(���[�w�p�ak�09~��YXY*�s���U��
�+�ނ�ċ	�G�V2]TQ�y�W �U Yc��e4�/L����kj�R��i�����$�ۺ���"���L@�P󮃅�+�ڥ�>o�N��>����2�X=XU�;�\��w�(.B *�F�U�Y;��|�8yMM�f�mǟ�/�4����{��4mB����sH��`�z�9B�N���>��:Â��?-D�Y�aA�6�kKץ�{L��rCJf���i�/%�F�Z���Ji㏁n�+r�Kt��K/���HV-'cK�Ft�L��0@�s�����.?�l�r.D��`� I�T��@3�mؐ)�gaĬ����?���\?���X��Zeμ����;�%�������;���73`�7�:�*��CBRή]��N�93��M��5
�{@��[8�p�6�"�+�
N��F��~�h��.Q���.-��2��p���&�ǫB��k�c;o-b�kpQ>�kBl�nj���H}t���"�t��p��-�s����=�H~D�����ӥΎ��N���C��(e��x�S�f�0�{�vV3H^�'q�4��[���K�,����4r�k�\��)z��p��"[�iE�t��S�v��n݁��>o�}�vu��1��bK:��#�4z|��>��?��D_��� !��W����xK�k=Q��4�Eߟg�`��E��3�{��7��-I3�
'�m�s�W���ޭ��`P5քA�vx�vs�z�Q���2?��/�|~3whZ��l(��(��f������g���3����,/7��&���Z��^b�r��e�+�	�C@��FJt���Ď��B������C7_���n�����+t讉7? VG���LE]����/8��:r�j��w�[ ��␬z��.�kSՋ�G;G[� p���O�?�A��`���X�>}�:M.*�c0�������}y������ߓ��o	���mK軹&h�L�{R�[��j��"0�*	Vn��?�O�������������g|oo��~Ɂ�ӕ�y�z^��o�w������      �	   |   x�3�(��JM.Q��MLO-�4204�50�50R0��25�22�366526�60�)kn�G�� �א�8�9c���9C�2\K���SK0,6�25�3�4���f1L�ɚZ�,6�Y���� ])1�      �	      x������ � �      �	   �  x���ˑ�@D��(|wy
��p>;����a���4I�0@J�D���/�_$?�Oϓiu4��į~?�����D����Iz
�$��#�e����rJ����-L�3��X�4P��qLMW%M�4�$[�uqiN��EA?9[:i5��������ۄ'0�6D*�'��t~����w����!C�w�����9��rieՠ��&2(�rR����@9��缄-r���q��'�lZd�dg��Ry*��{��e��(�,����?;Y�e��-�I�ݟI�@f���Xm��	�נ\�WM���{��&����A�9&�J��~"��1��r}�b����I�=(ݯ�;h7\Րvh��񀙠_�hP����y��@�` 0�g�ͳ/pW�VpM�Ay��W���TO8j�_��j�|/�B�>cI��]��)�PQ�!\�W{����I�Ā�;������q�\��i�RO��9q�%�͘l̓r5�$�6؅�����<l|Hw|	�i��M��.8=�,In�	��8-����]��a`2�^�3QN�{�x�E۠{ٳ���V[w�>?Գ�����0�̦��#��=�۩�z�N�kWoW�B�+z�8z{ kh��l=��?����\i�@      �	      x������ � �      �	      x��Z�r�Ɩ�M?E��c�A�EU�d%��E7R��J5��%��A���}?��l����+�If&��$����wN��O/r��y�q��l8
�,���� a�7���,��S�u�������h��*x��͹�LU�����fŌk��^QWW�l���tSU����R�j�h�r�����W���L������S�
{������fo�u��uu�'9�b���ܹ�������f��8Wr����L���y9Q�	��I��~V�E"#����E+e��j����o����5�d�f�jֱ�M�������t�ri~����Tiv�5�+���oY�Zݱ\�Ii6m})��������#�X��`=�V��-*5d��Y���ZU���H���n��������J`H�*I_f�&��W��&���?~P���;����TS�В�3,�9Z���7o�����լ䅚��wr9��Ø���]qw��5d[��C/��yqe��ɀ$%6�Z����-q�؁�<d� O�0;I��7L��A28�	��'~��A���K���$��p�IȅF�/�4I3zKfX�6�qp&[]W|�rA��n����ڲ1�'�G�Js�S���6���5[I�2�e�F@΂Į�b���v��^�bZ�x��A�Q��,f�{w0S��5߲�X�娞7��.ޭG������?9/^L%��ǯ�#{���	��l�M����Z�]���F�]�y�\v������Ṫ�v�}�v�_�jR�<<�u7i��?_�^�=�K�I2xz���^�h�!f;k������%�(x����g���"�z�o��"؆�8L�a�����9�͜�Ϯ���]�W���Id�ZM*�_���y�~�����K�FI��Cm=䱦�޹w��ֿ�7��p57�	�t}C�m�ӚM�5uíZ��r3A!��a�o-m�Ջ��,��6H�Y��|��&x�b6-sZ��g���G4���Қ�<��n��"�=�� ���_m�j�=X�h�b� n��a����FT�ZMhk���օ,�'����J����h[��촏�XdA'�8���`29זK@����svt~�|ç��I�³�מ������K����-TQ�}���;�oxC&�s����)�xg�g�V��<��w��CN��]�%�$�F�{�^�\�����io�o�Aѓ�-����n�)w�QZ�?G��9>E>����;Q�sB"�S��#?�G�X��{�d��F���3 ��M���ӏ#��VDQ�D��;Yy��������7�>ގ���5o����@~Y��\TE�*J����~���~4T�o��a�M��#��1^j@Kԭv1��	��^j�k��SώO��!r�K����M?g{O��g_�ֱdt��o�m#��#��{W�;k����&�n�2�k��/Z`=��E�3�y�4��`O�$����J�쵙C$A������P� �ԇ���O6?���p4
�������#��.e5�V�Ōwu;��f��?T��Wu��_,��E�R�����RJ����v������v�[��W���p7)��:�tQ_���-`��tH�B3 k^t��b�\VZ�(�hy�4Џ�+L�ܔ�n�n ������� @ܷ٬x��*�7�hk]��jv����96�Uq��]�}���D��J��6v��Np�ǈ�V T�u�ա:算����p$O$�~4s��RYũ���9�=���S�"f��fox��4�j��r��9!��,M��E��*���!��p�j���'<��(BO�x��/�%.T�%q��ȑ!P{�&�3B�B^NS��q��l���!���^ԨJ�	B��5��:����(�wĈ{N䑓���	c���ϣ-�X[j!���	�B������W��,��98��g��O7+Ld�8��0���?��q4�ҡ��i�۹����7��yp�p|E����-���;(yhc&�U��Ѣmm�٧OEHg���fg�_�ܥ n��?��ƶۨ�"��I���D�V��=��F�l���� b�Ц�2f��
��C	�Ii_���հ�&s5Aq��S��\Vbi��lL2���鐽��_$�uY�Q���V���ۺ\�{DH A�d�Buâ�ۭ�����~�DwG���#Wv��e6��`b��O1e�}N�#�z�. 8:j�a���&-�?�E�?+uhQ��UU򪸥~SG)�T�,+,0�m����g���ڵ�y[�rd���Ȇ�PF���]m�ֵ4;����T�Y�r�%Ҟm��z�yuTCCY�Z����ᖡ�绍��.P,.�	w�0�=� ���-w���V�|F��8'՘�N?L����53�-��pj�`mO%<m&ZL)�=D8��"`IEg�t�Nm7�>$���q�nO���F�S�-'�7D��`U�u�&�	t�h��x'1b�F?~�ך��47��f�;Ӕ��&�nڒ˦KݒY���5����ޝa��Mrί�L��g�4E���!Jߎ�*J~�ž0nX\-���l��(�̮{�[?	���w������i�l=�
v��|9S�N"5}F�kra9G�����TQ���z�fl],���Fm�̻��R�b��wx��B��=�y��Q�E��" �H���,�Nƣ���s�Ô���z����AD�}�������K�Ha|]
cJk.����e������?��S#߉� ȌS'Mr��#���.��� �L�O�U\���O�˼p�x�(�������q��,��0��T?����*�UԶ�l�����H�j�P��4�V���o��׿��'�G����ʟt��W�v��)�/��c�*G�����Z��v����jW�[������g<�U�����S�d�y+�۟���.������9v�C4�;`/��a�$�ge�\i���_������0ǯ��s
�BΨ�s��4������.rs�QWe�F��t,B!��T��I]m[Ec*	���P�/������s�Fo���-�:���e�:l6�膆0vn�'�Qʞ�*3�ĺ2ɪ6	�0��FG!O'%�%��'�~'�:]��7���XIT V�jyx�M��7�[�;�GO�<'�N̟��cRY�D�c%��� �� ʢ�IR.�+$��,rG���,EOܥ=y���h��j'L��IE�]���h��w8<7�������A�N4�r'K��)8�3�(B?�W����%]�Uo����O�\�hK�ܑa0r"�r�鑗~��Y����	V��
�P���"�����C��K��u���;�#;4����?���rӼ~Q��V��Szֿ^�C��+;���M�b��x�5���z��q�ZI��;}�Җuj.���ҫb]5Q��Q��,�6���B��Ï��`oO�c��`�l�Gs�J��j��b�m-��R? +�JQ��7g@u��L�C�lU-T��O�n����Zfc�^hP�h�L%G�Z/�9�dH,�v"���m��IzFm�������aH�j�<ܞ)[�q��T�����aY�����m�'��M"�L=7��X��n+' �]])������wb(�@�����5��!$�بޤڴ�;�ԭ=�G 1u?�d
'�(�<)|��	{�w�'�v��dw�9�Xe�F��`��n��,?~��qk�o���u�$���n�{=漑�XɄ�e��6>�w硳�r��涙�^d��m�}�0��Y��0h�k9U�f�jF'Ll��T�K��5�_1��D g������������R��Vc��t�����9�ۙ�� ��\^�3bYσ�r�P�Nw���e�U���~�*����p&�j�����S��;�I��ݺxg[�K�h�&�aQU����ge��{e|�Cǚ��="��}N��GR�2/�\�-����]W�+�8 ��z43�vTm��?��hQ���g,�PDN�ԉ��sFI�9Y��^��F^����}��� ^&�U�z�%P�����FG��ų�d/��[EO�p���q��x$A��a����8�q��fڢR���v W  �j�����r55)y�p��Y�b}�N'�Иi|sN1�s�U��,�%ݐ�&T2P��OF���]ΰ��m2z_ɍm�U��n����e�Nf�#�"�G)�E�����������<���N��:-e�K�I���H�s�H�s�YFI���Cg�����4I���U
j�I��]�a�DI6r��p����"����^:C���o����hs�6���������7�������t���)��S;]�\^Li����+:��uds�~�*�A��Nt��^n�tc��aF��o?�E���<�Qr.^#bs�/���2|���� $� �      �	   ?   x�Eɱ�0�:L�>2z�������ʵ5�&8�4�S�ܡ����Z�A'�ҷ	;nf/���     