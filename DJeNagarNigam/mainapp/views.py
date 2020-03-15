# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.

def homeview(request):
    return render(request,'mainapp/home.html')

def forumview(request):
    return render(request,"mainapp/forum.html")

def reportview(request):
    return render(request,"mainapp/report.html")

def mapview(request):
    return render(request,"mainapp/map.html")

def srview(request):
    return render(request,"mainapp/sr.html")               