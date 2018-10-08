from django.urls import path

from . import views

urlpatterns = [
   
#API
    path('apiCreateWallet', views.apiCreateWallet, name='apiCreateWallet'),
    path('apiPrivateToPublic', views.apiPrivateToPublic, name='apiPrivateToPublic'),
    path('apiGetBalance', views.apiGetBalance, name='apiGetBalance'),
    path('apiSendFund', views.apiSendFund, name='apiSendFund'),
]