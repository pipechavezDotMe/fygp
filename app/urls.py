# Create your urls here.
from django.conf.urls import patterns, include, url
# -*- encoding: utf-8 -*-
from . import views

urlpatterns = [
    url(r'^$', views.home_view, name='app.home'),
    url(r'^admin/$', views.login_view, name='app.login'),
    url(r'^proyectos/$', views.list_view, name='app.list'),
    url(r'^proyecto/(?P<slug>[^\.]+)/$', views.proyecto_view, name='app.proyecto'),
    url(r'^salir/$', views.logout_view, name='app.logout'),
    url(r'^eliminar/(?P<slug>[^\.]+)/$', views.borrarproyecto_view, name='app.eliminar'),
    url(r'^nuevo-proyecto/$', views.crearproyecto_view, name='app.crearproyecto'),
    url(r'^nuevo-periodo/$', views.crearperiodo_view, name='app.crearperiodo'),
    url(r'^editar-proyecto-experiencia/(?P<slug>[^\.]+)/$', views.upexperiencia_view, name='app.upexperiencia'),
    url(r'^editar-proyecto-periodos/(?P<slug>[^\.]+)/$', views.upperiodos_view, name='app.upperiodos'),
    url(r'^editar-proyecto-inicio/(?P<slug>[^\.]+)/$', views.upinicio_view, name='app.upinicio'),
    url(r'^editar-proyecto-duracion/(?P<slug>[^\.]+)/$', views.upduracion_view, name='app.upduracion'),
    url(r'^editar-proyecto-descripcion/(?P<slug>[^\.]+)/$', views.updescripcion_view, name='app.updescripcion'),
    url(r'^editar-proyecto-herramientas/(?P<slug>[^\.]+)/$', views.upherramientas_view, name='app.upherramientas'),
    url(r'^editar-proyecto-foto/(?P<slug>[^\.]+)/$', views.upfoto_view, name='app.upfoto'),
    url(r'^editar-proyecto-unidades/(?P<slug>[^\.]+)/$', views.upunidades_view, name='app.upunidades'),
    url(r'^editar-proyecto-departamentos/(?P<slug>[^\.]+)/$', views.updepartametos_view, name='app.updepartametos'),
    url(r'^editar-proyecto-ciudades/(?P<slug>[^\.]+)/$', views.upciudades_view, name='app.upciudades'),
    url(r'^editar-proyecto-consultores/(?P<slug>[^\.]+)/$', views.upconsultores_view, name='app.upconsultores'),
    url(r'^editar-proyecto-asesorados/(?P<slug>[^\.]+)/$', views.upasesorados_view, name='app.upasesorados'),
    url(r'^editar-proyecto-aliados/(?P<slug>[^\.]+)/$', views.upaliados_view, name='app.upaliados'),
    url(r'^editar-proyecto-contratantes/(?P<slug>[^\.]+)/$', views.upcontratantes_view, name='app.upcontratantes'),
]
