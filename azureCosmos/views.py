from django.shortcuts import render
import azure.cosmos.cosmos_client as cosmos_client
import os
import time
from datetime import datetime,timedelta, timezone
from django.contrib.auth.decorators import login_required
import pytz
from azureCosmos.models import Device
from menus2.models import Menu
from loginapp.models import Profile
from azureCosmos.forms import DeviceForm
from django.shortcuts import redirect


local_tz = pytz.timezone('America/Mexico_City')
# Variables globales para azure, esta información se obtiene desde cososdb
# config = {
# 	    'ENDPOINT': 'https://azucosdbaccount.documents.azure.com:443/',
# 	    'PRIMARYKEY': 'ujpYTcQVjuJhajR4chmUSSMcFHLtxklOwZfx0j63W8qgyLKEHLHDd17x8Fi78RiR512LsaJFmQwppxYvPJqxQw==',
# 	    'DATABASE': 'CosmosDatabase',
#     'CONTAINER': 'CosmosContainer'
# }

# # Initialize the Cosmos client
# client = cosmos_client.CosmosClient(url_connection=config['ENDPOINT'], 
#                                     auth={'masterKey': config['PRIMARYKEY']})
# dicc = client.ReadDatabase('dbs/+0s1AA==/', options=None)
# container = client.ReadContainers('dbs/+0s1AA==/', options=None)
# col = client.ReadContainer( 'dbs/+0s1AA==/colls/+0s1AOYbxH8=/', options=None)

def elementosMenu(request):
	perfiles = Profile.objects.all().order_by('id')
	datos2, datos4 = {}, {}
	for element in perfiles:
		print('* ', element.user)
		# print('-', element.MenusParaUsuario.all)
		print('----------', request.user , '++++++++++++++')
		if element.user == request.user:
			datos2 = {}
			for i in element.MenusParaUsuario.all():
				# print('[] ',i.menu)
				# print(i.tipo)
				if i.menu in datos2:
					aux = datos2[i.menu]
					submen = aux.pop('submenu')
					submen.append(i.submenu)
					aux['submenu'] = submen
					datos2[i.menu] = aux
					pass
				else:
					datos2[i.menu] = {'submenu': [i.submenu ,] , 'icono' : [i.icono], 'url' : i.pagina}
			datos4 = {}
			for i in element.MenusParaUsuario.all():
				if i.submenu == 'No':
					datos4[i.menu] = i.pagina   
				else:
					datos4[i.submenu] = i.pagina
			print(datos2)
			print('*'*20)
			print(datos4)
		else:
			datos2 = {}
			datos4 = {}
	return datos2, datos4
	# return render(request,'pruebas.html')
	# menus = Menu.objects.all().order_by('id')
	# datos2 = {}
	# for element in menus:
	# 	if element.menu in datos2:
	# 		aux = datos2[element.menu]
	# 		submen = aux.pop('submenu')
	# 		submen.append(element.submenu)
	# 		aux['submenu'] = submen
	# 		datos2[element.menu] = aux
	# 		pass
	# 	else:
	# 		datos2[element.menu] = {'submenu': [element.submenu ,] , 'icono' : [element.icono], 'url' : element.pagina}
	# datos4 = {}
	# for element in menus:
	# 	if element.submenu == 'No':
	# 		datos4[element.menu] = element.pagina	
	# 	else:
	# 		datos4[element.submenu] = element.pagina
	# return datos2, datos4


@login_required
def extraerDatos(request):
	datos2, datos4 = elementosMenu(request)
	t0 = time.clock()
	query = {'query': 'SELECT top 500 *  FROM server c where c._ts > 1566277200 order by c._ts desc '}
	#gropu by por dispositivos
	#Refresh por dispositivo
	options = {}
	options['enableCrossPartitionQuery'] = True
	options['maxItemCount'] = 10
	#os.system('cls')
	dispositivos = []
	dispInc = []
	result_iterable = client.QueryItems(col['_self'], query, options)
	for item in iter(result_iterable):
	    if item['DeviceId'] in dispInc:
	    	pass
	    else:
	    	dispositivos.append( {'disp' : item['DeviceId']})
	    	dispInc.append(item['DeviceId'])
	print( "%.2f sec" % (time.clock() - t0))	
	return render(request, 'feed.html',{'dispositivos' : dispositivos, 'datos2':datos2, 'datos4':datos4})

