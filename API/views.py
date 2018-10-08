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

def apiSendFund(request):
    failedResult = None
    wallet_private_key = request.POST.get('wallet_private_key')
    wallet_address = request.POST.get('wallet_address')
    toAddress = request.POST.get('toAddress')
    amount_in_ether = request.POST.get('amount_in_ether')
    gas = request.POST.get('gas')
    gasPrice = request.POST.get('gasPrice')
    data = request.POST.get('data')

    if(wallet_private_key is None or wallet_private_key == ''):
        failedResult =  {
            'Status': 'failed',
            'message': 'wallet private key must not be null'  
        }
    if(wallet_address is None or wallet_address == ''):
        failedResult =  {
            'Status': 'failed',
            'message': 'wallet address must not be null'  
        }
    if(toAddress is None or toAddress == ''):
        failedResult =  {
            'Status': 'failed',
            'message': 'toAddress must not be null'  
        }
    if(amount_in_ether is None or amount_in_ether == ''):
        failedResult =  {
            'Status': 'failed',
            'message': 'amount_in_ether must not be null'  
        }
    if(gas is None or gas == ''):
        failedResult =  {
            'Status': 'failed',
            'message': 'gas must not be null'  
        }
    if(gasPrice is None or gasPrice == ''):
        failedResult =  {
            'Status': 'failed',
            'message': 'gasPrice must not be null'  
        }

    if(w3.isAddress(wallet_address) != True):
        failedResult =  {
            'Status': 'failed',
            'message': 'wallet_address must  be valid address'  
        }
    if(w3.isAddress(toAddress) != True):
        failedResult =  {
            'Status': 'failed',
            'message': 'toAddress must  be valid address'  
        }

    if(failedResult is not None):
        return JsonResponse(failedResult)
    
    
    wallet_private_key = wallet_private_key
    wallet_address = w3.toChecksumAddress(wallet_address)
    toAddress = w3.toChecksumAddress(request.POST.get('toAddress'))
    amount_in_ether = w3.toWei(amount_in_ether,'ether')
    gas = request.POST.get('gas')
    gasPrice = request.POST.get('gasPrice')

    nonce = w3.eth.getTransactionCount(wallet_address)
    amountHex = w3.toHex(amount_in_ether)
    gasHex = w3.toHex(int(gas))
    gasPrice = w3.toHex(int(gasPrice))
    
    txn_dict = {
            'to': toAddress,
            #'value': amount_in_wei,
            #'value': "0x19a99f0cf456000",
            'value' : amountHex,
            #'gas': gas,
            #'gasPrice':gas,
            'gas': gasHex,
            'gasPrice': gasPrice,
            'nonce': nonce,
            #'data' : data,
            #'chainId': 4
    }
    #return JsonResponse(txn_dict)
    #return jsonify(txn_dict)
   
    try:
        acc = w3.eth.account.privateKeyToAccount(wallet_private_key)
        #return acc.address
        signed_txn =  w3.eth.account.signTransaction(txn_dict,private_key=wallet_private_key)
        txn_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)

        xn_receipt = w3.eth.getTransactionReceipt(txn_hash)
        txn_receipt = None
        count = 0
        while txn_receipt is None and (count < 30):

            txn_receipt = w3.eth.getTransactionReceipt(txn_hash)

            print(txn_receipt)

            #time.sleep(10)

    except  Exception as error:
        return JsonResponse({'status': False, 'error': error.args})

    if txn_receipt is None:
        #return {'status': 'failed', 'error': 'timeout'}
        return JsonResponse({'status': False, 'error': 'timeout'})

    #return {'status': 'added', 'txn_receipt': txn_receipt}
    return JsonResponse({'status': True, 'message': 'Successfully sent.','Transaction':txn_receipt.transactionHash.hex()})