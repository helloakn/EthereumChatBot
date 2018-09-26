from django.conf.urls import include, url

from django.urls import path
from django.shortcuts import get_object_or_404, render
#from django.contrib import admin
#admin.autodiscover()

import hook.views

# Examples:
# url(r'^$', 'ethchatbot.views.home', name='home'),
# url(r'^blog/', include('blog.urls')),

urlpatterns = [
    path('hello', hook.views.hello, name='hello'),
    path('hookck', hook.views.hookck, name='hookck'),
]
