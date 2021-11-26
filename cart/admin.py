from django.contrib import admin
from .models import Cart


class CartAdmin(admin.ModelAdmin):
    list_display = ['owner', 'item', 'added_at']
    list_filter = ['owner', 'item', 'added_at']
    search_fields = ['owner', 'item']


# Register your models here.
admin.site.register(Cart, CartAdmin)
