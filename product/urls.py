from django.urls import path
from . import views

app_name = 'product'

urlpatterns = [
    path('', views.products, name="products"),
    path('add_product', views.add_product, name="add_product"),
    path('<int:id>_<str:slug>', views.product_details, name="product_details"),
]
