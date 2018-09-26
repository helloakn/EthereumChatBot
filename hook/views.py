#from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def hello(request):
   text = """<h1>welcome to a lal haha my app !</h1>"""
   return HttpResponse(text)

def hookck(request):
    hub_verify_token = "sha1=284621548815052284621548815052"
    requestData = None
    if request.method == 'POST':
        requestData = request.POST
    else:
        requestData = request.GET
    #check facebook verify token
    if 'hub_verify_token' in requestData:
        if requestData["hub_verify_token"] == hub_verify_token:
            return HttpResponse(requestData['hub_challenge'])
        else:
            return HttpResponse("failed")
    elif 'hub.verify_token' in requestData:
        if requestData["hub.verify_token"] == hub_verify_token:
            return HttpResponse(requestData['hub.challenge'])
        else:
            return HttpResponse("failed")
    else:
        return HttpResponse("This is request")
