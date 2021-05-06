# Create your view here.
from django.shortcuts import render, render_to_response, get_object_or_404, redirect
from django.contrib.auth.models import User
from django.http import HttpResponseBadRequest, HttpResponse, HttpRequest, HttpResponseRedirect
from django.core import serializers
from django.shortcuts import redirect
from django.core.urlresolvers import reverse, reverse_lazy
from django.views import generic
from django.conf import settings
from .forms import *
from .models import *
from django.core.mail import send_mail
from django.core.mail import EmailMessage
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.hashers import make_password
from django.utils import timezone
import re
from django.db.models import Q
from django.core.context_processors import csrf
from django import forms
from django.middleware.csrf import CsrfViewMiddleware, get_token
from django.utils.decorators import available_attrs, decorator_from_middleware
from django.template import RequestContext
import random

#API REST
from django.db.models.query import QuerySet
import json
from django.views.generic.list import ListView

def home_view(request):
    message = ''
    userprofiles = UserProfile.objects.all().order_by('-create_at')
    projects = Proyecto.objects.all().order_by('-create_at')
    template = 'app/home.html'
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def login_view(request):
    if request.user.is_authenticated():
        return redirect(reverse('app.list'))
    message = ''
    userprofile = UserProfile.objects.all().order_by('-create_at')
    template = 'app/admin/login.html'
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                return redirect(reverse('app.list'))
            else:
                pass
        message = 'Datos de ingreso incorrectos. Intente de nuevo'
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def list_view(request):
    userprofiles = UserProfile.objects.all().order_by('-create_at')
    projects = Proyecto.objects.all().order_by('-create_at')
    template = 'app/admin/list.html'
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def logout_view(request):
    logout(request)
    messages.success(request, 'Ingresa para continuar')
    return redirect(reverse('app.login'))

def proyecto_view(request, slug):
    template = 'app/admin/proyecto.html'
    projects = Proyecto.objects.get(slug = slug)
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def borrarproyecto_view(request, slug):
    projects = Proyecto.objects.get(slug = slug)
    projects.delete()
    return redirect(reverse('app.list'))

def crearproyecto_view(request):
    def get_context_data(self, **kwargs):
        context = super(crearproyecto_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = crearproyecto_form(request.POST, request.FILES)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            experiencia = cleaned_data.get('experiencia')
            periodos = cleaned_data.get('periodos')
            inicio = cleaned_data.get('inicio')
            duracion = cleaned_data.get('duracion')
            descripcion = cleaned_data.get('descripcion')
            herramientas = cleaned_data.get('herramientas')
            foto = cleaned_data.get('foto')
            unidades = cleaned_data.get('unidades')
            departametos = cleaned_data.get('departametos')
            ciudades = cleaned_data.get('ciudades')
            consultores = cleaned_data.get('consultores')
            asesorados = cleaned_data.get('asesorados')
            aliados = cleaned_data.get('aliados')
            contratantes = cleaned_data.get('contratantes')
            proyecto = Proyecto()
            proyecto.experiencia = experiencia
            proyecto.periodos = periodos
            proyecto.inicio = inicio
            proyecto.duracion = duracion
            proyecto.descripcion = descripcion
            proyecto.herramientas = herramientas
            proyecto.foto = foto
            proyecto.unidades = unidades
            proyecto.departametos = departametos
            proyecto.ciudades = ciudades
            proyecto.consultores = consultores
            proyecto.asesorados = asesorados
            proyecto.aliados = aliados
            proyecto.contratantes = contratantes
            proyecto.save()
            message = 'Proyecto publicado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = crearproyecto_form()
    context = {'form': form}
    context['proyecto'] = Proyecto.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/crearproyecto.html', context)


def crearperiodo_view(request):
    def get_context_data(self, **kwargs):
        context = super(crearperiodo_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = crearperiodo_form(request.POST, request.FILES)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            titulo = cleaned_data.get('titulo')
            periodos = Periodos()
            periodos.titulo = titulo
            periodos.save()
            message = 'Periodo publicado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = crearperiodo_form()
    context = {'form': form}
    return render(request, 'app/admin/crearperiodo.html', context)

def upexperiencia_view(request, slug):
    def get_context_data(self, **kwargs):
        context = super(crearproyecto_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = crearproyecto_form(request.POST, request.FILES)
        if form.is_valid():
            form = upexperiencia_form(request.POST, request.FILES)
            proyecto = Proyecto.objects.get(slug = slug)
            cleaned_data = form.cleaned_data
            experiencia = cleaned_data.get('experiencia')
            proyecto.experiencia = experiencia
            proyecto.save()
            message = 'Proyecto publicado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upexperiencia_form()
    context = {'form': form}
    return render(request, 'app/admin/upexperiencia.html', context)