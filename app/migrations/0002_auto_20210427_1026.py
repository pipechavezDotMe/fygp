# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='proyecto',
            name='aliados',
            field=models.CharField(max_length=300, verbose_name=b'Aliados', blank=True),
        ),
        migrations.AlterField(
            model_name='proyecto',
            name='contratantes',
            field=models.CharField(max_length=300, verbose_name=b'Contratantes', blank=True),
        ),
        migrations.AlterField(
            model_name='proyecto',
            name='duracion',
            field=models.CharField(max_length=300, verbose_name=b'Duracion', blank=True),
        ),
        migrations.AlterField(
            model_name='proyecto',
            name='herramientas',
            field=models.TextField(max_length=300, verbose_name=b'Herramientas', blank=True),
        ),
        migrations.AlterField(
            model_name='proyecto',
            name='inicio',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name=b'Fecha de inicio', blank=True),
        ),
        migrations.AlterField(
            model_name='proyecto',
            name='periodo',
            field=models.CharField(max_length=300, verbose_name=b'Fecha del Periodo', blank=True),
        ),
    ]
