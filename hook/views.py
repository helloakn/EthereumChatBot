#from django.shortcuts import render
from django.http import HttpResponse
import json
from django.template import loader
import datetime
from django.shortcuts import render

#ethereum
    from web3 import Web3, HTTPProvider, IPCProvider, WebsocketProvider
#end ethereum

#import render
# Create your views here.

httpProvider = HTTPProvider("https://rinkeby.infura.io/v3/5619f234c1e843a5963b61b3c913f268")
w3 = Web3(httpProvider)

def test(request):
   text = """<h1>welcome to a lal haha my app !</h1>"""
   return HttpResponse(text)

def hello(request):
   text = """<h1>welcome to a lal haha my app !</h1>"""
   return HttpResponse(text)

def home(request):
    #template = loader.get_template('index.html')
    
    #rendering the template in HttpResponse
    #return HttpResponse(template.render())
    today = datetime.datetime.now().date()
   
    daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    return render(request, "index.html", {"today" : today, "days_of_week" : daysOfWeek})

def hookck(request):
    f = open("/tmp/logfile.txt", "w+")
    f.write("Now the file has one more line!")
    f.close()
    
    hub_verify_token = "sha1=284621548815052284621548815052"
    requestData = None
    if request.method == 'POST':
        requestData = request.POST
    else:
        requestData = request.GET
    print(requestData)
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
        requestData = json.dumps(requestData)
        print(requestData)

        #starting log
        import logging

        # Get the top-level logger object
        log = logging.getLogger()

        # make it print to the console.
        console = logging.StreamHandler()
        log.addHandler(console)

        # emit a warning to the puny Humans
        log.warn(requestData)
        #ending log
        return HttpResponse(requestData)
        ## End Handle Fb Chat 
