# from django.contrib import admin
# from menus2.models import Menu, Usuario, UsuarioPermisos
# # Register your models here.

# admin.site.register(Menu)
# admin.site.register(Usuario)
# admin.site.register(UsuarioPermisos)
from material.admin.options import MaterialModelAdmin
from material.admin.sites import site

from menus2.models import Menu, Usuario, UsuarioPermisos

class MenuAdmin(MaterialModelAdmin):
	list_display = (
			'menu',
			'submenu',
			'tipo',
			'visible',
			'pagina',
			'id_suc',
			'fecha_modificacion',
			'usuario_modifico',
			'icono',
			'ic_doc'
		)

site.register(Menu)

class UsuarioAdmin(MaterialModelAdmin):
	list_display = (
			'usuario',
			'id_men',
			'fecha_modificacion',
			'usuario_modifico'
		)

site.register(Usuario)

class UsuarioPermisosAdmin(MaterialModelAdmin):
	list_display = (
		'usuperUsuario',
		'usuperPermiso',
		'usuperCreaUsuario',
		'usuperFechaCreacion'
		)

site.register(UsuarioPermisos)