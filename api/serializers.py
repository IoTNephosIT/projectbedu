from .models import DeviceData
from azureCosmos.models import Device 
from rest_framework import serializers
from django.core.mail import send_mail
from django.conf import settings

class DeviceDataSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = DeviceData
        fields = ('deviceId', 'porcentage', 'distance','sensor','created_at')

    def create(self, validated_data):
        device = DeviceData.objects.create(
            deviceId=validated_data['deviceId'],
            porcentage=validated_data['porcentage'],
            distance=validated_data['distance'],
            sensor=validated_data['sensor']
        )
        device.save()
       
        int_por = int(device.porcentage)
        if int_por < 30:
            subject = 'El dispositivo:' + device.deviceId + ", el sensor: " + device.sensor + " se encuentra en un porcentaje: " + device.porcentage
            message =  getMessage(device.deviceId)
            email_from = settings.EMAIL_HOST_USER
            recipient_list = ['jvaldespino@iot-innovaciones.com',]
            send_mail( subject, message, email_from, recipient_list )
        return device


def getMessage(devideId):
    deviceValue = Device.objects.filter(deviceID=devideId)
    strMesagge = ""
    if deviceValue is not None: 
        print(deviceValue)
        for item in deviceValue:
            strMesagge = "La sucursal ID :" + item.sucursalId + ", El refrigerador:" + item.fridge + ", la puerta:" + item.fridge_door + ", el nivel:" + item.tier 

    return strMesagge
           


        