from django.shortcuts import render
from projects.models import Project
from site_settings.models import HomepageSettings

def home(request):
    template = 'index.html'
    projects = Project.objects.all()

    homepage_settings = HomepageSettings.objects.all()

    if len(homepage_settings) > 0:
        homepage_settings = homepage_settings[0]

    context = {
        "projects": projects,
        "homepage_settings": homepage_settings
    }
    return render(request, template, context)
