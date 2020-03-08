from django.urls import path,include
from django.views.generic import RedirectView
from . import views

urlpatterns = [
        path('', RedirectView.as_view(url='home/')),
        path('home/',views.homeview,name='home')
]