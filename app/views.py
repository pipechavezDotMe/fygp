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
    projects = Proyecto.objects.all().order_by('create_at')
    cssrules = Cssrules.objects.all().order_by('-create_at')
    template = 'app/home.html'
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def login_view(request):
    if request.user.is_authenticated():
        return redirect(reverse('app.list'))
    message = ''
    userprofile = UserProfile.objects.all().order_by('-create_at')
    cssrules = Cssrules.objects.all().order_by('-create_at')
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
    projects = Proyecto.objects.all().order_by('create_at')
    cssrules = Cssrules.objects.all().order_by('-create_at')
    template = 'app/admin/list.html'
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def logout_view(request):
    logout(request)
    messages.success(request, 'Ingresa para continuar')
    return redirect(reverse('app.login'))

def proyecto_view(request, slug):
    template = 'app/admin/proyecto.html'
    projects = Proyecto.objects.get(slug = slug)
    cssrules = Cssrules.objects.all().order_by('-create_at')
    return render_to_response(template,locals(),context_instance=RequestContext(request))

def borrarproyecto_view(request, slug):
    projects = Proyecto.objects.get(slug = slug)
    cssrules = Cssrules.objects.all().order_by('-create_at')
    projects.delete()
    return redirect(reverse('app.list'))

def borrarcss_view(request, slug):
    cssrules = Cssrules.objects.get(slug = slug)
    cssrules.delete()
    return redirect(reverse('app.css'))

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
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
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
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upexperiencia_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upexperiencia_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            experiencia = cleaned_data.get('experiencia')
            proyecto = Proyecto.objects.get(slug = slug)
            proyecto.experiencia = experiencia
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upexperiencia_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upexperiencia.html', context)

def upperiodos_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upperiodos_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upperiodos_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            periodos = cleaned_data.get('periodos')
            proyecto = Proyecto.objects.get(slug = slug)
            proyecto.periodos = periodos
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upperiodos_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upperiodos.html', context)

def upinicio_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upinicio_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upinicio_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            inicio = cleaned_data.get('inicio')
            proyecto = Proyecto.objects.get(slug = slug)
            proyecto.inicio = inicio
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upinicio_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upinicio.html', context)

def upduracion_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upduracion_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upduracion_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            duracion = cleaned_data.get('duracion')
            proyecto = Proyecto.objects.get(slug = slug)
            proyecto.duracion = duracion
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upduracion_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upduracion.html', context)

def updescripcion_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(updescripcion_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = updescripcion_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            descripcion = cleaned_data.get('descripcion')
            proyecto = Proyecto.objects.get(slug = slug)
            proyecto.descripcion = descripcion
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = updescripcion_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/updescripcion.html', context)

def upherramientas_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upherramientas_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upherramientas_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            herramientas = cleaned_data.get('herramientas')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.herramientas = herramientas
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upherramientas_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upherramientas.html', context)

def upfoto_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upfoto_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upfoto_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            foto = cleaned_data.get('foto')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.foto = foto
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upfoto_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upfoto.html', context)

def upunidades_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upunidades_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upunidades_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            unidades = cleaned_data.get('unidades')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.unidades = unidades
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upunidades_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upunidades.html', context)

def updepartametos_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(updepartametos_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = updepartametos_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            departametos = cleaned_data.get('departametos')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.departametos = departametos
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = updepartametos_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/updepartametos.html', context)

def upciudades_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upciudades_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upciudades_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            ciudades = cleaned_data.get('ciudades')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.ciudades = ciudades
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upciudades_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upciudades.html', context)

def upconsultores_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upconsultores_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upconsultores_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            consultores = cleaned_data.get('consultores')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.consultores = consultores
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upconsultores_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upconsultores.html', context)

def upasesorados_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upasesorados_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upasesorados_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            asesorados = cleaned_data.get('asesorados')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.asesorados = asesorados
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upasesorados_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upasesorados.html', context)

def upaliados_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upaliados_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upaliados_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            aliados = cleaned_data.get('aliados')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.aliados = aliados
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upaliados_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upaliados.html', context)

def upcontratantes_view(request, slug):
    def get_context_data(self, **kwargs):
        context['proyecto'] = Proyecto.objects.get(slug=slug)
        context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
        context = super(upcontratantes_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = upcontratantes_form(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            contratantes = cleaned_data.get('contratantes')
            proyecto = Proyecto.objects.get(slug=slug)
            proyecto.contratantes = contratantes
            proyecto.save()
            message = 'Proyecto actualizado'
            return redirect(reverse('app.list'), {'message': message})
    else:
        form = upcontratantes_form()
    context = {'form': form}
    context['cssrules'] = Cssrules.objects.all().order_by('-create_at')[:1]
    return render(request, 'app/admin/upcontratantes.html', context)



def crearcssrule_view(request):
    def get_context_data(self, **kwargs):
        context = super(crearcssrule_view, self).get_context_data(**kwargs)
        return context
    if request.method == 'POST':
        form = crearcssrule_form(request.POST, request.FILES)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            titulo = cleaned_data.get('titulo')
            descripcion = cleaned_data.get('descripcion')
            cssrule = Cssrules()
            cssrule.titulo = titulo
            cssrule.descripcion = descripcion
            cssrule.save()
            message = 'Periodo publicado'
            return redirect(reverse('app.css'), {'message': message})
    else:
        form = crearcssrule_form()
    context = {'form': form}
    return render(request, 'app/admin/crearcssrule.html', context)


def cssruleslist_view(request):
    userprofiles = UserProfile.objects.all().order_by('-create_at')
    projects = Proyecto.objects.all().order_by('create_at')
    cssrules = Cssrules.objects.all().order_by('-create_at')
    template = 'app/admin/cssruleslist.html'
    return render_to_response(template,locals(),context_instance=RequestContext(request))