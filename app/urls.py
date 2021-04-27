# Create your urls here.
from django.conf.urls import patterns, include, url
# -*- encoding: utf-8 -*-
from . import views

urlpatterns = [
    url(r'^$', views.home_view, name='app.home'),
]
