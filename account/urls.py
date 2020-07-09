from django.conf.urls import url
import views

urlpatterns = [
    url(r'^login/$', views.login),
    url(r'^logout/$', views.logout),
    url(r'^isLogin/$', views.isLogin),
    url(r'^changePassword/$', views.changePassword),
    # url(r'test/$', views.test),
    url(r'accounts/(?P<cur>[0-9]+)/(?P<page>[0-9]+)/$', views.AccountList),
    url(r'accounts/(?P<id>[0-9]+)/$', views.getAccountById),
    url(r'getCode$', views.getCode),
    # url(r'roles/$', views.RoleList.as_view()),
	# url(r'roles/(?P<pk>[0-9]+)/$', views.RoleDetail.as_view()),
	# url(r'modules/$', views.ModuleList.as_view()),
	# url(r'modules/(?P<pk>[0-9]+)/$', views.ModuleDetail.as_view()),
]

