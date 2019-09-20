from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from .models import DeviceData
from .serializers import DeviceDataSerializer
from django.forms.models import model_to_dict
from rest_framework.permissions import IsAuthenticated
from rest_framework.pagination import CursorPagination


class CursorSetPagination(CursorPagination):
    ordering = 'devicedataId'


# Create your views here.
class DeviceDataView(ModelViewSet):
  #  permission_classes = (IsAuthenticated,)
    queryset = DeviceData.objects.all().order_by('devicedataId')
    serializer_class = DeviceDataSerializer
    pagination_class = CursorSetPagination
