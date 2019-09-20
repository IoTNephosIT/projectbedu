
from material.admin.options import MaterialModelAdmin
from material.admin.sites import site

from .models import Profile

class ProfileAdmin(MaterialModelAdmin):
	list_display = (
			'user',
			'phoneNumber',
			'created',
			'MenusParaUsuario'
		)

site.register(Profile)

