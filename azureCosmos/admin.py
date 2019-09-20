# from django.contrib import admin
# from azureCosmos.models import Device
# # Register your models here.

# admin.site.register(Device)
from material.admin.options import MaterialModelAdmin
from material.admin.sites import site

from azureCosmos.models import Device


class DeviceAdmin(MaterialModelAdmin):
    list_display = ('deviceID',
    				'sucursalId',
    				'fridge',
    				'fridge_door',
    				'tier',
    				'sensor')

site.register(Device)