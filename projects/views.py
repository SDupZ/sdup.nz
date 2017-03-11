from django.shortcuts import render
from projects.models import Project


def project(request, slug):
    template = 'project.html'
    project = Project.objects.get(slug=slug)

    context = {
        'project': project,
    }
    return render(request, template, context)
