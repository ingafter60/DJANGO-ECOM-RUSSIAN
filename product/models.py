from ckeditor_uploader.fields import RichTextUploadingField
from django.db import models

from django.utils.safestring import mark_safe
from mptt.models import MPTTModel, TreeForeignKey


class Category(MPTTModel):
# class Category(models.Model):
    STATUS = (
        ('True', 'True'),
        ('False', 'False'),
    )
    parent      = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children')
    title 		= models.CharField(max_length=30)
    keywords 	= models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    image 		= models.ImageField(blank=True,upload_to='images/')
    status 		= models.CharField(max_length=10, choices=STATUS)
    slug 		= models.SlugField()
    create_at 	= models.DateTimeField(auto_now_add=True)
    update_at 	= models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    class MPTTMeta:
        order_insertion_by = ['title']

    def __str__(self):            # __str__ method elaborated later in
        full_path = [self.title]  # post.  use __unicode__ in place of
        k = self.parent
        while k is not None:
            full_path.append(k.title)
            k = k.parent
        return ' / '.join(full_path[::-1])


class Product(models.Model):
    STATUS = (
        ('True', 'True'),
        ('False', 'False'),
    )
    category 	= models.ForeignKey(Category, on_delete=models.CASCADE) #many to one relation with Category
    title 		= models.CharField(max_length=150)
    keywords 	= models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    image 		= models.ImageField(blank=True,upload_to='images/')
    price 		= models.FloatField()
    amount 		= models.IntegerField()
    minamount 	= models.IntegerField()
    detail      = RichTextUploadingField()
    slug 		= models.SlugField()
    status 		= models.CharField(max_length=10,choices=STATUS)
    create_at 	= models.DateTimeField(auto_now_add=True)
    update_at 	= models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    # method to create a fake table field in read only mode
    def image_tag(self):
        return mark_safe('<img src="{}" height="50"/>'.format(self.image.url))

    image_tag.short_description = 'Image'


class Images(models.Model):
    product=models.ForeignKey(Product,on_delete=models.CASCADE)
    title = models.CharField(max_length=50,blank=True)
    image = models.ImageField(blank=True, upload_to='images/')

    def __str__(self):
        return self.title