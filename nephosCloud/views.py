from django.shortcuts import render
from api.models import DeviceData
from azureCosmos.views import elementosMenu
# Create your views here.
from django.contrib.auth.decorators import login_required


@login_required
def extraerDatos(request):
	datos2, datos4 = elementosMenu(request)
	print('++++++++++', datos2)
	devices = DeviceData.objects.all().order_by('devicedataId')[:500]
	print('*'*10)
	dispositivos = []
	dispInc = []
	for element in devices:
		# print(element.deviceId)
		if element.deviceId in dispInc:
			pass
		else:
			dispositivos.append( {'disp' : element.deviceId})
			dispInc.append(element.deviceId)
	print('---------', dispositivos)
	print(datos4)
	return render(request, 'base/feedNephos.html',{'dispositivos' : dispositivos, 'datos2':datos2, 'datos4':datos4})
