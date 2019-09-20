from django.db import models

# Create your models here.

class Device(models.Model):
	deviceID = models.CharField(max_length = 50, blank = False, null = False, default = '' )
	sucursalId = models.CharField(max_length = 50, blank = False, null = False, default = '' )
	fridge = models.CharField(max_length = 50, blank = False, null = False, default = '' )
	fridge_door = models.CharField(max_length = 50, blank = False, null = False, default = '' )
	tier = models.CharField(max_length = 50, blank = False, null = False, default = '' )
	sensor = models.CharField(max_length = 50, blank = False, null = False, default = '' )
	
	def __str__(self):
		return self.deviceID
