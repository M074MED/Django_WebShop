from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.shortcuts import render, redirect
from product.models import Product
from .models import Cart

# Create your views here.


@login_required
def cart_details(request):
    items = Cart.objects.filter(owner=request.user)
    total_price = sum([i.item.price for i in items])

    context = {
                'items': items,
                'total_price': total_price,
               }
    return render(request, 'cart/cart_details.html', context)


def add_item(request):
    if request.method == 'POST':
        if request.user.is_authenticated:
            product_id = int(request.POST.get('product_id'))
            product_check = Product.objects.get(id=product_id)
            if product_check:
                if Cart.objects.filter(owner=request.user, item=product_check):
                    return JsonResponse({'error': 'This Product is Already in Cart'})
                else:
                    Cart.objects.create(owner=request.user, item=product_check)
                    return JsonResponse({'success': 'Product added Successfully'})
            else:
                return JsonResponse({'error': 'No such product found'})
        else:
            return JsonResponse({'error': 'You must be logged in to add an item to your shopping cart.'})

    return redirect('/')


def remove_item(request):
    if request.method == 'POST':
        product_id = int(request.POST.get('product_id'))
        if Cart.objects.filter(owner=request.user, item=product_id):
            cart_item = Cart.objects.get(owner=request.user, item=product_id)
            cart_item.delete()
            return JsonResponse({'success': 'Item Removed Successfully'})
        else:
            return JsonResponse({'error': 'This Item is Already Removed From Your Cart'})

    return redirect('/')
