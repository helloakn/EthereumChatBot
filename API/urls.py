from django.urls import path

from . import views

urlpatterns = [
   
#API
    path('apiCreateWallet', views.apiCreateWallet, name='apiCreateWallet'),
]