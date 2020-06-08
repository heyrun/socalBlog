from django.contrib import admin

# Register your models here.

from . import models


class PostAdmin(admin.ModelAdmin):
    fields = ['user', 'group', 'message']
    search_fields = ['message', 'user']
    list_filter = ['group', 'user']
    list_display = ['message', 'group', 'user']
    list_editable = ['user', 'group']


# Register your models here.
admin.site.register(models.Post, PostAdmin)