@login_required
def extraerDatosPorDevice(request, DeviceId):
	datos2, datos4 = elementosMenu(request)
	t0 = time.clock()
	DeviceId = "'{}'".format(DeviceId)
	Sensor1 = "'{}'".format("01")
	query1 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor1,DeviceId)}
	Sensor2 = "'{}'".format("02")
	query2 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor2,DeviceId)}
	Sensor3 = "'{}'".format("03")
	query3 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor3,DeviceId)}
	Sensor4 = "'{}'".format("04")
	query4 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor4,DeviceId)}
	Sensor5 = "'{}'".format("05")
	query5 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor5,DeviceId)}
	Sensor6 = "'{}'".format("06")
	query6 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor6,DeviceId)}
	Sensor7 = "'{}'".format("07")
	query7 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor7,DeviceId)}
	Sensor8 = "'{}'".format("08")
	query8 = {'query': 'SELECT TOP 1 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(Sensor8,DeviceId)}
	#gropu by por dispositivos
	#Refresh por dispositivo
	options = {}
	options['enableCrossPartitionQuery'] = True
	options['maxItemCount'] = 10
	datos = []
	sensor1, sensor2, sensor3,sensor4, sensor5, sensor6, sensor7,sensor8 = 0,0,0,0,0,0,0,0
	result_iterable1 = client.QueryItems(col['_self'], query1, options)
	
	for item in iter(result_iterable1):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })


	result_iterable2 = client.QueryItems(col['_self'], query2, options)
	
	for item in iter(result_iterable2):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })


	result_iterable3 = client.QueryItems(col['_self'], query3, options)
	
	for item in iter(result_iterable3):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })

	result_iterable4 = client.QueryItems(col['_self'], query4, options)
	
	for item in iter(result_iterable4):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })

	result_iterable5 = client.QueryItems(col['_self'], query5, options)
	
	for item in iter(result_iterable5):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })

	result_iterable6 = client.QueryItems(col['_self'], query6, options)
	
	for item in iter(result_iterable6):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })

	result_iterable7 = client.QueryItems(col['_self'], query7, options)
	
	for item in iter(result_iterable7):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })
		
	result_iterable8 = client.QueryItems(col['_self'], query8, options)
	
	for item in iter(result_iterable8):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })
	return render(request, 'base/sensor.html',{'datos' : datos,'DeviceId':DeviceId, 'datos2' : datos2, 'datos4':datos4 })

@login_required
def extraerDatosPorDeviceSensor(request,DeviceId, SensorId):
	datos2, datos4 = elementosMenu(request)
	t0 = time.clock()
	DeviceId = "{}".format(DeviceId)
	SensorId = "'{}'".format(SensorId)
	query = {'query': 'SELECT top 100 c.porcetage, c.Sensor,c._ts  FROM server c where c.Sensor={} and c.DeviceId = {} order by c._ts desc '.format(SensorId,DeviceId)}
	#gropu by por dispositivos
	#Refresh por dispositivo
	options = {}
	options['enableCrossPartitionQuery'] = True
	options['maxItemCount'] = 10
	datos = []
	result_iterable = client.QueryItems(col['_self'], query, options)
	
	for item in iter(result_iterable):
		dt_object = datetime.fromtimestamp(item['_ts'])
		new_date = utc_to_local(dt_object)
		datos.append({'Sensor':item['Sensor'],'porcetage' : round(item['porcetage']),'fecha' : new_date })
	datos4 = {}
	for element in menus:
		if element.submenu == 'No':
			datos4[element.menu] = element.pagina	
		else:
			datos4[element.submenu] = element.pagina
	return render(request, 'base/detailsensor.html',{'datos' : datos, 'datos2':datos2, 'datos4' : datos4 })


