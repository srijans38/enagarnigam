from django.urls import path,include
from django.views.generic import RedirectView
from rest_framework import routers
from api import views

router=routers.DefaultRouter()

router.register('user',views.UserViewSet)
router.register('AData',views.ADataViewSet)

urlpatterns = [
    path('', include(router.urls))
]