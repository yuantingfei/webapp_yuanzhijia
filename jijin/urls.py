from django.conf.urls import url
import views
urlpatterns = [
    url(r'jijin/$', views.JijinList),
    url(r'addcode/$', views.addCode),
    url(r'upList/$', views.upList),
    url(r'downList/$', views.downList),
]

