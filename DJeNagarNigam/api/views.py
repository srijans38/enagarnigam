from django.shortcuts import render
from rest_framework import viewsets
from api.serializers import UserSerializer,ADataSerializer
from mainapp.models import AData
from django.contrib.auth.models import User
# Create your views here.


class ADataViewSet(viewsets.ModelViewSet):
    serializer_class=ADataSerializer
    queryset=AData.objects.all()

class UserViewSet(viewsets.ModelViewSet):
    serializer_class=UserSerializer
    queryset=User.objects.all()    