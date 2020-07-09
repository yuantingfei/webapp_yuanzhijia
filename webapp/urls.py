
from django.conf.urls import include, url

app_patterns = [
    url(r'^', include('account.urls')),
    url(r'^', include('audit.urls')),
    url(r'^', include('jijin.urls')),
    url(r'^', include('situation.urls')),
]
urlpatterns = [
    url(r'^api/v1/', include(app_patterns)),
]