#from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def hello(request):
   text = """<h1>welcome to a lal haha my app !</h1>"""
   return HttpResponse(text)

def hookck(request):
    hub_verify_token = "sha1=284621548815052284621548815052"
    
    if request.method == 'POST':
        #check facebook verify token
        if request.POST["hub_verify_token"]:
            if request.POST["hub_verify_token"] == hub_verify_token:
                return HttpResponse(request.POST['hub_challenge'])
            else:
                return HttpResponse("failed")
        else:
            return HttpResponse("This is request")
