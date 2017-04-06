from datetime import datetime
from django.db import models
from ckeditor.fields import RichTextField
from filer.fields.image import FilerImageField
from colorfield.fields import ColorField

class Project(models.Model):
    FONT_WHITE = 'FW'
    FONT_BLACK = 'FB'

    FONT_CHOICES = (
        (FONT_WHITE, 'White Font'),
        (FONT_BLACK, 'Black Font'),
    )

    created = models.DateTimeField(db_index=True, auto_now_add=True)
    modified = models.DateTimeField(db_index=True, auto_now=True)

    slug = models.SlugField(unique=True, max_length=150)
    title = models.CharField(db_index=True, max_length=150)
    blurb = models.TextField(blank=True, null=True, max_length=150)

    time_line = models.CharField(blank=True, max_length=150)

    icon = FilerImageField(blank=True, null=True, related_name="project_icon_image")
    icon_opacity = models.DecimalField(decimal_places=1, max_digits=2, default=1)

    color = ColorField(default='#FF0000')
    font_color = models.CharField(max_length=2, choices=FONT_CHOICES, default=FONT_WHITE,)

    color_alpha = models.DecimalField(decimal_places=1, max_digits=2, default=1)



    header_image = FilerImageField(blank=True, null=True, related_name="project_header_image")
    content = RichTextField(blank=True, null=True)

    order = models.IntegerField(default=0, blank=False, null=False)

    def get_rgba(self):

        r =  int(self.color[1:][:2], 16)
        g =  int(self.color[1:][2:4], 16)
        b =  int(self.color[1:][4:], 16)
        a = self.color_alpha

        return [r, g, b ,a]

    def __unicode__(self):
        return self.slug

    class Meta:
        verbose_name = "Project"
        ordering = ('order',)
