from flask import Blueprint,render_template,session,redirect,url_for,request,jsonify
from urllib.parse import urlparse

import requests,certifi
from collections import defaultdict
from decimal import Decimal

import sys

#for ethereum
import time
from web3 import Web3, HTTPProvider, IPCProvider, WebsocketProvider



httpProvider = HTTPProvider("https://rinkeby.infura.io/v3/5619f234c1e843a5963b61b3c913f268")
w3 = Web3(httpProvider)



Wallet = Blueprint('Wallet', __name__, 
template_folder='templates',
static_folder='static')


    

@Wallet.route('/',methods = [ 'GET'])
def index():
    baseUrl = getBaseURL()
    return render_template('createWallet.html',baseUrl=baseUrl) 

@Wallet.route('/sendFund',methods = [ 'GET'])
def sendFunds():
    baseUrl = getBaseURL()
    return render_template('sendFunds.html') 

@Wallet.route('/transactionList',methods = [ 'GET'])
def transactionList():
    baseUrl = getBaseURL()
    return render_template('transactionList.html') 

@Wallet.route('/createWallet',methods = [ 'GET'])
def loginPost():
    baseUrl = getBaseURL()
    return render_template('createWallet.html',baseUrl=baseUrl) 
@Wallet.route('/myWallet',methods = [ 'POST'])
def myWallet_POST():
    postData = request.form
    publicKey = postData.get('public_key')
    privateKey = postData.get('private_key')
    if(w3.isAddress(publicKey) ):
        session['publicKey'] = publicKey
        session['privateKey'] = privateKey
        return redirect(url_for('myWallet'))
        return username
    return "no"

@Wallet.route('/myWallet',methods = [ 'GET'])
def myWallet():
    baseUrl = getBaseURL()
    return render_template('myWallet.html',baseUrl=baseUrl) 

@Wallet.route('/foo')
def foo():
    baseUrl = getBaseURL()
    return render_template('layout.html',baseUrl=baseUrl) 

def getBaseURL():
    
    parsed_uri = urlparse(request.base_url )
    result = '{uri.scheme}://{uri.netloc}/'.format(uri=parsed_uri)
    return result

#
# 
#                  API SECTION
#
#

@Wallet.route('/API/logOut',methods = [ 'POST'])
def logOut():
    session.clear()
    return "Succesfully Logged Out."

@Wallet.route('/API/logIn',methods = [ 'POST'])
def logIn():
    postData = request.form
    privateKey = postData.get('privateKey')
    password = postData.get('password')
    result = w3.eth.account.encrypt(privateKey,password)
    print(result)
    return result


def get_transactions_by_address(address, numbers_transactions):
    
    return data
        


@Wallet.route('/API/getTransactionDetail',methods=['POST'])
def apiGetTransactionDetail():
    import json
    postData = request.form
    transactionAddress = postData.get('transactionAddress')
    transactionDetail = w3.eth.getTransaction(transactionAddress)
    #print(transactionDetail)

    txFrom = transactionDetail.get('from')
    hashValue = transactionDetail.hash.hex()
    txTo = transactionDetail.to
    value = transactionDetail.value
    ethValue = str(w3.fromWei(int(transactionDetail.value),'ether')) + " ETH"
    data = {
        "hash" : hashValue,
        "from" : txFrom,
        "to" : txTo,
        "value" : ethValue
    }
    data = {"status":True,"data":data}
    return jsonify(data)

@Wallet.route('/API/getTransactionList',methods=['POST'])
def apiGetTransactionList():
    import json
    postData = request.form
    walletAddress = postData.get('wallet_Address')
    walletAddress = w3.toChecksumAddress(walletAddress)
    url = "https://api-rinkeby.etherscan.io/api?module=account&action=txlist&address=" + walletAddress + \
        "&startblock=0&endblock=99999999&page=1&offset=100&sort=desc&apikey=5619f234c1e843a5963b61b3c913f268"

    response = requests.get(url, verify=certifi.where())
    address_content = response.json()
    result = address_content.get("result")
    #return jsonify(result)
    data = { "status":True,"data":[]}
    for n, transaction in enumerate(result):
        hashValue = transaction.get("hash")
        txFrom = transaction.get("from")
        txFrom = w3.toChecksumAddress(txFrom)
        
        txTo = transaction.get("to")
        value = transaction.get("value")
        txreceiptStatus = transaction.get("txreceipt_status")
        ethValue = str(w3.fromWei(int(value),'ether')) + " ETH"
        dateTime = transaction.get("timeStamp")
        dateTime = time.ctime(int(dateTime))
        direction = "out"
        
        if (str(txFrom) == str(walletAddress)):
            direction = "out"
        else:
            direction = "income"

        if int(txreceiptStatus) == 1:
            txreceiptStatus = True
        else:
            txreceiptStatus = False
        row = {
            "hash" : hashValue,
            "from" : txFrom,
            "to" : txTo,
            "value" : ethValue,
            "status" : txreceiptStatus,
            "direction" : direction,
            "dateTime" : dateTime
        }
        data["data"].append(row)
    
    return jsonify(data)

