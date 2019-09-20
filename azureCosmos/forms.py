from django import forms
from .models import Device

class DeviceForm(forms.ModelForm):
	class Meta:
		model = Device
		fields = ('deviceID','sucursalId','fridge','fridge_door','tier','sensor')
