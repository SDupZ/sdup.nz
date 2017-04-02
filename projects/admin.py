from django.conf import settings
from django.contrib import admin

from projects.models import Project

class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', )
    prepopulated_fields = {'slug': ('title', ), }

admin.site.register(Project, ProjectAdmin)
