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
