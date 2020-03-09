from rest_framework import serializers
from mainapp.models import AData
from django.contrib.auth.models import User

class ADataSerializer(serializers.ModelSerializer):
    class Meta:
        model=AData
        fields='__all__'

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        fields='__all__'

