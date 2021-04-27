# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_auto_20210427_1026'),
    ]

    operations = [
        migrations.AlterField(
            model_name='proyecto',
            name='herramientas',
            field=models.TextField(max_length=1000, verbose_name=b'Herramientas', blank=True),
        ),
    ]
