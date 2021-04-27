# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_auto_20210427_1440'),
    ]

    operations = [
        migrations.CreateModel(
            name='Periodos',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titulo', models.CharField(max_length=300, verbose_name=b'Periodo')),
                ('create_at', models.DateTimeField(default=django.utils.timezone.now, editable=False)),
                ('update_at', models.DateTimeField(auto_now=True)),
                ('slug', models.SlugField(editable=False)),
            ],
            options={
                'ordering': ['create_at'],
                'verbose_name': 'Periodo',
                'verbose_name_plural': 'Periodos',
            },
        ),
        migrations.RemoveField(
            model_name='proyecto',
            name='periodo',
        ),
        migrations.AddField(
            model_name='proyecto',
            name='periodos',
            field=models.ForeignKey(related_name='Periodos', verbose_name=b'Periodos', blank=True, to='app.Periodos', null=True),
        ),
    ]
