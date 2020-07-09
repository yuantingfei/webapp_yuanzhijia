from django.conf.urls import url
import views
urlpatterns = [
    url(r'statistics/$', views.StatisticsList),
    url(r'top5/$', views.Top5),
    url(r'latestAlarms/$', views.LatestAlarms),
    url(r'map/$', views.MapData),
]

