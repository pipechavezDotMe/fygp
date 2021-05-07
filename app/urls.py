# Create your urls here.
from django.conf.urls import patterns, include, url
# -*- encoding: utf-8 -*-
from . import views

urlpatterns = [
    url(r'^$', views.home_view, name='app.home'),
    url(r'^admin/$', views.login_view, name='app.login'),
    url(r'^proyectos/$', views.list_view, name='app.list'),
    url(r'^proyecto/(?P<id>[^\.]+)/$', views.proyecto_view, name='app.proyecto'),
    url(r'^salir/$', views.logout_view, name='app.logout'),
    url(r'^eliminar/(?P<id>[^\.]+)/$', views.borrarproyecto_view, name='app.eliminar'),
    url(r'^nuevo-proyecto/$', views.crearproyecto_view, name='app.crearproyecto'),
    url(r'^nuevo-css/$', views.crearcssrule_view, name='app.crearcssrule'),
    url(r'^css/$', views.cssruleslist_view, name='app.css'),
    url(r'^eliminarcss/(?P<id>[^\.]+)/$', views.borrarcss_view, name='app.eliminarcss'),
    url(r'^nuevo-periodo/$', views.crearperiodo_view, name='app.crearperiodo'),
    url(r'^editar-proyecto-experiencia/(?P<id>[^\.]+)/$', views.upexperiencia_view, name='app.upexperiencia'),
    url(r'^editar-proyecto-periodos/(?P<id>[^\.]+)/$', views.upperiodos_view, name='app.upperiodos'),
    url(r'^editar-proyecto-inicio/(?P<id>[^\.]+)/$', views.upinicio_view, name='app.upinicio'),
    url(r'^editar-proyecto-duracion/(?P<id>[^\.]+)/$', views.upduracion_view, name='app.upduracion'),
    url(r'^editar-proyecto-descripcion/(?P<id>[^\.]+)/$', views.updescripcion_view, name='app.updescripcion'),
    url(r'^editar-proyecto-herramientas/(?P<id>[^\.]+)/$', views.upherramientas_view, name='app.upherramientas'),
    url(r'^editar-proyecto-foto/(?P<id>[^\.]+)/$', views.upfoto_view, name='app.upfoto'),
    url(r'^editar-proyecto-unidades/(?P<id>[^\.]+)/$', views.upunidades_view, name='app.upunidades'),
    url(r'^editar-proyecto-departamentos/(?P<id>[^\.]+)/$', views.updepartametos_view, name='app.updepartametos'),
    url(r'^editar-proyecto-ciudades/(?P<id>[^\.]+)/$', views.upciudades_view, name='app.upciudades'),
    url(r'^editar-proyecto-consultores/(?P<id>[^\.]+)/$', views.upconsultores_view, name='app.upconsultores'),
    url(r'^editar-proyecto-asesorados/(?P<id>[^\.]+)/$', views.upasesorados_view, name='app.upasesorados'),
    url(r'^editar-proyecto-aliados/(?P<id>[^\.]+)/$', views.upaliados_view, name='app.upaliados'),
    url(r'^editar-proyecto-contratantes/(?P<id>[^\.]+)/$', views.upcontratantes_view, name='app.upcontratantes'),
]
