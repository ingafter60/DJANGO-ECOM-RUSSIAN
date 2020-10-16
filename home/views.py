# home/views.py
from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return render(request,'index.html')

def aboutus(request):
   return  HttpResponse("About")

def contactus(request):
   return  HttpResponse("Contact us")