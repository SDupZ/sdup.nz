import os
from os.path import join

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

VIRTUALENV_ROOT = os.path.dirname(BASE_DIR)


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.10/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '6t_!#2z6gibm-!aj$m4f_-hkw+hhw09d&+)as)nmhtzg%d6b8z'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = [
    'sdup.dev',
    'staging.sdup.nz'
    'sdup.nz'
]


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    # Vendor
    'ckeditor',
    'easy_thumbnails',
    'filer',
    'mptt',
    'colorfield',

    # Custom
    'default',
    'blog',
    'projects',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'sdupnz.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            join(BASE_DIR, 'templates'),
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'sdupnz.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.10/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.environ.get('DB_ENV_DB', 'postgres'),
        'USER': os.environ.get('DB_ENV_POSTGRES_USER', 'postgres'),
        'PASSWORD': os.environ.get('DB_ENV_POSTGRES_PASSWORD', 'postgres'),
        'HOST': os.environ.get('DB_PORT_5432_TCP_ADDR', 'db'),
        'PORT': os.environ.get('DB_PORT_5432_TCP_PORT', ''),
    }
}


# Password validation
# https://docs.djangoproject.com/en/1.10/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/1.10/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.10/howto/static-files/

STATIC_URL = '/static/'
MEDIA_ROOT = join(VIRTUALENV_ROOT, 'public-www/media')
MEDIA_URL = '/media/'

THUMBNAIL_HIGH_RESOLUTION = True

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),
]

CKEDITOR_UPLOAD_PATH = join(MEDIA_ROOT, 'media')

CKEDITOR_JQUERY_URL = '//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js'
CKEDITOR_CONFIGS = {
    'default': {
        'templates_files': ['{0}js/vendors/ckeditor_templates.js'.format(STATIC_URL), ],
        'templates_replaceContent': False,
        'autoGrow_onStartup': True,
        'scayt_autoStartup': True,
        'autoGrow_minHeight': 300,
        'autoGrow_maxHeight': 1200,
        'removePlugins': 'iframe, stylesheetparser',
        'templates': 'default',
        'templates_replaceContent': False,
        'toolbar': 'full',
        'width': 'auto',
        'filebrowserImageBrowseUrl': '/admin/filer/folder/unfiled_images/?_pick=file&_to_field=file_ptr',
        'entities': False,
        'fillEmptyBlocks': False,
        'tabSpaces': 0,
        'forcePasteAsPlainText': True,
        'basicEntities': False,
        'entities_greek': False,
        'entities_latin': False,
        'entities_additional': False,
        'format_tags': 'p;h1;h2;h3;h4;pre',
        'extraAllowedContent': 'figcaption figure(*){*}[*]',
    },
}
