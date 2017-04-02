from django.conf import settings
from django.contrib import admin

from adminsortable2.admin import SortableAdminMixin
from projects.models import Project

class ProjectAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ('title', )
    prepopulated_fields = {'slug': ('title', ), }

    fieldsets = (
        ('Fields', {
            'fields': ('title', 'slug', 'blurb', 'time_line', 'icon', 'color', 'color_alpha', 'header_image', 'content',),
        }),
        ('Admin', {
            'classes': ('collapse',),
            'fields': ('created', 'modified')
        })
    )

    readonly_fields = ('created', 'modified')

admin.site.register(Project, ProjectAdmin)
