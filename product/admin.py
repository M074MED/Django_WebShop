from django.contrib import admin
from .models import *


admin.site.site_header = 'WebShop Admin Panel'
admin.site.site_title = 'WebShop Admin Panel'


class ProductAdmin(admin.ModelAdmin):
    exclude = ['slug']
    list_display = ['title', 'trader', 'posted_on', 'price', 'product_code']
    list_filter = ['price', 'posted_on', 'trader']
    search_fields = ['title', 'description', 'product_code']


# Register your models here.
admin.site.register(Product, ProductAdmin)
