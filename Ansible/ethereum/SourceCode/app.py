from flask import Flask, render_template, Blueprint,request
from urllib.parse import urlparse
from Ethereum.Wallet import Wallet
app = Flask(__name__)
app.secret_key = b'2323!@@cswdasdoo33#@@D'
app.register_blueprint(Wallet)           

if __name__ == '__main__':
   app.run(host='0.0.0.0')
   