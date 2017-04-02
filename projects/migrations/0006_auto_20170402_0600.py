# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-02 06:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0005_auto_20170314_1041'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='project',
            options={'ordering': ('order',), 'verbose_name': 'Project'},
        ),
        migrations.AddField(
            model_name='project',
            name='order',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
    ]
