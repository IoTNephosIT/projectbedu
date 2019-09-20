from django.db import models

class DeviceData(models.Model):
    devicedataId = models.AutoField(primary_key=True)
    deviceId = models.CharField(max_length = 50, blank = False, null = False, default = '' )
    porcentage = models.CharField(max_length = 20, blank = False, null = False, default = '' )
    distance = models.CharField(max_length = 20, blank = False, null = False, default = '' )
    sensor = models.CharField(max_length = 20, blank = False, null = False, default = '' )
    latitude = models.CharField(max_length = 20, blank = True, null = True, default = '' )
    longitude = models.CharField(max_length = 20, blank = True, null = True, default = '' ) 
    time = models.CharField(max_length = 50, blank = True, null = True, default = '' )
    created_at = models.DateTimeField(auto_now_add=True)
  
    def __str__(self):
	    return self.devicedataId
    