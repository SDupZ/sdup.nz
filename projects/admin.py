from django.conf import settings
from django.contrib import admin

from adminsortable2.admin import SortableAdminMixin
from projects.models import Project

class ProjectAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ('title', )
    prepopulated_fields = {'slug': ('title', ), }

admin.site.register(Project, ProjectAdmin)
