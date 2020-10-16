from django.contrib import admin

from product.models import Category

# Setting up the display category in admin panel
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['title','parent', 'status']
    list_filter = ['status']

# Register your models here.
admin.site.register(Category, CategoryAdmin)
