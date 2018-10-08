from django.shortcuts import render
from django.http import HttpResponse
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
        return response
    elif request.method == 'POST':
        password = request.POST.get("password", "")
    
    acct = w3.eth.account.create(password)
    pk = acct.privateKey
    
    pk = pk.hex()

    txn_dict = {
        'status': True,
        'publicKey': acct.address,
        'privateKey': pk 
    }

    return JsonResponse(txn_dict)

def apiPrivateToPublic(request):
    response =  HttpResponse("Not Allow Get Method", content_type="text/plain")
    privateKey = None
    if request.method == 'GET':
        response =  HttpResponse("Not Allow Get Method", content_type="text/plain")
        return response
    elif request.method == 'POST':
        privateKey = request.POST.get("privateKey", "")
    
    #return response
    acc = w3.eth.account.privateKeyToAccount(privateKey)
    
    txn_dict = {
        'status': True,
        'publicKey': acc.address,
        'privateKey': privateKey 
    }
    return JsonResponse(txn_dict)

def apiGetBalance(request):
    response =  HttpResponse("Not Allow Get Method", content_type="text/plain")
    wallet_private_key = None
    if request.method == 'GET':
        response =  HttpResponse("Not Allow Get Method", content_type="text/plain")
        return response
    elif request.method == 'POST':
        wallet_private_key = request.POST.get("privateKey", "")
    acc = w3.eth.account.privateKeyToAccount(wallet_private_key)
    balance = w3.fromWei(w3.eth.getBalance(acc.address),'ether')
    txn_dict = {
        'status': True,
        'balance': str(balance) + " ETH" 
    }
    return JsonResponse(txn_dict)