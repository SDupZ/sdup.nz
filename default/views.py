from django.shortcuts import render
from projects.models import Project


def home(request):
    template = 'index.html'
    projects = Project.objects.all()

    context = {
        "projects": projects,
    }
    return render(request, template, context)
