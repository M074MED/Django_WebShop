from math import floor
from random import random
from django.shortcuts import render
from cart.models import Cart
from product.models import Product

# Create your views here.


def home(request):
    cart_items = []
    if request.user.id is not None:
        items = Cart.objects.filter(owner=request.user)
        cart_items = [i.item for i in items]

    products = Product.objects.all()
    product1, product2, product3 = '', '', ''  # for the slide
    if products:
        product1 = products[floor(random() * products.count())]
        product2 = products[floor(random() * products.count())]
        product3 = products[floor(random() * products.count())]

    context = {
        'products': products,
        'product1': product1,
        'product2': product2,
        'product3': product3,
        'items': cart_items,
    }
    return render(request, 'home/index.html', context)


def about(request):
    items = []
    if request.user.id is not None:
        items = Cart.objects.filter(owner=request.user)

    return render(request, 'about/about.html', context={'items': items})
