from datetime import datetime
from django.db import models
from filer.fields.image import FilerImageField

class HomepageSettings(models.Model):
    created = models.DateTimeField(db_index=True, auto_now_add=True)
    modified = models.DateTimeField(db_index=True, auto_now=True)

    jumbotron_image = FilerImageField(blank=True, null=True, related_name="jumbotron_image")

    class Meta:
        verbose_name = "Homepage Settings"
