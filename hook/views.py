#from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def hello(request):
   text = """<h1>welcome to a lal haha my app !</h1>"""
   return HttpResponse(text)

def hookck(request):
    hub_verify_token = "284621548815052"
    #return HttpResponse(validation_code)
    if request.method == 'POST':
        if request.POST("hub_verify_token"):
            if request.POST("hub_verify_token") == hub_verify_token:
                return HttpResponse(request.POST['hub_challenge'])
            else:
                return HttpResponse("failed")
        else:
            return HttpResponse("This is request")
