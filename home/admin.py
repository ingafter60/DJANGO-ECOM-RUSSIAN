# home/admin.py
from django.contrib import admin

from home.models import Setting

class SettingtAdmin(admin.ModelAdmin):
    list_display = ['title','company', 'update_at','status']

# Register your models here.
admin.site.register(Setting, SettingtAdmin)
