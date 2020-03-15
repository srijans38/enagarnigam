from django.urls import path,include
from django.views.generic import RedirectView
from . import views

urlpatterns = [
        path('', RedirectView.as_view(url='home/')),
        path('home/',views.homeview,name='home'),
        path('services/',views.srview,name='sr'),
        path('reports/',views.reportview,name='report'),
        path('forum/',views.forumview,name='forum'),
        path('map/',views.mapview,name='map'),
]