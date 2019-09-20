
# from django.contrib import admin
# from django.urls import path, include
from loginapp import views as users_views
from azureCosmos import views as azureCosmos_views
from menus2 import views as menu_views
from api import views as api_views
from rest_framework import routers
from nephosCloud import views as nephosViews

from django.contrib.staticfiles.templatetags.staticfiles import static as staticfiles
from django.urls import path, include
from django.utils.translation import ugettext_lazy as _

from material.admin.sites import site

site.site_header = _('IoT-Innovaciones')
site.site_title = _('IoT-Innovaciones')
site.favicon = staticfiles('path/to/favicon')

# apoyo https://github.com/MaistrenkoAnton/django-material-admin

router = routers.DefaultRouter()
router.register(r'DeviceData', api_views.DeviceDataView, base_name="DeviceData")

urlpatterns = [
    path('', azureCosmos_views.devices_view, name="main"), #ya con login
    path('main/', azureCosmos_views.devices_view, name="main"), #ya con login
    # path('admin/', admin.site.urls),
    path('admin/', include('material.admin.urls')),
    path('login/', users_views.login_view, name = 'login'),
    path('logout/', users_views.logout_view, name = 'userLogout'),
    path('prueba/', azureCosmos_views.extraerDatos, name = 'feed'), 
    path('disp/<str:DeviceId>/', azureCosmos_views.extraerDatosPorDevice, name = 'disp'),#ya con login
    #path('sensor/<str:SensorId>/', azureCosmos_views.extraerDatosPorDeviceSensor, name = 'sensor'),#ya con login
    path('sensor/<str:DeviceId>/<str:SensorId>', azureCosmos_views.extraerDatosPorDeviceSensor, name='sensor_detail'),#ya con login
    path('menu/', menu_views.menu_view),
    path('devicesRegister/', azureCosmos_views.devicesRegister_view, name = 'devicesRegister'),
    path('device/', azureCosmos_views.devices_view, name = 'device'),
    path('details/', azureCosmos_views.details_view, name = 'details'),

    #el siguiente path es unicamente para usos de pruebas
    path('p/',nephosViews.extraerDatos ),
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
]