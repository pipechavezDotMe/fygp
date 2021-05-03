# import your admin models here.
# -*- encoding: utf-8 -*-
from django.contrib import admin

from .models import *

class UserProfileAdmin(admin.ModelAdmin):
    list_display = ('user', 'nickname', 'phone','password2', 'create_at', 'slug')

class ProjectsAdmin(admin.ModelAdmin):
    list_display = ('experiencia', 'periodos')

class PeriodosAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'create_at', 'slug')
    
admin.site.register(Proyecto, ProjectsAdmin)
admin.site.register(UserProfile, UserProfileAdmin)
admin.site.register(Periodos, PeriodosAdmin)

admin.site.site_header = "FyGP - Formulación y Gestión de Proyectos - Experiencias"
admin.site.site_title = "FyGP - Formulación y Gestión de Proyectos - Experiencias"
admin.site.index_title = "Bienvenidos al portal de experiencias"
