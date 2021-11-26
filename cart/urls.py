from django.urls import path
from . import views

app_name = 'cart'

urlpatterns = [
    path('', views.cart_details, name="cart_details"),
    path('add_item', views.add_item, name="add_item"),
    path('remove_item', views.remove_item, name="remove_item"),
]
