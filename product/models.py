from django.db import models
from django.utils.text import slugify
from django.contrib.auth.models import User


# Create your models here.


def upload_img(instance, filename):
    image_name, extension = filename.split('.')
    return f'images/products/{instance.id}.{extension}'


class Product(models.Model):
    trader = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=50)
    image = models.ImageField(upload_to=upload_img)
    description = models.TextField(max_length=2000, null=True, blank=True)
    posted_on = models.DateTimeField(auto_now=True)
    price = models.DecimalField(decimal_places=2, max_digits=7, default=0)
    product_code = models.CharField(max_length=20, unique=True)

    # for url
    slug = models.SlugField(null=True, blank=True)

    def save(self, *args, **kwargs):  # overriding save method
        self.slug = slugify(self.title)
        super(Product, self).save(*args, **kwargs)

    def __str__(self):
        return self.title
