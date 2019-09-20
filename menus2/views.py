from django.shortcuts import render
from menus2.models import Menu
# Create your views here.
def menu_view(request):
    menus = Menu.objects.all().order_by('id')
    datos2 = {}
    for element in menus:
        if element.menu in datos2:
            aux = datos2[element.menu]
            submen = aux.pop('submenu')
            submen.append(element.submenu)
            aux['submenu'] = submen
            datos2[element.menu] = aux
            pass
        else:
            datos2[element.menu] = {'submenu': [element.submenu ,] , 'icono' : [element.icono], 'url' : element.pagina}
    datos4 = {}
    for element in menus:
        if element.submenu == 'No':
            datos4[element.menu] = element.pagina   
        else:
            datos4[element.submenu] = element.pagina
    print(datos2)
    print('*'*20)
    print(datos4)
    return render(request, 'menu/menu.html',{'datos2': datos2, 'datos3':datos4})
# def menu_view(request):
#     menus = Menu.objects.all().order_by('id')
#     datos2 = {}
#     for element in menus:
#         if element.menu in datos2:
#             aux = datos2[element.menu]
#             submen = aux.pop('submenu')
#             submen.append(element.submenu)
#             urla = aux.pop('url')
#             urla.append(element.pagina)
#             aux['submenu'] = submen
#             aux['url'] = urla
#             datos2[element.menu] = aux
#             pass
#         else:
#             datos2[element.menu] = {'submenu': [element.submenu ,] , 'icono' : [element.icono], 'url': [element.pagina,]}
#     datos3 = {}
#     for element in menus:
#         if element.menu in datos3:
#             aux = datos3[element.menu]
#             ds = []
#             submen = aux.pop('submenu')
#             #print(submen)
#             ds.append(element.submenu)
#             ds.append(element.icono)
#             ds.append(element.pagina)
#             submen.append(ds)
#             datos3[element.menu] =  {'submenu': submen }
#         else:
#             datos3[element.menu] = {'submenu': [[element.submenu, element.icono, element.pagina],] }
#     print(datos3)
#     return render(request, 'menu/menu.html',{'datos2': datos2, 'datos3':datos3})