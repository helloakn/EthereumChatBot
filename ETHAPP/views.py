from django.shortcuts import render
from django.http import HttpResponse

from django.http import JsonResponse

from django.conf.urls.static import static

import datetime

# Create your views here.


def unauthorize(request):
    #template = loader.get_template('index.html')
    
    #rendering the template in HttpResponse
    #return HttpResponse(template.render())
    today = datetime.datetime.now().date()
   
    daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    return render(request, "index.html", {"today" : today, "days_of_week" : daysOfWeek})

def login(request):
    #template = loader.get_template('index.html')
    
    #rendering the template in HttpResponse
    #return HttpResponse(template.render())
    today = datetime.datetime.now().date()
   
    daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    return render(request, "index.html", {"today" : today, "days_of_week" : daysOfWeek})

def index(request):
    #template = loader.get_template('index.html')
    
    #rendering the template in HttpResponse
    #return HttpResponse(template.render())
    today = datetime.datetime.now().date()
   
    daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    return render(request, "index.html", {"today" : today, "days_of_week" : daysOfWeek})