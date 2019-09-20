from django.db import models
from django.contrib.auth.models import User
from menus2.models import Menu

# Create your models here.

class Profile(models.Model):
	user = models.OneToOneField(User, on_delete = models.CASCADE)
	phoneNumber = models.CharField(max_length=20, blank = True)
	created = models.DateTimeField(auto_now_add = True)
	MenusParaUsuario = models.ManyToManyField(Menu)
	
	class Meta:
		permissions = ( ('pueden_ver_administracion','administracion'),
						('pueden_ver_dispositivos', 'dispositivos'),
						('pueden_ver_reportes', 'reportes')
						 )
		
	def __str__(self):
		return self.user.username
