from django.shortcuts import render
from django.http import JsonResponse
#Ethereum
from web3 import Web3, HTTPProvider, IPCProvider, WebsocketProvider
httpProvider = HTTPProvider("https://rinkeby.infura.io/v3/5619f234c1e843a5963b61b3c913f268")
w3 = Web3(httpProvider)
#End Ethereum

# Create your views here.

def apiCreateWallet(request):
    response = None
    password = None
    if request.method == 'GET':
        response =  HttpResponse("Not Allow Get Method", content_type="text/plain")
    elif request.method == 'POST':
        password = request.POST.get("password", "")
    
    acct = w3.eth.account.create(password)
    pk = acct.privateKey
    
    pk = pk.hex()

    txn_dict = {
        'publicKey': acct.address,
        'privateKey': pk 
    }

    return JsonResponse(txn_dict)