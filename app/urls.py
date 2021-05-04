# Create your urls here.
from django.conf.urls import patterns, include, url
# -*- encoding: utf-8 -*-
from . import views

urlpatterns = [
    url(r'^$', views.home_view, name='app.home'),
    url(r'^admin/$', views.login_view, name='app.login'),
    url(r'^list/$', views.list_view, name='app.list'),
    url(r'^proyecto/(?P<slug>[^\.]+)/$', views.proyecto_view, name='app.proyecto'),
    url(r'^salir/$', views.logout_view, name='app.logout'),
]