# Create your views here.
@login_required
def feed_view(request):
	return render(request, 'feed.html')


# @login_required
# def main(request):
# 	datos2, datos4 = elementosMenu(request)
# 	t0 = time.clock()
# 	query = {'query': 'SELECT top 500 *  FROM server c where c._ts > 1566277200 order by c._ts desc '}
# 	#gropu by por dispositivos
# 	#Refresh por dispositivo
# 	options = {}
# 	options['enableCrossPartitionQuery'] = True
# 	options['maxItemCount'] = 10
# 	dispositivos = []
# 	dispInc = []
# 	result_iterable = client.QueryItems(col['_self'], query, options)
# 	for item in iter(result_iterable):
# 	    if item['DeviceId'] in dispInc:
# 	    	pass
# 	    else:
# 	    	dispositivos.append( {'disp' : item['DeviceId']})
# 	    	dispInc.append(item['DeviceId'])
# 	print( "%.2f sec" % (time.clock() - t0))
# 	return render(request, 'base/feed.html', {'dispositivos' : dispositivos, 'datos2': datos2, 'datos4' : datos4})

def devicesRegister_view(request):
	datos2, datos4 = elementosMenu(request)
	if request.method == 'POST':
		dev = DeviceForm(request.POST)
		if dev.is_valid():
			# dev = form.save(commit.False)
			dev.deviceID = request.POST['deviceID']
			dev.sucursalId = request.POST['sucursalId']
			dev.fridge = request.POST['fridge']
			dev.fridge_door = request.POST['fridge_door']
			dev.tier = request.POST['tier']
			dev.sensor = request.POST['sensor']
			print('okay')
			print(dev.tier)
			dev.save()
			print('Se guardo correctamente el device')
			dispos = Device.objects.all().order_by('id')
			return redirect('device')
	else:
		dev = DeviceForm()
	return render(request, 'base/devicesRegister.html', {'dev':dev, 'datos2':datos2, 'datos4':datos4})

def devices_view(request):
	dispos = Device.objects.all().order_by('id')
	# print(dispos)
	datos2, datos4 = elementosMenu(request)
	return render(request, 'base/devices.html', {'dispos': dispos, 'datos2':datos2, 'datos4':datos4})

def details_view(request):
	dispos = Device.objects.all().order_by('id')
	# print(dispos)
	datos2, datos4 = elementosMenu(request)
	return render(request, 'base/details.html', {'dispos': dispos, 'datos2':datos2, 'datos4':datos4})


def utc_to_local(utc_dt):
    local_dt = utc_dt.replace(tzinfo=pytz.utc).astimezone(local_tz)
    return local_tz.normalize(local_dt).strftime('%Y-%m-%d %H:%M:%S') # .normalize might be unnecessary


@login_required
def pruebas_view(request):
	#vista de pruebas
	perfiles = Profile.objects.all().order_by('id')
	for element in perfiles:
		print('* ', element.user)
		# print('-', element.MenusParaUsuario.all)
		print('----------', request.user , '++++++++++++++')
		if element.user == request.user:
			datos2 = {}
			for i in element.MenusParaUsuario.all():
				# print('[] ',i.menu)
				# print(i.tipo)
				if i.menu in datos2:
					aux = datos2[i.menu]
					submen = aux.pop('submenu')
					submen.append(i.submenu)
					aux['submenu'] = submen
					datos2[i.menu] = aux
					pass
				else:
					datos2[i.menu] = {'submenu': [i.submenu ,] , 'icono' : [i.icono], 'url' : i.pagina}
			datos4 = {}
			for i in element.MenusParaUsuario.all():
				if i.submenu == 'No':
					datos4[i.menu] = i.pagina   
				else:
					datos4[i.submenu] = i.pagina
			print(datos2)
			print('*'*20)
			print(datos4)
	# return render(request,'pruebas.html')
	return render(request, 'pruebas.html',{'datos2': datos2, 'datos3':datos4})