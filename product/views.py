from django.contrib.auth.decorators import login_required
from django.db.models import Q
from django.shortcuts import render, redirect, get_object_or_404
from cart.models import Cart
from .models import Product
from django.core.paginator import Paginator
from .forms import AddProductForm


# Create your views here.
def products(request):
    cart_items = []
    if request.user.id is not None:
        items = Cart.objects.filter(owner=request.user)
        cart_items = [i.item for i in items]

    all_products = Product.objects.all()

    search_key = ''
    if 'search_product' in request.GET:
        search_key = request.GET['search_product']
        all_products = all_products.filter(Q(product_code__iexact=search_key) | Q(title__icontains=search_key))

    sort_by_key = 'id'
    if 'sort_by' in request.GET:
        sort_by_key = request.GET['sort_by']
        all_products = all_products.order_by(sort_by_key)

    paginator = Paginator(all_products, 6)  # Show 9 products per page.
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {'products': page_obj,
               'products_number': paginator.count,
               'search_key': search_key,
               'sort_by_key': sort_by_key,
               'items': cart_items,
               }
    return render(request, 'product/products.html', context)


def product_details(request, id, slug):
    cart_items = []
    if request.user.id is not None:
        items = Cart.objects.filter(owner=request.user)
        cart_items = [i.item for i in items]

    product_detail = get_object_or_404(Product, id=id, slug=slug)
    suggested_products = Product.objects.all()

    context = {'product': product_detail, 'suggested_products': suggested_products, 'items': cart_items}
    return render(request, 'product/product_details.html', context)


@login_required
def add_product(request):
    items = Cart.objects.filter(owner=request.user)
    if request.method == 'POST' and 'add_product' in request.POST:
        data = AddProductForm(request.POST, request.FILES)
        if data.is_valid():
            form = data.save(commit=False)
            form.trader = request.user
            form.save()
            return redirect('product:products')
    return render(request, 'product/add_product.html', {'add_product_form': AddProductForm, 'items': items})