@Wallet.route('/API/privateTopublic',methods=['POST'])
def apiprivateTopublic():
    postData = request.form
    privateKey = postData.get('privateKey')
    acc = w3.eth.account.privateKeyToAccount(privateKey)
    return acc.address

@Wallet.route('/API/createWallet',methods=['POST'])
def apicreateWallet():
    postData = request.form
    password = postData.get('password')

    w3 = Web3(httpProvider)
    acct = w3.eth.account.create(password)
    pk = acct.privateKey
    
    pk = pk.hex()

    txn_dict = {
        'publicKey': acct.address,
        'privateKey': pk
    }
    return jsonify(txn_dict)

@Wallet.route('/API/getBalance',methods=['POST'])
def apiGetBalance():
    postData = request.form
    wallet_private_key = postData.get('wallet_private_key')
    acc = w3.eth.account.privateKeyToAccount(wallet_private_key)
    balance = w3.fromWei(w3.eth.getBalance(acc.address),'ether')
    return str(balance) + " ETH"

@Wallet.route('/API/SendFund',methods=['POST'])
def apiSendFund():
    postData = request.form
    failedResult = None
    wallet_private_key = postData.get('wallet_private_key')
    wallet_address = postData.get('wallet_address')
    toAddress = postData.get('toAddress')
    amount_in_ether = postData.get('amount_in_ether')
    gas = postData.get('gas')
    gasPrice = postData.get('gasPrice')
    data = postData.get('data')

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
        return jsonify( failedResult )
    
    
    wallet_private_key = wallet_private_key
    wallet_address = w3.toChecksumAddress(wallet_address)
    toAddress = w3.toChecksumAddress(postData.get('toAddress'))
    
    amount_in_ether = w3.toWei(amount_in_ether,'ether'); 
    
    gas = postData.get('gas')
    gasPrice = postData.get('gasPrice')

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

    acc = w3.eth.account.privateKeyToAccount(wallet_private_key)
    signed_txn =  w3.eth.account.signTransaction(txn_dict,private_key=wallet_private_key)
    txn_hash = None
    
    try:
        txn_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    except Exception as e:
        data = {
            'status' : False,
            'message' : str(e)
        }
        return jsonify(data)
    txn_receipt = None
    
    try:
        txn_receipt = w3.eth.getTransactionReceipt(txn_hash)
    except Exception as e:
        data = {
            'status' : False,
            'message' : str(e)
        }
        return jsonify(data)
    txn_receipt = None
    count = 0
    while txn_receipt is None and (count < 30):
        try:
            txn_receipt = w3.eth.getTransactionReceipt(txn_hash)
        except Exception as e:
            data = {
                'status' : False,
                'message' : str(e)
            }
            return jsonify(data)
    print(txn_receipt)
    
    data = {
        'status' : None,
        'data' : None
    }
    #return txn_receipt
    if txn_receipt is None:
        data['status'] =False
        return jsonify(data)

    status = txn_receipt.get('status')
    if status == 1:
        status = True
    else:
        status = False

    data['status'] = True
    amount_in_ether = str(w3.fromWei(int(amount_in_ether),'ether')); 
    data['data'] =  {
        'from' : str(txn_receipt.get('from')),
        'to' : str(txn_receipt.get('to')),
        'BlockNumber' : str(txn_receipt.get('blockNumber')),
        'value' : str(amount_in_ether) +" ETH",
        'status' : status,
        'transactionHash' : str(txn_receipt.get('transactionHash').hex())
    }
        
    return jsonify(data)
def value_based_gas_price_strategy(amount):
    if amount > w3.toWei(1, 'ether'):
        return w3.toWei(20, 'gwei')
    else:
        return w3.toWei(5, 'gwei')

def sendTran(w3,toAddr,wallet_address,wallet_private_key,amount_in_ether):
    amount_in_wei = w3.toWei(amount_in_ether,'ether')

    nonce = w3.eth.getTransactionCount(wallet_address)
    txn_dict = {
            'to': toAddr,
            'value': amount_in_wei,
            'gas': 70000,
            'gasPrice':1000000000,
            'nonce': nonce,
            'data' : b'',
            'chainId': 3
    }
    acc = w3.eth.account.privateKeyToAccount(wallet_private_key)
    signed_txn =  w3.eth.account.signTransaction(txn_dict,private_key=wallet_private_key)
    txn_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    return txn_hash


