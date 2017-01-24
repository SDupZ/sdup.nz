from django.conf.urls import url
from django.contrib import admin
from django.views.static import serve

from django.conf import settings
from default.views import front

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', front, name='front'),

    url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
]
