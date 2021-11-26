from django.db import models
from django.contrib.auth.models import User
from product.models import Product

# Create your models here.


class Cart(models.Model):
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    item = models.ForeignKey(Product, on_delete=models.CASCADE)
    added_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.owner.username
