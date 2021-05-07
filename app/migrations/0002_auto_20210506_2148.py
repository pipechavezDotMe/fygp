# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.utils.timezone
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('app', '0001_initial'),
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
        migrations.CreateModel(
            name='Proyecto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('experiencia', models.CharField(max_length=300, verbose_name=b'Nombre de la experiencia')),
                ('ids', models.IntegerField(default=0, null=True, verbose_name=b'Id inicial', blank=True)),
                ('inicio', models.DateTimeField(default=django.utils.timezone.now, verbose_name=b'Fecha de inicio', blank=True)),
                ('duracion', models.CharField(max_length=300, verbose_name=b'Duracion', blank=True)),
                ('descripcion', models.TextField(verbose_name=b'Descripcion', blank=True)),
                ('herramientas', models.TextField(max_length=1000, verbose_name=b'Herramientas', blank=True)),
                ('foto', models.ImageField(upload_to=b'proyectos', null=True, verbose_name=b'Foto', blank=True)),
                ('unidades', models.IntegerField(default=0, null=True, verbose_name=b'# Unidades productivas intervenidas', blank=True)),
                ('departametos', models.IntegerField(default=0, null=True, verbose_name=b'# Departametos', blank=True)),
                ('ciudades', models.IntegerField(default=0, null=True, verbose_name=b'# Ciudades', blank=True)),
                ('consultores', models.IntegerField(default=0, null=True, verbose_name=b'# Consultores', blank=True)),
                ('asesorados', models.IntegerField(default=0, null=True, verbose_name=b'# Asesorados', blank=True)),
                ('aliados', models.CharField(max_length=300, verbose_name=b'Aliados', blank=True)),
                ('contratantes', models.CharField(max_length=300, verbose_name=b'Contratantes', blank=True)),
                ('create_at', models.DateTimeField(default=django.utils.timezone.now, editable=False)),
                ('update_at', models.DateTimeField(auto_now=True)),
                ('slug', models.SlugField(editable=False)),
                ('periodos', models.ForeignKey(related_name='Periodo', verbose_name=b'Periodo', blank=True, to='app.Periodos', null=True)),
            ],
            options={
                'ordering': ['create_at'],
                'verbose_name': 'Proyecto',
                'verbose_name_plural': 'Proyectos',
            },
        ),
        migrations.CreateModel(
            name='UserProfile',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nickname', models.CharField(max_length=200, verbose_name=b'nickname', blank=True)),
                ('phone', models.CharField(max_length=200, verbose_name=b'tel\xc3\xa9fono', blank=True)),
                ('mail', models.CharField(max_length=200, verbose_name=b'email', blank=True)),
                ('password2', models.CharField(max_length=200, verbose_name=b'Password', blank=True)),
                ('avatar', models.ImageField(null=True, upload_to=b'userprofiles/avatar', blank=True)),
                ('verified', models.IntegerField(default=0, null=True, verbose_name=b'\xc2\xbfVerificado?', blank=True)),
                ('admin', models.IntegerField(default=0, null=True, verbose_name=b'\xc2\xbfAdministrador?', blank=True)),
                ('create_at', models.DateTimeField(default=django.utils.timezone.now, editable=False)),
                ('update_at', models.DateTimeField(auto_now=True)),
                ('slug', models.SlugField()),
                ('user', models.OneToOneField(null=True, blank=True, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Perfil',
                'verbose_name_plural': 'Perfiles',
            },
        ),
        migrations.AddField(
            model_name='proyecto',
            name='user',
            field=models.ForeignKey(related_name='Responsable', verbose_name=b'Usuario', blank=True, to='app.UserProfile', null=True),
        ),
    ]
