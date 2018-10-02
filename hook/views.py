#from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def hello(request):
   text = """<h1>welcome to a lal haha my app !</h1>"""
   return HttpResponse(text)

def hookck(request):
    f = open("./logfile.txt", "a")
    f.write("Now the file has one more line!")
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
    ## End check facebook verify token
    else:
        #Handle Fb Chat 
        #senderId = requestData['entry'][0]['messaging'][0]['sender']['id']
        #messageText = requestData['entry'][0]['messaging'][0]['message']['text']
        #response = None
        return HttpResponse("ok")
        ## End Handle Fb Chat 
