from django.urls import path

from server import views

urlpatterns = [
    path('home/', views.home),
    path('', views.home),
    path('login/', views.login),
    path('signin/', views.signin),
    path('Request/', views.Request),
    path('logout/',views.logout)
]