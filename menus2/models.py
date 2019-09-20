from django.db import models
import datetime
# Create your models here.

# from material.admin.options import MaterialModelAdmin
# from material.admin.decorators import register



class Menu(models.Model):
    menu = models.CharField(max_length = 50, blank = False, null = False, default = '')
    submenu = models.CharField(max_length = 50, blank = False, null = False, default = '')
    tipo = models.CharField(max_length = 50, blank = False, null = False, default = '')
    visible = models.CharField(max_length = 2, blank = False, null = False , default = '')
    pagina = models.CharField(max_length = 50, blank = False, null = False, default = '')
    id_suc = models.IntegerField(blank = False, null = False, default=datetime.datetime(2019,1,1))
    fecha_modificacion = models.DateTimeField(blank = False, null = False, default=datetime.datetime.now() )
    usuario_modifico = models.CharField(max_length = 45, blank = False, null = False, default = '')
    icono = models.CharField(max_length = 50, blank = False, default = '')
    ic_doc = models.IntegerField(null=True)
    
    def __str__(self):
        return self.menu

class Usuario(models.Model):
    usuario = models.CharField(max_length = 45,blank = False, null = False, default = '')
    id_men = models.IntegerField(blank = False, null = False, default = 0)
    fecha_modificacion = models.DateTimeField(blank = False, null = False, default=datetime.datetime.now() )
    usuario_modifico = models.CharField(max_length = 45, blank = False, null = False, default = '')
    MenusParaUsuario = models.ManyToManyField(Menu)

    def __str__(self):
        return ('Id usuario: ' +  self.usuario + ' idmenu: ' + str(self.id_men))

class UsuarioPermisos(models.Model):
    usuperUsuario = models.CharField(max_length = 100, blank = False, null = False)
    usuperPermiso = models.CharField(max_length = 50, blank = False, null = False)
    usuperCreaUsuario = models.CharField(max_length = 50, blank = False, null = False)
    usuperFechaCreacion = models.DateTimeField(blank = False, null = False, default=datetime.datetime.now() )

    def __str__(self):
        return (self.usuperUsuario + ' ' + self.usuperPermiso )

