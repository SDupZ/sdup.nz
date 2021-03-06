from django.conf.urls import url
from django.contrib import admin
from django.views.static import serve
from django.contrib.staticfiles.urls import staticfiles_urlpatterns


from django.conf import settings
from default.views import home
from blog.views import blog, blogs_list
from projects.views import project

from filer.models import Folder, ThumbnailOption

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', home, name='home'),

    url(r'^blog/?$', blogs_list, name='blogs_list'),
    url(r'^blog/(?P<slug>[^/]+)$', blog, name='blog'),

    url(r'^project/(?P<slug>[^/]+)$', project, name='project'),

    url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
]

# Only append if urlpatterns are empty
if settings.DEBUG:
    urlpatterns += staticfiles_urlpatterns()


admin.site.unregister(Folder)
admin.site.unregister(ThumbnailOption)
