# Create your models here.
# -*- encoding: utf-8 -*-
import uuid
from django.db import models
from django.conf import settings
from django.contrib.auth.models import User
from django.utils.text import slugify
from django.core.urlresolvers import reverse
from django.utils.timezone import now
import os
import random

class UserProfile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, null=True, blank=True)
    nickname = models.CharField(blank=True, max_length=200, verbose_name="nickname")
    phone = models.CharField(blank=True, max_length=200, verbose_name="teléfono")
    mail = models.CharField(blank=True, max_length=200, verbose_name="email")
    password2 = models.CharField(blank=True, max_length=200, verbose_name="Password")
    avatar = models.ImageField(upload_to='userprofiles/avatar', blank=True, null=True)
    verified = models.IntegerField(blank=True, null=True, default=0, verbose_name="¿Verificado?")
    admin = models.IntegerField(blank=True, null=True, default=0, verbose_name="¿Administrador?")
    create_at = models.DateTimeField(default=now, editable=False)
    update_at = models.DateTimeField(auto_now_add = False, auto_now=True, editable=False)
    slug = models.SlugField(editable=True)
    class Meta:
        verbose_name = 'Perfil'
        verbose_name_plural = 'Perfiles'
    def __unicode__(self):
        return self.nickname
    def save(self, *args, **kwargs):
        if not self.id:
            self.slug = slugify(self.nickname)
        super(UserProfile, self).save(*args, **kwargs)

class Periodos(models.Model):
    titulo = models.CharField(max_length=300, verbose_name="Periodo")
    create_at = models.DateTimeField(default=now, editable=False)
    update_at = models.DateTimeField(auto_now_add = False, auto_now=True, editable=False)
    slug = models.SlugField(editable=False)

    class Meta:
        ordering = ['create_at']
        verbose_name = "Periodo"
        verbose_name_plural = 'Periodos'

    def __unicode__(self):
        return self.titulo

    def save(self, *args, **kwargs):
        if not self.id:
            self.slug = slugify(self.titulo)
        super(Periodos, self).save(*args, **kwargs)



class Proyecto(models.Model):
    experiencia = models.CharField(max_length=300, verbose_name="Nombre de la experiencia")
    periodos = models.ForeignKey(Periodos, on_delete=models.CASCADE, blank=True, null=True, verbose_name="Periodo",related_name='Periodo')
    ids = models.IntegerField(blank=True, null=True, default=0, verbose_name="Id inicial")
    inicio = models.DateTimeField(blank=True, default=now, editable=True, verbose_name="Fecha de inicio")
    duracion = models.CharField(blank=True, max_length=300, verbose_name="Duracion")
    descripcion = models.TextField(blank=True, verbose_name="Descripcion")
    herramientas = models.TextField(blank=True, max_length=1000, verbose_name="Herramientas")
    foto = models.ImageField(upload_to='proyectos', blank=True, null=True, verbose_name="Foto")
    unidades = models.IntegerField(blank=True, null=True, default=0, verbose_name="# Unidades productivas intervenidas")
    departametos = models.IntegerField(blank=True, null=True, default=0, verbose_name="# Departametos")
    ciudades = models.IntegerField(blank=True, null=True, default=0, verbose_name="# Ciudades")
    consultores = models.IntegerField(blank=True, null=True, default=0, verbose_name="# Consultores")
    asesorados = models.IntegerField(blank=True, null=True, default=0, verbose_name="# Asesorados")
    aliados = models.CharField(blank=True, max_length=300, verbose_name="Aliados")
    contratantes = models.CharField(blank=True, max_length=300, verbose_name="Contratantes")
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, blank=True, null=True, verbose_name="Usuario",related_name='Responsable')
    create_at = models.DateTimeField(default=now, editable=False)
    update_at = models.DateTimeField(auto_now_add = False, auto_now=True, editable=False)
    slug = models.SlugField(editable=True)

    class Meta:
        ordering = ['create_at']
        verbose_name = "Proyecto"
        verbose_name_plural = 'Proyectos'

    def __unicode__(self):
        return self.experiencia

    def save(self, *args, **kwargs):
        if not self.id:
            self.slug = slugify(self.experiencia)
        super(Proyecto, self).save(*args, **kwargs)


class Cssrules(models.Model):
    titulo = models.CharField(max_length=300, verbose_name="Nombre de la regla")
    descripcion = models.TextField(blank=True, verbose_name="contenido",max_length=3000000,)
    create_at = models.DateTimeField(default=now, editable=False)
    update_at = models.DateTimeField(auto_now_add = False, auto_now=True, editable=False)
    slug = models.SlugField(editable=False)

    class Meta:
        ordering = ['create_at']
        verbose_name = "Cssrules"
        verbose_name_plural = 'Cssrules'

    def __unicode__(self):
        return self.titulo

    def save(self, *args, **kwargs):
        if not self.id:
            self.slug = slugify(self.titulo)
        super(Cssrules, self).save(*args, **kwargs)