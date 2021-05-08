# Create your forms here.
# -*- encoding: utf-8 -*-
from django import forms
from django.contrib.auth.models import User
from .models import *
from django.forms.extras.widgets import SelectDateWidget

class crearproyecto_form(forms.Form):
    experiencia = forms.CharField(
        label='Título de la experiencia',
        widget=forms.TextInput(attrs={'class': 'form-control'}))
    periodos = forms.ModelChoiceField(
        queryset=Periodos.objects.all(),label="Periodo",required=False)
    inicio = forms.DateField(
        label='Inicio',
        required=False,
        widget=SelectDateWidget(attrs={'class': 'form-control'}))
    duracion = forms.CharField(
        label='Duracion',
        required=False,)
    descripcion = forms.CharField(
        label='Descripcion',
        required=False,
        widget=forms.Textarea(attrs={'class': 'form-control'}))
    herramientas = forms.CharField(
        label='Herramientas',
        required=False,
        widget=forms.Textarea(attrs={'class': 'form-control'}))
    foto = forms.FileField(
        label='Foto',
        required=False,)
    unidades = forms.CharField(
        label='Unidades',
        required=False,)
    departametos = forms.CharField(
        label='Departamentos',
        required=False,)
    ciudades = forms.CharField(
        label='Ciudades',
        required=False,)
    consultores = forms.CharField(
        label='Consultores',
        required=False,)
    asesorados = forms.CharField(
        label='Asesorados',
        required=False,)
    aliados = forms.CharField(
        label='Aliados',
        required=False,)
    contratantes = forms.CharField(
        label='Contratantes',
        required=False,)

class crearperiodo_form(forms.Form):
    titulo = forms.CharField(
        label='Periodo',
        widget=forms.TextInput(attrs={'class': 'form-control'}))

class upexperiencia_form(forms.Form):
    experiencia = forms.CharField(
        label='Titulo',
        widget=forms.TextInput(attrs={'class': 'form-control'}))
class upperiodos_form(forms.Form):
    periodos = forms.ModelChoiceField(
        queryset=Periodos.objects.all(),label="Periodo",required=True)
class upinicio_form(forms.Form):
    inicio = forms.CharField(
        label='Inicio',
        required=True,)
class upduracion_form(forms.Form):
    duracion = forms.CharField(
        label='Duracion',
        required=True,)
class updescripcion_form(forms.Form):
    descripcion = forms.CharField(
        label='Descripcion',
        required=True,
        widget=forms.Textarea(attrs={'class': 'form-control'}))
class upherramientas_form(forms.Form):
    herramientas = forms.CharField(
        label='Herramientas',
        required=True,
        widget=forms.Textarea(attrs={'class': 'form-control'}))
class upfoto_form(forms.Form):
    foto = forms.FileField(
        label='Foto',
        required=False,)
class upunidades_form(forms.Form):
    unidades = forms.CharField(
        label='Unidades',
        required=True,)
class updepartametos_form(forms.Form):
    departametos = forms.CharField(
        label='Departamentos',
        required=True,)
class upciudades_form(forms.Form):
    ciudades = forms.CharField(
        label='Ciudades',
        required=True,)
class upconsultores_form(forms.Form):
    consultores = forms.CharField(
        label='Consultores',
        required=True,)
class upasesorados_form(forms.Form):
    asesorados = forms.CharField(
        label='Asesorados',
        required=True,)
class upaliados_form(forms.Form):
    aliados = forms.FileField(
        label='Aliados',
        required=True,)
class upcontratantes_form(forms.Form):
    contratantes = forms.FileField(
        label='Contratantes',
        required=True,)

class crearcssrule_form(forms.Form):
    titulo = forms.CharField(
        label='titulo de la regla',
        widget=forms.TextInput(attrs={'class': 'form-control'}))
    descripcion = forms.CharField(
        label='contenido html, css o Js.',
        widget=forms.Textarea(attrs={'class': 'form-control'}))